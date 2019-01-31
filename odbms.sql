-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 22, 2019 at 10:41 AM
-- Server version: 10.1.36-MariaDB
-- PHP Version: 5.6.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `odbms`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood_groups`
--

CREATE TABLE `blood_groups` (
  `id` int(11) NOT NULL,
  `name` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blood_groups`
--

INSERT INTO `blood_groups` (`id`, `name`) VALUES
(1, 'A+'),
(2, 'A-'),
(3, 'B+'),
(4, 'B-'),
(5, 'AB+'),
(6, 'AB-'),
(7, 'O+'),
(8, 'O-');

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `name`, `phone`, `email`, `subject`, `message`, `created_at`) VALUES
(1, 'Praveen', '9944406172', 'praveenkumar.pdknp@gmail.com', 'Hay Praveen Please Contact ', 'Hay Praveen Please Contact Me We Need O+ Blood i think Your near me So Contact me if you free okey... Thank You For Your Support', '2019-01-21 10:58:34'),
(2, 'Praveen', '9944406172', 'praveenkumar.pdknp@gmail.com', 'Hay Praveen Please Contact ', 'Hay Praveen Please Contact Me We Need O+ Blood i think Your near me So Contact me if you free okey... Thank You For Your Support', '2019-01-21 10:58:53'),
(3, 'Praveen', '9944406172', 'praveenkumar.pdknp@gmail.com', 'Hay Praveen Please Contact ', 'Hay Praveen Please Contact Me We Need O+ Blood i think Your near me So Contact me if you free okey... Thank You For Your Support', '2019-01-21 10:58:53');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `state_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `state_id`) VALUES
(1, '	ARIYALUR', 1),
(2, 'CHENNAI', 1),
(3, 'COIMBATORE', 1),
(4, 'CUDDALORE', 1),
(5, 'DHARMAPURI', 1),
(6, 'DINDIGUL', 1),
(7, 'ERODE', 1),
(8, 'KANCHIPURAM', 1),
(9, 'KANNIYAKUMARI', 1),
(10, 'KARUR', 1),
(11, 'KRISHNAGIRI', 1),
(12, 'MADURAI', 1),
(13, 'NAGAPATTINAM', 1),
(14, 'NAMAKKAL', 1),
(15, 'PERAMBALUR', 1),
(16, 'PUDUKKOTTAI', 1),
(17, 'RAMANATHAPURAM', 1),
(18, 'SALEM', 1),
(19, 'SIVAGANGA', 1),
(20, 'THANJAVUR', 1),
(21, 'THENI', 1),
(22, 'THE NILGIRIS', 1),
(23, 'THIRUVALLUR', 1),
(24, 'THIRUVARUR', 1),
(25, 'TIRUCHIRAPPALLI', 1),
(26, 'TIRUNELVELI', 1),
(27, 'TIRUPPUR', 1),
(28, 'TIRUVANNAMALAI', 1),
(29, 'TUTICORIN', 1),
(30, 'VELLORE', 1),
(31, 'VILLUPURAM', 1),
(32, 'VIRUDHUNAGAR', 1);

-- --------------------------------------------------------

--
-- Table structure for table `donation_history`
--

CREATE TABLE `donation_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation_history`
--

INSERT INTO `donation_history` (`id`, `user_id`, `date`) VALUES
(1, 1, '2019-01-21'),
(2, 2, '2019-01-17'),
(3, 3, '2019-01-21'),
(4, 2, '2019-01-21');

-- --------------------------------------------------------

--
-- Table structure for table `login_history`
--

CREATE TABLE `login_history` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `login_at` timestamp NULL DEFAULT NULL,
  `logout_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_history`
--

INSERT INTO `login_history` (`id`, `user_id`, `login_at`, `logout_at`) VALUES
(1, 1, '2019-01-21 00:46:54', '2019-01-21 00:47:51'),
(2, 2, '2019-01-21 03:16:47', '2019-01-21 03:26:17'),
(3, 2, '2019-01-21 03:28:43', '2019-01-21 03:30:17'),
(4, 3, '2019-01-21 03:30:41', '2019-01-21 03:31:12'),
(5, 2, '2019-01-21 03:31:23', '2019-01-21 03:31:47'),
(6, 3, '2019-01-21 03:31:59', '2019-01-21 03:34:25'),
(7, 2, '2019-01-21 03:34:43', '2019-01-21 03:36:12'),
(8, 1, '2019-01-21 03:53:32', '2019-01-21 05:11:37'),
(9, 1, '2019-01-21 05:26:52', '2019-01-21 05:28:17'),
(10, 3, '2019-01-21 05:28:25', '2019-01-21 05:29:05'),
(11, 1, '2019-01-21 05:29:16', '2019-01-21 05:37:49'),
(12, 4, '2019-01-21 05:40:19', '2019-01-21 06:21:55'),
(13, 2, '2019-01-21 06:22:10', '2019-01-21 06:25:22'),
(14, 2, '2019-01-21 09:37:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `blood_group_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL COMMENT 'organization',
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `availability` int(2) NOT NULL DEFAULT '1' COMMENT '0-unavailable, 1-available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `dob`, `phone`, `blood_group_id`, `user_id`, `created_at`, `availability`) VALUES
(1, 'Kumar', '1994-04-26', '8899999999', 7, 4, '2019-01-21 10:10:55', 1),
(2, 'Siva Kumar', '1994-01-07', '9443189495', 1, 4, '2019-01-21 10:12:11', 1);

