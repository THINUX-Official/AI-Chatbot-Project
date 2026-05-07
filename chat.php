<?php
include 'includes/auth.php';
include 'includes/db.php';
include 'includes/functions.php';
header('Content-Type: application/json');
$message = trim($_POST['message'] ?? '');
if ($message === '') { echo json_encode(['reply'=>'Please type a message.']); exit; }
$reply = getBotReply($pdo, $message);
saveChat($pdo, $message, $reply);
echo json_encode(['reply'=>$reply]);
?>
