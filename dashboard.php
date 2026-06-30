<?php
/* ================= ADMIN DASHBOARD PAGE ================= */

session_start();

if (!isset($_SESSION['admin'])) {
    header("Location: login.php");
    exit();
}

include "db.php";

$data = mysqli_query($conn, "SELECT * FROM website_data ORDER BY id DESC");
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Admin Dashboard - Faizan School System</title>
    <link rel="stylesheet" href="admin-style.css">
</head>
<body>

<!-- ================= DASHBOARD HEADER SECTION ================= -->

<header class="admin-header">

    <h2>Faizan School System - Admin Dashboard</h2>

    <a href="logout.php" class="logout-btn">Logout</a>

</header>

<!-- ================= ADD DATA FORM SECTION ================= -->

<section class="admin-container">

    <div class="form-box">

        <h3>Add Website Data</h3>

        <form action="add-data.php" method="POST">

            <select name="section_name" required>
                <option value="Academics">Academics</option>
                <option value="Gallery">Gallery</option>
                <option value="About Us">About Us</option>
                <option value="Contact">Contact</option>
            </select>

            <input type="text" name="title" placeholder="Enter Title" required>

            <textarea name="description" placeholder="Enter Description" required></textarea>

            <button type="submit">Add Data</button>

        </form>

    </div>

    <!-- ================= DATA LIST SECTION ================= -->

    <div class="data-list">

        <h3>Added Website Data</h3>

        <?php while($row = mysqli_fetch_assoc($data)) { ?>

            <div class="data-item">

                <h4><?php echo $row['section_name']; ?></h4>

                <h3><?php echo $row['title']; ?></h3>

                <p><?php echo $row['description']; ?></p>

                <a href="delete-data.php?id=<?php echo $row['id']; ?>"
                   onclick="return confirm('Are you sure you want to delete this data?')"
                   class="delete-btn">
                   Delete
                </a>

            </div>

        <?php } ?>

    </div>

</section>

</body>
</html>