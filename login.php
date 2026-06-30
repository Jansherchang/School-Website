<?php
/* ================= ADMIN LOGIN PAGE ================= */

session_start();
include "db.php";

$message = "";

if (isset($_POST['login'])) {

    $username = $_POST['username'];
    $password = $_POST['password'];

    $query = "SELECT * FROM admin_users WHERE username='$username' AND password='$password'";
    $result = mysqli_query($conn, $query);

    if (mysqli_num_rows($result) == 1) {
        $_SESSION['admin'] = $username;
        header("Location: dashboard.php");
        exit();
    } else {
        $message = "Invalid username or password";
    }
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Login - Faizan School System</title>
    <link rel="stylesheet" href="admin-style.css">
</head>
<body>

<!-- ================= LOGIN SECTION ================= -->

<section class="login-section">

    <div class="login-box">

        <h2>Admin Login</h2>

        <form method="POST">

            <input type="text" name="username" placeholder="Enter Username" required>

            <input type="password" name="password" placeholder="Enter Password" required>

            <button type="submit" name="login">Login</button>

            <p class="error-message"><?php echo $message; ?></p>

        </form>

    </div>

</section>

</body>
</html>