-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 04:13 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `Address ID` int(11) NOT NULL,
  `Address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`Address ID`, `Address`) VALUES
(1, '1000 5th Ave, New York, NY 10028, USA'),
(2, '1717 N Harwood St, Dallas, TX 75201, USA'),
(3, '5700 S DuSable Lk Shr Dr, Chicago, IL 60637, USA'),
(4, 'Museum Of Science Driveway, Boston, MA 02114, USA');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DEPTNO` int(11) NOT NULL,
  `DNAME` varchar(10) DEFAULT NULL,
  `LOC` varchar(8) DEFAULT NULL,
  `AddressID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DEPTNO`, `DNAME`, `LOC`, `AddressID`) VALUES
(10, 'ACCOUNTING', 'NEW-YORK', 1),
(20, 'RESEARCH', 'DALLAS', 2),
(30, 'SALES', 'CHICAGO', 3),
(40, 'OPERATIONS', 'BOSTON', 4),
(50, 'CLEANING', 'BOSTON', 4);

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EMPNO` int(11) NOT NULL,
  `ENAME` varchar(6) DEFAULT NULL,
  `JOB` varchar(9) DEFAULT NULL,
  `MGR` varchar(4) DEFAULT NULL,
  `HIREDATE` varchar(9) DEFAULT NULL,
  `SAL` int(11) DEFAULT NULL,
  `COMM` varchar(4) DEFAULT NULL,
  `DEPTNO` int(11) DEFAULT NULL,
  `Product_ID` int(11) DEFAULT NULL,
  `PerkID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EMPNO`, `ENAME`, `JOB`, `MGR`, `HIREDATE`, `SAL`, `COMM`, `DEPTNO`, `Product_ID`, `PerkID`) VALUES
(101, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7101, 'BLACK', 'CLERK', '7940', '15-Dec-81', 850, '', 20, NULL, 1),
(7369, 'SMITH', 'CLERK', '7902', '17-Dec-80', 800, '', 20, NULL, 1),
(7499, 'ALLEN', 'SALESMAN', '7698', '20-Feb-81', 1600, '300', 30, 1, 2),
(7521, 'WARD', 'SALESMAN', '7698', '22-Feb-81', 1250, '500', 30, 1, 2),
(7566, 'JONES', 'MANAGER', '7839', '02-Apr-81', 2975, '', 20, NULL, 2),
(7654, 'MARTIN', 'SALESMAN', '7698', '28-Sep-81', 1250, '1400', 30, 1, 2),
(7698, 'BLAKE', 'MANAGER', '7839', '01-May-81', 2850, '', 30, NULL, 2),
(7782, 'CLARK', 'MANAGER', '7839', '09-Jun-81', 2450, '', 10, NULL, 1),
(7839, 'KING', 'PRESIDENT', '', '17-Nov-81', 5000, '', 10, NULL, 3),
(7844, 'TURNER', 'SALESMAN', '7698', '08-Sep-81', 1500, '0', 30, 2, 2),
(7876, 'ADAMS', 'CLERK', '7788', '23-Sep-87', 1100, '', 20, NULL, 1),
(7900, 'JAMES', 'CLERK', '7698', '03-Dec-81', 950, '', 30, NULL, 2),
(7902, 'FORD', 'ANALYST', '7566', '03-Dec-81', 3000, '', 20, NULL, 1),
(7934, 'MILLER', 'CLERK', '7782', '23-Jan-82', 1300, '', 10, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `perks`
--

CREATE TABLE `perks` (
  `PerkID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `perks`
--

INSERT INTO `perks` (`PerkID`, `Name`, `Description`) VALUES
(1, 'Normal', 'This package does not include any benefits.'),
(2, 'Sales', 'This package includes travel expenses.'),
(3, 'Delux', 'This package includes dental and travel expenses.');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `Product ID` int(11) NOT NULL,
  `Name` text NOT NULL,
  `Cost` float(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`Product ID`, `Name`, `Cost`) VALUES
(1, 'Shoes', 15.99),
(2, 'Computer', 1000.99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`Address ID`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DEPTNO`),
  ADD KEY `AddressID` (`AddressID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EMPNO`),
  ADD KEY `EMPNO` (`EMPNO`),
  ADD KEY `EMPNO_2` (`EMPNO`),
  ADD KEY `DEPTNO` (`DEPTNO`),
  ADD KEY `Product_ID` (`Product_ID`),
  ADD KEY `PerkID` (`PerkID`);

--
-- Indexes for table `perks`
--
ALTER TABLE `perks`
  ADD PRIMARY KEY (`PerkID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`Product ID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `department`
--
ALTER TABLE `department`
  ADD CONSTRAINT `Department_ibfk_1` FOREIGN KEY (`AddressID`) REFERENCES `address` (`Address ID`);

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `Employee_ibfk_1` FOREIGN KEY (`DEPTNO`) REFERENCES `department` (`DEPTNO`),
  ADD CONSTRAINT `Employee_ibfk_2` FOREIGN KEY (`Product_ID`) REFERENCES `product` (`Product ID`),
  ADD CONSTRAINT `Employee_ibfk_3` FOREIGN KEY (`PerkID`) REFERENCES `perks` (`PerkID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
