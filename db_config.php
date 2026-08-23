<?php
$host = "zephyr.proxy.rlwy.net";
$user = "root";
$pass = "thiPTgOxUkpxLDSFjNYpnUmQohhEBxXk";
$db   = "railway";
$port = 57842;

$conn = new mysqli($host, $user, $pass, $db, $port);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
