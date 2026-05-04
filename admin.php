<?php
include 'includes/db.php';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    if (isset($_POST['add_knowledge'])) {
        $stmt = $pdo->prepare("INSERT INTO knowledge_base (question_pattern, answer, category, is_learned) VALUES (?, ?, ?, 0)");
        $stmt->execute([$_POST['question_pattern'], $_POST['answer'], $_POST['category']]);
    }
    if (isset($_POST['add_package'])) {
        $stmt = $pdo->prepare("INSERT INTO travel_packages (package_name, duration, price, places, description) VALUES (?, ?, ?, ?, ?)");
        $stmt->execute([$_POST['package_name'], $_POST['duration'], $_POST['price'], $_POST['places'], $_POST['description']]);
    }
}

$knowledge = $pdo->query("SELECT * FROM knowledge_base ORDER BY id DESC")->fetchAll(PDO::FETCH_ASSOC);
$packages = $pdo->query("SELECT * FROM travel_packages ORDER BY id DESC")->fetchAll(PDO::FETCH_ASSOC);
$history = $pdo->query("SELECT * FROM chat_history ORDER BY id DESC LIMIT 20")->fetchAll(PDO::FETCH_ASSOC);
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Panel - AI Chat Bot</title>
    <link rel="stylesheet" href="assets/css/style.css">
</head>
<body>
<div class="admin-page">
    <a href="index.php" class="back-link">← Back to Chat</a>
    <h1>Admin Panel</h1>
    <p>Add chatbot knowledge, update tour packages and view recent chat history.</p>

    <div class="admin-grid">
        <div class="admin-card">
            <h2>Add Knowledge</h2>
            <form method="post">
                <input name="question_pattern" placeholder="Keywords / question pattern" required>
                <textarea name="answer" placeholder="Bot answer" required></textarea>
                <input name="category" placeholder="Category" value="general">
                <button name="add_knowledge">Add Knowledge</button>
            </form>
        </div>

        <div class="admin-card">
            <h2>Add Tour Package</h2>
            <form method="post">
                <input name="package_name" placeholder="Package name" required>
                <input name="duration" placeholder="Duration" required>
                <input name="price" placeholder="Price" required>
                <input name="places" placeholder="Places" required>
                <textarea name="description" placeholder="Description" required></textarea>
                <button name="add_package">Add Package</button>
            </form>
        </div>
    </div>

    <h2>Tour Packages</h2>
    <table><tr><th>Name</th><th>Duration</th><th>Price</th><th>Places</th></tr>
    <?php foreach ($packages as $p): ?>
        <tr><td><?= htmlspecialchars($p['package_name']) ?></td><td><?= htmlspecialchars($p['duration']) ?></td><td><?= htmlspecialchars($p['price']) ?></td><td><?= htmlspecialchars($p['places']) ?></td></tr>
    <?php endforeach; ?>
    </table>

    <h2>Knowledge Base</h2>
    <table><tr><th>Pattern</th><th>Answer</th><th>Category</th><th>Learned</th></tr>
    <?php foreach ($knowledge as $k): ?>
        <tr><td><?= htmlspecialchars($k['question_pattern']) ?></td><td><?= htmlspecialchars($k['answer']) ?></td><td><?= htmlspecialchars($k['category']) ?></td><td><?= $k['is_learned'] ? 'Yes' : 'No' ?></td></tr>
    <?php endforeach; ?>
    </table>

    <h2>Recent Chat History</h2>
    <table><tr><th>User</th><th>Bot</th><th>Date</th></tr>
    <?php foreach ($history as $h): ?>
        <tr><td><?= htmlspecialchars($h['user_message']) ?></td><td><?= htmlspecialchars($h['bot_reply']) ?></td><td><?= htmlspecialchars($h['created_at']) ?></td></tr>
    <?php endforeach; ?>
    </table>
</div>
</body>
</html>
