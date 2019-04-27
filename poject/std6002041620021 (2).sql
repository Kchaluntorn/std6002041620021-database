-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 26, 2019 at 03:50 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `std6002041620021`
--

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_id` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_id`, `street`, `city`, `postcode`) VALUES
(1, '22 Deer Rd', 'London', 'SW1 4EH'),
(2, '16 Argyll St', 'Aberdeen', 'AB3 3SU'),
(3, '163 Main St', 'Glasgow', 'G11 9XQ'),
(4, '32 Manse Rd', 'Bristol', 'Bs99 1NZ'),
(5, '56 Clover Dr ', 'London', 'NW10 6EU');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `client_no` int(11) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  `tel_no` varchar(255) NOT NULL,
  `pref_type` varchar(255) NOT NULL,
  `max_rent` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`client_no`, `fName`, `lName`, `tel_no`, `pref_type`, `max_rent`) VALUES
(1, 'John', 'kay', '0207-774-5632', 'flat', 425),
(2, 'Aline', 'Stewart', '0141-848-1825', 'flat', 350),
(3, 'Mike', 'Ritchie', '01475-392178', 'house', 750),
(4, 'Mary', 'Tregear', '01224-196720', 'flat', 600);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1556278650),
('m130524_201442_init', 1556278655),
('m190124_110200_add_verification_token_column_to_user_table', 1556278656),
('m190426_114203_create_branch_table', 1556279151),
('m190426_114612_create_staff_table', 1556279383),
('m190426_115021_create_Property_for_rent_table', 1556279620),
('m190426_115400_create_client_table', 1556279827),
('m190426_115738_create_private_owner_table', 1556279976),
('m190426_120004_create_viewing_table', 1556280103),
('m190426_120319_create_registration_table', 1556280387);

-- --------------------------------------------------------

--
-- Table structure for table `private_owner`
--

CREATE TABLE `private_owner` (
  `owner_no` int(11) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lName` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `tel_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `private_owner`
--

INSERT INTO `private_owner` (`owner_no`, `fName`, `lName`, `address`, `tel_no`) VALUES
(1, 'joe', 'keogh', '2 Fergus Dr,Aberdeen AB2 7SX', 1224861212),
(2, 'carol', 'farrel', '6 Achray St,Glasgow G32 9DX', 1413577419),
(3, 'Tina', 'Murphy', '63 Well st,Glasgow G42', 1419431728),
(4, 'Tony', 'Shaw', '12 Park PI,Glassgow G4 0QR', 1412257025);

-- --------------------------------------------------------

--
-- Table structure for table `property_for_rent`
--

CREATE TABLE `property_for_rent` (
  `property_no` int(11) NOT NULL,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `rooms` int(11) NOT NULL,
  `rent` int(11) NOT NULL,
  `owner_no` varchar(255) NOT NULL,
  `staff_no` varchar(255) NOT NULL,
  `branch_no` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `property_for_rent`
--

INSERT INTO `property_for_rent` (`property_no`, `street`, `city`, `postcode`, `type`, `rooms`, `rent`, `owner_no`, `staff_no`, `branch_no`) VALUES
(1, '16 Holhead', 'Aberdeen', 'AB7 5SU ', 'House', 6, 650, 'CO46', 'SA9', 'B007'),
(2, '6 Argyll St', 'London', 'NW2', 'flat', 4, 400, 'CO54', 'SL41', 'B005'),
(3, '6 Lawrence St', 'Glassgo', 'G11 9QX ', 'flat', 3, 350, 'CO40', '-', 'B003'),
(4, '2 Manor Rd', 'Glassgo', 'G32 4QX', 'flat', 3, 375, 'Co93', 'SG37', 'B003'),
(5, '18 Dale Rd', 'Glassgo', 'G12', 'house', 5, 600, 'CO87', 'SG37', 'B003'),
(6, '5 Novar Dr', 'Glassgo', 'G12 9AX', 'flat', 4, 450, 'CO93', 'SG14', 'B003');

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE `registration` (
  `client_no` int(11) NOT NULL,
  `branc_no` varchar(255) NOT NULL,
  `staff_no` varchar(255) NOT NULL,
  `deate_joined` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`client_no`, `branc_no`, `staff_no`, `deate_joined`) VALUES
(1, 'B005', 'SL41', '2004-01-02'),
(2, 'B003', 'SG37', '2003-04-03'),
(3, 'B003', 'SG37', '2002-11-16'),
(4, 'B007', 'SA9', '2003-04-07');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(11) NOT NULL,
  `fName` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `sex` varchar(2) NOT NULL,
  `dob` varchar(255) NOT NULL,
  `salary` int(11) NOT NULL,
  `branch_id` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `fName`, `lname`, `position`, `sex`, `dob`, `salary`, `branch_id`) VALUES
(1, 'Jhon', 'White', 'Manager', 'M', '1-otb-45', 30000, '1'),
(2, 'Ann', 'Beech', 'Assistant', 'F', '10-Nov-60', 12000, '3'),
(3, 'David', 'Ford', 'Supervisor', 'M', '24-Mar-58', 18000, '3'),
(4, 'Mary', 'Howe', 'Assistant', 'F', '19-Feb-70', 9000, '2'),
(5, 'Susan', 'Brand', 'Manager', 'F', '3-Jun-40', 24000, '3'),
(6, 'Julie', 'Lee', 'Assistant', 'F', '13-Jun-65', 9000, '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `verification_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `viewing`
--

CREATE TABLE `viewing` (
  `client_no` int(11) NOT NULL,
  `property_no` varchar(255) NOT NULL,
  `view_date` varchar(255) NOT NULL,
  `comment` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `viewing`
--

INSERT INTO `viewing` (`client_no`, `property_no`, `view_date`, `comment`) VALUES
(1, 'PA14', '24-Apr-04', 'too small'),
(2, 'PG4', '20-Apr-04', 'to remote'),
(3, 'PG4', '24-May-04', '-'),
(4, 'PA14', '14-May-04', 'no dining room'),
(5, 'PG36', '28-Apr-04', '-');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `private_owner`
--
ALTER TABLE `private_owner`
  ADD PRIMARY KEY (`owner_no`);

--
-- Indexes for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  ADD PRIMARY KEY (`property_no`);

--
-- Indexes for table `registration`
--
ALTER TABLE `registration`
  ADD PRIMARY KEY (`client_no`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `password_reset_token` (`password_reset_token`);

--
-- Indexes for table `viewing`
--
ALTER TABLE `viewing`
  ADD PRIMARY KEY (`client_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `branch`
--
ALTER TABLE `branch`
  MODIFY `branch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `client_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `private_owner`
--
ALTER TABLE `private_owner`
  MODIFY `owner_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `property_for_rent`
--
ALTER TABLE `property_for_rent`
  MODIFY `property_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `registration`
--
ALTER TABLE `registration`
  MODIFY `client_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `viewing`
--
ALTER TABLE `viewing`
  MODIFY `client_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
