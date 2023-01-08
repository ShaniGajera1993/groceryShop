-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 20, 2021 at 07:05 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `groceryshop`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(1, 'psavaliya885@rku.ac.in', 'parth@2265'),
(2, 'sgajera681@rku.ac.in', 'shani@1993');

-- --------------------------------------------------------

--
-- Table structure for table `cartdetails`
--

CREATE TABLE `cartdetails` (
  `productID` int(10) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `productPrice` varchar(10) NOT NULL,
  `productDescription` varchar(20) NOT NULL,
  `shopName` varchar(30) NOT NULL,
  `shopAddress` varchar(100) NOT NULL,
  `shopEmail` varchar(30) NOT NULL,
  `productCategory` varchar(20) NOT NULL,
  `productImage` varchar(20) DEFAULT NULL,
  `userEmail` varchar(30) NOT NULL,
  `quantity` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cartdetails`
--

INSERT INTO `cartdetails` (`productID`, `productName`, `productPrice`, `productDescription`, `shopName`, `shopAddress`, `shopEmail`, `productCategory`, `productImage`, `userEmail`, `quantity`) VALUES
(6, 'ghee', '495', '1 kg', 'Navjeevan Store', 'surat', 'navjeevan@gmail.com', 'Dairy', '28.jpg', 'parth@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryadd`
--

CREATE TABLE `deliveryadd` (
  `oID` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `userEmail` varchar(30) NOT NULL,
  `addressEmail` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `street` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `pincode` varchar(10) NOT NULL,
  `deliveryBoy` int(255) DEFAULT NULL,
  `deliveryBoyWork` int(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryadd`
--

INSERT INTO `deliveryadd` (`oID`, `fname`, `lname`, `userEmail`, `addressEmail`, `phone`, `street`, `city`, `pincode`, `deliveryBoy`, `deliveryBoyWork`) VALUES
(4, 'Parth', 'Savaliya', 'parth@gmail.com', 'parth@gmail.com', '6354169270', 'Surat', 'Surat', '395006', 1, 1),
(6, 'Shani', 'Gajera', 'shani@gmail.com', 'shani@gmail.com', '9081870788', 'surat', 'surat', '395006', 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `deliveryboydetails`
--

CREATE TABLE `deliveryboydetails` (
  `dBoyFName` varchar(30) NOT NULL,
  `dBoyEmail` varchar(30) NOT NULL,
  `dBoyPhone` varchar(30) NOT NULL,
  `dBoyID` int(11) NOT NULL,
  `dBoyLName` varchar(30) NOT NULL,
  `task1` varchar(30) DEFAULT NULL,
  `task2` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `deliveryboydetails`
--

INSERT INTO `deliveryboydetails` (`dBoyFName`, `dBoyEmail`, `dBoyPhone`, `dBoyID`, `dBoyLName`, `task1`, `task2`) VALUES
('Pavan', 'pavan@gmail.com', '9999999999', 1, 'korat', 'parth@gmail.com', 'no'),
('roshan', 'roshan@gmail.com', '8888888888', 2, 'virat', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `ordersdetails`
--

CREATE TABLE `ordersdetails` (
  `productID` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `productPrice` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `userEmail` varchar(30) NOT NULL,
  `shopEmail` varchar(30) NOT NULL,
  `shopName` varchar(30) NOT NULL,
  `shopAddress` varchar(100) NOT NULL,
  `status` varchar(30) DEFAULT NULL,
  `productImage` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ordersdetails`
--

INSERT INTO `ordersdetails` (`productID`, `productName`, `productPrice`, `quantity`, `userEmail`, `shopEmail`, `shopName`, `shopAddress`, `status`, `productImage`) VALUES
(4, 'tata tea', '250', 1, 'parth@gmail.com', 'navjeevan@gmail.com', 'Navjeevan Store', 'surat', 'Shipped', '53.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `productsdetails`
--

CREATE TABLE `productsdetails` (
  `productID` int(10) NOT NULL,
  `productName` varchar(50) NOT NULL,
  `productPrice` varchar(10) NOT NULL,
  `productDescription` varchar(100) NOT NULL,
  `shopName` varchar(30) NOT NULL,
  `shopEmail` varchar(30) NOT NULL,
  `shopAddress` varchar(100) NOT NULL,
  `productCategory` varchar(30) NOT NULL,
  `productImage` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `productsdetails`
--

INSERT INTO `productsdetails` (`productID`, `productName`, `productPrice`, `productDescription`, `shopName`, `shopEmail`, `shopAddress`, `productCategory`, `productImage`, `stock`) VALUES
(9, 'almonds', '500', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'DryFood', '14.jpg', 48),
(10, 'cashews', '500', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'DryFood', '15.jpg', 49),
(11, 'peanuts', '400', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'DryFood', '16.jpg', 49),
(12, 'pistachoic', '500', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'DryFood', '17.jpg', 50),
(13, 'ghee', '495', '1 kg', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Dairy', '28.jpg', 20),
(15, '7 Up', '45', '500ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '38.jpg', 25),
(16, 'thumbs up', '45', '2 L.', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '3.jpg', 22),
(17, 'pepsi', '50', '250ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '40.jpg', 21),
(18, 'tata salt', '20', 'per 500gm', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Perishables', '52.jpg', 50),
(19, 'safola oil', '1100', 'per 5L', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Perishables', '49.jpg', 22),
(20, 'flax seed', '250', 'per100gm', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'DryFood', '20.jpg', 22),
(21, 'sunflower seed', '20', 'per 100 gm', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'DryFood', '21.jpg', 55),
(22, 'cherries', '150', '400 gm', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'DryFood', '22.jpg', 55),
(24, 'basmati rise', '450', '5 kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'DryFood', '47.jpeg', 10),
(25, 'chana dal', '160', '2 kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'DryFood', '24.jpg', 10),
(26, 'moong dal', '320', 'per 2kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'DryFood', '23.jpg', 10),
(27, 'tata tea', '250', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Perishables', '53.jpg', 21),
(28, 'red label tea', '300', 'per 500gm', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Perishables', '54.jpg', 25),
(29, 'toor dal', '500', 'per 1kg', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Grocery', '25.jpg', 55),
(30, 'pickel', '200', 'per 1kg', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Grocery', '36.jpg', 400),
(31, 'ghee', '250', 'per 500gm', 'yagnik store', 'yagnik@gmail.com', 'surat', 'Dairy', '27.jpg', 55),
(32, 'sugar', '200', 'per 5kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'Grocery', '31.jpg', 22),
(33, 'oil', '100', 'per 1L', 'yagnik store', 'yagnik@gmail.com', 'surat', 'Grocery', '48.jpg', 50),
(34, 'wheat', '100', 'per 5kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'Grocery', '33.jpg', 55),
(35, 'rawa', '50', 'per 2kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'Grocery', '34.jpg', 55),
(36, 'dates', '300', 'per 1kg', 'yagnik store', 'yagnik@gmail.com', 'surat', 'DryFood', '18.jpg', 55),
(37, 'amul cheese', '100', 'per 200gm', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Dairy', '29.jpg', 55),
(38, 'bajara aata', '150', 'per 5kg', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Grocery', '35.jpg', 88),
(39, 'dhanya seed', '199', 'per 1kg', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Grocery', '32.jpg', 55),
(40, 'paneer', '100', 'per 200gm', 'radhe mart', 'radhe@gmail.com', 'Surat', 'Dairy', '37.jpg', 42),
(41, 'lays wafer', '20', 'per 50gm', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Spices', '30.jpg', 150),
(42, 'frooti', '30', 'per 220ml', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Beverages', '8.jpg', 200),
(43, 'appy fizz', '15', 'per 160ml', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Beverages', '7.jpg', 200),
(44, 'amul cool', '25', 'per180ml', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Dairy', '12.jpg', 250),
(45, 'kinley soda', '20', 'per 750ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '1.jpg', 100),
(48, 'amul lassi', '20', 'per 200ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Dairy', '10.jpg', 250),
(49, 'coconut water', '40', 'per 300ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '9.jpg', 500),
(50, 'mirindaa', '60', 'per 350ml', 'yogi mart', 'yogi@gmail.com', 'Surat', 'Beverages', '41.jpg', 0),
(52, 'onion', '40', 'per 1kg', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Fresh', 'onions.jpg', 50),
(53, 'lauki', '20', 'per 1kg', 'Navjeevan Store', 'navjeevan@gmail.com', 'surat', 'Fresh', 'loki.jpg', 20),
(54, 'onion', '42', 'per 1kg', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Fresh', 'onions.jpg', 20),
(55, 'lauki', '25', 'per 1kg', 'ramkrupa mart', 'ramkrupa@gmail.com', 'surat', 'Fresh', 'loki.jpg', 22);

-- --------------------------------------------------------

--
-- Table structure for table `shopowners`
--

CREATE TABLE `shopowners` (
  `shopName` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `shopowners`
--

INSERT INTO `shopowners` (`shopName`, `email`, `address`, `password`) VALUES
('Navjeevan Store', 'navjeevan@gmail.com', 'surat', '123456789'),
('radhe mart', 'radhe@gmail.com', 'Surat', '123456789'),
('ramkrupa mart', 'ramkrupa@gmail.com', 'surat', '123456789'),
('yagnik store', 'yagnik@gmail.com', 'surat', '123456789'),
('yogi mart', 'yogi@gmail.com', 'Surat', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `userdetails`
--

CREATE TABLE `userdetails` (
  `useremail` varchar(30) NOT NULL,
  `userfname` varchar(20) NOT NULL,
  `userlname` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `address` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `userdetails`
--

INSERT INTO `userdetails` (`useremail`, `userfname`, `userlname`, `password`, `address`) VALUES
('parth@gmail.com', 'Parth', 'Savaliya', '123456789', 'Surat'),
('shani@gmail.com', 'shani', 'gajera', '123456789', 'surat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cartdetails`
--
ALTER TABLE `cartdetails`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `deliveryadd`
--
ALTER TABLE `deliveryadd`
  ADD PRIMARY KEY (`oID`);

--
-- Indexes for table `deliveryboydetails`
--
ALTER TABLE `deliveryboydetails`
  ADD PRIMARY KEY (`dBoyID`);

--
-- Indexes for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `productsdetails`
--
ALTER TABLE `productsdetails`
  ADD PRIMARY KEY (`productID`);

--
-- Indexes for table `shopowners`
--
ALTER TABLE `shopowners`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `userdetails`
--
ALTER TABLE `userdetails`
  ADD PRIMARY KEY (`useremail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cartdetails`
--
ALTER TABLE `cartdetails`
  MODIFY `productID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliveryadd`
--
ALTER TABLE `deliveryadd`
  MODIFY `oID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `deliveryboydetails`
--
ALTER TABLE `deliveryboydetails`
  MODIFY `dBoyID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ordersdetails`
--
ALTER TABLE `ordersdetails`
  MODIFY `productID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `productsdetails`
--
ALTER TABLE `productsdetails`
  MODIFY `productID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
