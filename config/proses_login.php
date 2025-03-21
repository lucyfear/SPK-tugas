<?php  
session_start();  
require 'connect_db.php';

// Check remember me cookie
if (isset($_COOKIE['ID']) && isset($_COOKIE['Key'])) {
    $stmt = $koneksi_db->prepare("SELECT username FROM admin WHERE ID_User = ?");
    $stmt->bind_param("s", $_COOKIE['ID']);
    $stmt->execute();
    $result = $stmt->get_result();
    $res = $result->fetch_assoc();

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

    $stmt = $koneksi_db->prepare("SELECT * FROM admin WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $result = $stmt->get_result();
    $admin = $result->fetch_assoc();

    // Validate user/admin
    if ($result->num_rows === 1) {
        if (md5($password) === $admin['password']) {
            // Regenerate session ID
            session_regenerate_id(true);

            // Set session variables
            $_SESSION['user'] = $admin['username'];
            $_SESSION['login'] = true;

            // Remember me
            if (isset($_POST['remember'])) {
                setcookie('ID', $admin['ID_User'], time() + (86400 * 30), '/', '', true, true); // 30 days, secure, HTTP-only
                setcookie('Key', hash('sha256', $admin['username']), time() + (86400 * 30), '/', '', true, true); // 30 days, secure, HTTP-only
            }

            header('Location: ../index.php');
            exit;
        } else {
            $_SESSION['status'] = 'Username atau password tidak sesuai!';
            header('Location: ../login.php');
            exit;
        }
    } else {
        $_SESSION['status'] = 'Username atau password tidak sesuai!';
        header('Location: ../login.php');
        exit;
    }
}
?>
