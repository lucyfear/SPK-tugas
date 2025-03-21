<?php
// Database connection
$host = 'localhost';
$username = 'root';
$password = '';
$database = 'spksiswaprestasi';

// Create connection
$koneksi_db = mysqli_connect($host, $username, $password, $database);

// Check connection
if (!$koneksi_db) {
    die('Connection failed: ' . mysqli_connect_error());
}
?>
