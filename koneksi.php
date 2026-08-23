<?php
$host = "zephyr.proxy.rlwy.net";
$user = "root";
$pass = "thiPTgOxUkpxLDSFjNYpnUmQohhEBxXk";
$db   = "railway";
$port = 57842;

$conn = new mysqli($host, $user, $pass, $db, $port);

if (!$conn) {
    echo json_encode(["status" => "error", "message" => "Koneksi Gagal"]);
    exit;
}
?>
