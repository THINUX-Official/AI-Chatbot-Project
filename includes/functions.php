<?php
function cleanText($text) {
    $text = strtolower(trim($text));
    $text = preg_replace('/[^a-z0-9\s]/', ' ', $text);
    $text = preg_replace('/\s+/', ' ', $text);
    return $text;
}

function similarityScore($userText, $pattern) {
    $userWords = array_unique(explode(' ', cleanText($userText)));
    $patternWords = array_unique(explode(' ', cleanText($pattern)));
    $matches = array_intersect($userWords, $patternWords);
    if (count($patternWords) === 0) return 0;
    return count($matches) / count($patternWords);
}

function getBotReply($pdo, $message) {
    $clean = cleanText($message);

    if (strpos($clean, 'package') !== false || strpos($clean, 'price') !== false || strpos($clean, 'tour') !== false) {
        $stmt = $pdo->query("SELECT * FROM travel_packages WHERE status='active' ORDER BY id ASC");
        $packages = $stmt->fetchAll(PDO::FETCH_ASSOC);
        if ($packages) {
            $reply = "Here are our available tour packages:<br>";
            foreach ($packages as $p) {
                $reply .= "<b>" . htmlspecialchars($p['package_name']) . "</b> - " . htmlspecialchars($p['duration']) . " - " . htmlspecialchars($p['price']) . "<br>Places: " . htmlspecialchars($p['places']) . "<br><br>";
            }
            return $reply;
        }
    }

    $stmt = $pdo->query("SELECT * FROM knowledge_base ORDER BY is_learned DESC, id ASC");
    $rows = $stmt->fetchAll(PDO::FETCH_ASSOC);

    $bestAnswer = null;
    $bestScore = 0;

    foreach ($rows as $row) {
        $score = similarityScore($clean, $row['question_pattern']);
        if ($score > $bestScore) {
            $bestScore = $score;
            $bestAnswer = $row['answer'];
        }
    }

    if ($bestScore >= 0.25 && $bestAnswer) {
        return $bestAnswer;
    }

    return "Sorry, I do not know the answer yet. You can teach me by typing: <br><b>learn: your question = your answer</b>";
}

function saveChat($pdo, $userMessage, $botReply) {
    $stmt = $pdo->prepare("INSERT INTO chat_history (user_message, bot_reply) VALUES (?, ?)");
    $stmt->execute([$userMessage, strip_tags($botReply)]);
}
?>
