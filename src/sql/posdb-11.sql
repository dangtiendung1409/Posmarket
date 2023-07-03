-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2023 at 12:11 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adminID` int(11) NOT NULL,
  `adminName` varchar(50) NOT NULL,
  `adminEmail` varchar(50) NOT NULL,
  `adminUsername` varchar(50) NOT NULL,
  `adminPassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adminID`, `adminName`, `adminEmail`, `adminUsername`, `adminPassword`) VALUES
(1, 'Phu Tam', 'tamnpt2210002@fpt.edu.vn', 'phutam', '123456'),
(2, 'Admin', 'admin@gmail.com', 'admin', 'admin'),
(3, 'Test', '', 'a', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customerID` int(11) NOT NULL,
  `customerName` varchar(50) NOT NULL,
  `customerPhone` int(20) NOT NULL,
  `customerPoint` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`customerID`, `customerName`, `customerPhone`, `customerPoint`) VALUES
(1, 'Retail customers', 0, 0),
(2, 'Phu Tam', 987654321, 2.247),
(3, 'Tran Thuy', 999999999, 2),
(4, 'Nguyen Thi Thuy', 344288541, 8.658),
(5, 'Mr.Hoa', 111111111, 104.648);

-- --------------------------------------------------------

--
-- Stand-in structure for view `historyview`
-- (See below for the actual view)
--
CREATE TABLE `historyview` (
`orderID` int(11)
,`customerID` int(11)
,`adminID` int(11)
,`customerName` varchar(50)
,`orderDate` datetime
,`productID` int(11)
,`productName` varchar(50)
,`soldPrice` float
,`soldQty` int(11)
,`orderStatus` int(5)
);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `orderDate` datetime NOT NULL,
  `orderStatus` int(5) NOT NULL,
  `adminID` int(11) NOT NULL,
  `orderCash` double DEFAULT NULL,
  `orderNotes` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderID`, `customerID`, `orderDate`, `orderStatus`, `adminID`, `orderCash`, `orderNotes`) VALUES
(1, 5, '2023-06-20 19:17:06', 1, 1, NULL, NULL),
(2, 5, '2023-06-21 23:33:49', 2, 2, 100, 'No sugar'),
(3, 5, '2023-06-22 23:40:49', 1, 2, NULL, NULL),
(4, 5, '2023-06-23 00:09:25', 1, 1, NULL, NULL),
(5, 5, '2023-06-23 00:10:37', 1, 2, NULL, NULL),
(6, 5, '2023-06-23 02:14:27', 2, 2, 500, NULL),
(7, 5, '2023-06-23 03:15:13', 1, 1, NULL, NULL),
(8, 5, '2023-06-23 03:27:59', 2, 3, 100, 'This is a note'),
(9, 5, '2023-06-23 03:58:44', 1, 1, NULL, ''),
(10, 5, '2023-06-23 04:11:04', 2, 1, 50, 'No ice'),
(11, 2, '2023-06-23 04:47:37', 2, 1, 100, '+ ice'),
(12, 5, '2023-06-23 07:09:23', 2, 2, 100, ''),
(13, 5, '2023-06-23 09:05:13', 2, 2, 20, 'Good day'),
(14, 3, '2023-06-23 09:06:09', 2, 3, 20, 'FPT Aptech'),
(15, 3, '2023-06-23 09:12:35', 2, 2, 50, '+ ice'),
(16, 5, '2023-06-23 09:16:38', 1, 3, NULL, ''),
(17, 4, '2023-06-26 04:00:24', 2, 2, 50, 'I\'m good'),
(18, 5, '2023-06-26 04:03:04', 1, 3, NULL, ''),
(19, 5, '2023-06-26 04:04:17', 1, 3, NULL, ''),
(20, 5, '2023-06-26 04:05:37', 1, 3, NULL, ''),
(21, 5, '2023-06-26 04:07:29', 1, 3, NULL, ''),
(22, 5, '2023-06-26 04:08:31', 1, 3, NULL, ''),
(23, 5, '2023-06-26 04:13:37', 1, 1, NULL, 'No note'),
(24, 5, '2023-06-26 04:15:14', 1, 3, NULL, ''),
(25, 3, '2023-06-26 04:15:53', 2, 3, 100, ''),
(26, 5, '2023-06-27 01:33:20', 2, 3, 50, ''),
(27, 5, '2023-06-27 02:19:20', 1, 3, NULL, ''),
(29, 3, '2023-06-27 06:05:28', 2, 1, 500, 'Take home'),
(30, 5, '2023-06-27 06:11:17', 1, 2, NULL, ''),
(31, 5, '2023-06-27 06:11:34', 1, 2, NULL, ''),
(32, 2, '2023-06-27 06:11:50', 2, 2, 500, ''),
(33, 5, '2023-06-28 02:07:22', 2, 3, 500, ''),
(34, 1, '2023-06-28 02:14:04', 2, 2, 20, ''),
(35, 3, '2023-06-28 02:41:32', 2, 1, 100, ''),
(36, 5, '2023-06-28 02:45:32', 2, 1, 5000, 'Too much'),
(37, 2, '2023-06-28 03:12:49', 2, 1, 50, 'Mvp man'),
(38, 2, '2023-06-28 19:29:30', 1, 3, NULL, ''),
(39, 5, '2023-06-28 19:32:27', 1, 3, NULL, ''),
(40, 1, '2023-06-28 19:35:02', 1, 3, NULL, ''),
(41, 1, '2023-06-28 19:37:26', 2, 3, 50, ''),
(42, 2, '2023-06-28 19:39:34', 2, 1, 50, 'Check point'),
(43, 1, '2023-06-28 19:50:31', 2, 3, 20, ''),
(44, 2, '2023-06-28 19:50:56', 2, 3, 50, ''),
(45, 2, '2023-06-29 02:01:27', 2, 3, 50, ''),
(46, 3, '2023-06-29 02:04:40', 2, 2, 50, ''),
(47, 5, '2023-06-29 02:07:27', 2, 3, 100, ''),
(48, 5, '2023-06-29 02:08:30', 2, 3, 50, ''),
(49, 5, '2023-06-29 02:09:02', 2, 3, 100, ''),
(50, 4, '2023-06-29 02:13:34', 2, 1, 110, 'For the kids'),
(51, 2, '2023-06-29 15:46:24', 2, 2, 50, 'OK'),
(52, 5, '2023-06-29 15:52:49', 2, 1, 50, ''),
(53, 5, '2023-06-29 15:54:07', 2, 3, 1200, ''),
(54, 5, '2023-06-29 15:55:00', 2, 3, 20, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `orderID` int(11) NOT NULL,
  `productID` int(11) NOT NULL,
  `soldPrice` float NOT NULL,
  `soldQty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`orderID`, `productID`, `soldPrice`, `soldQty`) VALUES
