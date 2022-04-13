-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 13, 2022 at 03:59 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_repeat_order`
--

-- --------------------------------------------------------

--
-- Table structure for table `m_parameter`
--

CREATE TABLE `m_parameter` (
  `Par_Name` varchar(50) NOT NULL,
  `Par_Value` varchar(50) NOT NULL,
  `Par_Description` varchar(100) NOT NULL,
  `Par_LastUpdate` datetime NOT NULL,
  `Par_UserID` smallint(2) NOT NULL,
  `Par_ActiveYN` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ro_realproses`
--

CREATE TABLE `ro_realproses` (
  `RO_OutCode` char(3) NOT NULL,
  `Req_Number` char(9) NOT NULL,
  `RO_Date` datetime NOT NULL,
  `RO_Procod` varchar(7) NOT NULL,
  `RO_Name` varchar(255) NOT NULL,
  `RO_B0` float NOT NULL,
  `RO_B1` float NOT NULL,
  `RO_B2` float NOT NULL,
  `RO_Average` float NOT NULL,
  `RO_Limit` float NOT NULL,
  `RO_MedPack` int(4) NOT NULL,
  `RO_SellUnit` int(4) NOT NULL,
  `RO_SellPrice` decimal(9,0) NOT NULL,
  `RO_QtyOder` int(4) NOT NULL,
  `RO_Status` varchar(2) NOT NULL,
  `RO_Hold` float NOT NULL,
  `RO_Stock` float NOT NULL,
  `RO_MinOrder` float NOT NULL,
  `RO_MaxOrder` float NOT NULL,
  `RO_NettPrice` decimal(9,0) NOT NULL,
  `RO_NettPriceTotal` decimal(8,0) NOT NULL,
  `RO_Flag` varchar(25) NOT NULL,
  `RO_StatusA` int(4) NOT NULL,
  `RO_FlagA` varchar(1) NOT NULL,
  `RO_NP` varchar(1) NOT NULL,
  `RO_Sub` varchar(1) NOT NULL,
  `RO_Tampil` int(4) NOT NULL,
  `MedPack` int(4) NOT NULL,
  `Pro_OrderPack` int(4) NOT NULL,
  `OrderPackName` varchar(25) NOT NULL,
  `Pro_SellPack` int(4) NOT NULL,
  `SellPackName` varchar(25) NOT NULL,
  `Remain` float NOT NULL,
  `KetOr` varchar(100) NOT NULL,
  `RO_QtyOutlet` int(4) NOT NULL,
  `RO_TTT` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ro_realproses`
--

INSERT INTO `ro_realproses` (`RO_OutCode`, `Req_Number`, `RO_Date`, `RO_Procod`, `RO_Name`, `RO_B0`, `RO_B1`, `RO_B2`, `RO_Average`, `RO_Limit`, `RO_MedPack`, `RO_SellUnit`, `RO_SellPrice`, `RO_QtyOder`, `RO_Status`, `RO_Hold`, `RO_Stock`, `RO_MinOrder`, `RO_MaxOrder`, `RO_NettPrice`, `RO_NettPriceTotal`, `RO_Flag`, `RO_StatusA`, `RO_FlagA`, `RO_NP`, `RO_Sub`, `RO_Tampil`, `MedPack`, `Pro_OrderPack`, `OrderPackName`, `Pro_SellPack`, `SellPackName`, `Remain`, `KetOr`, `RO_QtyOutlet`, `RO_TTT`) VALUES
('856', '856001490', '2022-04-12 15:57:20', '0202488', 'OBH COMBI BATUK FLU JAHE 60 ML', 3, 2, 2, 3, 9, 1, 1, '14700', 2, 'FA', 0, 1, 2, 8, '11025', '0', '2 ADA HIST', 2, 'N', 'N', 'N', 8, 1, 6, 'BOTTLE', 6, 'BOTTLE', 6, '', 2, 'v'),
('856', '856001490', '2022-04-12 16:05:20', '0202521', 'VOLTAREN EMULGEL 5 GR', 1, 2, 0, 1.3, 6, 1, 1, '40105', 2, 'MD', 0, 0, 1.3, 6, '30079', '0', '2 ADA HIST', 3, 'N', 'N', 'N', 8, 1, 27, 'TUBE', 27, 'TUBE', 4, '', 2, 'v'),
('856', '856001490', '2022-04-12 16:05:20', '0202321', 'INHALER CAP LANG', 1, 10, 2, 5.6, 17, 1, 1, '9200', 0, 'SF', 0, 6, 0, 11, '6900', '0', '2 ADA HIST', 1, 'N', 'N', 'N', 8, 1, 22, 'PIECE', 22, 'PIECE', 11, '', 4, 'v'),
('856', '856001490', '2022-04-12 16:05:20', '0202352', 'FORUMEN EAR DROP 10ML', 11, 8, 9, 11.1, 34, 1, 1, '34000', 3, 'SF', 3, 4, 2.1, 25, '25500', '0', '2 ADA HIST', 1, 'N', 'N', 'N', 8, 1, 6, 'BOTTLE', 6, 'BOTTLE', 22, '', 1, 'v'),
('856', '856001489', '2022-04-12 16:11:23', '0200001', 'TEST 1', 1, 2, 0, 1.3, 6, 1, 1, '333000', 5, 'MD', 0, 0, 1.3, 6, '300000', '0', '2 ADA HIST', 3, 'N', 'N', 'N', 8, 1, 27, 'TUBE', 27, 'TUBE', 4, '', 2, 'v'),
('856', '856001488', '2022-04-12 16:14:23', '0200001', 'TEST 1', 1, 2, 0, 1.3, 6, 1, 1, '333000', 5, 'MD', 0, 0, 1.3, 6, '300000', '0', '2 ADA HIST', 3, 'N', 'N', 'N', 8, 1, 27, 'TUBE', 27, 'TUBE', 4, '', 2, 'v'),
('856', '856001488', '2022-04-12 16:14:38', '0200002', 'TEST 2', 1, 2, 0, 1.3, 6, 1, 1, '222000', 5, 'SF', 0, 0, 1.3, 6, '200000', '0', '2 ADA HIST', 3, 'N', 'N', 'N', 8, 1, 27, 'TUBE', 27, 'TUBE', 4, '', 2, 'v');

-- --------------------------------------------------------

--
-- Table structure for table `td_reqprod`
--

CREATE TABLE `td_reqprod` (
  `id` int(11) NOT NULL,
  `Req_OutCode` char(3) NOT NULL,
  `Req_Number` char(9) NOT NULL,
  `Req_ProdCode` char(7) NOT NULL,
  `Req_Qty` int(4) NOT NULL,
  `Req_OrderLimit` int(4) NOT NULL,
  `Req_Flag` smallint(2) NOT NULL,
  `Req_HONum` char(12) DEFAULT NULL,
  `Req_HODate` datetime DEFAULT NULL,
  `Req_PurchNum` char(12) DEFAULT NULL,
  `Req_PurchDate` datetime DEFAULT NULL,
  `Req_AlocNum` char(12) DEFAULT NULL,
  `Req_AlocDate` datetime DEFAULT NULL,
  `Req_TrfNum` char(12) DEFAULT NULL,
  `Req_TrfDate` datetime DEFAULT NULL,
  `Req_RcvNum` char(12) DEFAULT NULL,
  `Req_RcvDate` datetime DEFAULT NULL,
  `Req_CancelDate` datetime DEFAULT NULL,
  `Req_CancelCode` tinyint(1) DEFAULT NULL,
  `Req_Reorder` smallint(2) NOT NULL,
  `Req_LastUpdate` datetime NOT NULL,
  `Req_UserID` smallint(2) NOT NULL,
  `Req_ActiveYN` char(1) NOT NULL,
  `Req_RecYN` char(1) NOT NULL,
  `Req_RecQty` int(4) NOT NULL,
  `Req_ROQty` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `td_reqprod`
--

INSERT INTO `td_reqprod` (`id`, `Req_OutCode`, `Req_Number`, `Req_ProdCode`, `Req_Qty`, `Req_OrderLimit`, `Req_Flag`, `Req_HONum`, `Req_HODate`, `Req_PurchNum`, `Req_PurchDate`, `Req_AlocNum`, `Req_AlocDate`, `Req_TrfNum`, `Req_TrfDate`, `Req_RcvNum`, `Req_RcvDate`, `Req_CancelDate`, `Req_CancelCode`, `Req_Reorder`, `Req_LastUpdate`, `Req_UserID`, `Req_ActiveYN`, `Req_RecYN`, `Req_RecQty`, `Req_ROQty`) VALUES
(1, '856', '856001490', '0202321', 4, 11, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2022-04-12 15:23:35', 21151, 'Y', 'Y', 4, 0),
(2, '856', '856001490', '0202352', 1, 25, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 10, '2022-04-12 15:24:29', 21151, 'Y', 'Y', 1, 0),
(3, '856', '856001490', '0202488', 2, 8, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34, '2022-04-12 15:26:22', 21151, 'Y', 'Y', 2, 0),
(4, '856', '856001490', '0202521', 2, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-04-12 15:26:31', 21151, 'Y', 'Y', 2, 0),
(5, '856', '856001489', '0200001', 5, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-04-12 15:30:20', 21151, 'Y', 'Y', 5, 0),
(6, '856', '856001488', '0200001', 5, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-04-12 15:30:42', 21151, 'Y', 'Y', 5, 0),
(7, '856', '856001488', '0200002', 5, 6, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 29, '2022-04-12 15:31:06', 21151, 'Y', 'Y', 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `th_reqprod`
--

CREATE TABLE `th_reqprod` (
  `Req_OutCode` char(3) NOT NULL,
  `Req_Number` char(9) NOT NULL,
  `Req_Date` datetime NOT NULL,
  `Req_ConfirmYN` char(1) NOT NULL,
  `Req_Printed` tinyint(1) NOT NULL,
  `Req_TotalNetPrice` decimal(10,0) NOT NULL,
  `Req_TotalQtyDetail` int(4) NOT NULL,
  `Req_ConfirmBy` smallint(2) NOT NULL,
  `Req_LastUpdate` datetime NOT NULL,
  `Req_UserID` smallint(2) NOT NULL,
  `Req_RecordNum` int(4) NOT NULL,
  `Req_ActiveYN` char(1) NOT NULL,
  `Req_Type` char(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `th_reqprod`
--

INSERT INTO `th_reqprod` (`Req_OutCode`, `Req_Number`, `Req_Date`, `Req_ConfirmYN`, `Req_Printed`, `Req_TotalNetPrice`, `Req_TotalQtyDetail`, `Req_ConfirmBy`, `Req_LastUpdate`, `Req_UserID`, `Req_RecordNum`, `Req_ActiveYN`, `Req_Type`) VALUES
('856', '856001490', '2022-04-12 15:05:57', 'Y', 1, '73504', 9, 21258, '2022-04-12 15:05:57', 21151, 1490, 'Y', 'A'),
('856', '856001489', '2022-04-12 15:17:01', 'Y', 1, '300000', 5, 21258, '2022-04-12 15:17:01', 21151, 1490, 'Y', 'A'),
('856', '856001488', '2022-04-12 15:17:19', 'Y', 1, '500000', 10, 21258, '2022-04-12 15:17:19', 21151, 1490, 'Y', 'A');

-- --------------------------------------------------------

--
-- Table structure for table `t_movingprod`
--

CREATE TABLE `t_movingprod` (
  `Mov_ProdCode` char(7) NOT NULL,
  `Mov_OutCode` char(3) NOT NULL,
  `Mov_Month0` int(4) NOT NULL,
  `Mov_Month1` int(4) NOT NULL,
  `Mov_Month2` int(4) NOT NULL,
  `Mov_Month3` int(4) NOT NULL,
  `Mov_Average` decimal(5,0) NOT NULL,
  `Mov_OrderLimit` int(4) NOT NULL,
  `Mov_LastStock` int(4) NOT NULL,
  `Mov_UserID` smallint(2) NOT NULL,
  `Mov_LastUpdate` datetime NOT NULL,
  `Mov_Week1` smallint(2) NOT NULL,
  `Mov_Week2` smallint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `t_movingprod`
--

INSERT INTO `t_movingprod` (`Mov_ProdCode`, `Mov_OutCode`, `Mov_Month0`, `Mov_Month1`, `Mov_Month2`, `Mov_Month3`, `Mov_Average`, `Mov_OrderLimit`, `Mov_LastStock`, `Mov_UserID`, `Mov_LastUpdate`, `Mov_Week1`, `Mov_Week2`) VALUES
('', '', 0, 0, 0, 0, '0', 0, 0, 0, '0000-00-00 00:00:00', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `t_stockprodoutlet`
--

CREATE TABLE `t_stockprodoutlet` (
  `Stk_OutCode` char(3) NOT NULL,
  `Stk_ProdCode` char(7) NOT NULL,
  `Stk_AllQty` int(4) NOT NULL,
  `Stk_LastUpdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `td_reqprod`
--
ALTER TABLE `td_reqprod`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Req_Number` (`Req_Number`,`Req_ProdCode`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `td_reqprod`
--
ALTER TABLE `td_reqprod`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
