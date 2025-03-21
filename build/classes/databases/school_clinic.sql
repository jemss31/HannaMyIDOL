-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2025 at 06:16 PM
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
-- Database: `school_clinic`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `account_type` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `uname` varchar(50) NOT NULL,
  `pname` varchar(50) DEFAULT NULL,
  `contact` varchar(20) NOT NULL,
  `status` enum('Pending','Active','Inactive') DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `gender`, `account_type`, `email`, `uname`, `pname`, `contact`, `status`) VALUES
(1, 'james', 'ansali', 'Male', 'Admin', 'james@gmail.com', 'jemss', 'Ansali@123', '09392265335', 'Active'),
(2, 'Sven', 'Ansali', 'Male', 'Staff', 'Sven@gmail.com', 'sven', 'Sven@123', '09392265335', 'Active'),
(3, 'mint', 'tol', 'Male', 'Staff', 'gwapo@123', 'mintol', 'mintol@123', '09392265335', 'Pending'),
(4, 'hanna', 'han', 'Female', 'Staff', 'han@gmail.com', 'hann', 'Hanna@123', '34234324552', 'Pending'),
(5, 'gwapo', 'test', 'Male', 'Staff', 'gwapo@gmail.com', 'gwapo', 'gwapo123', '09392265335', 'Pending'),
(6, 'gwapa', 'test', 'Male', 'Staff', 'qwe@gmail.com', 'gwapa', 'gwapa123', '09234425223', 'Pending'),
(7, 'gatttt', 'sy', 'Female', 'Staff', 'hanss@gmail.com', 'hanss', 'hanss123', '123456789012', 'Active');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `uname` (`uname`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
