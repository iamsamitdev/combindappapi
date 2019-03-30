-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 01:07 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `combindappsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(5) NOT NULL,
  `jobstatus` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jobimage` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `jobdate` datetime NOT NULL,
  `joblat` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `joblon` varchar(24) COLLATE utf8_unicode_ci NOT NULL,
  `jobaccuracy` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `jobby` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `jobstatus`, `jobimage`, `jobdate`, `joblat`, `joblon`, `jobaccuracy`, `jobby`) VALUES
(1, 'แจ้งซ่อมบำรุงระบบ', '100893339.jpg', '2019-03-08 00:00:00', '20.38838933', '100.7389892', '5.308928', 'samit'),
(2, 'แจ้งซ่อมบำรุงระบบ2', '100893339.jpg', '2019-03-08 12:20:13', '20.38838933', '100.7389892', '5.308928', 'samit'),
(3, 'test job', '1552041419056.jpg', '2019-03-08 17:37:10', '13.7933222', '100.5744465', '699.9990234375', 'Samit Koyom'),
(4, 'แจ้งงานใหม่วันนี้', '1552041743562.jpg', '2019-03-08 17:42:31', '13.7933222', '100.5744465', '699.9990234375', 'Samit Koyom'),
(5, 'ทดสอบโพสต์งาน 2', '1552041877098.jpg', '2019-03-08 17:48:29', '13.7902125', '100.5719844', '600', 'Samit Koyom'),
(6, 'แจ้งงานครับ', '1552042492131.jpg', '2019-03-08 17:55:14', '13.7933222', '100.5744465', '699.9990234375', 'Samit Koyom'),
(7, 'จดงานใหม่ตอนนี้', '1552042570596.jpg', '2019-03-08 17:56:26', '13.7933374', '100.5740947', '800', 'Samit Koyom');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(5) NOT NULL,
  `username` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `fullname` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `usertype` int(1) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `fullname`, `usertype`, `status`) VALUES
(1, 'samit', '123456', 'Samit Koyom', 1, 1),
(2, 'wichai', '112233', 'Wichi Noradee', 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
