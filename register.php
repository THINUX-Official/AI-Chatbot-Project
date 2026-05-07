<?php
include 'includes/auth.php';
include 'includes/db.php';
$error=''; $success='';
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
  $name=trim($_POST['name'] ?? ''); $email=trim($_POST['email'] ?? ''); $password=$_POST['password'] ?? '';
  if(strlen($password)<4){ $error='Password must be at least 4 characters.'; }
  else{
    try{ $hash=password_hash($password,PASSWORD_DEFAULT); $stmt=$pdo->prepare("INSERT INTO users (name,email,password,role) VALUES (?,?,?,'user')"); $stmt->execute([$name,$email,$hash]); $success='Registration successful. You can login now.'; }
    catch(PDOException $e){ $error='Email already registered.'; }
  }
}
?>
<!DOCTYPE html>

<html lang="en">
  
<head><meta charset="UTF-8">

<meta name="viewport" content="width=device-width, initial-scale=1.0">

<title>Register</title><link rel="stylesheet" href="assets/css/style.css?v=final3">

</head>

<body>

<header class="site-header"><a class="brand" href="index.php">
  <span class="brand-badge">AI</span><span>Ceylon Travel Assistant</span>
</a><nav class="header-nav"><a class="nav-outline" href="index.php">Chat Bot</a>
<a class="nav-btn" href="login.php">Login</a></nav>

</header>

<main class="auth-page"><section class="auth-card">
  
<h1>Register</h1>

<p>Create a user account to use the travel chatbot.</p>

<?php if($error): ?><div class="alert error"><?= htmlspecialchars($error) ?></div>
  
  <?php endif; ?><?php if($success): ?><div class="alert success"><?= htmlspecialchars($success) ?></div>
    
    <?php endif; ?><form class="form-grid" method="post"><input name="name" placeholder="Full name" required>
    <input type="email" name="email" placeholder="Email address" required><input type="password" name="password" placeholder="Password" required>
    
    <button class="primary-btn" type="submit">Register</button>
  
  </form>

</section>

</main>

</body>

</html>
