-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2023 at 10:26 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `awake_early`
--

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` int(11) NOT NULL,
  `province_name` varchar(255) NOT NULL,
  `province_code` int(11) NOT NULL,
  `region_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `province_name`, `province_code`, `region_id`) VALUES
(1, 'กรุงเทพมหานคร', 10, 1),
(2, 'สมุทรปราการ', 11, 1),
(3, 'นนทบุรี', 12, 1),
(4, 'ปทุมธานี', 13, 1),
(5, 'พระนครศรีอยุธยา', 14, 1),
(6, 'อ่างทอง', 15, 1),
(7, 'ลพบุรี', 16, 1),
(8, 'สิงห์บุรี', 17, 1),
(9, 'ชัยนาท', 18, 1),
(10, 'สระบุรี', 19, 1),
(11, 'ชลบุรี', 20, 3),
(12, 'ระยอง', 21, 3),
(13, 'จันทบุรี', 22, 3),
(14, 'ตราด', 23, 3),
(15, 'ฉะเชิงเทรา', 24, 3),
(16, 'ปราจีนบุรี', 25, 3),
(17, 'นครนายก', 26, 1),
(18, 'สระแก้ว', 27, 3),
(19, 'นครราชสีมา', 30, 4),
(20, 'บุรีรัมย์', 31, 4),
(21, 'สุรินทร์', 32, 4),
(22, 'ศรีสะเกษ', 33, 4),
(23, 'อุบลราชธานี', 34, 4),
(24, 'ยโสธร', 35, 4),
(25, 'ชัยภูมิ', 36, 4),
(26, 'อำนาจเจริญ', 37, 4),
(27, 'บึงกาฬ', 38, 4),
(28, 'หนองบัวลำภู', 39, 4),
(29, 'ขอนแก่น', 40, 4),
(30, 'อุดรธานี', 41, 4),
(31, 'เลย', 42, 4),
(32, 'หนองคาย', 43, 4),
(33, 'มหาสารคาม', 44, 4),
(34, 'ร้อยเอ็ด', 45, 4),
(35, 'กาฬสินธุ', 46, 4),
(36, 'สกลนคร', 47, 4),
(37, 'นครพนม', 48, 4),
(38, 'มุกดาหาร', 49, 4),
(39, 'เชียงใหม่', 50, 2),
(40, 'ลำพูน', 51, 2),
(41, 'ลำปาง', 52, 2),
(42, 'อุตรดิตถ์', 53, 2),
(43, 'แพร่', 54, 2),
(44, 'น่าน', 55, 2),
(45, 'พะเยา', 56, 2),
(46, 'เชียงราย', 57, 2),
(47, 'แม่ฮ่องสอน', 58, 2),
(48, 'นครสวรรค์', 60, 1),
(49, 'อุทัยธานี', 61, 1),
(50, 'กำแพงเพชร', 62, 1),
(51, 'ตาก', 63, 6),
(52, 'สุโขทัย', 64, 1),
(53, 'พิษณุโลก', 65, 1),
(54, 'พิจิตร', 66, 1),
(55, 'เพชรบูรณ์', 67, 1),
(56, 'ราชบุรี', 70, 6),
(57, 'กาญจนบุรี', 71, 6),
(58, 'สุพรรณบุรี', 72, 1),
(59, 'นครปฐม', 73, 1),
(60, 'สมุทรสาคร', 74, 1),
(61, 'สมุทรสงคราม', 75, 1),
(62, 'เพชรบุรี', 76, 6),
(63, 'ประจวบคีรีขันธ์', 77, 6),
(64, 'นครศรีธรรมราช', 80, 5),
(65, 'กระบี่', 81, 5),
(66, 'พังงา', 82, 5),
(67, 'ภูเก็ต', 83, 5),
(68, 'สุราษฎร์ธานี', 84, 5),
(69, 'ระนอง', 85, 5),
(70, 'ชุมพร', 86, 5),
(71, 'สงขลา', 90, 5),
(72, 'สตูล', 91, 5),
(73, 'ตรัง', 92, 5),
(74, 'พัทลุง', 93, 5),
(75, 'ปัตตานี', 94, 5),
(76, 'ยะลา', 95, 5),
(77, 'นราธิวาส', 96, 5);

-- --------------------------------------------------------

--
-- Table structure for table `regions`
--

CREATE TABLE `regions` (
  `id` int(11) NOT NULL,
  `region_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `regions`
--

INSERT INTO `regions` (`id`, `region_name`, `image`) VALUES
(1, 'ภาคกลาง', 'image01'),
(2, 'ภาคเหนือ', 'image02'),
(3, 'ภาคตะวันออก', 'image03'),
(4, 'ภาคตะวันออกเฉียงเหนือ', 'image04'),
(5, 'ภาคใต้', 'image05'),
(6, 'ภาคตะวันตก', 'image06');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `regions`
--
ALTER TABLE `regions`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `regions`
--
ALTER TABLE `regions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
