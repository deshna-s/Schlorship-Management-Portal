-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2021 at 05:35 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vpmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 9799500000, 'tester1@gmail.com', '0192023a7bbd73250516f069df18b500', '2019-07-05 05:38:23');

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `ID` int(10) NOT NULL,
  `VehicleCat` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`ID`, `VehicleCat`, `CreationDate`) VALUES
(6, 'TEST', '2021-05-06 13:22:07'),
(7, 'Acturial', '2021-05-06 13:48:29'),
(9, 'changgge', '2021-05-06 14:56:47'),
(10, 'Accounting Scholarships', '2021-05-06 15:19:08');

-- --------------------------------------------------------

--
-- Table structure for table `tblvehicle`
--

CREATE TABLE `tblvehicle` (
  `ID` int(10) NOT NULL,
  `ParkingNumber` varchar(1000) DEFAULT NULL,
  `VehicleCategory` varchar(1000) NOT NULL,
  `VehicleCompanyname` varchar(1000) DEFAULT NULL,
  `RegistrationNumber` varchar(1000) DEFAULT NULL,
  `OwnerName` varchar(1000) DEFAULT NULL,
  `OwnerContactNumber` longtext DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT current_timestamp(),
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `ParkingCharge` varchar(120) NOT NULL,
  `Remark` mediumtext NOT NULL,
  `Status` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblvehicle`
--

INSERT INTO `tblvehicle` (`ID`, `ParkingNumber`, `VehicleCategory`, `VehicleCompanyname`, `RegistrationNumber`, `OwnerName`, `OwnerContactNumber`, `InTime`, `OutTime`, `ParkingCharge`, `Remark`, `Status`) VALUES
(18, '652542744', 'Accounting Scholarships', 'AICPA Scholarship for Minority Accounting Students', '$5,000', 'https://www.scholarships.com/financial-aid/college-scholarships/scholarship-directory/academic-major/accounting/aicpa-scholarship-for-minority-accounting-students', 'The AICPA Minority Scholarship awards outstanding minority students to encourage their selection of accounting as a major and their ultimate entry into the profession. Applicants must be full-time minority students pursuing an undergraduate or graduate degree in accounting or an accounting-related major. Applicants must have a GPA of at least a 3.0 (on a 4.0 scale), demonstrate some financial need and be a U.S. citizen or permanent resident. For more information or to apply, please visit the scholarship providers website.', '2021-05-06 14:34:01', '2021-05-06 14:34:19', '', 'ille', 'Out'),
(19, '580280152', 'Actuarial Science Scholarships', 'AICPA Scholarship for Minority Accounting Students', '$5,000', 'https://www.scholarships.com/financial-aid/college-scholarships/scholarship-directory/academic-major/accounting/aicpa-scholarship-for-minority-accounting-students', 'The AICPA Minority Scholarship awards outstanding minority students to encourage their selection of accounting as a major and their ultimate entry into the profession. Applicants must be full-time minority students pursuing an undergraduate or graduate degree in accounting or an accounting-related major. Applicants must have a GPA of at least a 3.0 (on a 4.0 scale), demonstrate some financial need and be a U.S. citizen or permanent resident. For more information or to apply, please visit the scholarship providers website.', '2021-05-06 14:37:48', '2021-05-06 14:57:52', '', 'not available due to suicide of the owner.', 'Out'),
(20, '928751790', 'Actuarial Science Scholarships', 'AICPA Scholarship for Minority Accounting Students', '$5,000', 'https://www.scholarships.com/financial-aid/college-scholarships/scholarship-directory/academic-major/accounting/aicpa-scholarship-for-minority-accounting-students', 'The AICPA Minority Scholarship awards outstanding minority students to encourage their selection of accounting as a major and their ultimate entry into the profession. Applicants must be full-time minority students pursuing an undergraduate or graduate degree in accounting or an accounting-related major. Applicants must have a GPA of at least a 3.0 (on a 4.0 scale), demonstrate some financial need and be a U.S. citizen or permanent resident. For more information or to apply, please visit the scholarship providers website.', '2021-05-06 14:58:33', NULL, '', '', ''),
(21, '327271482', 'TEST', 'df', '5412', 'sf', 'ds', '2021-05-14 15:34:17', NULL, '', '', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblvehicle`
--
ALTER TABLE `tblvehicle`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
