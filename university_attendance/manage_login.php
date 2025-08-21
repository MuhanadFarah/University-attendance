<?php
session_start();

$phone = "+252907440616";
$password = "Hanandez@123";

$error = '';

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $inputPhone = trim($_POST['phone']);
    $inputPassword = trim($_POST['password']);

    if ($inputPhone === $phone && $inputPassword === $password) {
        $_SESSION['manage_logged_in'] = true;
        header("Location: manage_dashboard.php");
        exit;
    } else {
        $error = "Invalid phone number or password.";
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
  <title>Manage Login</title>
  <style>
    * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
      font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    }

    body {
      background: url('https://cdn.wallpapersafari.com/13/80/SDGXpE.jpg') no-repeat center center fixed;
      background-size: cover;
      height: 100vh;
      display: flex;
      align-items: center;
      justify-content: center;
    }

    .login-box {
      background-color: rgba(0, 0, 0, 0.75);
      padding: 2rem 3rem;
      border-radius: 12px;
      box-shadow: 0 4px 20px rgba(0, 0, 0, 0.6);
      width: 100%;
      max-width: 400px;
      color: white;
    }

    .login-box h2 {
      text-align: center;
      margin-bottom: 1.5rem;
      font-size: 1.8rem;
      color: #00bfff;
    }

    .login-box input {
      width: 100%;
      padding: 0.7rem;
      margin-bottom: 1.2rem;
      border: none;
      border-radius: 6px;
      font-size: 1rem;
    }

    .login-box button {
      width: 100%;
      padding: 0.8rem;
      background-color: #00bfff;
      border: none;
      color: white;
      font-size: 1rem;
      font-weight: bold;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .login-box button:hover {
      background-color: #007acc;
    }

    .error-message {
      color: #ff4d4d;
      text-align: center;
      margin-bottom: 1rem;
    }

    .back-btn {
      position: absolute;
      top: 15px;
      left: 15px;
      color: white;
      background: rgba(0, 0, 0, 0.5);
      padding: 8px 14px;
      border-radius: 8px;
      text-decoration: none;
      font-size: 16px;
      transition: background 0.3s ease;
    }

    .back-btn:hover {
      background: rgba(0, 0, 0, 0.8);
    }
  </style>
</head>
<footer style="
  position: fixed;
  bottom: 0;
  width: 100%;
  background-color: transparent;
  color: #fff;
  font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
  font-size: 13px;
  font-weight: 500;
  text-align: center;
  padding: 12px 0;
  text-shadow: 0 1px 2px rgba(0, 0, 0, 0.5);
  user-select: none;
  z-index: 9999;
">
  &copy; 2025 <strong>University Attendance Management System</strong> | Developed by <strong>Muhanad Farah Abdirahman</strong> | All Rights Reserved.
</footer>




<body>
  <!-- Back button -->
  <a href="http://localhost:8080/university_attendance/" class="back-btn">&#8592; Back</a>

  <form class="login-box" method="POST">
    <h2>Manage Dashboard Login</h2>
    
    <?php if ($error): ?>
      <div class="error-message"><?php echo $error; ?></div>
    <?php endif; ?>

    <form method="POST" autocomplete="off">
    <input type="text" name="phone" placeholder="Phone number" required autocomplete="off">
    <input type="password" name="password" placeholder="Password" required autocomplete="new-password">
    <button type="submit">Login</button>
</form>

</body>
</html>
