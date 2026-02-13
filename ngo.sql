-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2026 at 02:00 PM
-- Server version: 8.0.41
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ngo`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int DEFAULT NULL,
  `phone` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `name`, `email`, `city_id`, `phone`) VALUES
(1, 'Tanmay Maurya', 'sankat@gmail.com', 1, 9760576202);

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `login_id` int NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `admin_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`login_id`, `username`, `password`, `admin_id`) VALUES
(1, 'admin', '12345', 1);

-- --------------------------------------------------------

--
-- Table structure for table `city`
--

CREATE TABLE `city` (
  `city_id` int NOT NULL,
  `cname` varchar(10) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `city`
--

INSERT INTO `city` (`city_id`, `cname`) VALUES
(1, 'Delhi'),
(2, 'GrNoida'),
(3, 'other'),
(4, 'mumbai'),
(5, 'pune'),
(6, 'banglore');

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `donor_id` int NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `city_id` int DEFAULT NULL,
  `phone` bigint NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`donor_id`, `email`, `address`, `city_id`, `phone`, `name`) VALUES
(1, '0231csiot104@niet.co.in', 'NIET Greater Noida', 2, 8789052773, 'Tanmay'),
(4, 'vishal@gmail.com', 'Muzaffarpur', 2, 9334396531, 'Vishal Kumar'),
(5, 'nishant@gmail.com', 'Ara', 2, 8709091505, 'Nishant Kumar'),
(6, 'anand@gmail.com', 'Champaran', 1, 9955668055, 'Anand Kumar'),
(7, 'rohit@gmail.com', 'Buxar', 4, 9798572504, 'Rohit Kumar'),
(8, 'raj@gmail.com', 'Banaras', 5, 8874594563, 'Raj Singh'),
(9, 'abhishek@gmail.com', 'Mzaffarpur', 4, 9572742412, 'Abhishek Kumar'),
(10, 'sparsh@gmail.com', 'kanpur', 1, 4563217895, 'Sparsh Gupta');

-- --------------------------------------------------------

--
-- Table structure for table `donor_login`
--

