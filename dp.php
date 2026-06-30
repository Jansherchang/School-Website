<?php
/* ================= DATABASE CONNECTION SECTION ================= */

$host = "localhost";
$user = "root";
$password = "";
$database = "faizan_school";

$conn = mysqli_connect($host, $user, $password, $database);

if (!$conn) {
    die("Database connection failed: " . mysqli_connect_error());
}
?>