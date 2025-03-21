<?php  
session_start();  
require 'connect_db.php';

// Check remember me cookie
if (isset($_COOKIE['ID']) && isset($_COOKIE['Key'])) {
    $query = mysqli_query($koneksi_db, "SELECT username FROM admin WHERE ID_User = '$_COOKIE[ID]'");
    $res = mysqli_fetch_assoc($query);

    if ($_COOKIE['Key'] === hash('sha256', $res['username'])) {
        $_SESSION['login'] = true;
    }
}

// Prevent access to dashboard (index)
if (isset($_SESSION['login'])) {
    header('Location: index.php');
    exit;
}

if (isset($_POST['masuk'])) {
    $username = htmlspecialchars($_POST['username']);
    $password = htmlspecialchars($_POST['password']);

    $querySql = "SELECT * FROM admin WHERE username = '$username'";
    $res = mysqli_query($koneksi_db, $querySql);
    $admin = mysqli_fetch_assoc($res);

    // Validate user/admin
    if (mysqli_num_rows($res) === 1) {
        if (password_verify($password, $admin['password'])) {
            // Set session variables
            $_SESSION['user'] = $admin['username'];
            $_SESSION['login'] = true;

            // Remember me
            if (isset($_POST['remember'])) {
                setcookie('ID', $admin['ID_User'], time() + (86400 * 30), '/'); // 30 days
                setcookie('Key', hash('sha256', $admin['username']), time() + (86400 * 30), '/'); // 30 days
            }

            header('Location: ../index.php');
            exit;
        }
    } else {
        $_SESSION['status'] = 'Username atau password tidak sesuai!';
        header('Location: ../login.php');
        exit;
    }
}
?>