-- --------------------------------------------------------

--
-- Table structure for table `states`
--

CREATE TABLE `states` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `states`
--

INSERT INTO `states` (`id`, `name`) VALUES
(1, 'Tamil Nadu');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `blood_group_id` int(11) DEFAULT NULL,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `avg_no_employees` varchar(10) DEFAULT NULL,
  `location` varchar(200) DEFAULT NULL,
  `state_id` int(11) NOT NULL,
  `district_id` int(11) NOT NULL,
  `img` varchar(500) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(2) NOT NULL DEFAULT '0' COMMENT '0->pending, 1->active, 2->blocked',
  `user_type` int(2) NOT NULL DEFAULT '2' COMMENT '1-admin, 2-user, 3-organization',
  `availability` int(2) DEFAULT '1' COMMENT '0-unavailable, 1-available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `blood_group_id`, `name`, `email`, `password`, `phone`, `gender`, `dob`, `address`, `avg_no_employees`, `location`, `state_id`, `district_id`, `img`, `created_at`, `status`, `user_type`, `availability`) VALUES
(1, 1, 'Admin', 'admin@mail.com', 'WBZN3CFJXPc2ScxZq7LE3G3e17i1GGBZj9fArPBaApk', '9809534216', 'male', '2000-05-14', NULL, NULL, 'Tvm', 1, 1, '', '2016-05-29 13:27:29', 1, 1, 0),
(2, 7, 'Praveen', 'praveenkumar.pdknp@gmail.com', '', '9944406172', 'male', '1994-04-26', NULL, NULL, '302,Nehruji Street,BB Kulam ,Madurai', 1, 12, NULL, '2019-01-21 07:46:33', 1, 2, 0),
(3, 3, 'Thenmozhi', 'tmozhi1994@gmail.com', '', '9655066103', 'female', '1994-12-29', NULL, NULL, 'HMS Colony ,Madurai', 1, 12, NULL, '2019-01-21 07:58:32', 1, 2, 0),
(4, NULL, 'Guild Digital Network', 'guilddigital2@gmail.com', '', '4522360495', NULL, NULL, 'AA Road,Madurai', '5', NULL, 1, 12, NULL, '2019-01-21 10:10:09', 1, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood_groups`
--
ALTER TABLE `blood_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_history`
--
ALTER TABLE `donation_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_history`
--
ALTER TABLE `login_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `states`
--
ALTER TABLE `states`
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
-- AUTO_INCREMENT for table `blood_groups`
--
ALTER TABLE `blood_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `donation_history`
--
ALTER TABLE `donation_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `login_history`
--
ALTER TABLE `login_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `states`
--
ALTER TABLE `states`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
