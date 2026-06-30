<?php
/* ================= ADMIN LOGOUT SECTION ================= */

session_start();
session_destroy();

header("Location: login.php");
exit();
?>