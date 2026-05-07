<?php
include 'includes/auth.php';
include 'includes/db.php';
requireAdmin();
$section = $_GET['section'] ?? 'dashboard';
$message = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  if (isset($_POST['add_knowledge'])) {
    $stmt=$pdo->prepare("INSERT INTO knowledge_base (question_pattern, answer, category, is_learned) VALUES (?, ?, ?, 0)");
    $stmt->execute([trim($_POST['question_pattern']), trim($_POST['answer']), trim($_POST['category'] ?: 'general')]);
    $message='Knowledge added successfully.'; $section='knowledge';
  }
  if (isset($_POST['train_unknown'])) {
    $question=trim($_POST['question']); $answer=trim($_POST['answer']);
    if($question && $answer){
      $stmt=$pdo->prepare("INSERT INTO knowledge_base (question_pattern, answer, category, is_learned) VALUES (?, ?, 'learned', 1)");
      $stmt->execute([$question,$answer]);
      $up=$pdo->prepare("UPDATE unknown_questions SET answer=?, status='trained' WHERE id=?");
      $up->execute([$answer,$_POST['unknown_id']]);
      $message='Question trained successfully.';
    }
    $section='training';
  }
}
$usersCount=$pdo->query("SELECT COUNT(*) FROM users WHERE role='user'")->fetchColumn();
$chatsCount=$pdo->query("SELECT COUNT(*) FROM chat_history")->fetchColumn();
$unknownCount=$pdo->query("SELECT COUNT(*) FROM unknown_questions WHERE status='pending'")->fetchColumn();
$knowledge=$pdo->query("SELECT * FROM knowledge_base ORDER BY id DESC")->fetchAll();
$chats=$pdo->query("SELECT ch.*, u.name FROM chat_history ch LEFT JOIN users u ON ch.user_id=u.id ORDER BY ch.id DESC LIMIT 50")->fetchAll();
$unknown=$pdo->query("SELECT * FROM unknown_questions ORDER BY id DESC")->fetchAll();
$users=$pdo->query("SELECT id,name,email,role,created_at FROM users ORDER BY id DESC")->fetchAll();
?>
<!DOCTYPE html><html lang="en"><head><meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0"><title>Admin Dashboard</title><link rel="stylesheet" href="assets/css/style.css?v=final3"></head>
<body class="admin-layout">
<nav class="admin-nav">
  <a href="admin.php">Dashboard</a>
  <a href="admin.php?section=knowledge">Knowledge Base</a>
  <a href="admin.php?section=training">Training</a>
  <a href="admin.php?section=chats">Chats</a>
  <a href="admin.php?section=users">Users</a>
  <a href="index.php">Chat Bot</a>
  <a href="logout.php">Logout</a>
</nav>
<main class="admin-container">
  <?php if($message): ?><div class="alert success"><?= htmlspecialchars($message) ?></div><?php endif; ?>
  <?php if($section==='dashboard'): ?>
    <section class="dashboard-card"><h1>Admin Dashboard</h1><div class="stats-grid"><div class="stat-box"><strong><?= (int)$usersCount ?></strong><span>Users</span></div><div class="stat-box"><strong><?= (int)$chatsCount ?></strong><span>Chats</span></div><div class="stat-box"><strong><?= (int)$unknownCount ?></strong><span>Unknown Questions</span></div></div></section>
  <?php endif; ?>
  <?php if($section==='knowledge'): ?>
    <section class="admin-card"><h1>Knowledge Base</h1><form class="admin-form" method="post"><input name="question_pattern" placeholder="Keywords / question pattern" required><textarea name="answer" placeholder="Bot answer" required></textarea><input name="category" placeholder="Category" value="general"><button class="primary-btn" name="add_knowledge">Add Knowledge</button></form><table><tr><th>Pattern</th><th>Answer</th><th>Category</th><th>Learned</th></tr><?php foreach($knowledge as $k): ?><tr><td><?= htmlspecialchars($k['question_pattern']) ?></td><td><?= htmlspecialchars($k['answer']) ?></td><td><?= htmlspecialchars($k['category']) ?></td><td><?= $k['is_learned']?'Yes':'No' ?></td></tr><?php endforeach; ?></table></section>
  <?php endif; ?>
  <?php if($section==='training'): ?>
    <section class="admin-card"><h1>Training / Unknown Questions</h1><?php if(!$unknown): ?><div class="empty">No unknown questions yet.</div><?php endif; ?><table><tr><th>Question</th><th>Status</th><th>Train Answer</th></tr><?php foreach($unknown as $u): ?><tr><td><?= htmlspecialchars($u['question']) ?></td><td><?= htmlspecialchars($u['status']) ?></td><td><?php if($u['status']==='pending'): ?><form class="inline-train-form" method="post"><input type="hidden" name="unknown_id" value="<?= (int)$u['id'] ?>"><input type="hidden" name="question" value="<?= htmlspecialchars($u['question']) ?>"><input name="answer" placeholder="Type correct answer" required><button name="train_unknown">Train</button></form><?php else: ?><?= htmlspecialchars($u['answer']) ?><?php endif; ?></td></tr><?php endforeach; ?></table></section>
  <?php endif; ?>
  <?php if($section==='chats'): ?>
    <section class="admin-card"><h1>Chat History</h1><table><tr><th>User</th><th>User Message</th><th>Bot Reply</th><th>Date</th></tr><?php foreach($chats as $c): ?><tr><td><?= htmlspecialchars($c['name'] ?: 'Guest') ?></td><td><?= htmlspecialchars($c['user_message']) ?></td><td><?= htmlspecialchars($c['bot_reply']) ?></td><td><?= htmlspecialchars($c['created_at']) ?></td></tr><?php endforeach; ?></table></section>
  <?php endif; ?>
  <?php if($section==='users'): ?>
    <section class="admin-card"><h1>Users</h1><table><tr><th>Name</th><th>Email</th><th>Role</th><th>Created</th></tr><?php foreach($users as $u): ?><tr><td><?= htmlspecialchars($u['name']) ?></td><td><?= htmlspecialchars($u['email']) ?></td><td><?= htmlspecialchars($u['role']) ?></td><td><?= htmlspecialchars($u['created_at']) ?></td></tr><?php endforeach; ?></table></section>
  <?php endif; ?>
</main>
</body></html>
