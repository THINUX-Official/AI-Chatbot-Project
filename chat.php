<?php
include 'includes/db.php';
include 'includes/functions.php';

header('Content-Type: application/json');

$message = $_POST['message'] ?? '';
$message = trim($message);

if ($message === '') {
    echo json_encode(['reply' => 'Please type a message.']);
    exit;
}

$clean = strtolower($message);

if (strpos($clean, 'learn:') === 0 && strpos($message, '=') !== false) {
    $learnData = trim(substr($message, 6));
    [$question, $answer] = array_map('trim', explode('=', $learnData, 2));

    if ($question !== '' && $answer !== '') {
        $stmt = $pdo->prepare("INSERT INTO knowledge_base (question_pattern, answer, category, is_learned) VALUES (?, ?, 'learned', 1)");
        $stmt->execute([$question, $answer]);
        $reply = "Thank you! I learned a new answer.";
        saveChat($pdo, $message, $reply);
        echo json_encode(['reply' => $reply]);
        exit;
    }
}

$reply = getBotReply($pdo, $message);
saveChat($pdo, $message, $reply);
echo json_encode(['reply' => $reply]);
?>
