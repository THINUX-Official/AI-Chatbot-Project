<?php

function cleanText($text){
    $text = strtolower(trim($text));
    $text = preg_replace('/[^a-z0-9\s]/', ' ', $text);
    return trim(preg_replace('/\s+/', ' ', $text));
}

function getWords($text){
    $stopWords = ['is','am','are','the','a','an','in','on','at','to','for','of','and','or','me','my','about','tell','can','i','you','do','with','this','that','sri','lanka'];
    $words = array_unique(array_filter(explode(' ', cleanText($text))));
    return array_values(array_diff($words, $stopWords));
}

function similarityScore($userText,$pattern){
    $userWords = getWords($userText);
    $patternWords = getWords($pattern);

    if(count($patternWords) === 0){
        return 0;
    }

    $matches = array_intersect($userWords, $patternWords);
    return count($matches) / count($patternWords);
}

function getPackagesReply($pdo){
    $stmt = $pdo->query("SELECT * FROM travel_packages WHERE status='active' ORDER BY id ASC");
    $packages = $stmt->fetchAll();

    if(!$packages){
        return null;
    }

    $reply = "<b>Available Tour Packages</b><br><br>";

    foreach($packages as $p){
        $reply .= "<b>".htmlspecialchars($p['package_name'])."</b><br>";
        $reply .= "Duration: ".htmlspecialchars($p['duration'])."<br>";
        $reply .= "Price: ".htmlspecialchars($p['price'])."<br>";
        $reply .= "Places: ".htmlspecialchars($p['places'])."<br><br>";
    }

    return $reply;
}

function saveUnknownQuestion($pdo,$message){
    $stmt = $pdo->prepare("SELECT id FROM unknown_questions WHERE question=? AND status='pending' LIMIT 1");
    $stmt->execute([$message]);

    if(!$stmt->fetch()){
        $ins = $pdo->prepare("INSERT INTO unknown_questions (question,status) VALUES (?,'pending')");
        $ins->execute([$message]);
    }
}

function getBotReply($pdo,$message){
    $clean = cleanText($message);

    $packageQuestions = [
        'package',
        'packages',
        'packges',
        'tour package',
        'tour packages',
        'show packages',
        'show tour packages',
        'available packages',
        'available tour packages'
    ];

    foreach($packageQuestions as $phrase){
        if($clean === cleanText($phrase)){
            $r = getPackagesReply($pdo);
            if($r){
                return $r;
            }
        }
    }

    $rows = $pdo->query("SELECT * FROM knowledge_base ORDER BY is_learned DESC, id ASC")->fetchAll();

    $bestAnswer = null;
    $bestScore = 0;

    foreach($rows as $row){

        $patterns = explode("\n", strtolower($row['question_pattern']));

        foreach($patterns as $pattern){

            $pattern = trim($pattern);

            if($pattern == ''){
                continue;
            }

            if($clean === cleanText($pattern)){
                return $row['answer'];
            }

            $score = similarityScore($message, $pattern);

            if($score > $bestScore){
                $bestScore = $score;
                $bestAnswer = $row['answer'];
            }
        }
    }

    if($bestScore >= 0.40 && $bestAnswer){
        return $bestAnswer;
    }

    saveUnknownQuestion($pdo,$message);

    return "Sorry, I don't know this answer yet. Please ask about packages, destinations, booking, price or contact details.";
}

function saveChat($pdo,$userMessage,$botReply){
    $userId = $_SESSION['user_id'] ?? null;
    $stmt = $pdo->prepare("INSERT INTO chat_history (user_id,user_message,bot_reply) VALUES (?,?,?)");
    $stmt->execute([$userId,$userMessage,strip_tags($botReply)]);
}

?>