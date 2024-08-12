-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 12, 2024 at 02:27 AM
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
-- Database: `fitlogdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `goals`
--

CREATE TABLE `goals` (
  `goal_id` int(11) NOT NULL,
  `goal_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `goals`
--

INSERT INTO `goals` (`goal_id`, `goal_name`) VALUES
(12, 'Complete a 30-minute workout session'),
(13, 'Hold a plank for 60 seconds by the end of the month'),
(14, 'Jog for 20 minutes without stopping'),
(15, 'Stretch for 10 minutes every day '),
(16, 'Increase the weight you lift by 5% every month'),
(17, 'Add 5 minutes to your cardio workout each week');

-- --------------------------------------------------------

--
-- Table structure for table `history`
--

CREATE TABLE `history` (
  `history_ID` int(11) NOT NULL,
  `session` int(11) NOT NULL DEFAULT 0,
  `time` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`history_ID`, `session`, `time`, `date`) VALUES
(1, 1, 30, '2024-07-11'),
(2, 3, 60, '2024-07-11'),
(3, 1, 30, '2024-08-01'),
(4, 3, 60, '2024-08-12'),
(5, 1, 60, '2024-08-25'),
(6, 7, 70, '2020-05-12'),
(7, 2, 40, '2021-09-23'),
(8, 5, 60, '2022-03-15'),
(9, 1, 20, '2023-07-10'),
(10, 3, 30, '2024-01-19'),
(11, 6, 90, '2020-11-05'),
(12, 9, 100, '2021-06-30'),
(13, 4, 10, '2022-08-13'),
(14, 8, 50, '2023-05-04'),
(15, 7, 30, '2020-04-27'),
(16, 2, 80, '2021-11-21'),
(17, 3, 60, '2022-02-28'),
(18, 1, 90, '2023-10-01'),
(19, 4, 40, '2024-05-15'),
(20, 6, 20, '2020-03-23'),
(21, 5, 70, '2021-07-08'),
(22, 9, 50, '2022-12-22'),
(23, 8, 10, '2023-08-19'),
(24, 7, 100, '2020-09-14'),
(25, 2, 20, '2021-03-31'),
(26, 1, 80, '2022-10-07'),
(27, 4, 60, '2023-12-12'),
(28, 5, 90, '2024-06-29'),
(29, 3, 40, '2024-08-01'),
(30, 8, 30, '2024-08-02'),
(31, 9, 20, '2024-08-03'),
(32, 6, 50, '2024-08-04'),
(33, 7, 60, '2024-08-05'),
(34, 2, 100, '2024-08-06'),
(35, 1, 10, '2024-08-07'),
(36, 4, 70, '2024-08-08'),
(37, 5, 80, '2024-08-09'),
(38, 3, 90, '2024-08-10'),
(39, 8, 40, '2024-08-11'),
(40, 9, 30, '2024-08-12'),
(41, 6, 20, '2024-08-13'),
(42, 7, 50, '2024-08-14'),
(43, 2, 60, '2024-08-15'),
(44, 1, 70, '2024-08-16'),
(45, 4, 80, '2024-08-17'),
(46, 5, 90, '2024-08-18'),
(47, 3, 100, '2024-08-19'),
(48, 8, 10, '2024-08-20'),
(49, 9, 20, '2024-08-21'),
(50, 6, 30, '2024-08-22'),
(51, 7, 40, '2024-08-23'),
(52, 2, 50, '2024-08-24'),
(53, 1, 60, '2024-08-25'),
(54, 2, 30, '2024-08-12'),
(55, 7, 10, '2024-08-12'),
(56, 9, 20, '2024-08-12'),
(57, 1, 40, '2024-08-12'),
(58, 8, 10, '2024-08-12'),
(59, 4, 60, '2024-08-12'),
(60, 3, 20, '2024-08-12');

-- --------------------------------------------------------

--
-- Table structure for table `recommend`
--

CREATE TABLE `recommend` (
  `id` int(11) NOT NULL,
  `sess` int(11) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recommend`
--

INSERT INTO `recommend` (`id`, `sess`, `time`) VALUES
(1, 1, 30),
(2, 2, 30),
(3, 3, 45),
(4, 4, 60),
(5, 5, 60),
(6, 6, 60),
(7, 7, 60),
(8, 8, 40),
(9, 9, 15);

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `Ses_ID` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`Ses_ID`, `type`) VALUES
(1, 'Jogging'),
(2, 'Swimming'),
(3, 'Cycling'),
(4, 'Weightlifting'),
(5, 'Yoga'),
(6, 'Pilates'),
(7, 'Boxing'),
(8, 'Rowing'),
(9, 'Jump Rope');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `FirstName` varchar(100) NOT NULL,
  `LastName` varchar(100) NOT NULL,
  `ID` int(11) NOT NULL,
  `JoinDate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`FirstName`, `LastName`, `ID`, `JoinDate`) VALUES
('Kihun', 'Kim', 2, '2024-07-11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `goals`
--
ALTER TABLE `goals`
  ADD PRIMARY KEY (`goal_id`);

--
-- Indexes for table `history`
--
ALTER TABLE `history`
  ADD PRIMARY KEY (`history_ID`);

--
-- Indexes for table `recommend`
--
ALTER TABLE `recommend`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`Ses_ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `goals`
--
ALTER TABLE `goals`
  MODIFY `goal_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `history`
--
ALTER TABLE `history`
  MODIFY `history_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `recommend`
--
ALTER TABLE `recommend`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `Ses_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
