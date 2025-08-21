-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Aug 21, 2025 at 10:15 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `university_attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `semester` varchar(100) DEFAULT NULL,
  `date` date NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `timestamp` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `faculty` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `student_id`, `name`, `faculty`, `semester`) VALUES
(1, '6800', 'Muhanad Farah Abdirahman', 'Information Technology', '9'),
(2, '6801', 'Abshir Bashir Warsame', 'Information Technology', '3'),
(3, '6802', 'Sacdiyo Jamac Ahmed', 'Project Management', '5'),
(4, '6803', 'Abdullahi Yasir Ahmed', 'Project Management', '5'),
(5, '6804', 'Siham Ahmed Warsame', 'Economics', '5'),
(6, '6805', 'Abshir Jama\' Ali', 'Economics', '5'),
(7, '6806', 'Zakariye Abdirashid Ahmed', 'Economics', '5'),
(8, '6807', 'Isa Basir Abdullahi', 'Project Management', '5'),
(9, '6808', 'Nim\'o Osman Omar', 'Information Technology', '3'),
(10, '6809', 'Kaafiyo Farah Ahmed', 'Information Technology', '3'),
(11, '6810', 'Kamil Ahmed Abdinasir', 'Information Technology', '3'),
(12, '6811', 'Kauthar Elmi Warsame', 'Information Technology', '3'),
(13, '6812', 'Hamdi Abdullahi Adam', 'Information Technology', '3'),
(14, '6813', 'Ali Ahmed Ali', 'Information Technology', '9'),
(15, '6814', 'Maryam Abdi Ali', 'Economics', '3'),
(16, '6815', 'Aamino Abdiaziz Ali', 'Economics', '3'),
(17, '6816', 'Deqo Nur Sabriye', 'Information Technology', '9'),
(18, '6817', 'Sayid Jamac Abdalla', 'Information Technology', '9'),
(19, '6818', 'Abdirahman Abdirashid Ahmed', 'Information Technology', '9'),
(20, '6819', 'Aisha Ahmed Ali', 'Project Management', '5');

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `must_change_password` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
