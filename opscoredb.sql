-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2023 at 04:03 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `opscoredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `addressid` int(255) NOT NULL,
  `fulladdress` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `postcode` varchar(255) NOT NULL,
  `phoneAddress` varchar(255) NOT NULL,
  `note` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`addressid`, `fulladdress`, `city`, `postcode`, `phoneAddress`, `note`) VALUES
(1, 'Jl. Raya Puputan No.86, Dangin Puri Klod, Kec. Denpasar Timur', 'Denpasar', '80234', '082130004043', ''),
(3, 'Jl. Raya Puputan No.88, Dangin Puri Klod, Kec. Denpasar Timur', 'Denpasar', '80234', '082130004043', 'Fake2'),
(8, 'Jl raya', 'Badung', '87953', '8768567463', ''),
(21, 'Jl Raya Kedampang', 'Badung', '00000', '0821303000022', 'Note'),
(23, '6yrt', '43tre', 'reter', '534646', '54654654'),
(24, '534543543', '543543', '543543', '5435', '435345'),
(25, 'Jl raya kedampang', 'Badung', '82199', '082130306677', 'tESt'),
(28, 'Jl renon samping stikom', 'Denpasar', '80042', '78876867876', '');

-- --------------------------------------------------------

--
-- Table structure for table `adminprinting`
--

CREATE TABLE `adminprinting` (
  `adminprintingid` int(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `cardid` varchar(255) NOT NULL,
  `merchantid` int(255) NOT NULL,
  `userid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `adminprinting`
--

INSERT INTO `adminprinting` (`adminprintingid`, `position`, `cardid`, `merchantid`, `userid`) VALUES
(27, 'Owner', '01', 18, 38),
(30, 'Owner', '54353', 20, 41),
(31, 'Owner', '432', 21, 42);

-- --------------------------------------------------------

--
-- Table structure for table `collectionaddress`
--

