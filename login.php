<?php
include 'includes/auth.php';
include 'includes/db.php';
$error = '';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = trim($_POST['email'] ?? '');
    $password = $_POST['password'] ?? '';
    $stmt = $pdo->prepare("SELECT * FROM users WHERE email=? LIMIT 1");
    $stmt->execute([$email]);
    $user = $stmt->fetch();
    if ($user && password_verify($password, $user['password'])) {
        $_SESSION['user_id'] = $user['id'];
        $_SESSION['name'] = $user['name'];
        $_SESSION['role'] = $user['role'];
        header($user['role'] === 'admin' ? 'Location: admin.php' : 'Location: index.php');
        exit;
    } else { $error = 'Invalid email or password.'; }
}
?>
<!DOCTYPE html><html lang="en">
    
<head>

<meta charset="UTF-8"><meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Login</title><link rel="stylesheet" href="assets/css/style.css?v=final3">

</head>

<body>

<header class="site-header">
    
<a class="brand" href="index.php"><span class="brand-badge">AI</span><span>Ceylon Travel Assistant</span></a>

<nav class="header-nav"><a class="nav-outline" href="index.php">Chat Bot</a>
<a class="nav-btn" href="register.php">Register</a></nav>

</header>

<main class="auth-page"><section class="auth-card">
    <h1>Login</h1><p>Please enter your email and password to continue.</p><?php if($error): ?><div class="alert error"><?= htmlspecialchars($error) ?></div><?php endif; ?><form class="form-grid" method="post"><input type="email" name="email" placeholder="Email address" required><input type="password" name="password" placeholder="Password" required><button class="primary-btn" type="submit">Login</button></form>
</section>

</main>

</body>

</html>
