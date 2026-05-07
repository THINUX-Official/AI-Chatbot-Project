<?php include 'includes/auth.php'; ?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Ceylon Travel Assistant</title>
  <link rel="stylesheet" href="assets/css/style.css?v=final3">
</head>
<body>
<header class="site-header">
  <a class="brand" href="index.php"><span class="brand-badge">AI</span><span>AI Travel Support Assistant</span></a>
  <nav class="header-nav">
    <?php if (isLoggedIn()): ?>
      <span>Hi, <?= htmlspecialchars($_SESSION['name']) ?></span>
      <?php if (isAdmin()): ?><a class="nav-outline" href="admin.php">Admin Panel</a><?php endif; ?>
      <a class="nav-btn" href="logout.php">Logout</a>
    <?php else: ?>
      <a class="nav-outline" href="login.php">Login</a>
      <a class="nav-btn" href="register.php">Register</a>
    <?php endif; ?>
  </nav>
</header>

<main class="chat-page">
  <section class="chat-panel">
    <div class="chat-header">
      <div class="chat-title">
        <h1>Sri Lanka Tourism Assistant</h1>
        <p>Get instant support for Sri Lanka tour packages, destinations, bookings and travel information.</p>
      </div>
      <div class="online">Online</div>
    </div>
    <div id="chatBox" class="chat-box">
      <div class="message bot">Hello! I am your Sri Lanka Travel Assistant. How can I help you?</div>
    </div>
    <div class="chat-form-wrap">
      <form id="chatForm" class="chat-form">
        <input type="text" id="message" placeholder="Type your travel question here..." autocomplete="off" required>
        <button type="submit">Send</button>
      </form>
     
    </div>
  </section>
</main>
<script src="assets/js/chat.js?v=final3"></script>
</body>
</html>
