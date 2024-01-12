-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 18, 2023 at 09:59 PM
-- Server version: 10.6.14-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `undefeated_dbb1`
--

-- --------------------------------------------------------

--
-- Table structure for table `airtime`
--

CREATE TABLE `airtime` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aBuyDiscount` float NOT NULL DEFAULT 96,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL,
  `aType` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtime`
--

INSERT INTO `airtime` (`aId`, `aNetwork`, `aBuyDiscount`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`, `aType`) VALUES
(1, '1', 98, 99, 99.2, 99, 'VTU'),
(2, '2', 95.5, 99, 98, 98, 'VTU'),
(3, '3', 96.5, 98.5, 98, 97.8, 'VTU'),
(4, '4', 98, 99.5, 99.2, 98, 'VTU'),
(5, '1', 98, 99.6, 99.2, 99, 'Share And Sell'),
(6, '2', 93.5, 98, 97.2, 96.5, 'Share And Sell'),
(7, '3', 87, 94, 93, 92, 'Share And Sell'),
(8, '4', 88, 85, 94, 92, 'Share And Sell');

-- --------------------------------------------------------

--
-- Table structure for table `airtimepinprice`
--

CREATE TABLE `airtimepinprice` (
  `aId` int(100) NOT NULL,
  `aNetwork` varchar(10) NOT NULL,
  `aUserDiscount` float NOT NULL,
  `aAgentDiscount` float NOT NULL,
  `aVendorDiscount` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `airtimepinprice`
--

INSERT INTO `airtimepinprice` (`aId`, `aNetwork`, `aUserDiscount`, `aAgentDiscount`, `aVendorDiscount`) VALUES
(1, '1', 99, 99, 99),
(2, '2', 99, 99, 99),
(3, '3', 99, 99, 99),
(4, '4', 99, 99, 99);

-- --------------------------------------------------------

--
-- Table structure for table `alphatopupprice`
--

CREATE TABLE `alphatopupprice` (
  `alphaId` int(200) NOT NULL,
  `buyingPrice` int(100) NOT NULL,
  `sellingPrice` int(100) NOT NULL,
  `agent` int(100) NOT NULL,
  `vendor` int(100) NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `apiconfigs`
--

CREATE TABLE `apiconfigs` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apiconfigs`
--

INSERT INTO `apiconfigs` (`aId`, `name`, `value`) VALUES
(1, 'monifyCharges', '1.67'),
(2, 'monifyApi', 'MK_PROD_3MXY4EYNGK'),
(3, 'monifySecrete', 'FTTU6H5Y69CKX'),
(4, 'monifyContract', '904128982252'),
(5, 'monifyWeStatus', 'On'),
(6, 'monifyMoStatus', 'On'),
(7, 'monifyFeStatus', 'On'),
(8, 'monifySaStatus', 'On'),
(9, 'monifyStatus', 'On'),
(10, 'paystackCharges', '1.67'),
(11, 'paystackApi', '0f2acf467ae8912765203cec'),
(12, 'paystackStatus', 'Off'),
(13, 'mtnVtuKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(14, 'mtnVtuProvider', 'https://sabrdataapi.com/api/topup/'),
(15, 'mtnSharesellKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(16, 'mtnSharesellProvider', 'https://sabrdataapi.com/api/topup/'),
(17, 'airtelVtuKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(18, 'airtelVtuProvider', 'https://sabrdataapi.com/api/topup/'),
(19, 'airtelSharesellKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(20, 'airtelSharesellProvider', 'https://sabrdataapi.com/api/topup/'),
(21, 'gloVtuKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(22, 'gloVtuProvider', 'https://sabrdataapi.com/api/topup/'),
(23, 'gloSharesellKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(24, 'gloSharesellProvider', 'https://sabrdataapi.com/api/topup/'),
(25, '9mobileVtuKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(26, '9mobileVtuProvider', 'https://sabrdataapi.com/api/topup/'),
(27, '9mobileSharesellKey', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(28, '9mobileSharesellProvider', 'https://sabrdataapi.com/api/topup/'),
(29, 'mtnSmeApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(30, 'mtnSmeProvider', 'https://sabrdataapi.com/api/data/'),
(31, 'mtnGiftingApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(32, 'mtnGiftingProvider', 'https://sabrdataapi.com/api/data/'),
(33, 'mtnCorporateApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(34, 'mtnCorporateProvider', 'https://sabrdataapi.com/api/data/'),
(35, 'airtelSmeApi', '50c3816dcd92777995342d614066c985426f84d2'),
(36, 'airtelSmeProvider', 'https://maskawasub.com/api/data/'),
(37, 'airtelGiftingApi', '50c3816dcd92777995342d614066c985426f84d2'),
(38, 'airtelGiftingProvider', 'https://maskawasub.com/api/data/'),
(39, 'airtelCorporateApi', '50c3816dcd92777995342d614066c985426f84d2'),
(40, 'airtelCorporateProvider', 'https://maskawasub.com/api/data/'),
(41, 'gloSmeApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(42, 'gloSmeProvider', 'https://sabrdataapi.com/api/data/'),
(43, 'gloGiftingApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(44, 'gloGiftingProvider', 'https://sabrdataapi.com/api/data/'),
(45, 'gloCorporateApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(46, 'gloCorporateProvider', 'https://sabrdataapi.com/api/data/'),
(47, '9mobileSmeApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(48, '9mobileSmeProvider', 'https://sabrdataapi.com/api/data/'),
(49, '9mobileGiftingApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(50, '9mobileGiftingProvider', 'https://sabrdataapi.com/api/data/'),
(51, '9mobileCorporateApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(52, '9mobileCorporateProvider', 'https://sabrdataapi.com/api/data/'),
(53, 'cableVerificationApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(54, 'cableVerificationProvider', 'https://sabrdataapi.com/ajax/validate_iuc'),
(55, 'cableApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(56, 'cableProvider', 'https://sabrdataapi.com/api/cablesub/'),
(57, 'meterVerificationApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(58, 'meterVerificationProvider', 'https://sabrdataapi.com/api/validatemeter'),
(59, 'meterApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(60, 'meterProvider', 'https://sabrdataapi.com/api/billpayment/'),
(61, 'examApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(62, 'examProvider', 'https://sabrdataapi.com/api/epin/'),
(63, 'rechargePinApi', 'd37fe565ab9bb9dc14b216b7379d5188125fda66cefffb2334444be0834d'),
(64, 'rechargePinProvider', 'https://ncwallet.ng/api/recharge/'),
(65, 'walletOneApi', 'a972ec1fd4b77d65625ee7e04b6104f933a7c86e'),
(66, 'walletOneProvider', 'https://husmodataapi.com/api/user/'),
(67, 'walletOneProviderName', 'Husmodataapi'),
(68, 'walletTwoApi', '50c3816dcd92777995342d614066c985426f84d2'),
(69, 'walletTwoProvider', 'https://maskawasub.com/api/user/'),
(70, 'walletTwoProviderName', 'Maskawasub'),
(71, 'walletThreeApi', 'd9a099c7b7d299713a142f3b6d7a71dd82c6f9d0'),
(72, 'walletThreeProvider', 'https://sabrdataapi.com/api/user/'),
(73, 'walletThreeProviderName', 'Sarbdataapi '),
(74, 'dataPinApi', '89d979445da93da07a7a6080bfeb102ce4ffa293c56c5c8fe730f2dfafa0'),
(75, 'dataPinProvider', 'https://husmodataapi.com/api/datarechargepin/'),
(76, 'alphaApi', ''),
(77, 'alphaProvider', '');

-- --------------------------------------------------------

--
-- Table structure for table `apilinks`
--

CREATE TABLE `apilinks` (
  `aId` int(200) NOT NULL,
  `name` varchar(30) NOT NULL,
  `value` varchar(100) DEFAULT NULL,
  `type` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `apilinks`
--

INSERT INTO `apilinks` (`aId`, `name`, `value`, `type`) VALUES
(1, 'Topupmate', 'https://topupmate.com/api/user/', 'Wallet'),
(2, 'Topupmate', 'https://topupmate.com/api/airtime/', 'Airtime'),
(3, 'Topupmate', 'https://topupmate.com/api/data/', 'Data'),
(4, 'Topupmate', 'https://topupmate.com/api/cabletv/verify/', 'CableVer'),
(5, 'Topupmate', 'https://topupmate.com/api/cabletv/', 'Cable'),
(6, 'Topupmate', 'https://topupmate.com/api/electricity/verify/', 'ElectricityVer'),
(7, 'Topupmate', 'https://topupmate.com/api/electricity/', 'Electricity'),
(8, 'Topupmate', 'https://topupmate.com/api/exam/', 'Exam'),
(9, 'N3T Data', 'https://n3tdata.com/api/user/', 'Wallet'),
(10, 'N3T Data', 'https://n3tdata.com/api/topup/', 'Airtime'),
(11, 'N3T Data', 'https://n3tdata.com/api/data/', 'Data'),
(12, 'N3T Data', 'https://n3tdata.com/api/cable/cable-validation', 'CableVer'),
(13, 'N3T Data', 'https://n3tdata.com/api/cable/', 'Cable'),
(14, 'N3T Data', 'https://n3tdata.com/api/bill/bill-validation', 'ElectricityVer'),
(15, 'N3T Data', 'https://n3tdata.com/api/bill/', 'Electricity'),
(16, 'N3T Data', 'https://n3tdata.com/api/exam/', 'Exam'),
(17, 'Legitdataway', 'https://legitdataway.com/api/user', 'Wallet'),
(18, 'Legitdataway', 'https://legitdataway.com/api/topup', 'Airtime'),
(19, 'Legitdataway', 'https://legitdataway.com/api/data', 'Data'),
(20, 'Legitdataway', 'https://legitdataway.com/api/cable/cable-validation', 'CableVer'),
(21, 'Legitdataway', 'https://legitdataway.com/api/cable/', 'Cable'),
(22, 'Legitdataway', 'https://legitdataway.com/api/bill/bill-validation', 'ElectricityVer'),
(23, 'Legitdataway', 'https://legitdataway.com/api/bill/', 'Electricity'),
(24, 'Legitdataway', 'https://legitdataway.com/api/exam/', 'Exam'),
(25, 'Aabaxztech', 'https://aabaxztech.com/api/user/', 'Wallet'),
(26, 'Aabaxztech', 'https://aabaxztech.com/api/topup/', 'Airtime'),
(27, 'Aabaxztech', 'https://aabaxztech.com/api/data/', 'Data'),
(28, 'Aabaxztech', 'https://aabaxztech.com/api/validateiuc', 'CableVer'),
(29, 'Aabaxztech', 'https://aabaxztech.com/api/cablesub/', 'Cable'),
(30, 'Aabaxztech', 'https://aabaxztech.com/api/validatemeter', 'ElectricityVer'),
(31, 'Aabaxztech', 'https://aabaxztech.com/api/billpayment/', 'Electricity'),
(32, 'Aabaxztech', 'https://aabaxztech.com/api/epin/', 'Exam'),
(33, 'Maskawasub', 'https://maskawasub.com/api/user/', 'Wallet'),
(34, 'Maskawasub', 'https://maskawasub.com/api/topup/', 'Airtime'),
(35, 'Maskawasub', 'https://maskawasub.com/api/data/', 'Data'),
(36, 'Maskawasub', 'https://maskawasub.com/api/validateiuc', 'CableVer'),
(37, 'Maskawasub', 'https://maskawasub.com/api/cablesub/', 'Cable'),
(38, 'Maskawasub', 'https://maskawasub.com/api/validatemeter', 'ElectricityVer'),
(39, 'Maskawasub', 'https://maskawasub.com/api/billpayment/', 'Electricity'),
(40, 'Maskawasub', 'https://maskawasub.com/api/epin/', 'Exam'),
(41, 'Husmodataapi', 'https://husmodataapi.com/api/user/', 'Wallet'),
(42, 'Husmodataapi', 'https://husmodataapi.com/api/topup/', 'Airtime'),
(43, 'Husmodataapi', 'https://husmodataapi.com/api/data/', 'Data'),
(44, 'Husmodataapi', 'https://husmodataapi.com/api/validateiuc', 'CableVer'),
(45, 'Husmodataapi', 'https://husmodataapi.com/api/cablesub/', 'Cable'),
(46, 'Husmodataapi', 'https://husmodataapi.com/api/validatemeter', 'ElectricityVer'),
(47, 'Husmodataapi', 'https://husmodataapi.com/api/billpayment/', 'Electricity'),
(48, 'Husmodataapi', 'https://husmodataapi.com/api/epin/', 'Exam'),
(49, 'Gongozconcept', 'https://gongozconcept.com/api/user/', 'Wallet'),
(50, 'Gongozconcept', 'https://gongozconcept.com/api/topup/', 'Airtime'),
(51, 'Gongozconcept', 'https://gongozconcept.com/api/data/', 'Data'),
(52, 'Gongozconcept', 'https://gongozconcept.com/api/validateiuc', 'CableVer'),
(53, 'Gongozconcept', 'https://gongozconcept.com/api/cablesub/', 'Cable'),
(54, 'Gongozconcept', 'https://gongozconcept.com/api/validatemeter', 'ElectricityVer'),
(55, 'Gongozconcept', 'https://gongozconcept.com/api/billpayment/', 'Electricity'),
(56, 'Gongozconcept', 'https://gongozconcept.com/api/epin/', 'Exam'),
(57, 'Sabrdataapi', 'https://sabrdataapi.com/api/user/', 'Wallet'),
(58, 'Sabrdataapi', 'https://sabrdataapi.com/api/topup/', 'Airtime'),
(59, 'Sabrdataapi', 'https://sabrdataapi.com/api/data/', 'Data'),
(60, 'Sabrdataapi', 'https://sabrdataapi.com/ajax/validate_iuc', 'CableVer'),
(61, 'Sabrdataapi', 'https://sabrdataapi.com/api/cablesub/', 'Cable'),
(62, 'Sabrdataapi', 'https://sabrdataapi.com/api/validatemeter', 'ElectricityVer'),
(63, 'Sabrdataapi', 'https://sabrdataapi.com/api/billpayment/', 'Electricity'),
(64, 'Sabrdataapi', 'https://sabrdataapi.com/api/epin/', 'Exam'),
(74, 'VtuNaija', 'https://vtunaija.com.ng/api/datapin/', 'Data Pin'),
(75, 'VtuNaija', 'https://vtunaija.com.ng/alphatopup', 'Alpha Topup'),
(76, 'husmodataapi', 'https://husmodataapi.com/api/datarechargepin/', 'Data Pin');

-- --------------------------------------------------------

--
-- Table structure for table `cableid`
--

CREATE TABLE `cableid` (
  `cId` int(11) NOT NULL,
  `cableid` varchar(10) DEFAULT NULL,
  `provider` varchar(10) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableid`
--

INSERT INTO `cableid` (`cId`, `cableid`, `provider`, `providerStatus`) VALUES
(1, '1', 'GOTV', 'On'),
(2, '2', 'DSTV', 'On'),
(3, '3', 'STARTIMES', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `cableplans`
--

CREATE TABLE `cableplans` (
  `cpId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `cableprovider` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cableplans`
--

INSERT INTO `cableplans` (`cpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `cableprovider`, `day`) VALUES
(1, 'MAX', '4850', '4850', '4850', '2850', '2', NULL, 1, '30'),
(2, 'JINJA', '2250', '2250', '2250', '2250', '16', NULL, 1, '30'),
(3, 'JOLLI', '3300', '3300', '3300', '3300', '17', NULL, 1, '30'),
(4, 'SMALLIE', '1100', '1100', '1100', '1100', '18', NULL, 1, '30'),
(5, 'Supa', '6500', '6500', '6500', '6500', '47', NULL, 1, '30'),
(6, 'Yanga', '3500', '3500', '3500', '3500', '6', NULL, 2, '30'),
(7, 'Compact', '9000', '9000', '9000', '9000', '7', NULL, 2, '30'),
(8, 'Compact Plus', '16600', '16600', '16600', '16600', '8', NULL, 2, '30'),
(9, 'Confam', '6200', '6200', '6200', '6200', '19', NULL, 2, '30');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `msgId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `contact` varchar(200) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `crypto`
--

CREATE TABLE `crypto` (
  `type` varchar(255) NOT NULL,
  `network` tinyint(255) NOT NULL,
  `agentrate` varchar(255) NOT NULL,
  `userrate` varchar(255) NOT NULL,
  `vendorrate` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datapins`
--

CREATE TABLE `datapins` (
  `dpId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `datapins`
--

INSERT INTO `datapins` (`dpId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(1, '1.5GB', '309', '320', '300', '300', '1', 'Corporate', 1, '30'),
(2, '500 MB', '108', '120', '120', '120', '2', 'SME', 1, '30'),
(3, '1GB', '215', '220', '220', '220', '3', 'SME', 1, '30'),
(4, '2GB', '430', '450', '450', '450', '4', 'SME', 1, '30'),
(5, '3GB', '645', '650', '650', '650', '5', 'SME', 1, '30'),
(6, '5GB', '1075', '1090', '1090', '1090', '6', 'SME', 1, '30'),
(7, '10GB', '2150', '2200', '2200', '2200', '7', 'SME', 1, '30'),
(8, '500 MB', '100', '120', '120', '120', '8', 'Corporate', 2, '30'),
(9, '1GB', '200', '220', '220', '220', '9', 'Corporate', 2, '30'),
(10, '2GB', '400', '420', '420', '420', '10', 'Corporate', 2, '30'),
(11, '5GB', '1000', '1200', '1200', '1200', '11', 'Corporate', 2, '30'),
(12, '10GB', '2000', '2200', '2200', '2200', '12', 'Corporate', 2, '30');

-- --------------------------------------------------------

--
-- Table structure for table `dataplans`
--

CREATE TABLE `dataplans` (
  `pId` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dataplans`
--

INSERT INTO `dataplans` (`pId`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(57, '500MB', '110', '130', '125', '125', '6', 'SME', 1, '30'),
(58, '1GB', '218', '235', '230', '230', '7', 'SME', 1, '30'),
(66, '1GB', '235', '250', '240', '1420', '208', 'Gifting', 1, '30'),
(69, '2GB', '470', '490', '480', '470', '209', 'Gifting', 1, '30'),
(70, '5GB', '1080', '1125', '1120', '1120', '11', 'SME', 1, '30'),
(71, '2GB', '434', '450', '445', '445', '8', 'SME', 1, '30'),
(72, '3GB', '705', '730', '725', '970', '243', 'Gifting', 1, '30'),
(73, '5GB', '1175', '1200', '1190', '1950', '211', 'Gifting', 1, '30'),
(74, '10GB', '2350', '2400', '2380', '3400', '43', 'Gifting', 1, '30'),
(75, '500 MB', '120', '135', '135', '118', '212', 'Corporate', 1, '30'),
(76, '1GB', '240', '255', '250', '233', '213', 'Corporate', 1, '30'),
(77, '2GB', '480', '520', '500', '471', '214', 'Corporate', 1, '30'),
(78, '5GB', '1220', '1240', '1235', '1165', '216', 'Corporate', 1, '30'),
(85, '10GB', '2450', '2500', '2480', '2330', '217', 'Corporate', 1, '30'),
(86, '20GB', '4900', '5000', '4950', '4660', '219', 'Corporate', 1, '30'),
(87, '10GB', '2160', '2250', '2200', '2220', '266', 'SME', 1, '30'),
(88, '3GB', '648', '675', '660', '670', '44', 'SME', 1, '30'),
(89, '500 MB', '105', '130', '125', '125', '305', 'Corporate', 4, '30'),
(90, '1GB', '210', '235', '225', '225', '302', 'Corporate', 4, '30'),
(91, '2GB', '420', '445', '435', '435', '306', 'Corporate', 4, '30'),
(92, '5GB', '1050', '1125', '1120', '1120', '307', 'Corporate', 4, '30'),
(94, '300MB', '65', '85', '80', '80', '316', 'Corporate', 4, '30'),
(95, '10GB', '3700', '3750', '3730', '2350', '228', 'Corporate', 4, '30'),
(98, '1GB', '350', '365', '360', '305', '236', 'SME', 3, '30'),
(99, '2GB', '650', '660', '655', '610', '238', 'SME', 3, '30'),
(100, '1.5GB', '500', '510', '505', '460', '237', 'SME', 3, '30'),
(101, '3GB', '990', '1010', '1000', '915', '239', 'SME', 3, '30'),
(102, '10GB', '3500', '3520', '3510', '1220', '241', 'SME', 3, '30'),
(103, '5GB', '1700', '1740', '1720', '1525', '240', 'SME', 3, '30'),
(105, '500 MB', '115', '130', '130', '130', '246', 'Corporate', 2, '30'),
(107, '1.024GB', '225', '250', '240', '240', '247', 'Corporate', 2, '30'),
(108, '2GB', '450', '500', '480', '480', '248', 'Corporate', 2, '30'),
(109, '3GB', '675', '700', '690', '690', '249', 'Corporate', 2, '30'),
(110, '5GB', '1125', '11505', '1135', '1135', '250', 'Corporate', 2, '30'),
(111, '10GB', '2250', '2300', '2270', '2270', '251', 'Corporate', 2, '30'),
(112, '500MB', '150', '180', '160', '180', '252', 'Corporate', 3, '30'),
(113, '1GB', '200', '230', '220', '220', '253', 'Corporate', 3, '30'),
(114, '2GB', '400', '430', '420', '480', '254', 'Corporate', 3, '30'),
(115, '3GB', '600', '630', '625', '700', '255', 'Corporate', 3, '30'),
(116, '10GB', '4000', '4100', '4050', '4500', '257', 'Corporate', 3, '30');

-- --------------------------------------------------------

--
-- Table structure for table `datatokens`
--

CREATE TABLE `datatokens` (
  `tId` int(100) NOT NULL,
  `sId` int(100) NOT NULL,
  `tRef` varchar(255) NOT NULL,
  `business` varchar(30) NOT NULL,
  `network` varchar(30) NOT NULL,
  `datasize` varchar(30) NOT NULL,
  `quantity` int(100) NOT NULL,
  `serial` text NOT NULL,
  `tokens` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `electricityid`
--

CREATE TABLE `electricityid` (
  `eId` int(11) NOT NULL,
  `electricityid` varchar(50) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `abbreviation` varchar(5) NOT NULL,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `electricityid`
--

INSERT INTO `electricityid` (`eId`, `electricityid`, `provider`, `abbreviation`, `providerStatus`) VALUES
(1, '1', 'Ikeja Electric', 'IE', 'On'),
(2, '2', 'Eko Electric', 'EKEDC', 'On'),
(3, '3', 'Kano Electric', 'KEDCO', 'On'),
(4, '4', 'Port Harcourt Electric', 'PHEDC', 'On'),
(5, '5', 'Jos Electric', 'JED', 'On'),
(6, '6', 'Ibadan Electric', 'IBEDC', 'On'),
(7, '7', 'Kaduna Electric', 'KEDC', 'On'),
(8, '8', 'Abuja Electric', 'AEDC', 'On'),
(9, '9', 'Enugu Electric', 'ENUGU', 'On'),
(10, '10', 'Benin Electric', 'BENIN', 'On'),
(11, '11', 'Yola Electric', 'YOLA', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `examid`
--

CREATE TABLE `examid` (
  `eId` int(11) NOT NULL,
  `examid` varchar(10) DEFAULT NULL,
  `provider` varchar(50) NOT NULL,
  `price` int(20) NOT NULL DEFAULT 0,
  `buying_price` int(20) NOT NULL DEFAULT 0,
  `providerStatus` varchar(10) NOT NULL DEFAULT 'On'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `examid`
--

INSERT INTO `examid` (`eId`, `examid`, `provider`, `price`, `buying_price`, `providerStatus`) VALUES
(1, '1', 'WAEC', 2850, 2750, 'On'),
(2, '2', 'NECO', 900, 816, 'On'),
(3, '3', 'NABTEB', 880, 800, 'On');

-- --------------------------------------------------------

--
-- Table structure for table `networkid`
--

CREATE TABLE `networkid` (
  `nId` int(11) NOT NULL,
  `networkid` varchar(10) NOT NULL,
  `smeId` varchar(10) NOT NULL,
  `giftingId` varchar(10) NOT NULL,
  `corporateId` varchar(10) NOT NULL,
  `vtuId` varchar(10) NOT NULL,
  `sharesellId` varchar(10) NOT NULL,
  `network` varchar(20) NOT NULL,
  `networkStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `vtuStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `sharesellStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `airtimepinStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `smeStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `giftingStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `corporateStatus` varchar(10) NOT NULL DEFAULT 'Off',
  `datapinStatus` varchar(10) NOT NULL DEFAULT 'Off'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `networkid`
--

INSERT INTO `networkid` (`nId`, `networkid`, `smeId`, `giftingId`, `corporateId`, `vtuId`, `sharesellId`, `network`, `networkStatus`, `vtuStatus`, `sharesellStatus`, `airtimepinStatus`, `smeStatus`, `giftingStatus`, `corporateStatus`, `datapinStatus`) VALUES
(1, '1', '1', '1', '1', '1', '1', 'MTN', 'On', 'On', 'On', 'On', 'On', 'On', 'On', 'On'),
(2, '2', '2', '2', '2', '2', '2', 'GLO', 'On', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(3, '3', '3', '3', '3', '3', '3', '9MOBILE', 'On', 'On', 'On', 'On', 'Off', 'On', 'On', 'On'),
(4, '4', '4', '4', '4', '4', '4', 'AIRTEL', 'On', 'On', 'On', 'On', 'Off', 'Off', 'On', 'On');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `msgId` int(200) NOT NULL,
  `msgfor` tinyint(4) NOT NULL,
  `subject` varchar(200) NOT NULL,
  `message` text NOT NULL,
  `status` tinyint(3) NOT NULL DEFAULT 0,
  `dPosted` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`msgId`, `msgfor`, `subject`, `message`, `status`, `dPosted`) VALUES
(4, 3, 'WELCOME', 'Welcome Back ', 0, '2023-08-01 02:20:00');

-- --------------------------------------------------------

--
-- Table structure for table `rechargepins`
--

CREATE TABLE `rechargepins` (
  `Id` int(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `userprice` varchar(255) NOT NULL,
  `agentprice` varchar(255) NOT NULL,
  `vendorprice` varchar(255) NOT NULL,
  `planid` varchar(255) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `datanetwork` tinyint(10) NOT NULL,
  `day` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rechargepins`
--

INSERT INTO `rechargepins` (`Id`, `name`, `price`, `userprice`, `agentprice`, `vendorprice`, `planid`, `type`, `datanetwork`, `day`) VALUES
(1, '1.5GB', '309', '320', '300', '300', '71', 'Gifting', 1, '30'),
(2, '500 MB', '108', '120', '120', '120', '2', 'SME', 1, '30'),
(3, '1GB', '215', '220', '220', '220', '3', 'SME', 1, '30'),
(4, '2GB', '430', '450', '450', '450', '4', 'SME', 1, '30'),
(5, '3GB', '645', '650', '650', '650', '5', 'SME', 1, '30'),
(6, '5GB', '1075', '1090', '1090', '1090', '6', 'SME', 1, '30'),
(7, '10GB', '2150', '2200', '2200', '2200', '7', 'SME', 1, '30'),
(8, '500 MB', '100', '120', '120', '120', '8', 'Corporate', 2, '30'),
(9, '1GB', '200', '220', '220', '220', '9', 'Corporate', 2, '30'),
(10, '2GB', '400', '420', '420', '420', '10', 'Corporate', 2, '30'),
(11, '5GB', '1000', '1200', '1200', '1200', '11', 'Corporate', 2, '30'),
(12, '10GB', '2000', '2200', '2200', '2200', '12', 'Corporate', 2, '30');

-- --------------------------------------------------------

--
-- Table structure for table `rechargetokens`
--

CREATE TABLE `rechargetokens` (
  `tId` int(100) NOT NULL,
  `sId` int(100) NOT NULL,
  `tRef` varchar(255) NOT NULL,
  `business` varchar(30) NOT NULL,
  `network` varchar(30) NOT NULL,
  `datasize` text NOT NULL,
  `quantity` int(100) NOT NULL,
  `serial` text NOT NULL,
  `tokens` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `rechargetokens`
--

INSERT INTO `rechargetokens` (`tId`, `sId`, `tRef`, `business`, `network`, `datasize`, `quantity`, `serial`, `tokens`, `date`) VALUES
(0, 77, 'TR-1690644948-94f834ec31ccf203', 'Okay ', 'GLO', 'tyyuuiibbh', 1, '5434556787_90', '2541455678', '2023-07-29 15:35:49'),
(0, 77, 'TR-1690645788-b3b83a81c3223891', 'Dannvtu', '9MOBILE', 'tyyuuiibbh', 1, '5434556787_90', '2541455678', '2023-07-29 15:49:48'),
(0, 77, 'TR-1690645884-306e456321a34474', 'Dannvtu', 'AIRTEL', 'tyyuuiibbh', 1, '5434556787_90', '2541455678', '2023-07-29 15:51:24'),
(0, 77, 'TR-1690646935-e47d9d8ebb1decd7', 'Wanda ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 16:08:55'),
(0, 77, 'TR-1690647669-44f81c65e46ff8c8', 'Wanda ', 'AIRTEL', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 16:21:09'),
(0, 77, 'TR-1690648992-d5dd340c81e2ef44', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 16:43:12'),
(0, 77, 'TR-1690653960-16bb705c4a8a3fc6', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 18:06:00'),
(0, 77, 'TR-1690654863-30b4d06f1f0c4399', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 18:21:03'),
(0, 77, 'TR-1690661407-18dbcb594684b271', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-29 20:10:08'),
(0, 77, 'TR-1690661615-cd48ae1cbae97146', 'Dannvtu', 'MTN', '*555*PIN#', 1, '00000024173063480', '18688479088314361', '2023-07-29 20:13:49'),
(0, 77, 'TR-1690803558-d2373eabf4cecd5a', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-31 11:39:18'),
(0, 77, 'TR-1690803762-d014610287bd2362', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-31 11:42:42'),
(0, 77, 'TR-1690804084-bf11c6f1170cb7eb', 'Wanda ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-31 11:48:04'),
(0, 77, '1690804205', 'name_on_card', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-31 11:50:05'),
(0, 77, '1690806349', 'name_on_card', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-07-31 12:25:50'),
(0, 71, 'TR-1690852007-50706da8d63f2b1d', 'Dann', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-08-01 01:06:47'),
(0, 77, 'TR-1690858909-59c4ae571046c664', 'Okay ', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-08-01 03:01:49'),
(0, 77, 'TR-1690907057-2d47709da056c2e1', 'Dannvtu', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-08-01 16:24:17'),
(0, 77, '1690909102', 'name_on_card', 'MTN', '*556#', 1, '5434556787_90', '2541455678', '2023-08-01 16:58:22');

-- --------------------------------------------------------

--
-- Table structure for table `sitesettings`
--

CREATE TABLE `sitesettings` (
  `sId` int(200) NOT NULL,
  `sitename` varchar(20) DEFAULT NULL,
  `siteurl` varchar(100) DEFAULT NULL,
  `agentupgrade` varchar(20) DEFAULT NULL,
  `vendorupgrade` varchar(20) DEFAULT NULL,
  `apidocumentation` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `whatsapp` varchar(20) DEFAULT NULL,
  `whatsappgroup` varchar(100) DEFAULT NULL,
  `facebook` varchar(10) DEFAULT NULL,
  `twitter` varchar(200) DEFAULT NULL,
  `instagram` varchar(200) DEFAULT NULL,
  `telegram` varchar(100) DEFAULT NULL,
  `referalupgradebonus` float NOT NULL DEFAULT 100,
  `referalairtimebonus` float NOT NULL DEFAULT 1,
  `referaldatabonus` float NOT NULL DEFAULT 1,
  `referalwalletbonus` float NOT NULL DEFAULT 1,
  `referalcablebonus` float NOT NULL DEFAULT 1,
  `referalexambonus` float NOT NULL DEFAULT 1,
  `referalmeterbonus` float NOT NULL DEFAULT 1,
  `wallettowalletcharges` float NOT NULL DEFAULT 50,
  `sitecolor` varchar(10) NOT NULL DEFAULT '#0000e6',
  `logindesign` varchar(10) NOT NULL DEFAULT '5',
  `homedesign` varchar(10) NOT NULL DEFAULT '5',
  `notificationStatus` varchar(5) NOT NULL DEFAULT 'Off',
  `accountname` varchar(50) DEFAULT NULL,
  `accountno` varchar(15) DEFAULT NULL,
  `bankname` varchar(20) DEFAULT NULL,
  `electricitycharges` varchar(5) DEFAULT NULL,
  `airtimemin` varchar(10) NOT NULL DEFAULT '50',
  `airtimemax` varchar(10) NOT NULL DEFAULT '500'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sitesettings`
--

INSERT INTO `sitesettings` (`sId`, `sitename`, `siteurl`, `agentupgrade`, `vendorupgrade`, `apidocumentation`, `phone`, `email`, `whatsapp`, `whatsappgroup`, `facebook`, `twitter`, `instagram`, `telegram`, `referalupgradebonus`, `referalairtimebonus`, `referaldatabonus`, `referalwalletbonus`, `referalcablebonus`, `referalexambonus`, `referalmeterbonus`, `wallettowalletcharges`, `sitecolor`, `logindesign`, `homedesign`, `notificationStatus`, `accountname`, `accountno`, `bankname`, `electricitycharges`, `airtimemin`, `airtimemax`) VALUES
(1, 'Testvtu', 'httpsom.ng/', '1000', '2000', '', '09022', '', '09112380297', '', '', '', '', '', 100, 1, 1, 1, 1, 1, 1, 0, '#5B2DD9', '3', '3', 'On', 'Monnify - DAN', '627', 'Moniepointa', '', '50', '500');

-- --------------------------------------------------------

--
-- Table structure for table `subscribers`
--

CREATE TABLE `subscribers` (
  `sId` int(200) NOT NULL,
  `sApiKey` varchar(200) NOT NULL,
  `sFname` varchar(50) NOT NULL,
  `sLname` varchar(50) NOT NULL,
  `sEmail` varchar(50) DEFAULT NULL,
  `sPhone` varchar(20) NOT NULL,
  `sPass` varchar(150) NOT NULL,
  `sState` varchar(50) NOT NULL,
  `sPin` int(10) NOT NULL DEFAULT 1234,
  `sPinStatus` tinyint(3) DEFAULT 0,
  `sType` tinyint(10) NOT NULL DEFAULT 1,
  `sWallet` float NOT NULL DEFAULT 0,
  `sRefWallet` float NOT NULL DEFAULT 0,
  `sBankNo` varchar(20) DEFAULT NULL,
  `sRolexBank` varchar(20) DEFAULT NULL,
  `sSterlingBank` varchar(20) DEFAULT NULL,
  `sFidelityBank` varchar(20) DEFAULT NULL,
  `sBankName` varchar(30) DEFAULT NULL,
  `sRegStatus` tinyint(5) NOT NULL DEFAULT 3,
  `sVerCode` smallint(20) NOT NULL DEFAULT 0,
  `sRegDate` datetime NOT NULL DEFAULT current_timestamp(),
  `sLastActivity` datetime DEFAULT NULL,
  `sReferal` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribers`
--

INSERT INTO `subscribers` (`sId`, `sApiKey`, `sFname`, `sLname`, `sEmail`, `sPhone`, `sPass`, `sState`, `sPin`, `sPinStatus`, `sType`, `sWallet`, `sRefWallet`, `sBankNo`, `sRolexBank`, `sSterlingBank`, `sFidelityBank`, `sBankName`, `sRegStatus`, `sVerCode`, `sRegDate`, `sLastActivity`, `sReferal`) VALUES
(1, 'cCrCa2h3BCtvHmxxyd6A89AAxwAC4k4FfCBbxBqEGg5d1ACAC22BC', '', '', 'ad', '0905', 'd84', 'Rivers', 5050, 0, 1, 0, 0, '8', '63', '89649', '45544', 'Wema b', 0, 7003, '2023-08-02 20:33:29', '2023-08-02 21:38:55', '');

-- --------------------------------------------------------

--
-- Table structure for table `sysusers`
--

CREATE TABLE `sysusers` (
  `sysId` int(100) NOT NULL,
  `sysName` varchar(50) NOT NULL,
  `sysRole` tinyint(2) NOT NULL,
  `sysUsername` varchar(20) NOT NULL,
  `sysToken` varchar(30) NOT NULL,
  `sysStatus` tinyint(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `sysusers`
--

INSERT INTO `sysusers` (`sysId`, `sysName`, `sysRole`, `sysUsername`, `sysToken`, `sysStatus`) VALUES
(1, 'Administrator', 1, 'Manager', 'Manager', 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `tId` int(200) NOT NULL,
  `sId` int(100) NOT NULL,
  `transref` varchar(255) NOT NULL,
  `servicename` varchar(100) NOT NULL,
  `servicedesc` varchar(255) NOT NULL,
  `amount` varchar(100) NOT NULL,
  `status` tinyint(5) NOT NULL,
  `oldbal` varchar(100) NOT NULL,
  `newbal` varchar(100) NOT NULL,
  `profit` float NOT NULL DEFAULT 0,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`tId`, `sId`, `transref`, `servicename`, `servicedesc`, `amount`, `status`, `oldbal`, `newbal`, `profit`, `date`) VALUES
(276, 49, '7yh3zhzslo', 'Wallet Topup', 'Wallet funding of N200 via Paystack.', '198', 0, '0', '198', 0, '2023-07-06 09:47:15'),
(277, 49, '14971688633274', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '198', '68', 15, '2023-07-06 09:49:10'),
(279, 51, 'wejtps5lj0', 'Wallet Topup', 'Wallet funding of N100 via Paystack.', '99', 0, '0', '99', 0, '2023-07-06 16:44:33'),
(280, 51, '34831688658614', 'Airtime', 'MTN Airtime purchase of N50 for phone number 07046632402', '49.5', 0, '99', '49.5', 1.5, '2023-07-06 16:52:39'),
(282, 51, '47171688666103', 'Wallet Credit', 'Wallet Credit of N198 for user ohakajudith23@gmail.com. Reason: Balance Topup', '198', 0, '49.5', '247.5', 0, '2023-07-06 18:55:03'),
(283, 51, '40661688666113', 'Wallet Credit', 'Wallet Credit of N198 for user ohakajudith23@gmail.com. Reason: Balance Topup', '198', 0, '247.5', '445.5', 0, '2023-07-06 18:55:13'),
(284, 51, '68541688666211', 'Wallet Debit', 'Wallet Debit of N198 for user ohakajudith23@gmail.com. Reason: DEBIT', '198', 0, '445.5', '247.5', 0, '2023-07-06 18:56:51'),
(285, 52, '44251688666648', 'Wallet Credit', 'Wallet Credit of N34 for user belemeamadi2004@gmail.com. Reason: Transfer from bot', '34', 0, '0', '34', 0, '2023-07-06 19:04:08'),
(286, 52, '9uv1q05lto', 'Wallet Topup', 'Wallet funding of N290 via Paystack.', '287.1', 0, '34', '321.1', 0, '2023-07-06 19:07:33'),
(287, 52, '92601688666947', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '321.1', '321.1', 0, '2023-07-06 19:10:20'),
(288, 52, '16781688667058', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 0, '321.1', '191.1', 20, '2023-07-06 19:11:57'),
(289, 52, '32591688667169', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 0, '191.1', '61.1', 20, '2023-07-06 19:13:16'),
(290, 54, '71131688714432', 'Wallet Credit', 'Wallet Credit of N530 for user sevenpefecto@gmail.com. Reason: Credit', '530', 0, '0', '530', 0, '2023-07-07 08:20:32'),
(291, 54, '52561688718553', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 2348069940615', '120', 1, '530', '530', 0, '2023-07-07 09:29:57'),
(292, 54, '87461688718597', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08069940615', '120', 1, '530', '530', 0, '2023-07-07 09:31:58'),
(293, 54, '58001688718916', 'Data', 'Purchase of MTN 1GB Gifting 30 Days Plan for phone number 08069940615', '250', 1, '530', '530', 0, '2023-07-07 09:37:08'),
(294, 54, '46991688719028', 'Data', 'Purchase of MTN 500 MB Corporate 30 Days Plan for phone number 08069940615', '140', 1, '530', '530', 0, '2023-07-07 09:47:43'),
(295, 54, '31901688719716', 'Airtime', 'MTN Airtime purchase of N200 for phone number 08069940615', '198', 0, '530', '332', 6, '2023-07-07 09:49:16'),
(299, 54, '93171688762721', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '230', 1, '332', '332', 0, '2023-07-07 21:47:10'),
(300, 54, '71511688762828', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '230', 1, '332', '332', 0, '2023-07-07 21:48:22'),
(301, 54, '46481688762996', 'Data', 'Purchase of MTN 1GB Gifting 30 Days Plan for phone number 09168940357', '250', 1, '332', '332', 0, '2023-07-07 21:50:54'),
(302, 54, '36301688763054', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 09168940357', '255', 0, '332', '77', 15, '2023-07-07 21:51:59'),
(307, 52, 'MNFY|15|20230708142457|114987', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 197.2', '197.2', 0, '61.1', '258.3', 0, '2023-07-08 13:24:57'),
(308, 52, '95101688822732', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '230', 0, '258.3', '28.3', 12, '2023-07-08 14:26:01'),
(309, 55, 'MNFY|08|20230708182242|133034', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 197.2', '197.2', 0, '0', '197.2', 0, '2023-07-08 17:22:50'),
(310, 55, 'MNFY|15|20230708182306|124643', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 197.2', '197.2', 0, '197.2', '394.4', 0, '2023-07-08 17:23:06'),
(311, 55, '89161688836982', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09035436544', '120', 0, '394.4', '274.4', 10, '2023-07-08 18:23:30'),
(313, 51, '35531688849019', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07068765000', '120', 0, '247.5', '127.5', 10, '2023-07-08 21:45:11'),
(315, 55, '13981688902274', 'Airtime', 'MTN Airtime purchase of N100 for phone number 09035436544', '99', 0, '274.4', '175.4', 3, '2023-07-09 12:31:50'),
(316, 54, 'MNFY|12|20230709161428|163209', 'Wallet Topup', 'Wallet funding of N1000 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 986', '986', 0, '77', '1063', 0, '2023-07-09 15:14:36'),
(319, 54, '57571688917199', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09160311699', '120', 1, '1063', '1063', 0, '2023-07-09 16:40:45'),
(320, 54, '28251688917244', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09160311699', '120', 0, '1063', '943', 10, '2023-07-09 16:41:54'),
(321, 51, '89931688926707', 'Airtime', 'MTN Airtime purchase of N100 for phone number 07046632402', '99', 0, '127.5', '28.5', 3, '2023-07-09 19:19:17'),
(323, 55, '48701688928459', 'Wallet Credit', 'Wallet Credit of N2268 for user mondayfavour864@gmail.com. Reason: Credit ', '2268', 0, '175.4', '2443.4', 0, '2023-07-09 19:47:39'),
(324, 55, '19611688928589', 'Data', 'Purchase of MTN 10GB SME 30 Days Plan for phone number 09067935310', '2300', 1, '2443.4', '2443.4', 0, '2023-07-09 19:50:35'),
(325, 55, '85841688928661', 'Data', 'Purchase of MTN 10GB SME 30 Days Plan for phone number 09067935310', '2300', 1, '2443.4', '2443.4', 0, '2023-07-09 19:51:46'),
(326, 55, '70281688928734', 'Data', 'Purchase of MTN 10GB SME 30 Days Plan for phone number 09067935310', '2300', 1, '2443.4', '2443.4', 0, '2023-07-09 19:53:13'),
(327, 55, '27761688929028', 'Data', 'Purchase of MTN 10GB SME 30 Days Plan for phone number 09067935310', '2300', 0, '2443.4', '143.4', 60, '2023-07-09 19:58:21'),
(328, 62, 'MNFY|25|20230709203158|164616', 'Wallet Topup', 'Wallet funding of N235 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 231.71', '231.71', 0, '0', '231.71', 0, '2023-07-09 19:31:58'),
(329, 62, '91021688931142', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '230', 0, '231.71', '1.71', 12, '2023-07-09 20:33:22'),
(331, 62, 'MNFY|41|20230709203444|158140', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 197.2', '197.2', 0, '1.71', '198.91', 0, '2023-07-09 19:34:52'),
(332, 62, '77191688931379', 'Airtime', 'MTN Airtime purchase of N200 for phone number 08148927723', '198', 0, '198.91', '0.91', 6, '2023-07-09 20:37:12'),
(334, 55, '71541688935311', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09035436544', '120', 0, '143.4', '23.4', 10, '2023-07-09 21:42:22'),
(335, 52, 'MNFY|20|20230710023631|188409', 'Wallet Topup', 'Wallet funding of N220 via Monnify bank transfer with a service charges of 1.4%. You wallet have been credited with 216.92', '216.92', 0, '28.3', '245.22', 0, '2023-07-10 01:36:32'),
(336, 52, '75571688969622', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '225', 0, '245.22', '20.22', 7, '2023-07-10 07:14:40'),
(337, 63, 'MNFY|67|20230710090616|191028', 'Wallet Topup', 'Wallet funding of N2300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 2261.59', '2261.59', 0, '0', '2261.59', 0, '2023-07-10 08:06:17'),
(338, 63, '85731688976402', 'Data', 'Purchase of MTN 10GB SME 30 Days Plan for phone number 08069917251', '2250', 0, '2261.59', '11.59', 90, '2023-07-10 09:07:26'),
(339, 51, 'MNFY|67|20230710095259|193380', 'Wallet Topup', 'Wallet funding of N600 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 589.98', '589.98', 0, '28.5', '618.48', 0, '2023-07-10 08:53:00'),
(340, 51, '74381688979241', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09160770784', '125', 1, '618.48', '618.48', 0, '2023-07-10 09:54:52'),
(341, 51, '93531688979292', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09160770784', '125', 1, '618.48', '618.48', 0, '2023-07-10 09:58:52'),
(344, 51, '27021688980340', 'Wallet Debit', 'Wallet Debit of N120 for user ohakajudith23@gmail.com. Reason: MTN SME DATA (500MB)', '120', 0, '618.48', '498.48', 0, '2023-07-10 10:12:20'),
(348, 54, '29951688990034', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '225', 1, '943', '943', 0, '2023-07-10 12:55:44'),
(349, 54, '16641688990143', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '225', 1, '943', '943', 0, '2023-07-10 12:57:15'),
(350, 54, '81371688990355', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '225', 1, '943', '943', 0, '2023-07-10 13:00:17'),
(351, 54, '38361688990417', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '225', 0, '943', '718', 7, '2023-07-10 13:08:39'),
(352, 54, '68481688991059', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '125', 0, '718', '593', 15, '2023-07-10 13:11:46'),
(353, 54, '36571688998075', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07066635249', '125', 0, '593', '468', 15, '2023-07-10 15:08:39'),
(354, 51, '70891689014490', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09138559933', '225', 1, '498.48', '498.48', 0, '2023-07-10 19:43:34'),
(355, 52, 'MNFY|08|20230710200002|232157', 'Wallet Topup', 'Wallet funding of N220 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 216.326', '216.326', 0, '20.22', '236.546', 0, '2023-07-10 19:00:03'),
(356, 52, '76711689015865', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '225', 1, '236.546', '236.546', 0, '2023-07-10 20:04:52'),
(357, 52, '24111689015932', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '125', 1, '236.546', '236.546', 0, '2023-07-10 20:06:23'),
(358, 52, '20841689015983', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '225', 1, '236.546', '236.546', 0, '2023-07-10 20:07:05'),
(359, 52, '80941689016025', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '225', 1, '236.546', '236.546', 0, '2023-07-10 20:14:40'),
(367, 54, '95341689020389', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08108832884', '125', 1, '468', '468', 0, '2023-07-10 21:22:05'),
(368, 54, '14151689020524', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08108832884', '125', 1, '468', '468', 0, '2023-07-10 21:25:32'),
(369, 54, '84041689020761', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08108832884', '125', 1, '468', '468', 0, '2023-07-10 21:27:27'),
(370, 54, '21371689020847', 'Data', 'Purchase of MTN 500 MB Corporate 30 Days Plan for phone number 08108832884', '135', 0, '468', '333', 15, '2023-07-10 21:30:51'),
(373, 63, 'MNFY|67|20230711081651|238987', 'Wallet Topup', 'Wallet funding of N1300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 1278.29', '1278.29', 0, '11.59', '1289.88', 0, '2023-07-11 07:16:52'),
(374, 63, '18481689059829', 'Data', 'Purchase of MTN 5GB SME 30 Days Plan for phone number 07039964543', '1125', 0, '1289.88', '164.88', 45, '2023-07-11 08:18:13'),
(375, 52, '89111689060836', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '225', 1, '236.546', '236.546', 0, '2023-07-11 08:34:33'),
(376, 52, '10371689060964', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '125', 0, '236.546', '111.546', 15, '2023-07-11 08:36:38'),
(378, 51, '90081689066746', 'Wallet Debit', 'Wallet Debit of N225 for user ohakajudith23@gmail.com. Reason: MTN SME DATA (1GB)', '225', 0, '498.48', '273.48', 0, '2023-07-11 10:12:26'),
(379, 52, 'MNFY|41|20230711121655|223409', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '111.546', '308.206', 0, '2023-07-11 11:17:14'),
(380, 52, '55581689074669', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '308.206', '73.206', 17, '2023-07-11 12:25:16'),
(381, 55, 'MNFY|48|20230711155323|234107', 'Wallet Topup', 'Wallet funding of N500 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 491.65', '491.65', 0, '23.4', '515.05', 0, '2023-07-11 14:53:38'),
(382, 55, '64021689087255', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 15:54:42'),
(383, 55, '83711689087311', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 15:56:18'),
(384, 55, '39641689087418', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 15:57:19'),
(385, 55, '16271689087439', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 15:59:14'),
(386, 55, '33981689096191', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 18:23:30'),
(387, 55, '63951689099216', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 19:14:07'),
(388, 55, '11251689099246', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 09035436544', '450', 1, '515.05', '515.05', 0, '2023-07-11 19:19:26'),
(390, 55, '71781689100231', 'Wallet Debit', 'Wallet Debit of N470 for user mondayfavour864@gmail.com. Reason: MTN CG #470', '470', 0, '515.05', '45.05', 0, '2023-07-11 19:30:31'),
(391, 66, '18841689100274', 'Wallet Credit', 'Wallet Credit of N390 for user chidivik70@gmail.com. Reason: Credit from admin', '390', 0, '0', '390', 0, '2023-07-11 19:31:14'),
(392, 66, '71911689101857', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 07055003372', '270', 5, '390', '120', 0, '2023-07-11 19:59:02'),
(393, 54, '35001689102735', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08069940615', '235', 1, '333', '333', 0, '2023-07-11 20:13:06'),
(394, 54, '65251689102785', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 08069940615', '255', 1, '333', '333', 0, '2023-07-11 20:13:53'),
(395, 54, '28601689103286', 'Data', 'Purchase of MTN 1GB Gifting 30 Days Plan for phone number 08069940615', '250', 1, '333', '333', 0, '2023-07-11 20:22:38'),
(396, 54, '26271689103357', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 08069940615', '255', 1, '333', '333', 0, '2023-07-11 20:23:26'),
(397, 62, 'MNFY|67|20230711202952|273020', 'Wallet Topup', 'Wallet funding of N250 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 245.825', '245.825', 0, '0.91', '246.735', 0, '2023-07-11 19:30:02'),
(398, 62, '88721689103943', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 1, '246.735', '246.735', 0, '2023-07-11 20:32:54'),
(399, 54, '80581689103991', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 08069940615', '255', 1, '333', '333', 0, '2023-07-11 20:33:44'),
(400, 62, '92111689104083', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 1, '246.735', '246.735', 0, '2023-07-11 20:36:37'),
(401, 54, '98231689110554', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 07048251746', '235', 1, '333', '333', 0, '2023-07-11 22:23:58'),
(402, 54, '60821689110638', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 07048251746', '255', 1, '333', '333', 0, '2023-07-11 22:24:40'),
(403, 54, '79091689110680', 'Data', 'Purchase of MTN 1GB Corporate 30 Days Plan for phone number 07048251746', '255', 0, '333', '78', 15, '2023-07-11 22:26:29'),
(404, 62, '74071689114470', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 1, '246.735', '246.735', 0, '2023-07-11 23:28:21'),
(405, 62, '87381689114649', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 1, '246.735', '246.735', 0, '2023-07-11 23:31:31'),
(406, 54, 'MNFY|12|20230712004709|281021', 'Wallet Topup', 'Wallet funding of N338 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 332.3554', '332.3554', 0, '78', '410.3554', 0, '2023-07-11 23:47:15'),
(407, 54, '68481689119389', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '125', 0, '410.355', '285.355', 15, '2023-07-12 00:50:17'),
(408, 49, 'MNFY|67|20230712005838|281769', 'Wallet Topup', 'Wallet funding of N70 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 68.831', '68.831', 0, '68', '136.831', 0, '2023-07-11 23:58:42'),
(409, 49, '76591689119768', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '136.831', '6.831', 15, '2023-07-12 00:58:53'),
(411, 66, '89371689138810', 'Wallet Credit', 'Wallet Credit of N270 for user chidivik70@gmail.com. Reason: Refund', '270', 0, '120', '390', 0, '2023-07-12 06:13:30'),
(413, 66, '81171689144173', 'Wallet Debit', 'Wallet Debit of N270 for user chidivik70@gmail.com. Reason: GLO CG 1GB #270', '270', 0, '390', '120', 0, '2023-07-12 07:42:53'),
(415, 62, '39331689156191', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 0, '246.735', '11.735', 17, '2023-07-12 11:03:39'),
(418, 63, 'MNFY|41|20230712122526|266050', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '164.88', '263.21', 0, '2023-07-12 11:25:37'),
(419, 63, '17791689161057', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09137138236', '235', 1, '263.21', '263.21', 0, '2023-07-12 12:26:04'),
(420, 63, '74451689161235', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09137138236', '235', 1, '263.21', '263.21', 0, '2023-07-12 12:28:24'),
(421, 63, '48971689162063', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08107143644', '235', 0, '263.21', '28.21', 17, '2023-07-12 12:45:10'),
(422, 52, 'MNFY|41|20230712195143|284784', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '73.206', '171.536', 0, '2023-07-12 18:51:47'),
(423, 52, '39931689187939', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 0, '171.536', '41.536', 20, '2023-07-12 19:52:42'),
(424, 54, 'MNFY|41|20230712214422|290992', 'Wallet Topup', 'Wallet funding of N500 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 491.65', '491.65', 0, '285.355', '777.005', 0, '2023-07-12 20:44:27'),
(425, 54, '77011689194977', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08108832884', '130', 0, '777.005', '647.005', 20, '2023-07-12 21:50:23'),
(426, 54, '36891689195123', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08142747070', '130', 0, '647.005', '517.005', 20, '2023-07-12 22:04:13'),
(427, 54, '36431689195863', 'Data', 'Purchase of AIRTEL 500 MB Corporate 30 Days Plan for phone number 07080268137', '235', 0, '517.005', '282.005', 35, '2023-07-12 22:05:06'),
(428, 54, '77911689198080', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 0, '282.005', '152.005', 20, '2023-07-12 22:46:17'),
(431, 63, '74031689238182', 'Wallet Credit', 'Wallet Credit of N299 for user promiseezinwa4@gmail.com. Reason: From Bot to Website ', '299', 0, '28.21', '327.21', 0, '2023-07-13 09:49:42'),
(434, 51, '23861689264270', 'Airtime', 'MTN Airtime purchase of N200 for phone number 07046632402', '198', 0, '273.48', '75.48', 6, '2023-07-13 17:05:28'),
(436, 72, 'MNFY|20|20230713191956|372710', 'Wallet Topup', 'Wallet funding of N130 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 127.829', '127.829', 0, '0', '127.829', 0, '2023-07-13 18:19:56'),
(437, 72, 'MNFY|67|20230713192121|364767', 'Wallet Topup', 'Wallet funding of N30 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 29.499', '29.499', 0, '127.829', '157.328', 0, '2023-07-13 18:21:29'),
(438, 72, '49241689272448', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09036817219', '130', 0, '157.328', '27.328', 20, '2023-07-13 19:22:21'),
(440, 54, '29211689274515', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 0, '152.005', '22.005', 20, '2023-07-13 19:55:45'),
(441, 54, 'MNFY|20|20230713211632|379862', 'Wallet Topup', 'Wallet funding of N400 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 393.32', '393.32', 0, '22.005', '415.325', 0, '2023-07-13 20:16:34'),
(442, 54, '86791689279735', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09162081915', '235', 1, '415.325', '415.325', 0, '2023-07-13 21:24:38'),
(443, 54, '34821689279877', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09162081915', '130', 0, '415.325', '285.325', 20, '2023-07-13 21:25:35'),
(444, 54, '55361689280103', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08108832884', '130', 0, '285.325', '155.325', 20, '2023-07-13 21:29:20'),
(445, 54, '59721689280191', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07040155169', '130', 0, '155.325', '25.325', 20, '2023-07-13 21:30:46'),
(446, 52, 'MNFY|25|20230714033236|353214', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '41.536', '139.866', 0, '2023-07-14 02:32:37'),
(447, 52, '18971689301972', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 0, '139.866', '9.866', 20, '2023-07-14 03:33:26'),
(449, 55, 'MNFY|41|20230714214846|377218', 'Wallet Topup', 'Wallet funding of N300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 294.99', '294.99', 0, '45.05', '340.04', 0, '2023-07-14 20:48:53'),
(450, 55, '47001689367808', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 07067522115', '235', 0, '340.04', '105.04', 17, '2023-07-14 21:50:43'),
(451, 54, '36991689375793', 'Airtime', 'MTN Airtime purchase of N25 for phone number 07065079254', '24.75', 1, '25.325', '25.325', 0, '2023-07-15 00:03:41'),
(452, 54, '87941689377835', 'Airtime', 'MTN Airtime purchase of N25 for phone number 07065079254', '24.75', 1, '25.325', '25.325', 0, '2023-07-15 00:37:41'),
(453, 76, '53551689401956', 'Wallet Credit', 'Wallet Credit of N530 for user lawsonjosiah15@gmail.com. Reason: Transfer from bot', '530', 0, '0', '530', 0, '2023-07-15 07:19:16'),
(454, 76, '29861689401971', 'Data', 'Purchase of GLO 2GB Corporate 30 Days Plan for phone number 08157156461', '530', 0, '530', '0', 30, '2023-07-15 07:21:11'),
(455, 55, 'MNFY|20|20230715074759|438391', 'Wallet Topup', 'Wallet funding of N50 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 49.165', '49.165', 0, '105.04', '154.205', 0, '2023-07-15 06:47:59'),
(456, 55, '98231689403715', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09035436544', '130', 0, '154.205', '24.205', 20, '2023-07-15 07:48:57'),
(457, 49, 'MNFY|15|20230715095352|424425', 'Wallet Topup', 'Wallet funding of N130 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 127.829', '127.829', 0, '6.831', '134.66', 0, '2023-07-15 08:53:53'),
(458, 49, '76571689411253', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '134.66', '4.66', 15, '2023-07-15 09:55:24'),
(460, 49, 'MNFY|41|20230715151009|402428', 'Wallet Topup', 'Wallet funding of N130 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 127.829', '127.829', 0, '4.66', '132.489', 0, '2023-07-15 14:10:10'),
(461, 49, '84401689430286', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '132.489', '2.489', 15, '2023-07-15 15:12:09'),
(464, 54, 'MNFY|67|20230715194115|462485', 'Wallet Topup', 'Wallet funding of N505 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 496.5665', '496.5665', 0, '25.325', '521.8915', 0, '2023-07-15 18:41:16'),
(465, 54, '55071689455908', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 0, '521.891', '391.891', 20, '2023-07-15 22:18:58'),
(466, 54, '38411689479005', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 0, '391.891', '261.891', 20, '2023-07-16 04:43:53'),
(467, 54, '16681689496579', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '235', 1, '261.891', '261.891', 0, '2023-07-16 09:37:59'),
(468, 55, 'MNFY|12|20230716103802|484070', 'Wallet Topup', 'Wallet funding of N210 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 206.493', '206.493', 0, '24.205', '230.698', 0, '2023-07-16 09:38:04'),
(469, 55, 'MNFY|16|20230716104003|444891', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '230.698', '329.028', 0, '2023-07-16 09:40:04'),
(470, 55, '50641689500422', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09035436544', '235', 0, '329.028', '94.028', 17, '2023-07-16 10:40:45'),
(471, 54, '16101689501506', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09168940357', '235', 0, '261.891', '26.891', 17, '2023-07-16 10:58:56'),
(472, 71, 'MNFY|15|20230716191928|490068', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '0', '98.33', 0, '2023-07-16 18:19:31'),
(476, 52, 'MNFY|16|20230717225802|521642', 'Wallet Topup', 'Wallet funding of N300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 294.99', '294.99', 0, '9.866', '304.856', 0, '2023-07-17 21:58:24'),
(478, 52, '66381689666375', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '304.856', '69.856', 17, '2023-07-18 08:46:44'),
(479, 78, '25151689671078', 'Wallet Credit', 'Wallet Credit of N293 for user densecatalogue@gmail.com. Reason: Transfer from bot', '293', 0, '0', '293', 0, '2023-07-18 10:04:38'),
(480, 79, '30241689682291', 'Wallet Credit', 'Wallet Credit of N238 for user anthonyoffu16@gmail.com. Reason: Transfer from bot', '238', 0, '0', '238', 0, '2023-07-18 13:11:31'),
(484, 79, '92321689700673', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08148927723', '235', 0, '238', '3', 17, '2023-07-18 18:18:56'),
(486, 51, 'MNFY|88|20230718203110|007966', 'Wallet Topup', 'Wallet funding of N300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 294.99', '294.99', 0, '75.48', '370.47', 0, '2023-07-18 19:31:10'),
(487, 51, '73211689709307', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07046632402', '130', 0, '370.47', '240.47', 20, '2023-07-18 20:42:44'),
(489, 78, '20621689725845', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08066900551', '235', 0, '293', '58', 17, '2023-07-19 01:18:39'),
(490, 65, 'MNFY|43|20230719014945|018465', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '0', '196.66', 0, '2023-07-19 00:49:47'),
(494, 65, '60421689750183', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '196.66', '196.66', 0, '2023-07-19 08:03:41'),
(495, 65, '12441689750221', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '196.66', '196.66', 0, '2023-07-19 08:05:49'),
(496, 65, '49011689756942', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '196.66', '66.66', 15, '2023-07-19 09:56:12'),
(497, 65, 'MNFY|25|20230719152312|038560', 'Wallet Topup', 'Wallet funding of N400 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 393.32', '393.32', 0, '66.66', '459.98', 0, '2023-07-19 14:23:14'),
(498, 65, '61201689777573', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 15:40:18'),
(499, 65, '30891689777666', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 15:43:21'),
(500, 65, '91641689777618', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 15:44:31'),
(501, 65, '83801689779272', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 16:08:24'),
(502, 65, '25331689779304', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 16:09:29'),
(503, 65, '19091689779367', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 2348076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 16:11:04'),
(504, 65, '48151689781504', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 16:45:33'),
(505, 65, '17351689781529', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08076692860', '130', 1, '459.98', '459.98', 0, '2023-07-19 16:47:30'),
(506, 65, '92171689781767', 'Data', 'Purchase of AIRTEL 300MB Corporate 30 Days Plan for phone number 07085955736', '180', 0, '459.98', '279.98', 30, '2023-07-19 16:50:28'),
(507, 49, 'MNFY|25|20230719214858|057341', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '2.489', '199.149', 0, '2023-07-19 20:48:58'),
(508, 49, '18501689800201', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 1, '199.149', '199.149', 0, '2023-07-19 21:58:20'),
(509, 49, '81401689800373', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '199.149', '69.149', 15, '2023-07-19 22:00:36'),
(511, 65, '78211689809351', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '279.98', '149.98', 15, '2023-07-20 00:29:38'),
(512, 51, '77291689845645', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 07046632402', '235', 0, '240.47', '5.47', 17, '2023-07-20 10:35:05'),
(514, 54, 'MNFY|43|20230720184528|100963', 'Wallet Topup', 'Wallet funding of N1200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 1179.96', '1179.96', 0, '26.891', '1206.851', 0, '2023-07-20 17:45:31'),
(515, 54, '24341689876193', 'Data', 'Purchase of MTN 3GB SME 30 Days Plan for phone number 07065079254', '675', 0, '1206.85', '531.85', 27, '2023-07-20 19:11:01'),
(516, 54, '12861689877447', 'Airtime', 'MTN Airtime purchase of N100 for phone number 08108832884', '99.5', 0, '531.85', '432.35', 1.5, '2023-07-20 19:25:01'),
(517, 49, 'MNFY|54|20230720193014|096713', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '69.149', '167.479', 0, '2023-07-20 18:30:15'),
(518, 49, '74371689878027', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '167.479', '37.479', 15, '2023-07-20 19:34:40'),
(520, 54, '90051689878772', 'Data', 'Purchase of AIRTEL 500 MB Corporate 30 Days Plan for phone number 08080039588', '235', 0, '432.35', '197.35', 35, '2023-07-20 19:46:40'),
(521, 54, '45491689878970', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09168940357', '130', 0, '197.35', '67.35', 20, '2023-07-20 19:50:10'),
(523, 65, '81571689892942', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '149.98', '19.98', 15, '2023-07-20 23:43:38'),
(524, 65, 'MNFY|57|20230721190831|146016', 'Wallet Topup', 'Wallet funding of N400 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 393.32', '393.32', 0, '19.98', '413.3', 0, '2023-07-21 18:08:34'),
(525, 52, 'MNFY|80|20230722002816|161079', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '69.856', '266.516', 0, '2023-07-21 23:28:17'),
(526, 52, '10621689982124', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '266.516', '31.516', 17, '2023-07-22 00:29:20'),
(527, 65, '56291689985836', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 01:31:18'),
(528, 65, '36651690008172', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 07:43:20'),
(529, 65, '89361690008199', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '413.3', '413.3', 0, '2023-07-22 07:43:49'),
(530, 65, '13241690014218', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 09:24:05'),
(531, 65, '24281690018397', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 10:33:44'),
(535, 65, '85421690061715', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 22:35:54'),
(536, 65, '23411690061782', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '413.3', '413.3', 0, '2023-07-22 22:37:02'),
(537, 65, '69641690061822', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 22:37:33'),
(538, 65, '78811690063124', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-22 22:59:27'),
(539, 52, 'MNFY|11|20230723093549|214793', 'Wallet Topup', 'Wallet funding of N240 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 235.992', '235.992', 0, '31.516', '267.508', 0, '2023-07-23 08:35:50'),
(540, 52, '23131690101371', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '267.508', '32.508', 17, '2023-07-23 09:36:35'),
(541, 65, '85031690103812', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-23 10:17:15'),
(542, 65, '98401690105920', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-23 10:52:28'),
(543, 65, '91881690110291', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-23 12:05:16'),
(544, 65, '67861690111970', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '413.3', '413.3', 0, '2023-07-23 12:33:12'),
(545, 65, '89651690111991', 'Data', 'Purchase of AIRTEL 300MB Corporate 30 Days Plan for phone number 09015432270', '180', 1, '413.3', '413.3', 0, '2023-07-23 12:33:47'),
(546, 65, '98921690112027', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 09154393718', '270', 1, '413.3', '413.3', 0, '2023-07-23 12:34:28'),
(547, 65, '11781690112106', 'Data', 'Purchase of AIRTEL 300MB Corporate 30 Days Plan for phone number 09015342270', '180', 0, '413.3', '233.3', 30, '2023-07-23 12:35:53'),
(548, 65, '23201690112229', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '233.3', '233.3', 0, '2023-07-23 12:37:33'),
(550, 65, '81951690128392', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '233.3', '233.3', 0, '2023-07-23 17:06:56'),
(551, 49, 'MNFY|15|20230723192238|219841', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '37.479', '135.809', 0, '2023-07-23 18:22:39'),
(552, 49, '12261690136592', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '135.809', '5.809', 15, '2023-07-23 19:23:59'),
(554, 65, '51591690141531', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '233.3', '103.3', 15, '2023-07-23 20:46:32'),
(556, 78, 'MNFY|15|20230724021705|231096', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '58', '254.66', 0, '2023-07-24 01:17:06'),
(557, 78, '20981690161627', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08066900551', '235', 1, '254.66', '254.66', 0, '2023-07-24 02:21:17'),
(558, 78, '33451690161715', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08066900551', '235', 1, '254.66', '254.66', 0, '2023-07-24 02:22:30'),
(559, 78, '98211690163906', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08066900551', '235', 1, '254.66', '254.66', 0, '2023-07-24 02:59:01'),
(560, 78, '75901690178622', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08066900551', '235', 0, '254.66', '19.66', 17, '2023-07-24 07:04:43'),
(561, 49, 'MNFY|54|20230724104036|248681', 'Wallet Topup', 'Wallet funding of N130 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 127.829', '127.829', 0, '5.809', '133.638', 0, '2023-07-24 09:40:39'),
(562, 49, '55041690191738', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '133.638', '3.638', 15, '2023-07-24 10:43:03'),
(568, 65, 'MNFY|57|20230724213150|287981', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '103.3', '201.63', 0, '2023-07-24 20:31:51'),
(569, 65, '96661690230735', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '201.63', '71.63', 15, '2023-07-24 21:32:36'),
(573, 66, 'MNFY|88|20230725143730|287316', 'Wallet Topup', 'Wallet funding of N250 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 245.825', '245.825', 0, '120', '365.825', 0, '2023-07-25 13:37:48'),
(574, 66, '57211690292357', 'Data', 'Purchase of GLO 1GB Corporate 30 Days Plan for phone number 07055003372', '270', 0, '365.825', '95.825', 20, '2023-07-25 14:40:08'),
(575, 71, 'MNFY|25|20230725171832|307036', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '98.33', '294.99', 0, '2023-07-25 16:18:33'),
(576, 71, '31331690302021', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09061745472', '130', 0, '294.99', '164.99', 20, '2023-07-25 17:22:09'),
(577, 49, 'MNFY|88|20230725174407|295234', 'Wallet Topup', 'Wallet funding of N135 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 132.7455', '132.7455', 0, '3.638', '136.3835', 0, '2023-07-25 16:44:12'),
(578, 49, '78331690303502', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '136.383', '6.383', 15, '2023-07-25 17:45:31'),
(581, 65, 'MNFY|07|20230725185032|314415', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '71.63', '268.29', 0, '2023-07-25 17:50:32'),
(582, 65, '12271690308437', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '268.29', '138.29', 15, '2023-07-25 19:08:30'),
(584, 52, 'MNFY|57|20230725214243|340024', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '32.508', '229.168', 0, '2023-07-25 20:42:44'),
(585, 52, '87461690317893', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 0, '229.168', '99.168', 20, '2023-07-25 21:45:12'),
(592, 49, 'MNFY|57|20230726130418|361736', 'Wallet Topup', 'Wallet funding of N130 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 127.829', '127.829', 0, '6.383', '134.212', 0, '2023-07-26 12:04:18'),
(593, 49, '80561690373127', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '134.212', '4.212', 15, '2023-07-26 13:06:31'),
(596, 65, '44661690391996', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '138.29', '8.29', 15, '2023-07-26 18:20:16'),
(597, 52, 'MNFY|54|20230726183812|365923', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '99.168', '295.828', 0, '2023-07-26 17:38:18'),
(598, 52, '24361690393125', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '295.828', '60.828', 17, '2023-07-26 18:39:08'),
(599, 54, '78501690400137', 'Airtime', 'MTN Airtime purchase of N65 for phone number 07065079254', '64.74', 1, '67.35', '67.35', 0, '2023-07-26 20:36:15'),
(600, 54, '92821690400325', 'Airtime', 'MTN Airtime purchase of N65 for phone number 07065079254', '64.74', 1, '67.35', '67.35', 0, '2023-07-26 20:39:22'),
(602, 54, '62391690401567', 'Wallet Debit', 'Wallet Debit of N64 for user sevenpefecto@gmail.com. Reason: Airtime purchase for 07065079254', '64', 0, '67.35', '3.35', 0, '2023-07-26 20:59:27'),
(603, 86, 'MNFY|67|20230726213451|390937', 'Wallet Topup', 'Wallet funding of N120 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 117.996', '117.996', 0, '0', '117.996', 0, '2023-07-26 20:34:52'),
(604, 86, 'MNFY|57|20230726213546|388309', 'Wallet Topup', 'Wallet funding of N100 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 98.33', '98.33', 0, '117.996', '216.326', 0, '2023-07-26 20:35:49'),
(605, 86, '53191690403632', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09065811041', '125', 0, '216.326', '91.326', 15, '2023-07-26 21:36:17'),
(611, 49, 'MNFY|77|20230727122558|017164', 'Wallet Topup', 'Wallet funding of N550 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 540.815', '540.815', 0, '4.212', '545.027', 0, '2023-07-27 11:25:58'),
(612, 49, '41211690457213', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 08143542075', '450', 1, '545.027', '545.027', 0, '2023-07-27 12:28:33'),
(613, 49, '59051690457437', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 08143542075', '450', 1, '545.027', '545.027', 0, '2023-07-27 12:31:22'),
(614, 49, '10241690457535', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 08143542075', '450', 1, '545.027', '545.027', 0, '2023-07-27 12:33:11'),
(618, 49, '91151690458148', 'Data', 'Purchase of MTN 2GB SME 30 Days Plan for phone number 08143542075', '450', 1, '545.027', '545.027', 0, '2023-07-27 12:42:59'),
(619, 49, '64661690458187', 'Wallet Debit', 'Wallet Debit of N450 for user augustinesolomon964@gmail.com. Reason: Data', '450', 0, '545.027', '95.027', 0, '2023-07-27 12:43:07'),
(621, 65, 'MNFY|69|20230727210759|040050', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '8.29', '204.95', 0, '2023-07-27 20:08:00'),
(622, 65, '86861690488607', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-27 21:10:30'),
(623, 65, '62021690489086', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-27 21:18:34'),
(624, 65, '84721690489493', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-27 21:25:24'),
(625, 65, '79771690490171', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-27 21:36:35'),
(629, 54, 'MNFY|54|20230728014319|000237', 'Wallet Topup', 'Wallet funding of N1000 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 983.3', '983.3', 0, '3.35', '986.65', 0, '2023-07-28 00:43:21'),
(630, 54, '12271690505146', 'Data', 'Purchase of MTN 3GB SME 30 Days Plan for phone number 07065079254', '675', 1, '986.65', '986.65', 0, '2023-07-28 01:46:43'),
(631, 65, '38821690505190', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-28 01:46:51'),
(632, 54, '73901690505201', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 1, '986.65', '986.65', 0, '2023-07-28 01:48:30'),
(633, 54, '75661690505310', 'Data', 'Purchase of MTN 500 MB Corporate 30 Days Plan for phone number 07065079254', '135', 1, '986.65', '986.65', 0, '2023-07-28 01:49:19'),
(634, 54, '88401690505359', 'Data', 'Purchase of MTN 500 MB Corporate 30 Days Plan for phone number 07065079254', '135', 1, '986.65', '986.65', 0, '2023-07-28 02:03:55'),
(639, 54, '13021690530536', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 07065079254', '130', 0, '986.65', '856.65', 20, '2023-07-28 08:49:26'),
(640, 65, '63371690531959', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-28 09:13:08'),
(647, 71, '26771690578789', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09061745472', '130', 0, '164.99', '34.99', 20, '2023-07-28 22:14:02'),
(650, 71, 'MNFY|75|20230728234209|047114', 'Wallet Topup', 'Wallet funding of N1000 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 983.3', '983.3', 0, '34.99', '1018.29', 0, '2023-07-28 22:42:10'),
(651, 71, '23881690584145', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09061745472', '235', 0, '1018.29', '783.29', 17, '2023-07-28 23:43:43'),
(692, 54, '84431690622378', 'Data', 'Purchase of MTN 3GB Gifting 30 Days Plan for phone number 07065079254', '730', 1, '856.65', '856.65', 0, '2023-07-29 10:21:05'),
(693, 54, '40741690622462', 'Data', 'Purchase of MTN 3GB Gifting 30 Days Plan for phone number 07065079254', '730', 1, '856.65', '856.65', 0, '2023-07-29 10:22:16'),
(694, 54, '57471690623096', 'Wallet Debit', 'Wallet Debit of N730 for user sevenpefecto@gmail.com. Reason: Data', '730', 0, '856.65', '126.65', 0, '2023-07-29 10:31:36'),
(738, 49, 'MNFY|98|20230729133820|072265', 'Wallet Topup', 'Wallet funding of N50 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 49.165', '49.165', 0, '95.027', '144.192', 0, '2023-07-29 12:38:20'),
(739, 71, 'TR-1690634504-419bce0a4cf2a0fe', 'Recharge Pin', 'Purchase of 1 recharge pin of MTN   At The Rate Of N0', '0', 0, '783.29', '783.29', 0, '2023-07-29 13:41:44'),
(760, 65, '37211690656025', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 1, '204.95', '204.95', 0, '2023-07-29 19:41:16'),
(761, 65, '58591690656075', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 09154393718', '130', 0, '204.95', '74.95', 15, '2023-07-29 19:42:21'),
(763, 55, '27021690657070', 'Airtime', 'AIRTEL Airtime purchase of N100 for phone number 09014954484', '85', 1, '94.028', '94.028', 0, '2023-07-29 19:58:38'),
(764, 55, '53681690657135', 'Airtime', 'AIRTEL Airtime purchase of N100 for phone number 09014954484', '85', 1, '94.028', '94.028', 0, '2023-07-29 19:59:47'),
(765, 49, '90081690658919', 'Data', 'Purchase of GLO 500 MB Corporate 30 Days Plan for phone number 08051694151', '130', 0, '144.192', '14.192', 15, '2023-07-29 20:29:53'),
(773, 55, '87221690707500', 'Airtime', 'AIRTEL Airtime purchase of N100 for phone number 09014954484', '85', 1, '94.028', '94.028', 0, '2023-07-30 09:59:08'),
(774, 55, '61941690707616', 'Airtime', 'AIRTEL Airtime purchase of N50 for phone number 09014954484', '49.75', 0, '94.028', '44.278', 0.75, '2023-07-30 10:01:07'),
(775, 54, '16391690726788', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '119.52', 1, '126.65', '126.65', 0, '2023-07-30 15:20:32');
INSERT INTO `transactions` (`tId`, `sId`, `transref`, `servicename`, `servicedesc`, `amount`, `status`, `oldbal`, `newbal`, `profit`, `date`) VALUES
(776, 54, '28541690726882', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '119.4', 1, '126.65', '126.65', 0, '2023-07-30 15:21:49'),
(777, 54, '84961690735218', 'Airtime', 'MTN Airtime purchase of N125 for phone number 07065079254', '124.375', 1, '126.65', '126.65', 0, '2023-07-30 17:40:46'),
(778, 54, '42851690735762', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '119.4', 1, '126.65', '126.65', 0, '2023-07-30 17:50:35'),
(779, 54, '81811690736632', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '119.4', 1, '126.65', '126.65', 0, '2023-07-30 18:04:48'),
(787, 52, 'MNFY|73|20230731145303|026074', 'Wallet Topup', 'Wallet funding of N200 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 196.66', '196.66', 0, '60.828', '257.488', 0, '2023-07-31 13:53:07'),
(788, 52, '71731690811603', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 14:53:49'),
(789, 52, '71791690811676', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 14:54:54'),
(790, 54, '90781690833537', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '119.4', 1, '126.65', '126.65', 0, '2023-07-31 20:59:34'),
(792, 52, '61931690837893', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 22:12:10'),
(793, 52, '59991690838990', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 22:34:42'),
(794, 52, '91551690839414', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 22:37:39'),
(795, 52, '69551690839691', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '257.488', '257.488', 0, '2023-07-31 22:41:53'),
(796, 54, '62451690839791', 'Airtime', 'MTN Airtime purchase of N120 for phone number 07065079254', '118.8', 0, '126.65', '7.85', 1.2, '2023-07-31 22:43:35'),
(797, 52, '47231690840210', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '257.488', '22.488', 17, '2023-07-31 22:50:29'),
(798, 71, '30021690851910', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09061745472', '235', 0, '783.29', '548.29', 17, '2023-08-01 02:05:47'),
(799, 71, 'TR-1690852007-50706da8d63f2b1d', 'Recharge Pin', 'Purchase of 1 recharge pin of MTN   At The Rate Of N0.985', '0.985', 0, '548.29', '547.305', 0.985, '2023-08-01 02:06:47'),
(802, 71, '37381690904737', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09061745472', '235', 0, '547.305', '312.305', 17, '2023-08-01 16:45:58'),
(806, 71, '52451690958709', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09061745472', '235', 0, '312.305', '77.305', 17, '2023-08-02 07:45:43'),
(818, 52, 'MNFY|36|20230802184148|127616', 'Wallet Topup', 'Wallet funding of N300 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 294.99', '294.99', 0, '22.488', '317.478', 0, '2023-08-02 17:41:50'),
(819, 52, '48021690998138', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 1, '317.478', '82.478', 0, '2023-08-02 18:42:35'),
(820, 54, 'MNFY|73|20230802191648|144658', 'Wallet Topup', 'Wallet funding of N1000 via Monnify bank transfer with a service charges of 1.67%. You wallet have been credited with 983.3', '983.3', 0, '7.85', '991.15', 0, '2023-08-02 18:16:49'),
(821, 54, '97941691000534', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08162728342', '130', 1, '991.15', '991.15', 0, '2023-08-02 19:24:07'),
(822, 54, '97241691000677', 'Data', 'Purchase of MTN 500 MB Corporate 30 Days Plan for phone number 08162728342', '135', 1, '991.15', '991.15', 0, '2023-08-02 19:24:54'),
(823, 54, '21671691005309', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09039487896', '130', 1, '991.15', '991.15', 0, '2023-08-02 20:42:21'),
(824, 52, 'REFUND/48021690998138/1691005500', 'Refund', 'Refund of N235 for tansaction reference 48021690998138.', '235', 0, '82.478', '317.478', 0, '2023-08-02 20:45:00'),
(825, 52, '14001691005655', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 09134845654', '235', 0, '317.478', '317.478', 0, '2023-08-02 20:48:03'),
(826, 52, '85091691005722', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09134845654', '130', 1, '317.478', '317.478', 0, '2023-08-02 20:49:08'),
(827, 54, '44101691009275', 'Data', 'Purchase of MTN 1GB SME 30 Days Plan for phone number 08136638546', '235', 0, '991.15', '756.15', 17, '2023-08-02 21:48:22'),
(828, 54, '30681691009317', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 09039487896', '130', 0, '756.15', '626.15', 20, '2023-08-02 21:49:07'),
(829, 54, '87241691009365', 'Data', 'Purchase of MTN 500MB SME 30 Days Plan for phone number 08162728342', '130', 0, '626.15', '496.15', 20, '2023-08-02 21:50:25'),
(831, 52, 'DEBIT/14001691005655/1691012530', 'Debit', 'Debit of N235 for tansaction reference 14001691005655.', '235', 0, '317.478', '82.478', 0, '2023-08-02 22:42:10');

-- --------------------------------------------------------

--
-- Table structure for table `userlogin`
--

CREATE TABLE `userlogin` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `token` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `userlogin`
--

INSERT INTO `userlogin` (`id`, `user`, `token`) VALUES
(1, 2, '1682020195kDHxrltqwC931'),
(2, 2, '1682022590tvynzkmDHl696'),
(3, 2, '1682064629IzAHCwksJo121'),
(4, 2, '1682145627qHwlyrAFox979'),
(5, 2, '1682295203mFEqlCkBIz212'),
(6, 2, '1682469642JIBtlkpHxo546'),
(7, 2, '1682491677ACzxHpwBrG805'),
(8, 2, '1684102945EIAtHpxJqz440'),
(9, 2, '1684183224slBqEntprw206'),
(10, 2, '1684185918CJAlrtvozq982'),
(11, 2, '1684417906ArCqsmEIzt825'),
(12, 2, '1684614752FmnlBtHADr425'),
(13, 2, '1684622753JzICGtFyro732'),
(14, 2, '1685394296kABmtorvyG415'),
(15, 3, '1689167153nwADoFpsCI688'),
(16, 7, '1689171436zpJsDFnrlG417'),
(17, 7, '1689174146CkIpEntJwB523'),
(18, 7, '1689202069JDvEFpmsry586'),
(19, 7, '1689236397AHrxokyEzJ956'),
(20, 7, '1689239495xIsvJlGwkq508'),
(21, 8, '1689239496ItJAGyoErk290'),
(22, 7, '1689240047EJloxwIypF556'),
(23, 7, '1689241562GokBDpzxIm173'),
(24, 7, '1689247866yrDnpqFsEH632'),
(25, 7, '1689261505CJEGlvyAFs811'),
(36, 52, '1689630942rvyIFmBkxl415'),
(46, 49, '1689649086vyDonlHmBs299'),
(48, 78, '1689659702zqDtsrlGAo759'),
(49, 78, '1689659731CktzqJoxDF355'),
(50, 78, '1689659737BmqFkCEyJz236'),
(51, 78, '1689659820yFlDrznpoA312'),
(54, 52, '1689666368FnDwqoEpzt220'),
(72, 79, '1689681954zEIDmxlFsp502'),
(73, 79, '1689682042BxkwCGnAlm996'),
(74, 79, '1689682067moxJlHvzDy217'),
(75, 79, '1689682111ryBDqItvGA183'),
(76, 79, '1689682307vnByrEDGtI662'),
(78, 63, '1689686548kBtxpIvyGn840'),
(83, 78, '1689697954qxzCJIrsoD170'),
(84, 79, '1689699608qIAsFmrElJ978'),
(85, 79, '1689699692JtHnmEvCkB444'),
(90, 51, '1689708154sxoqGvtzBl529'),
(92, 51, '1689708832nBpkqtloHJ305'),
(93, 51, '1689709110BAsltkrCwH431'),
(94, 71, '1689716027rovCJpwkBt432'),
(98, 65, '1689724884ABrJkFHnxE105'),
(99, 78, '1689725835EvGDBAIqpH678'),
(100, 78, '1689726033CpmrHGxBDF767'),
(105, 65, '1689750174IGvyosxqnr228'),
(106, 65, '1689756933kvHEmsrBGt766'),
(108, 65, '1689777343tJqoxlCAvw100'),
(109, 65, '1689779266stJxyHrqzF421'),
(110, 65, '1689781493woHqylrEDk899'),
(111, 65, '1689781762mnEtzxJspq825'),
(113, 49, '1689800163rpGxHvtnsy538'),
(120, 65, '1689809330zyFJHvrkDC730'),
(125, 72, '1689817209xpCAvrwosG273'),
(126, 72, '1689821961qItFxAHDJv580'),
(130, 51, '1689845567ryzmJxwvsq798'),
(131, 54, '1689876113tAJFlsykzn663'),
(132, 54, '1689877151JGmCpFAzwE151'),
(134, 49, '1689877974CypGqrEnsB251'),
(142, 65, '1689892691DvrtqCxzwk574'),
(143, 65, '1689896279vIHFwoCApk735'),
(149, 72, '1689954170HIAtwlJEqx447'),
(150, 76, '1689956427ysrzmJEFGp342'),
(151, 65, '1689962896rzywHBlGxq461'),
(152, 65, '1689963069FsrnyotqGE548'),
(155, 52, '1689982011IokvnDmEzp622'),
(157, 65, '1689985828CxwBlArtDp511'),
(158, 78, '1689986943HonlzGJCyB701'),
(159, 78, '1689987072oqmkrtlAzD184'),
(160, 65, '1690008166DqIJlskBpn887'),
(161, 65, '1690009520ItlDAEHmzq700'),
(163, 65, '1690014197GFCqHtwDEv534'),
(166, 65, '1690014920EmkJHFvwty285'),
(167, 65, '1690018392BlmCksoFyI995'),
(171, 83, '1690024781IGJCqsxprB426'),
(174, 84, '1690035457mnvIAFwBlp246'),
(182, 65, '1690061693ynHGztmxIA765'),
(183, 65, '1690062975zrmsykBDpx480'),
(184, 65, '1690088676HtIAomwCql779'),
(185, 66, '1690095029tJlxozHIqm469'),
(186, 66, '1690095794AItmpGnzry914'),
(187, 52, '1690101205IJsznwloyk826'),
(188, 65, '1690103802rGyIDsJmoE129'),
(189, 65, '1690105824qGJrvnpFmE338'),
(190, 65, '1690110281FtmADrHJsk614'),
(191, 65, '1690111943BtorpAEDlI583'),
(195, 65, '1690128384DplnBAGvCI532'),
(196, 49, '1690136485tzyrqoJBlG183'),
(197, 65, '1690141525nGymkIlvrB447'),
(203, 71, '1690150948AGvrBsCEwx901'),
(205, 71, '1690155368CGmwpzlnEB875'),
(211, 78, '1690161258swExnpkDoy314'),
(212, 78, '1690161413EqJvtywHrp212'),
(213, 78, '1690161618EpxyJItzwl433'),
(214, 78, '1690163898ABEkGxItzq947'),
(215, 78, '1690178616FICwkzmGlA462'),
(218, 49, '1690191724nkqlwDtEBs723'),
(225, 65, '1690230340pDHExoJzCI691'),
(229, 85, '1690235399IACJsxovtk640'),
(230, 85, '1690235399xBvzAnHIoC812'),
(232, 78, '1690280342lInpJHstmw255'),
(236, 78, '1690290564yClvHqwrAm555'),
(238, 66, '1690292014JpGHklxzAr222'),
(241, 71, '1690301759nsDHkwGolv628'),
(242, 86, '1690303159FCvzyJEqDx716'),
(243, 71, '1690303318rlwvDxCJAz787'),
(244, 49, '1690303494EFCIxmAzBq165'),
(246, 65, '1690307364EnFAkmzHwt635'),
(247, 65, '1690308276yxClEkFHJr123'),
(249, 49, '1690309780wAlCGHmDkn353'),
(250, 83, '1690313736tABIHFmDok554'),
(251, 52, '1690317681notFJswyzp534'),
(256, 86, '1690358303JrCBnIkFws261'),
(258, 86, '1690361480CItGFsDyzw259'),
(261, 86, '1690366543CpnGHlqIyw276'),
(263, 49, '1690373119JpAytvzqEC303'),
(266, 65, '1690387610wEoHpAtFBy589'),
(267, 65, '1690391991DpCBrmJFkv339'),
(268, 52, '1690393037sywIxmFJDE292'),
(269, 54, '1690400106woJmEGCyFz434'),
(270, 54, '1690400314ytrDInAkzC787'),
(273, 86, '1690403478mqkJDzBwHn827'),
(274, 54, '1690403523vkznylwBot233'),
(275, 86, '1690403617DEonxJHmBl269'),
(276, 86, '1690403996lqGnzpmwFo108'),
(296, 78, '1690455865yqxrwEGDJA585'),
(297, 49, '1690456753xlzvnwyFIm395'),
(299, 49, '1690458139DyCwsqtBlp176'),
(306, 71, '1690468311BkJzAqvxIo727'),
(307, 65, '1690472696CsBlymnqDJ677'),
(315, 49, '1690485320JDpkoErFxA221'),
(316, 49, '1690485330IJGAmCwxvn478'),
(320, 65, '1690488558DxkplmCvtJ517'),
(321, 65, '1690489025mrkyAsEwJI286'),
(322, 65, '1690489484BqECxkwJAp614'),
(323, 65, '1690490166GnxFsktDom221'),
(324, 71, '1690491814rzGAnwtsyq809'),
(332, 54, '1690505122rqAwsJHFvl689'),
(333, 65, '1690505181xoCtFmGqEs369'),
(336, 72, '1690510902GFICDtxHEs529'),
(337, 72, '1690511199DywmFqslGH957'),
(338, 54, '1690516262tCvxroyIGD563'),
(346, 54, '1690530528BExnwlDmIv691'),
(348, 65, '1690531951lHJInvoABw718'),
(358, 65, '1690546755qvIGJApEns698'),
(372, 71, '1690578767qGvkplrDCB620'),
(374, 71, '1690584002xzvCtIBEDp365'),
(377, 73, '1690584841vHpIsqCEAz790'),
(393, 54, '1690622359FptHJnyBxC725'),
(395, 54, '1690623788JBHwGyqECx894'),
(403, 71, '1690634461wFymBokJpG909'),
(414, 73, '1690649751HFDIoqszCA895'),
(419, 54, '1690655566pwyEsGJqxt423'),
(420, 65, '1690656011FzqHAtrlDw766'),
(422, 55, '1690657055xHrkJoqAwG676'),
(423, 49, '1690658892FtvxEBAJsG628'),
(432, 86, '1690667030DGopqECAsl805'),
(441, 55, '1690707491moCwFnplIx439'),
(443, 54, '1690719349koIHDwrlzx451'),
(444, 54, '1690726754JDkltrBpyw357'),
(445, 54, '1690726866FIyGCJzxpq918'),
(446, 54, '1690735141zHnpGtqJwx493'),
(447, 54, '1690735365tCzGvADwFm319'),
(448, 54, '1690735751AFypCzsxEr938'),
(449, 54, '1690736625wvxnEBFHIl691'),
(451, 65, '1690742272EsAnJFpCwv592'),
(461, 54, '1690806918GykCtzDExr524'),
(462, 88, '1690808761tlBDGHxqrp956'),
(464, 86, '1690811012tyIDAqoEGk146'),
(465, 52, '1690811423yHoCzBksFr412'),
(468, 54, '1690833329tHlsnpoBxy477'),
(469, 54, '1690833705mlsDrEqIpA688'),
(470, 54, '1690833856HJoBFIAlpv964'),
(472, 52, '1690837880IqvHorztCG704'),
(473, 52, '1690839684BzkHotnxvD204'),
(474, 54, '1690839783sDHtGmwJkl393'),
(475, 52, '1690840171prCnzxlskt267'),
(476, 52, '1690840202lJHCEvokyw617'),
(477, 52, '1690845592BpoyvtJzqA317'),
(480, 71, '1690851888xyDmqtzCvF428'),
(498, 57, '1690878171JkDxHFnqrv285'),
(504, 71, '1690904725GpvtBDqCmF446'),
(514, 71, '1690958661EtryJnpvFI976'),
(516, 71, '1690964999DpyGrFmlnt261'),
(518, 57, '1690966996vDGFAtHmxl788'),
(519, 57, '1690967061qrDGtJkAmp182'),
(520, 90, '1690967555IDnGHrtyvp886'),
(521, 57, '1690968405EzqDBJAsvr270'),
(529, 52, '1690998043qECtsmGBDn857'),
(530, 52, '1690998129yslrGEzkmn828'),
(531, 52, '1690998865qBmzyFptxo181'),
(532, 54, '1691000481mtqsBxlzFE644'),
(533, 52, '1691000872tzEGkAsHDn970'),
(535, 54, '1691005304IxvwCrJsty752'),
(536, 52, '1691005645svmHkrDnxC848'),
(537, 90, '1691008261tomDyqBCwE143'),
(538, 91, '1691008409pxtlnCBJkE240'),
(539, 91, '1691008433AsDICBrqnt372'),
(541, 54, '1691009270syvpDxHABz657'),
(543, 57, '1691010149AqwzHkFoJv840'),
(547, 52, '1691014061oqImlCHJFv524'),
(550, 94, '1691016396szArtDlBpC433'),
(551, 94, '1691024284lJDAvIFqBn576'),
(552, 90, '1691037731poGEDzwyHx289'),
(553, 95, '1692374764pvqsGClFor883');

-- --------------------------------------------------------

--
-- Table structure for table `uservisits`
--

CREATE TABLE `uservisits` (
  `id` int(200) NOT NULL,
  `user` int(100) NOT NULL,
  `state` varchar(10) NOT NULL,
  `visitTime` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `uservisits`
--

INSERT INTO `uservisits` (`id`, `user`, `state`, `visitTime`) VALUES
(1, 2, 'Abia', '1682020205'),
(2, 2, 'Abia', '1682022594'),
(3, 2, 'Abia', '1682469646'),
(4, 2, 'Abia', '1684614755'),
(5, 3, 'Rivers', '1689167159'),
(6, 7, 'Rivers', '1689171442'),
(7, 8, 'Lagos', '1689239501'),
(8, 7, 'Rivers', '1689261508'),
(12, 78, 'Akwa Ibom', '1689659737'),
(17, 72, 'Ondo', '1689817210'),
(21, 84, 'Kebbi', '1690035475'),
(25, 85, 'Rivers', '1690235423'),
(26, 86, 'Rivers', '1690303182'),
(27, 86, 'Rivers', '1690358305'),
(36, 49, 'Imo', '1690485323'),
(45, 88, 'Enugu', '1690808773'),
(52, 57, 'Abuja FCT', '1690966998'),
(53, 90, 'Abia', '1690967570'),
(56, 91, 'Rivers', '1691008421'),
(57, 91, 'Rivers', '1691008435'),
(58, 94, 'Imo', '1691016407'),
(59, 95, 'Enugu', '1692374780');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `airtime`
--
ALTER TABLE `airtime`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  ADD PRIMARY KEY (`alphaId`);

--
-- Indexes for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `apilinks`
--
ALTER TABLE `apilinks`
  ADD PRIMARY KEY (`aId`);

--
-- Indexes for table `cableid`
--
ALTER TABLE `cableid`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `cableplans`
--
ALTER TABLE `cableplans`
  ADD PRIMARY KEY (`cpId`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `datapins`
--
ALTER TABLE `datapins`
  ADD PRIMARY KEY (`dpId`);

--
-- Indexes for table `dataplans`
--
ALTER TABLE `dataplans`
  ADD PRIMARY KEY (`pId`);

--
-- Indexes for table `datatokens`
--
ALTER TABLE `datatokens`
  ADD PRIMARY KEY (`tId`);

--
-- Indexes for table `electricityid`
--
ALTER TABLE `electricityid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `examid`
--
ALTER TABLE `examid`
  ADD PRIMARY KEY (`eId`);

--
-- Indexes for table `networkid`
--
ALTER TABLE `networkid`
  ADD PRIMARY KEY (`nId`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`msgId`);

--
-- Indexes for table `sitesettings`
--
ALTER TABLE `sitesettings`
  ADD PRIMARY KEY (`sId`);

--
-- Indexes for table `subscribers`
--
ALTER TABLE `subscribers`
  ADD PRIMARY KEY (`sId`),
  ADD UNIQUE KEY `sApiKey` (`sApiKey`),
  ADD UNIQUE KEY `sPhone` (`sPhone`),
  ADD UNIQUE KEY `sEmail` (`sEmail`);

--
-- Indexes for table `sysusers`
--
ALTER TABLE `sysusers`
  ADD PRIMARY KEY (`sysId`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`tId`),
  ADD UNIQUE KEY `transref` (`transref`);

--
-- Indexes for table `userlogin`
--
ALTER TABLE `userlogin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uservisits`
--
ALTER TABLE `uservisits`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `airtime`
--
ALTER TABLE `airtime`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `airtimepinprice`
--
ALTER TABLE `airtimepinprice`
  MODIFY `aId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `alphatopupprice`
--
ALTER TABLE `alphatopupprice`
  MODIFY `alphaId` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `apiconfigs`
--
ALTER TABLE `apiconfigs`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `apilinks`
--
ALTER TABLE `apilinks`
  MODIFY `aId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `cableid`
--
ALTER TABLE `cableid`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cableplans`
--
ALTER TABLE `cableplans`
  MODIFY `cpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `datapins`
--
ALTER TABLE `datapins`
  MODIFY `dpId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `dataplans`
--
ALTER TABLE `dataplans`
  MODIFY `pId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `datatokens`
--
ALTER TABLE `datatokens`
  MODIFY `tId` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `electricityid`
--
ALTER TABLE `electricityid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `examid`
--
ALTER TABLE `examid`
  MODIFY `eId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `networkid`
--
ALTER TABLE `networkid`
  MODIFY `nId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `msgId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sitesettings`
--
ALTER TABLE `sitesettings`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subscribers`
--
ALTER TABLE `subscribers`
  MODIFY `sId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=96;

--
-- AUTO_INCREMENT for table `sysusers`
--
ALTER TABLE `sysusers`
  MODIFY `sysId` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `tId` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=832;

--
-- AUTO_INCREMENT for table `userlogin`
--
ALTER TABLE `userlogin`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=554;

--
-- AUTO_INCREMENT for table `uservisits`
--
ALTER TABLE `uservisits`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;