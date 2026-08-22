<?php
$host = "mysql.railway.internal";
$user = "root";
$pass = "thiPTgOxUkpxLDSFjNYpnUmQohhEBxXk";
$db   = "railway";
$port = 3306;

$conn = new mysqli($host, $user, $pass, $db, $port);

if (!$conn) {
    echo json_encode(["status" => "error", "message" => "Koneksi Gagal"]);
    exit;
}
?>
