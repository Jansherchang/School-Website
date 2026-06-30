<?php
/* ================= ADD DATA BACKEND SECTION ================= */

session_start();

if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}

include "db.php";

$section_name = $_POST['section_name'];
$title = $_POST['title'];
$description = $_POST['description'];

$query = "INSERT INTO website_data (section_name, title, description)
          VALUES ('$section_name', '$title', '$description')";

mysqli_query($conn, $query);

header("Location: dashboard.php");
exit();
?>