(1, 1, 3.99, 3),
(1, 2, 4, 3),
(2, 1, 3.99, 7),
(2, 3, 2.99, 5),
(3, 6, 1.99, 3),
(3, 7, 2.99, 2),
(4, 1, 3.99, 1),
(4, 2, 2.99, 1),
(5, 4, 1.99, 3),
(6, 1, 3.99, 1),
(6, 2, 4, 1),
(6, 3, 2.99, 1),
(6, 8, 4.25, 1),
(6, 11, 1, 1),
(6, 13, 3, 1),
(7, 1, 3.99, 4),
(7, 4, 4.25, 2),
(7, 13, 3, 2),
(7, 24, 4, 1),
(8, 1, 3.99, 6),
(8, 10, 2, 1),
(8, 13, 3, 1),
(10, 1, 3.99, 3),
(10, 2, 4, 3),
(10, 10, 2, 1),
(10, 11, 1, 1),
(10, 17, 3, 1),
(11, 1, 3.99, 3),
(11, 4, 4.25, 2),
(11, 10, 2, 1),
(12, 1, 3.99, 2),
(12, 4, 4.25, 2),
(12, 5, 5, 1),
(12, 11, 1, 6),
(13, 1, 3.99, 1),
(13, 2, 4, 1),
(13, 10, 2, 3),
(14, 1, 3.99, 1),
(14, 5, 5, 2),
(14, 10, 2, 1),
(15, 1, 3.99, 2),
(15, 2, 4, 4),
(15, 4, 4.25, 3),
(16, 1, 3.99, 2),
(16, 2, 4, 3),
(16, 4, 4.25, 1),
(16, 5, 5, 1),
(17, 1, 3.99, 1),
(17, 2, 4, 5),
(17, 10, 2, 4),
(17, 11, 1, 2),
(18, 1, 3.99, 4),
(18, 2, 4, 3),
(19, 1, 3.99, 3),
(20, 1, 3.99, 1),
(20, 4, 4.25, 3),
(21, 1, 3.99, 2),
(21, 4, 4.25, 1),
(22, 1, 3.99, 3),
(22, 2, 4, 1),
(23, 1, 3.99, 3),
(23, 2, 4, 1),
(23, 5, 5, 1),
(23, 10, 2, 3),
(24, 1, 3.99, 1),
(24, 2, 4, 1),
(24, 4, 4.25, 1),
(24, 5, 5, 1),
(25, 1, 3.99, 3),
(25, 2, 4, 2),
(26, 4, 4.25, 2),
(26, 7, 4, 4),
(29, 1, 3.99, 2),
(29, 2, 4, 2),
(29, 10, 2, 50),
(30, 1, 3.99, 20),
(30, 2, 4, 2),
(30, 12, 2, 5),
(30, 18, 1, 1),
(31, 1, 3.99, 20),
(31, 2, 4, 2),
(31, 12, 2, 5),
(31, 18, 1, 1),
(32, 1, 3.99, 20),
(32, 2, 4, 2),
(32, 12, 2, 5),
(32, 18, 1, 1),
(33, 1, 3.99, 3),
(33, 4, 4.25, 2),
(33, 5, 5, 1),
(33, 11, 1, 100),
(33, 15, 2, 2),
(33, 17, 3, 2),
(33, 20, 4, 4),
(34, 1, 3.99, 4),
(35, 1, 3.99, 5),
(35, 2, 4, 2),
(35, 4, 4.25, 5),
(35, 5, 5, 4),
(35, 10, 2, 1),
(36, 1, 3.99, 2),
(36, 2, 4, 1),
(36, 3, 2.99, 2),
(36, 4, 4.25, 2),
(36, 10, 2, 1000),
(36, 24, 4, 2),
(37, 1, 3.99, 3),
(37, 2, 4, 2),
(37, 4, 4.25, 2),
(37, 10, 2, 2),
(37, 21, 2, 2),
(38, 1, 3.99, 4),
(38, 2, 4, 1),
(38, 4, 4.25, 4),
(39, 1, 3.99, 3),
(39, 2, 4, 2),
(39, 4, 4.25, 2),
(40, 1, 3.99, 5),
(41, 1, 3.99, 2),
(41, 4, 4.25, 3),
(42, 1, 3.99, 3),
(42, 2, 4, 2),
(42, 4, 4.25, 2),
(42, 5, 5, 1),
(42, 10, 2, 1),
(43, 1, 3.99, 2),
(43, 2, 4, 1),
(43, 4, 4.25, 1),
(44, 1, 3.99, 2),
(44, 2, 4, 1),
(44, 4, 4.25, 1),
(45, 1, 3.99, 3),
(45, 2, 4, 1),
(45, 4, 4.25, 3),
(46, 1, 3.99, 3),
(46, 2, 4, 2),
(46, 4, 4.25, 2),
(46, 10, 2, 4),
(47, 1, 3.99, 4),
(47, 2, 4, 2),
(47, 3, 2.99, 1),
(47, 4, 4.25, 2),
(47, 5, 5, 1),
(47, 6, 2.99, 1),
(47, 7, 4, 1),
(47, 8, 4.25, 2),
(47, 9, 3.45, 1),
(47, 10, 2, 1),
(47, 17, 3, 1),
(48, 1, 3.99, 3),
(48, 2, 4, 3),
(48, 4, 4.25, 2),
(48, 5, 5, 1),
(49, 1, 3.99, 5),
(49, 2, 4, 2),
(49, 4, 4.25, 3),
(49, 5, 5, 2),
(50, 1, 3.99, 4),
(50, 2, 4, 2),
(50, 3, 2.99, 1),
(50, 4, 4.25, 1),
(50, 5, 5, 4),
(50, 6, 2.99, 2),
(50, 7, 4, 1),
(50, 8, 4.25, 2),
(50, 9, 3.45, 2),
(50, 11, 1, 1),
(50, 12, 2, 1),
(50, 13, 3, 2),
(50, 14, 1, 1),
(50, 15, 2, 1),
(50, 16, 1, 1),
(50, 17, 3, 2),
(50, 18, 1, 1),
(50, 20, 4, 2),
(50, 21, 2, 1),
(51, 1, 3.99, 3),
(51, 2, 4, 1),
(51, 4, 4.25, 2),
(51, 5, 5, 1),
(51, 10, 2, 1),
(51, 13, 3, 1),
(51, 17, 3, 1),
(51, 18, 1, 1),
(51, 20, 4, 1),
(52, 1, 3.99, 2),
(52, 2, 4, 2),
(52, 4, 4.25, 2),
(52, 10, 2, 1),
(52, 13, 3, 1),
(52, 17, 3, 1),
(52, 20, 4, 1),
(53, 1, 3.99, 100),
(54, 1, 3.99, 2),
(54, 4, 4.25, 2);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productID` int(11) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productUnit` varchar(50) NOT NULL,
  `productPrice` float NOT NULL,
  `productQty` int(11) NOT NULL,
  `productStatus` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productID`, `productName`, `productUnit`, `productPrice`, `productQty`, `productStatus`) VALUES
(1, 'Fresh cheese milk tea', 'Cup', 3.99, 99, 1),
(2, 'Royal Pearl Milk Tea', 'Cup', 4, 99, 1),
(3, 'Panda milk tea', 'Cup', 2.99, 99, 1),
(4, 'Three Brother milk tea', 'Cup', 4.25, 99, 1),
(5, 'O Long salted cream cheese', 'Cup', 5, 99, 1),
(6, 'Royal Pearl Milk Coffee', 'Cup', 2.99, 99, 1),
(7, 'Pink grapefruit mango tea', 'Cup', 4, 99, 1),
(8, 'Pink grapefruit mango tea creame cheese', 'Cup', 4.25, 99, 1),
(9, 'O Long salty passion fruit', 'Cup', 3.45, 99, 1),
(10, 'Four Quarter Mangoes', 'Piece', 2, 99, 1),
(11, 'Green grapefruit', 'Piece', 1, 99, 1),
(12, 'Cucumber', 'Piece', 2, 0, 0),
(13, 'Stomach Mango', '[value-3]', 3, 0, 0),
(14, 'Toad Stomach', '[value-3]', 1, 0, 0),
(15, 'Rod', '[value-3]', 2, 0, 0),
(16, 'Pickled plums', '[value-3]', 1, 0, 0),
(17, 'Black Pearl Milk Tea', '[value-3]', 3, 0, 0),
(18, 'Oolong Milk Tea', '[value-3]', 1, 0, 0),
(19, 'Green Tea Milk Tea', '[value-3]', 1, 0, 0),
(20, 'Hokkaido Milk Tea', '[value-3]', 4, 0, 0),
(21, 'Okinawa Milk Tea', '[value-3]', 2, 0, 0),
(22, 'Black Tea Milk Tea', '[value-3]', 4, 0, 0),
(23, 'Chocolate Milk Tea', '[value-3]', 1, 0, 0),
(24, 'Taro Milk Tea', 'Piece', 4, 99, 1);

-- --------------------------------------------------------

--
-- Structure for view `historyview`
--
DROP TABLE IF EXISTS `historyview`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `historyview`  AS SELECT `o`.`orderID` AS `orderID`, `o`.`customerID` AS `customerID`, `o`.`adminID` AS `adminID`, `c`.`customerName` AS `customerName`, `o`.`orderDate` AS `orderDate`, `od`.`productID` AS `productID`, `p`.`productName` AS `productName`, `od`.`soldPrice` AS `soldPrice`, `od`.`soldQty` AS `soldQty`, `o`.`orderStatus` AS `orderStatus` FROM ((((`orders` `o` join `order_detail` `od` on(`o`.`orderID` = `od`.`orderID`)) join `customer` `c` on(`o`.`customerID` = `c`.`customerID`)) join `admin` `a` on(`o`.`adminID` = `a`.`adminID`)) join `product` `p` on(`od`.`productID` = `p`.`productID`)) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customerID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderID`),
  ADD KEY `Order_fk0` (`customerID`),
  ADD KEY `FK_AdminID` (`adminID`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`orderID`,`productID`),
  ADD KEY `Order_detail_fk1` (`productID`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customerID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `FK_AdminID` FOREIGN KEY (`adminID`) REFERENCES `admin` (`adminID`),
  ADD CONSTRAINT `Order_fk0` FOREIGN KEY (`customerID`) REFERENCES `customer` (`customerID`);

--
-- Constraints for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD CONSTRAINT `Order_detail_fk0` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `Order_detail_fk1` FOREIGN KEY (`productID`) REFERENCES `product` (`productID`),
  ADD CONSTRAINT `fk_orderID` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderID_fk` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`),
  ADD CONSTRAINT `orderID_fk1` FOREIGN KEY (`orderID`) REFERENCES `orders` (`orderID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
