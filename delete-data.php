<?php
/* ================= DELETE DATA BACKEND SECTION ================= */

session_start();

if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}

include "db.php";

$id = $_GET['id'];

$query = "DELETE FROM website_data WHERE id=$id";

mysqli_query($conn, $query);

header("Location: dashboard.php");
exit();
?>