CREATE TABLE `donor_login` (
  `username` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `login_id` int NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `donor_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donor_login`
--

INSERT INTO `donor_login` (`username`, `login_id`, `password`, `donor_id`) VALUES
('donor', 1, '12345', 1),
('vishal', 2, '12345', 4),
('nishant', 3, '12345', 5),
('anand', 4, '12345', 6),
('rohit', 5, '12345', 7),
('raj', 6, '12345', 8),
('abhishek', 7, '12345', 9),
('sparsh', 8, '12345', 10);

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `Item_id` int NOT NULL,
  `item` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `donor_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`Item_id`, `item`, `donor_id`) VALUES
(1, '2', 1),
(2, 'Books', 1),
(3, 'Clothes', 1),
(4, 'toys', 4),
(5, 'Clothes', 5),
(6, 'books', 6),
(7, 'stationary', 7),
(8, 'books', 8),
(9, 'toys', 9),
(10, 'toys', 10);

-- --------------------------------------------------------

--
-- Table structure for table `ngo_account`
--

CREATE TABLE `ngo_account` (
  `id` int NOT NULL,
  `bank` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `ifsc_code` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `acount` text COLLATE utf8mb4_general_ci NOT NULL,
  `donor_id` int DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  `donationS` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ngo_account`
--

INSERT INTO `ngo_account` (`id`, `bank`, `ifsc_code`, `acount`, `donor_id`, `city_id`, `donationS`) VALUES
(1, '43', '3453434', '3454354', 1, 2, 1500),
(2, 'bank of baroda', '56321456321', '1236554789', 4, 2, 600),
(3, 'State bank of india', '58974563214', '5780944174', 5, 2, 1500),
(4, 'Bank of baroda', '257896412', '12360145', 6, 1, 500),
(5, 'Indian bank', '546321789', '2012365478', 7, 4, 500),
(6, 'Bank of India', '52314687', '52369874', 8, 5, 600),
(7, 'State bank of india', '59874563214', '12365', 9, 4, 300);

--
-- Triggers `ngo_account`
--
DELIMITER $$
CREATE TRIGGER `transaction` AFTER UPDATE ON `ngo_account` FOR EACH ROW INSERT into transaction(donor_id,tdate,amount) VALUES(new.donor_id,NOW(),(new.donationS-old.donationS))
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `task_id` int NOT NULL,
  `task` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `volunteer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`task_id`, `task`, `volunteer_id`) VALUES
(2, 'Collect Book from Office', 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int NOT NULL,
  `donor_id` int DEFAULT NULL,
  `tdate` datetime DEFAULT NULL,
  `amount` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `donor_id`, `tdate`, `amount`) VALUES
(1, 1, '2025-04-11 10:21:30', 500),
(2, 1, '2025-04-13 13:05:38', 100),
(4, 1, '2025-04-13 21:07:20', 400),
(5, 4, '2025-04-13 21:32:13', 100),
(6, 1, '2025-04-15 14:20:42', 500),
(7, 9, '2025-04-18 09:22:20', 100),
(8, 9, '2025-04-18 09:22:37', 200);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `volunteer_id` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `intrests` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `dob` date NOT NULL,
  `city_id` int DEFAULT NULL,
  `phone` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`volunteer_id`, `name`, `email`, `intrests`, `dob`, `city_id`, `phone`) VALUES
(1, 'Volunteer Test', 'volunteer@gmail.com', 'GRNOIDA', '1999-02-12', 2, 8785645);

-- --------------------------------------------------------

--
-- Table structure for table `volunteer_login`
--

CREATE TABLE `volunteer_login` (
  `login_id` int NOT NULL,
  `username` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `volunteer_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `volunteer_login`
--

INSERT INTO `volunteer_login` (`login_id`, `username`, `password`, `volunteer_id`) VALUES
(1, 'volunteer', '12345', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `admin_id` (`admin_id`);

--
-- Indexes for table `city`
--
ALTER TABLE `city`
  ADD PRIMARY KEY (`city_id`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`donor_id`),
  ADD UNIQUE KEY `phone` (`phone`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `donor_login`
--
ALTER TABLE `donor_login`
  ADD PRIMARY KEY (`login_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`Item_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `ngo_account`
--
ALTER TABLE `ngo_account`
  ADD PRIMARY KEY (`id`),
  ADD KEY `city_id` (`city_id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`task_id`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `donor_id` (`donor_id`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD KEY `city_id` (`city_id`);

--
-- Indexes for table `volunteer_login`
--
ALTER TABLE `volunteer_login`
  ADD PRIMARY KEY (`login_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `login_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `city`
--
ALTER TABLE `city`
  MODIFY `city_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `donor_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `donor_login`
--
ALTER TABLE `donor_login`
  MODIFY `login_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `Item_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `ngo_account`
--
ALTER TABLE `ngo_account`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `task_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `volunteer_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `volunteer_login`
--
ALTER TABLE `volunteer_login`
  MODIFY `login_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin`
--
ALTER TABLE `admin`
  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD CONSTRAINT `admin_login_ibfk_1` FOREIGN KEY (`admin_id`) REFERENCES `admin` (`admin_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `donor_login`
--
ALTER TABLE `donor_login`
  ADD CONSTRAINT `donor_login_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `items`
--
ALTER TABLE `items`
  ADD CONSTRAINT `items_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ngo_account`
--
ALTER TABLE `ngo_account`
  ADD CONSTRAINT `ngo_account_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`),
  ADD CONSTRAINT `ngo_account_ibfk_2` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `task`
--
ALTER TABLE `task`
  ADD CONSTRAINT `task_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `transaction`
--
ALTER TABLE `transaction`
  ADD CONSTRAINT `transaction_ibfk_1` FOREIGN KEY (`donor_id`) REFERENCES `donor` (`donor_id`);

--
-- Constraints for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD CONSTRAINT `volunteer_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`);

--
-- Constraints for table `volunteer_login`
--
ALTER TABLE `volunteer_login`
  ADD CONSTRAINT `volunteer_login_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