CREATE TABLE `collectionaddress` (
  `idcollectionadd` int(255) NOT NULL,
  `addressid` int(255) NOT NULL,
  `userid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `collectionaddress`
--

INSERT INTO `collectionaddress` (`idcollectionadd`, `addressid`, `userid`) VALUES
(1, 25, 2),
(4, 28, 2);

-- --------------------------------------------------------

--
-- Table structure for table `consumer`
--

CREATE TABLE `consumer` (
  `userid` int(255) NOT NULL,
  `consid` int(255) NOT NULL,
  `addressid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consumer`
--

INSERT INTO `consumer` (`userid`, `consid`, `addressid`) VALUES
(2, 2, 0),
(3, 3, 0),
(6, 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `developer`
--

CREATE TABLE `developer` (
  `devid` int(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `userid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `developer`
--

INSERT INTO `developer` (`devid`, `position`, `userid`) VALUES
(1, 'Full-Stack Developer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `merchant`
--

CREATE TABLE `merchant` (
  `merchantid` int(255) NOT NULL,
  `merchantuname` varchar(255) NOT NULL,
  `merchantname` varchar(255) NOT NULL,
  `datecreated` date NOT NULL,
  `opentime` time NOT NULL,
  `closetime` time NOT NULL,
  `merchantlogo` text NOT NULL,
  `subscription_type` varchar(255) NOT NULL,
  `ownerid` int(255) NOT NULL,
  `addressid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `merchant`
--

INSERT INTO `merchant` (`merchantid`, `merchantuname`, `merchantname`, `datecreated`, `opentime`, `closetime`, `merchantlogo`, `subscription_type`, `ownerid`, `addressid`) VALUES
(2, 'dat1', 'Dump Data', '2023-01-28', '09:00:00', '20:00:00', '0', '', 0, 1),
(3, 'dat2', 'Data2', '2023-01-28', '09:00:00', '20:00:00', '0', '', 0, 3),
(18, 'ExamPrinting', 'Exam Print 1', '2023-04-06', '09:00:00', '22:00:00', 'http://localhost:3000/upload/merchant/images/logo/b2e5acb9e177ec3d782bb66001680730561459.png', '', 27, 21),
(20, 'ARK', 'arl', '2023-04-29', '12:00:00', '20:00:00', 'http://localhost:3000/upload/merchant/images/logo/159544d7a8ab80f1a64f9f7001682781105718.png', '', 30, 23),
(21, 'fewsfkiwo', '832897', '2023-04-30', '12:00:00', '22:00:00', 'http://localhost:3000/upload/merchant/images/logo/ef2919926ea51406add64e3001682825160424.png', '', 31, 24);

-- --------------------------------------------------------

--
-- Table structure for table `orderdata`
--

CREATE TABLE `orderdata` (
  `orderid` int(255) NOT NULL,
  `numofcopies` int(255) NOT NULL,
  `pages` int(255) NOT NULL,
  `totalquantity` int(255) NOT NULL,
  `totalcost` double NOT NULL,
  `totalWeight` double NOT NULL,
  `colortype` varchar(255) NOT NULL,
  `printingquality` varchar(255) NOT NULL,
  `productype` varchar(255) NOT NULL,
  `fileprintingurl` text NOT NULL,
  `ordernote` text NOT NULL,
  `orderStatus` varchar(255) NOT NULL,
  `shippingreceipt` varchar(255) NOT NULL,
  `transactionid` varchar(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `consumerid` int(255) NOT NULL,
  `merchantid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orderdata`
--

INSERT INTO `orderdata` (`orderid`, `numofcopies`, `pages`, `totalquantity`, `totalcost`, `totalWeight`, `colortype`, `printingquality`, `productype`, `fileprintingurl`, `ordernote`, `orderStatus`, `shippingreceipt`, `transactionid`, `productid`, `consumerid`, `merchantid`) VALUES
(12, 1, 11, 11, 14300, 100, 'Full Color', 'High', 'A4 80 grams', 'http://localhost:3000/upload/order/document/6093e39ba72746aa929f17f061682849515117.pdf', '', 'Waiting', 'PENDING', '8', 3, 2, 2),
(14, 1, 11, 11, 25300, 100, 'Grayscale', 'Normal', 'F4 Printing', 'http://localhost:3000/upload/order/document/0bdef692dda7a5a85f086e8011683017310536.pdf', '', 'Waiting', 'PENDING', '8', 16, 2, 18),
(19, 2, 11, 22, 26400, 96.14, 'Full Color', 'High', 'A4 70 grams', 'http://localhost:3000/upload/order/document/03aabdb342df158ebe8e1be031683272427379.pdf', '', 'Waiting', 'PENDING', '8', 3, 2, 2),
(20, 1, 11, 11, 13200, 68.64, 'Grayscale', 'Draft', 'A4 100 grams', 'http://localhost:3000/upload/order/document/22adb8272f018f6bc9b4cfd011683425968031.pdf', '', 'Waiting', 'PENDING', '7', 3, 2, 2),
(23, 1, 11, 11, 23100, 68.64, 'Grayscale', 'Normal', 'A4 100 GRM', 'http://localhost:3000/upload/order/document/598859ea06b5d81c6f7b321011683510219494.pdf', '', 'Done', 'Done', '9', 16, 2, 18),
(33, 1, 11, 11, 23100, 68.64, 'Grayscale', 'Normal', 'A4 100 GRM', 'http://localhost:3000/upload/order/document/a92bd1a1789529447d40947011683550913624.pdf', '', 'Done', 'PENDING', '12', 16, 2, 18),
(34, 1, 11, 11, 23100, 68.64, 'Grayscale', 'Normal', 'A4 100 GRM', 'http://localhost:3000/upload/order/document/cbf215fa7c96820ad9ab06a011683561637458.pdf', '', 'Waiting', 'PENDING', '13', 16, 2, 18),
(35, 1, 11, 11, 23100, 68.64, 'Grayscale', 'Normal', 'A4 100 GRM', 'http://localhost:3000/upload/order/document/f94c576fed1653c4755f180011683781840159.pdf', '', 'Done', 'PENDING', '14', 16, 2, 18);

-- --------------------------------------------------------

--
-- Table structure for table `printquality`
--

CREATE TABLE `printquality` (
  `printqualityid` int(255) NOT NULL,
  `printquality` varchar(255) NOT NULL,
  `printqualityfee` double NOT NULL,
  `productid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `printquality`
--

INSERT INTO `printquality` (`printqualityid`, `printquality`, `printqualityfee`, `productid`) VALUES
(1, 'Draft', 100, 3),
(2, 'Normal', 200, 3),
(3, 'High', 300, 3),
(8, 'Normal', 200, 5),
(9, 'High', 300, 5),
(13, 'Normal', 1000, 16),
(14, 'Cut Side', 0, 16);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(255) NOT NULL,
  `producttitle` varchar(255) NOT NULL,
  `productdescription` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `merchantid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `producttitle`, `productdescription`, `category`, `merchantid`) VALUES
(3, 'A4 Paper Printing', 'We provide printing on A4 paper. You can choose the type of A4 paper available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences. ', 'Printing', 2),
(5, 'A4 Paper Printing', 'We provide printing on A4 paper. You can choose the type of A4 paper available. Print your document with the settings according to your wishes, we will print it with the best quality according to your preferences. ', 'Printing', 3),
(16, 'A4 Printing Badung', 'A4 Printing in badung with good quality', 'Printing', 18);

-- --------------------------------------------------------

--
-- Table structure for table `productcolortype`
--

CREATE TABLE `productcolortype` (
  `colortypeid` int(255) NOT NULL,
  `colortype` varchar(255) NOT NULL,
  `colorfee` double NOT NULL,
  `productid` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `productcolortype`
--

INSERT INTO `productcolortype` (`colortypeid`, `colortype`, `colorfee`, `productid`) VALUES
(1, 'Grayscale', 100, 3),
(2, 'Full Color', 200, 3),
(5, 'Grayscale', 100, 5),
(6, 'Full Color', 200, 5),
(10, 'Grayscale', 100, 16);

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `productypeid` int(255) NOT NULL,
  `productid` int(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `papertype` varchar(255) NOT NULL,
  `weight` double NOT NULL,
  `quantity` int(255) NOT NULL,
  `paperprice` double NOT NULL,
  `imageurl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`productypeid`, `productid`, `category`, `papertype`, `weight`, `quantity`, `paperprice`, `imageurl`) VALUES
(3, 3, 'A4', 'A4 100 grams', 6.24, 1000, 1000, 'https://www.paperone.co.id/images/paperonedigit/digital_hero.png'),
(4, 3, 'A4', 'A4 80 grams', 4.99, 1000, 800, 'https://static.bmdstatic.com/pk/product/medium/5e16e787cdcd1.jpg'),
(5, 3, 'A4', 'A4 70 grams', 4.37, 1000, 700, 'https://images.tokopedia.net/img/cache/900/product-1/2020/7/2/9800627/9800627_d62fcee1-aa51-4ea1-ab24-4cb4db87fd13_2048_2048'),
(8, 5, 'A4', 'A4 80 grams', 4.99, 1000, 800, 'https://static.bmdstatic.com/pk/product/medium/5e16e787cdcd1.jpg'),
(9, 5, 'A4', 'A4 70 grams', 4.37, 1000, 700, 'https://images.tokopedia.net/img/cache/900/product-1/2020/7/2/9800627/9800627_d62fcee1-aa51-4ea1-ab24-4cb4db87fd13_2048_2048'),
(20, 16, 'A4', 'A4 100 GRM', 6.24, 1000, 1000, 'http://localhost:3000/upload/merchant/images/product/41969ff2a9829cb5e8750f9001680732237962.png'),
(21, 16, 'F4', 'F4 Printing', 6.93, 10, 1200, 'http://localhost:3000/upload/merchant/images/product/d0d5ff72ae83f7110c2889d001680734800856.png');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `transactionID` int(255) NOT NULL,
  `shippingOptions` varchar(255) NOT NULL,
  `addressid` int(255) NOT NULL,
  `shippingvia` varchar(255) DEFAULT NULL,
  `paymentOptions` varchar(255) NOT NULL,
  `costs` double NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `transactionStatus` varchar(255) NOT NULL,
  `response_midtrans` text NOT NULL,
  `dateTransaction` date NOT NULL,
  `timeTransaction` time NOT NULL,
  `dateDoneTrans` date DEFAULT NULL,
  `timeDoneTrans` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`transactionID`, `shippingOptions`, `addressid`, `shippingvia`, `paymentOptions`, `costs`, `payment_status`, `transactionStatus`, `response_midtrans`, `dateTransaction`, `timeTransaction`, `dateDoneTrans`, `timeDoneTrans`) VALUES
(7, 'Pick Up', -1, NULL, 'bri', 13200, 'settlement', 'PENDING', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"a009f5f9-8c5a-4e51-ac9d-2f886ad28c6e\",\"order_id\":\"1683426482\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"13200.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-07 09:28:05\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bri\",\"va_number\":\"529290001683426482\"}],\"expiry_time\":\"2023-05-08 09:28:04\"}', '2023-05-07', '10:27:56', NULL, NULL),
(8, 'Pick Up', -1, NULL, 'bca', 66000, 'expire', 'PENDING', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"caca8aaf-ff1e-4c50-ae7f-d2a8af58163d\",\"order_id\":\"16832357050\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"66000.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 08:37:25\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683357050\"}],\"expiry_time\":\"2023-05-09 08:37:25\"}', '2023-05-08', '09:36:59', NULL, NULL),
(9, 'Pick Up', -1, NULL, 'bca', 23100, 'settlement', 'DONE', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"a57a52d2-5565-4b5d-a631-823f96758157\",\"order_id\":\"1683513273\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"23100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 09:34:33\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683513273\"}],\"expiry_time\":\"2023-05-09 09:34:33\"}', '2023-05-08', '10:34:27', '2023-05-09', '17:15:10'),
(12, 'Delivery', 25, 'YES', 'bca', 31100, 'settlement', 'DONE', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"43112fc7-7405-4dca-8f0a-f813b043910c\",\"order_id\":\"1683550925\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 20:02:06\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683550925\"}],\"expiry_time\":\"2023-05-09 20:02:06\"}', '2023-05-08', '21:00:44', '2023-05-09', '18:21:09'),
(13, 'Delivery', 25, 'REG', 'bca', 31100, 'settlement', 'PENDING', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"2066c912-931e-48b3-bcd6-c3e6433b8b0f\",\"order_id\":\"1683561653\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-08 23:00:54\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683561653\"}],\"expiry_time\":\"2023-05-09 23:00:54\"}', '2023-05-08', '23:59:56', NULL, NULL),
(14, 'Delivery', 25, 'OKE', 'bca', 31100, 'settlement', 'DONE', '{\"status_code\":\"201\",\"status_message\":\"Success, Bank Transfer transaction is created\",\"transaction_id\":\"815147ea-ed25-4619-bb82-f8e7d3b1e946\",\"order_id\":\"1683781880\",\"merchant_id\":\"G750652929\",\"gross_amount\":\"31100.00\",\"currency\":\"IDR\",\"payment_type\":\"bank_transfer\",\"transaction_time\":\"2023-05-11 12:11:21\",\"transaction_status\":\"pending\",\"fraud_status\":\"accept\",\"va_numbers\":[{\"bank\":\"bca\",\"va_number\":\"529291683781880\"}],\"expiry_time\":\"2023-05-12 12:11:21\"}', '2023-05-11', '12:29:41', '2023-05-11', '15:08:38');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `username`, `password`, `fullname`, `gender`, `email`, `phone`) VALUES
(1, 'adminops', 'NqoGJzvTQOWY9wJEG/GoBGfHUMx2LcNBkLUL/cpqKjU=', 'Muhammad Zein Akbar', 'Male', 'mzeinakbar@aol.com', '082130306677'),
(2, 'uservoid', '83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=', 'Muhammad Zein Akbar', 'Male', 'angularkiddie@gmail.com', '082130301122'),
(3, 'takimotoo', '83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=', 'Dioana Kendl', 'Female', 'ztzyrant@gmail.com', '082130030011'),
(6, 'testmail', '83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=', 'Test xS', 'Male', 'uhack91@gmail.com', '049876575667'),
(10, 'admin1', '83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=', 'Jill Gordon', 'Female', 'uhack9191@gmail.com', '(874) 384-8214'),
(12, 'merch1', 'yALoi1fgHwCMaOrMB1vOk5ftt3aiKA8yurKJuupvusk=', 'merch1', 'Male', 'angularkiddie+merch1@gmail.com', '08768567463'),
(14, 'test2', 'yALoi1fgHwCMaOrMB1vOk5ftt3aiKA8yurKJuupvusk=', 'dmwiqfm', 'Male', 'ifmewim@fasfsa.css', '07532752382'),
(38, 'examprint1', '83mmf0MImVnUya/wDVDZAfdfVWpgILZcTRj30sZs8o4=', 'Exam Print Owner', 'Male', 'examprintowner@ex.ca', '082130306678'),
(41, '432r32432', 'zI4z26EtGT33zU2d4qCwg4yBY/i+B4f4L26ZIKym9IQ=', '3254354', 'Male', '2342@feasd.fsd', '6546456'),
(42, '435435', 'tP9zpwW4NEjhncy2nJer4UJRdVGcD/AlhTnZq9+0kK4=', '325325325', 'Male', '325325@fdsf.fsd', '432432');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`addressid`);

--
-- Indexes for table `adminprinting`
--
ALTER TABLE `adminprinting`
  ADD PRIMARY KEY (`adminprintingid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `merchantid` (`merchantid`);

--
-- Indexes for table `collectionaddress`
--
ALTER TABLE `collectionaddress`
  ADD PRIMARY KEY (`idcollectionadd`),
  ADD KEY `addressid` (`addressid`),
  ADD KEY `consid` (`userid`);

--
-- Indexes for table `consumer`
--
ALTER TABLE `consumer`
  ADD PRIMARY KEY (`consid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `addressid` (`addressid`);

--
-- Indexes for table `developer`
--
ALTER TABLE `developer`
  ADD PRIMARY KEY (`devid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `merchant`
--
ALTER TABLE `merchant`
  ADD PRIMARY KEY (`merchantid`),
  ADD KEY `addressid` (`addressid`),
  ADD KEY `ownerid` (`ownerid`);

--
-- Indexes for table `orderdata`
--
ALTER TABLE `orderdata`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `consumerid` (`consumerid`);

--
-- Indexes for table `printquality`
--
ALTER TABLE `printquality`
  ADD PRIMARY KEY (`printqualityid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD KEY `merchantid` (`merchantid`);

--
-- Indexes for table `productcolortype`
--
ALTER TABLE `productcolortype`
  ADD PRIMARY KEY (`colortypeid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`productypeid`),
  ADD KEY `productid` (`productid`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`transactionID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `addressid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `adminprinting`
--
ALTER TABLE `adminprinting`
  MODIFY `adminprintingid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `collectionaddress`
--
ALTER TABLE `collectionaddress`
  MODIFY `idcollectionadd` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `consumer`
--
ALTER TABLE `consumer`
  MODIFY `consid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `developer`
--
ALTER TABLE `developer`
  MODIFY `devid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `merchant`
--
ALTER TABLE `merchant`
  MODIFY `merchantid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `orderdata`
--
ALTER TABLE `orderdata`
  MODIFY `orderid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `printquality`
--
ALTER TABLE `printquality`
  MODIFY `printqualityid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `productcolortype`
--
ALTER TABLE `productcolortype`
  MODIFY `colortypeid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `productypeid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `transactionID` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `adminprinting`
--
ALTER TABLE `adminprinting`
  ADD CONSTRAINT `adminprinting_ibfk_4` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE,
  ADD CONSTRAINT `adminprinting_ibfk_5` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantid`) ON DELETE CASCADE;

--
-- Constraints for table `collectionaddress`
--
ALTER TABLE `collectionaddress`
  ADD CONSTRAINT `collectionaddress_ibfk_2` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`),
  ADD CONSTRAINT `collectionaddress_ibfk_3` FOREIGN KEY (`addressid`) REFERENCES `address` (`addressid`) ON DELETE CASCADE;

--
-- Constraints for table `consumer`
--
ALTER TABLE `consumer`
  ADD CONSTRAINT `consumer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `developer`
--
ALTER TABLE `developer`
  ADD CONSTRAINT `developer_ibfk_1` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`) ON DELETE CASCADE;

--
-- Constraints for table `merchant`
--
ALTER TABLE `merchant`
  ADD CONSTRAINT `merchant_ibfk_1` FOREIGN KEY (`addressid`) REFERENCES `address` (`addressid`) ON DELETE CASCADE;

--
-- Constraints for table `orderdata`
--
ALTER TABLE `orderdata`
  ADD CONSTRAINT `orderdata_ibfk_1` FOREIGN KEY (`consumerid`) REFERENCES `consumer` (`consid`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `printquality`
--
ALTER TABLE `printquality`
  ADD CONSTRAINT `printquality_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`merchantid`) REFERENCES `merchant` (`merchantid`) ON DELETE CASCADE;

--
-- Constraints for table `productcolortype`
--
ALTER TABLE `productcolortype`
  ADD CONSTRAINT `productcolortype_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE;

--
-- Constraints for table `producttype`
--
ALTER TABLE `producttype`
  ADD CONSTRAINT `producttype_ibfk_1` FOREIGN KEY (`productid`) REFERENCES `product` (`productid`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
