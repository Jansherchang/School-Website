-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.4.3 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             12.8.0.6908
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table school_db.admin_users
DROP TABLE IF EXISTS `admin_users`;
CREATE TABLE IF NOT EXISTS `admin_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.admin_users: ~1 rows (approximately)
INSERT INTO `admin_users` (`id`, `username`, `password`) VALUES
	(1, 'jansherchang@gmail.com', '12345');

-- Dumping structure for table school_db.announcements
DROP TABLE IF EXISTS `announcements`;
CREATE TABLE IF NOT EXISTS `announcements` (
  `id` int NOT NULL AUTO_INCREMENT,
  `message` text NOT NULL,
  `status` enum('On','Off') DEFAULT 'On',
  `show_on` varchar(50) DEFAULT 'All',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.announcements: ~1 rows (approximately)
INSERT INTO `announcements` (`id`, `message`, `status`, `show_on`, `created_at`) VALUES
	(1, 'It is informed to all students that from 1st june to 30 july there is a vacation . so stay home and take care. Faizan School System Pacca Chang.', 'On', 'All', '2026-06-13 05:11:28');

-- Dumping structure for table school_db.cover_photos
DROP TABLE IF EXISTS `cover_photos`;
CREATE TABLE IF NOT EXISTS `cover_photos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_name` varchar(50) DEFAULT 'all',
  `image` varchar(255) NOT NULL,
  `animation` varchar(50) DEFAULT 'fade',
  `status` enum('On','Off') DEFAULT 'On',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.cover_photos: ~0 rows (approximately)

-- Dumping structure for table school_db.pages
DROP TABLE IF EXISTS `pages`;
CREATE TABLE IF NOT EXISTS `pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `page_title` varchar(100) NOT NULL,
  `page_slug` varchar(100) NOT NULL,
  `status` enum('On','Off') DEFAULT 'On',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `sort_order` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `page_slug` (`page_slug`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.pages: ~6 rows (approximately)
INSERT INTO `pages` (`id`, `page_title`, `page_slug`, `status`, `created_at`, `sort_order`) VALUES
	(6, 'Home', 'home', 'On', '2026-06-18 06:56:37', 1),
	(7, 'Academics', 'academics', 'On', '2026-06-18 06:56:37', 2),
	(8, 'Gallery', 'gallery', 'On', '2026-06-18 06:56:37', 4),
	(9, 'About Us', 'about-us', 'On', '2026-06-18 06:56:37', 5),
	(10, 'Contact', 'contact', 'On', '2026-06-18 06:56:37', 6),
	(11, 'Announcement', 'announcement', 'On', '2026-06-18 06:58:43', 3);

-- Dumping structure for table school_db.popup_announcement
DROP TABLE IF EXISTS `popup_announcement`;
CREATE TABLE IF NOT EXISTS `popup_announcement` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `status` enum('On','Off') DEFAULT 'Off',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.popup_announcement: ~1 rows (approximately)
INSERT INTO `popup_announcement` (`id`, `title`, `image`, `status`) VALUES
	(1, 'Announcement', '1781333805_3882.jpg', 'Off');

-- Dumping structure for table school_db.site_settings
DROP TABLE IF EXISTS `site_settings`;
CREATE TABLE IF NOT EXISTS `site_settings` (
  `id` int NOT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `site_name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.site_settings: ~1 rows (approximately)
INSERT INTO `site_settings` (`id`, `logo`, `site_name`) VALUES
	(1, '1781803968_logo.jpg', 'Faizan School System');

-- Dumping structure for table school_db.students
DROP TABLE IF EXISTS `students`;
CREATE TABLE IF NOT EXISTS `students` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `fee_month` varchar(30) DEFAULT NULL,
  `fee_year` int DEFAULT NULL,
  `fee_status` varchar(20) DEFAULT 'Unpaid',
  `current_fee` decimal(10,2) DEFAULT '0.00',
  `bakaya_fee` decimal(10,2) DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.students: ~5 rows (approximately)
INSERT INTO `students` (`id`, `name`, `father_name`, `class_name`, `phone`, `address`, `created_at`, `fee_month`, `fee_year`, `fee_status`, `current_fee`, `bakaya_fee`) VALUES
	(1, 'Muammad Sirat', 'Jansher Ali', 'Nursery', '0300-0336311', '', '2026-06-10 09:05:18', 'June', NULL, 'Unpaid', 0.00, 0.00),
	(2, 'Ali', 'Imam Bux', 'KG', '03062097438', '', '2026-06-10 09:05:32', 'June', NULL, 'Unpaid', 3000.00, 1000.00),
	(5, 'Ali Nawaz', 'Saqib Ali', 'Class 4', '03093354090', '', '2026-06-12 07:24:17', 'June', NULL, 'Unpaid', 2000.00, 0.00),
	(6, 'Faizan', 'Sattar Rasheed', 'Class 2', '03062097438', '', '2026-06-13 06:25:06', 'June', NULL, 'Unpaid', 0.00, 3000.00),
	(7, 'Ali ahmed', 'Sarvech', 'Class 1', '03322722160', '', '2026-06-18 15:39:42', 'June', NULL, 'Paid', 0.00, 0.00);

-- Dumping structure for table school_db.students_class
DROP TABLE IF EXISTS `students_class`;
CREATE TABLE IF NOT EXISTS `students_class` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) DEFAULT NULL,
  `father_name` varchar(100) DEFAULT NULL,
  `class_name` varchar(50) DEFAULT NULL,
  `roll_no` varchar(50) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.students_class: ~0 rows (approximately)

-- Dumping structure for table school_db.student_admissions
DROP TABLE IF EXISTS `student_admissions`;
CREATE TABLE IF NOT EXISTS `student_admissions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_name` varchar(100) NOT NULL,
  `father_name` varchar(100) NOT NULL,
  `class_name` varchar(50) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `address` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.student_admissions: ~1 rows (approximately)
INSERT INTO `student_admissions` (`id`, `student_name`, `father_name`, `class_name`, `phone`, `address`, `created_at`) VALUES
	(1, 'Ali', 'ahmed', 'two', '03062097438', 'pacca chang', '2026-06-10 07:15:07');

-- Dumping structure for table school_db.student_fees
DROP TABLE IF EXISTS `student_fees`;
CREATE TABLE IF NOT EXISTS `student_fees` (
  `id` int NOT NULL AUTO_INCREMENT,
  `student_id` int NOT NULL,
  `fee_month` varchar(20) NOT NULL,
  `fee_year` int NOT NULL,
  `fee_status` enum('Paid','Unpaid') DEFAULT 'Unpaid',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.student_fees: ~0 rows (approximately)

-- Dumping structure for table school_db.website_data
DROP TABLE IF EXISTS `website_data`;
CREATE TABLE IF NOT EXISTS `website_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `section_name` varchar(100) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `page_name` varchar(50) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `layout_type` varchar(50) DEFAULT 'text_only',
  `parent_section` varchar(100) DEFAULT NULL,
  `sort_order` int DEFAULT '0',
  `parent_block` varchar(100) DEFAULT NULL,
  `block_title` varchar(255) DEFAULT NULL,
  `block_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table school_db.website_data: ~23 rows (approximately)
INSERT INTO `website_data` (`id`, `section_name`, `title`, `description`, `created_at`, `page_name`, `image`, `layout_type`, `parent_section`, `sort_order`, `parent_block`, `block_title`, `block_name`) VALUES
	(65, 'Home', 'Class Work', 'Explore memorable moments and activities at Faizan School System.', '2026-06-18 07:57:09', NULL, '1781770102_class_work.jpg', 'image_top', 'Home', 1, NULL, 'School Gallery', 'School Gallery'),
	(66, 'Home', 'Student Activity', 'Explore memorable moments and activities at Faizan School System.', '2026-06-18 07:57:09', NULL, '1781770085_photo1.jpg', 'image_top', 'Home', 2, NULL, 'School Gallery', 'School Gallery'),
	(67, 'Home', 'School Activity', 'Explore memorable moments and activities at Faizan School System.', '2026-06-18 07:57:09', NULL, '1781770070_student.jpg', 'image_top', 'Home', 3, NULL, 'School Gallery', 'School Gallery'),
	(68, 'Home', 'School Event', 'Explore memorable moments and activities at Faizan School System.', '2026-06-18 07:57:09', NULL, '1781770034_School Activity.jpg', 'image_top', 'Home', 4, NULL, 'School Gallery', 'School Gallery'),
	(83, 'Home', 'Class KG', 'This is a Box of class KG', '2026-06-18 15:16:20', NULL, '', 'image_top', 'Home', 0, 'Academics', 'Academics', 'Academics'),
	(84, 'Home', 'Class Five', 'This is a box of Class Five students', '2026-06-18 15:17:01', NULL, '', 'image_top', 'Home', 0, 'Academics', 'Academics', 'Academics'),
	(85, 'Home', 'Class Five', 'This is a gallery', '2026-06-18 15:17:57', NULL, '1781795877_6a340c25aacb5.jpg', 'image_top', 'Home', 0, 'School Gallery', 'School Gallery', 'School Gallery'),
	(86, 'Announcement', 'Students Activity', '', '2026-06-18 15:32:32', NULL, '1781796752_6a340f908b29b.jpg', 'image_top', 'Announcement', 0, 'Class 4', 'Class 4', 'Class 4'),
	(88, 'Home', 'hello', '', '2026-06-19 07:29:17', NULL, '1781854157_6a34efcde7021.jpg', 'image_top', 'Home', 0, 'Class Four Student', 'Class Four Student', 'Class Four Student'),
	(89, 'Home', 'students activity', '', '2026-06-19 15:51:13', NULL, '1781884273_6a356571b45b5.jpg', 'image_top', 'Home', 0, 'Academics', 'Academics', 'Academics'),
	(90, 'Home', 'Students', 'Students are enjoying', '2026-06-19 15:52:40', NULL, '1781884360_6a3565c848166.jpg', 'image_top', 'Home', 0, 'School Gallery', 'School Gallery', 'School Gallery'),
	(91, 'Home', '', '', '2026-06-19 16:15:18', NULL, '1781885718_6a356b16ae38e.jpg', 'image_top', 'Home', 0, 'School Gallery', 'School Gallery', 'School Gallery'),
	(117, 'Home', 'About School', 'Faizan School System provides quality education with discipline, care and Islamic values.', '2026-06-19 19:32:36', NULL, '1781897556_6a359954bfc1a.jpg', 'image_top', 'Home', 0, 'About Faizan School System', 'About Faizan School System', 'About Faizan School System'),
	(119, 'Home', 'Contact Us', 'Near Royal City School, Pacca Chang', '2026-06-19 19:35:33', NULL, '', 'image_top', 'Home', 0, 'Contact Us', 'Contact Us', 'Contact Us'),
	(120, 'Gallery', 'Students Data', 'Record of students', '2026-06-19 19:40:51', NULL, '1781898051_6a359b43e418d.jpg', 'image_top', 'Gallery', 0, 'School Gallery', 'School Gallery', 'School Gallery'),
	(121, 'Gallery', 'Students Data', 'Records of our students', '2026-06-19 19:41:52', NULL, '1781898112_6a359b809d85b.jpg', 'image_top', 'Gallery', 0, 'Class Four Student', 'Class Four Student', 'Class Four Student'),
	(122, 'About Us', 'Teachers Data', 'There are 15 teacher in the school', '2026-06-19 19:43:48', NULL, '1781898228_6a359bf488979.jpg', 'image_top', 'About Us', 0, 'About School', 'About School', 'About School'),
	(123, 'Contact', 'teachers contact', '', '2026-06-19 19:44:36', NULL, '1781898276_6a359c240a573.jpg', 'image_top', 'Contact', 0, 'Contacts details', 'Contacts details', 'Contacts details'),
	(124, 'Academics', 'data', '', '2026-06-19 19:59:46', NULL, '1781899186_6a359fb20bb88.jpg', 'image_top', 'Academics', 0, 'new block', 'new block', 'new block'),
	(125, 'Gallery', 'block data', '', '2026-06-19 20:00:56', NULL, '1781899256_6a359ff878853.jpg', 'image_top', 'Gallery', 0, 'gallery new bock', 'gallery new bock', 'gallery new bock'),
	(126, 'Academics', 'this is a data', '', '2026-06-20 04:56:12', NULL, '1781931372_6a361d6cb138e.jpg', 'image_top', 'Academics', 0, 'New  block 2', 'New  block 2', 'New  block 2'),
	(127, 'Home', 'students', '', '2026-06-20 04:58:09', NULL, '1781931489_6a361de1702ac.jpg', 'image_top', 'Home', 0, 'Academics', 'Academics', 'Academics'),
	(128, 'Home', 'activity', '', '2026-06-20 04:58:49', NULL, '1781931529_6a361e09628f6.jpg', 'image_top', 'Home', 0, 'About Faizan School System', 'About Faizan School System', 'About Faizan School System');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
