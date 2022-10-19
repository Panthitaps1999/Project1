-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 19, 2022 at 03:27 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_document_form`
--

CREATE TABLE `tb_document_form` (
  `document_form_id` int(2) NOT NULL,
  `document_form_name` varchar(50) NOT NULL,
  `document_form_file` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_document_form`
--

INSERT INTO `tb_document_form` (`document_form_id`, `document_form_name`, `document_form_file`) VALUES
(10, 'โครงการทั่วไป', 'filedoc/file_6345393a332c0.doc'),
(11, 'โครงการบริการวิชาการ', 'filedoc/file_634539521de26.doc'),
(12, 'โครงการศิลปวัฒนธรรม', 'filedoc/file_63453b4bdb9d1.doc');

-- --------------------------------------------------------

--
-- Table structure for table `tb_officer`
--

CREATE TABLE `tb_officer` (
  `officer_id` int(4) NOT NULL,
  `prefix` varchar(15) NOT NULL,
  `officer_name` varchar(50) NOT NULL,
  `officer_surname` varchar(50) NOT NULL,
  `officer_email` varchar(150) NOT NULL,
  `officer_phone` varchar(10) NOT NULL,
  `officer_username` varchar(20) NOT NULL,
  `officer_password` varchar(32) NOT NULL,
  `officer_role` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_officer`
--

INSERT INTO `tb_officer` (`officer_id`, `prefix`, `officer_name`, `officer_surname`, `officer_email`, `officer_phone`, `officer_username`, `officer_password`, `officer_role`) VALUES
(24, 'นางสาว', 'ปัณฑิตา', 'สมตั้ง', 'projectpornrawin@gmail.com', '0999999999', 'officer01', 'dda6288166123309eb63a16c2c0c682f', 'officer');

-- --------------------------------------------------------

--
-- Table structure for table `tb_prefix`
--

CREATE TABLE `tb_prefix` (
  `prefix_id` int(2) NOT NULL,
  `prefix` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_prefix`
--

INSERT INTO `tb_prefix` (`prefix_id`, `prefix`) VALUES
(1, 'นาย'),
(2, 'นาง'),
(3, 'นางสาว'),
(4, 'ดร.'),
(5, 'ผศ.'),
(6, 'ผศ.ดร.'),
(7, 'รศ.'),
(8, 'รศ.ดร.'),
(9, 'ศ.'),
(10, 'ศ.ดร.'),
(11, 'ว่าที่ร้อยตรี'),
(12, 'ว่าที่ร้อยโท'),
(13, 'ว่าที่ร้อยเอก');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project`
--

CREATE TABLE `tb_project` (
  `project_id` int(10) NOT NULL,
  `project_type` varchar(20) NOT NULL,
  `project_name` varchar(200) NOT NULL,
  `project_date_start` date NOT NULL,
  `project_date_end` date NOT NULL,
  `project_location` varchar(100) NOT NULL,
  `project_budget` varchar(10) NOT NULL,
  `project_responsible` varchar(100) NOT NULL,
  `project_documents` varchar(255) NOT NULL,
  `project_status` varchar(1) NOT NULL,
  `user_id` int(4) NOT NULL,
  `officer_id` int(4) NOT NULL,
  `project_comment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_project`
--

INSERT INTO `tb_project` (`project_id`, `project_type`, `project_name`, `project_date_start`, `project_date_end`, `project_location`, `project_budget`, `project_responsible`, `project_documents`, `project_status`, `user_id`, `officer_id`, `project_comment`) VALUES
(142, 'โครงการทั่วไป', 'การพัฒนาศักยภาพนักวิจัยในการเขียนข้อเสนอโครงการและเผยแพร่ผลงานวิจัยให้สอดคล้องกับวิจัยและนวัตกรรมในมิติใหม่', '2022-10-11', '2022-10-12', 'คณะครุศาสตร์อุตสาหกรรม', '47000', 'พรรวินท์ ประดิษฐ์ชัย', 'filepdf/file_63454aab85e67.pdf', '5', 38, 24, ''),
(143, 'โครงการทั่วไป', 'อบรมปฏิบัติการฝึกทักษะการสอน การผลิตสื่อ สู่การแข่งขันความเป็นเลิศวิชาการ', '2022-10-11', '2022-10-11', 'คณะครุศาสตร์อุตสาหกรรม', '50000', 'พรรวินท์ ประดิษฐ์ชัย', 'filepdf/file_63454b3480a39.pdf', '1', 38, 24, 'เอกสารไม่ถูกต้อง'),
(144, 'โครงการทั่วไป', 'โครงการสัมมนาพัฒนาแผนปฏิบัติราชการประจำปี คณะครุศาสตร์อุตสาหกรรม', '2022-10-11', '2022-10-12', 'คณะครุศาสตร์อุตสาหกรรม', '30000', 'พรรวินท์ ประดิษฐ์ชัย', 'filepdf/file_6345591d2c169.pdf', '0', 38, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_project_type`
--

CREATE TABLE `tb_project_type` (
  `project_type_id` int(2) NOT NULL,
  `project_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_project_type`
--

INSERT INTO `tb_project_type` (`project_type_id`, `project_type`) VALUES
(1, 'โครงการทั่วไป'),
(2, 'โครงการบริการวิชาการ'),
(3, 'โครงการศิลปวัฒนธรรม');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `user_id` int(4) NOT NULL,
  `prefix` varchar(15) NOT NULL,
  `user_name` varchar(50) NOT NULL,
  `user_surname` varchar(50) NOT NULL,
  `user_email` varchar(150) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_username` varchar(20) NOT NULL,
  `user_password` varchar(32) NOT NULL,
  `user_role` varchar(20) NOT NULL,
  `officer_id` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`user_id`, `prefix`, `user_name`, `user_surname`, `user_email`, `user_phone`, `user_username`, `user_password`, `user_role`, `officer_id`) VALUES
(38, 'นางสาว', 'พรรวินท์', 'ประดิษฐ์ชัย', 'pornrawin3819@gmail.com', '0999999999', 'user01', '32725db755033a7e4d9a7c72a24cfd80', 'responsible', 24),
(41, 'ผศ.ดร.', 'สิริพร', 'อั้งโสภา', 'pornrawin1207@gmail.com', '0999999999', 'deputydean01', '4b87877c45694e33ad6de3e2f78f0986', 'deputydean', 1),
(42, 'ผศ.', 'อานนท์', 'นิยมผล', 'mintochan21@gmail.com', '0999999999', 'dean01', 'cfa9b2a82d1036cb00a22474416de259', 'dean', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_document_form`
--
ALTER TABLE `tb_document_form`
  ADD PRIMARY KEY (`document_form_id`);

--
-- Indexes for table `tb_officer`
--
ALTER TABLE `tb_officer`
  ADD PRIMARY KEY (`officer_id`),
  ADD UNIQUE KEY `officer_email` (`officer_email`),
  ADD UNIQUE KEY `officer_username` (`officer_username`);

--
-- Indexes for table `tb_prefix`
--
ALTER TABLE `tb_prefix`
  ADD PRIMARY KEY (`prefix_id`);

--
-- Indexes for table `tb_project`
--
ALTER TABLE `tb_project`
  ADD PRIMARY KEY (`project_id`);

--
-- Indexes for table `tb_project_type`
--
ALTER TABLE `tb_project_type`
  ADD PRIMARY KEY (`project_type_id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_email` (`user_email`),
  ADD UNIQUE KEY `user_username` (`user_username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_document_form`
--
ALTER TABLE `tb_document_form`
  MODIFY `document_form_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tb_officer`
--
ALTER TABLE `tb_officer`
  MODIFY `officer_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_prefix`
--
ALTER TABLE `tb_prefix`
  MODIFY `prefix_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tb_project`
--
ALTER TABLE `tb_project`
  MODIFY `project_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `tb_project_type`
--
ALTER TABLE `tb_project_type`
  MODIFY `project_type_id` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `user_id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
