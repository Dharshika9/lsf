-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jul 06, 2017 at 03:41 PM
-- Server version: 5.7.11-0ubuntu6
-- PHP Version: 7.0.4-7ubuntu2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sleas_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `Acting_Permanent`
--

CREATE TABLE `Acting_Permanent` (
  `ID` int(5) NOT NULL,
  `service_ID` int(5) NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `sub_location_id` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `work_branch_id` int(5) DEFAULT NULL,
  `work_division_id` int(5) DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_bin NOT NULL,
  `duty_date` date NOT NULL,
  `off_letter_no` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Contact_Details`
--

CREATE TABLE `Contact_Details` (
  `ID` int(5) NOT NULL,
  `NIC` varchar(15) COLLATE utf8_bin NOT NULL,
  `address_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `address_1` varchar(50) COLLATE utf8_bin NOT NULL,
  `address_2` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `address_3` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `postal_code` int(5) DEFAULT NULL,
  `mobile` int(10) DEFAULT NULL,
  `telephone` int(10) DEFAULT NULL,
  `email` varchar(50) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Contact_Details`
--

INSERT INTO `Contact_Details` (`ID`, `NIC`, `address_type`, `address_1`, `address_2`, `address_3`, `postal_code`, `mobile`, `telephone`, `email`) VALUES
(1, '883323173v', 'permanant', 'no 12', 'medaduwa', 'kuleegoda', 80300, 713468830, 915680576, 'kosala4@gmail.com'),
(4, '883323174v', 'permanant', 'no 12', 'medaduwa', 'kuleegoda', 80300, 713468830, 915680576, 'kosala4@gmail.com'),
(5, '883323174v', 'temp', 'no 01', 'abc lane', 'kirulapone', 222, 0, 0, ''),
(11, '883323175v', 'permanant', 'no 12', 'medaduwa', 'kuleegoda', 80300, 713468830, 915680576, 'kosala4@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `Designation`
--

CREATE TABLE `Designation` (
  `ID` int(5) NOT NULL,
  `designation` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Designation`
--

INSERT INTO `Designation` (`ID`, `designation`) VALUES
(1, 'Additional Secretary of the Ministry of Education'),
(2, 'Commissioner General of Examinations'),
(3, 'Commissioner General of Educational Publications'),
(4, 'Chief Commissioner (Teacher Education)'),
(5, 'Provincial Director of Education'),
(6, 'Director of Education (Ministry of Education)'),
(7, 'Additional Provincial Director of Education'),
(8, 'Zonal Director of Education'),
(9, 'Commissioner of Examinations'),
(10, 'Commissioner of Educational Publications'),
(11, 'Principal'),
(12, 'Deputy  /  Assistant  Director  of  Education (Ministry of Education)'),
(13, 'Deputy Commissioner of Examinations / Assistant Commissioner of Examinations'),
(14, 'Deputy / Assistant Commissioner of Educational Publications'),
(15, 'Deputy Zonal Director of Education'),
(16, 'Deputy Principal'),
(17, 'Deputy / Assistant Provincial Director of Education at Provincial  Ministries of Education'),
(18, 'Deputy / Assistant Provincial Director of Education at Provincial Departments of Education'),
(19, 'Deputy / Assistant Zonal Director of Education'),
(20, 'Divisional Director of Education'),
(21, 'Deputy  /  Assistant  Director  of  Education (Provincial Education Development Center)'),
(22, 'Deputy  /  Assistant  Director  of  Education (Education Resource Center) '),
(23, 'Provincial School Principal (Southern, Western)');

-- --------------------------------------------------------

--
-- Table structure for table `District_List`
--

CREATE TABLE `District_List` (
  `dist_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `province_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `district` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `District_List`
--

INSERT INTO `District_List` (`dist_id`, `province_id`, `district`) VALUES
('D01', 'P01', 'Colombo'),
('D02', 'P01', 'Gampaha'),
('D03', 'P01', 'Kalutara'),
('D04', 'P02', 'Kandy'),
('D05', 'P02', 'Matale'),
('D06', 'P02', 'Nuwara Eliya'),
('D07', 'P03', 'Galle'),
('D08', 'P03', 'Matara'),
('D09', 'P03', 'Hambantota'),
('D10', 'P04', 'Jaffna'),
('D11', 'P04', 'Kilinochchi'),
('D12', 'P04', 'Mannar'),
('D13', 'P04', 'Vavuniya'),
('D14', 'P04', 'Mullaitivu'),
('D15', 'P05', 'Batticaloa'),
('D16', 'P05', 'Ampara'),
('D17', 'P05', 'Trincomalee'),
('D18', 'P06', 'Kurunegala'),
('D19', 'P06', 'Puttalam'),
('D20', 'P07', 'Anuradhapura'),
('D21', 'P07', 'Polonnaruwa'),
('D22', 'P08', 'Badulla'),
('D23', 'P08', 'Monaragala'),
('D24', 'P09', 'Ratnapura'),
('D25', 'P09', 'Kegalle');

-- --------------------------------------------------------

--
-- Table structure for table `Divisional_Offices`
--

CREATE TABLE `Divisional_Offices` (
  `ID` int(5) NOT NULL,
  `zone_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `division_office` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Divisional_Offices`
--

INSERT INTO `Divisional_Offices` (`ID`, `zone_id`, `work_place_id`, `division_office`) VALUES
(1, 'ZN0103', 8, 'Kolonnawa DivisionalEducation Office'),
(2, 'ZN0103', 8, 'Nugegoda DivisionalEducation Office'),
(3, 'ZN0104', 8, 'Dehiwala DivisionalEducation Office'),
(4, 'ZN0104', 8, 'Moratuwa DivisionalEducation Office'),
(5, 'ZN0102', 8, 'Homagama DivisionalEducation Office'),
(6, 'ZN0103', 8, 'Maharagama DivisionalEducation Office'),
(7, 'ZN0104', 8, 'Kesbewa DivisionalEducation Office'),
(8, 'ZN0103', 8, 'Kaduwela DivisionalEducation Office'),
(9, 'ZN0102', 8, 'Hanwella DivisionalEducation Office'),
(10, 'ZN0102', 8, 'Paddukka DivisionalEducation Office'),
(11, 'ZN0101', 8, 'Colombo North DivisionalEducation Office'),
(12, 'ZN0101', 8, 'Colombo Central Divisional Education Office'),
(13, 'ZN0101', 8, 'Colombo - South DivisionalEducation Office'),
(14, 'ZN0101', 8, 'Borella Divisional Education Office'),
(15, 'ZN0201', 8, 'Gampaha DivisionalEducation Office'),
(16, 'ZN0201', 8, 'Attanagalla DivisionalEducation Office'),
(17, 'ZN0204', 8, 'Mahara DivisionalEducation Office'),
(18, 'ZN0202', 8, 'Meerigama Divisional Education Office'),
(19, 'ZN0201', 8, 'Dompe (Weke) DivisionalEducation Office'),
(20, 'ZN0204', 8, 'BiyagamaDivisionalEducation Office'),
(21, 'ZN0204', 8, 'Kelaniya DivisionalEducation Office'),
(22, 'ZN0202', 8, 'Minuwangoda DivisionalEducation Office'),
(23, 'ZN0203', 8, 'Katana DivisionalEducation Office'),
(24, 'ZN0203', 8, 'Negombo DivisionalEducation Office'),
(25, 'ZN0202', 8, 'DivulapitiyaDivisionalEducation Office'),
(26, 'ZN0204', 8, 'Wattala DivisionalEducation Office'),
(27, 'ZN0203', 8, 'Ja-ela DivisionalEducation Office'),
(28, 'ZN0301', 8, 'Kalutara DivisionalEducation Office'),
(29, 'ZN0303', 8, 'Bandaragama DivisionalEducation Office'),
(30, 'ZN0303', 8, 'Horana DivisionalEducation Office'),
(31, 'ZN0301', 8, 'Beruwala DivisionalEducation Office '),
(32, 'ZN0301', 8, 'Panadura DivisionalEducation Office'),
(33, 'ZN0301', 8, 'Dodangoda DivisionalEducation Office'),
(34, 'ZN0302', 8, 'Matugama DivisionalEducation Office'),
(35, 'ZN0303', 8, 'Bulathsinhala DivisionalEducation Office'),
(36, 'ZN0302', 8, 'Agalawatta (I) DivisionalEducation Office'),
(37, 'ZN0302', 8, 'Walallawita DivisionalEducation Office'),
(38, 'ZN0302', 8, 'Agalawatta (II) DivisionalEducation Office'),
(39, 'ZN0401', 8, 'Gangawata Korale Divisional Education Office'),
(40, 'ZN0403', 8, 'Yatinuwara Divisional Education Office'),
(41, 'ZN0401', 8, 'Patha Hewaheta Divisional Education Office'),
(42, 'ZN0404', 8, 'Uda Palatha Divisional Education Office'),
(43, 'ZN0403', 8, 'Uda Nuwara Divisional Education Office'),
(44, 'ZN0404', 8, 'Ganga-Ihala Korale Divisional Education Office'),
(45, 'ZN0404', 8, 'Pasbage Korale Divisional Education Office'),
(46, 'ZN0407', 8, 'Harispattuwa Divisional Education Office'),
(47, 'ZN0405', 8, 'Minipe Divisional Education Office'),
(48, 'ZN0405', 8, 'Medadumbara Divisional Education Office'),
(49, 'ZN0406', 8, 'Kundasale Divisional Education Office'),
(50, 'ZN0407', 8, 'Galagedara(Tumpane) Divisional Education Office'),
(51, 'ZN0407', 8, 'Pujapitiya Divisional Education Office'),
(52, 'ZN0407', 8, 'Akurana Divisional Education Office'),
(53, 'ZN0406', 8, 'Patha Dumbara Divisional Education Office'),
(54, 'ZN0406', 8, 'Panvila Divisional Education Office'),
(55, 'ZN0405', 8, 'Ududumbara Divisional Education Office'),
(56, 'ZN0407', 8, 'Hatharaliyadda Divisional Education Office'),
(57, 'ZN0501', 8, 'Matale Divisional Education Office'),
(58, 'ZN0501', 8, 'Rattota Divisional Education Office'),
(59, 'ZN0504', 8, 'Wilgamuwa Divisional Education Office'),
(60, 'ZN0504', 8, 'Laggala Divisional Education Office'),
(61, 'ZN0503', 8, 'Ambanganga Korale Divisional Education Office'),
(62, 'ZN0502', 8, 'Galewela Divisional Education Office'),
(63, 'ZN0502', 8, 'Dambulla Divisional Education Office'),
(64, 'ZN0503', 8, 'Naula Divisional Education Office'),
(65, 'ZN0502', 8, 'Pallepola Divisional Education Office'),
(66, 'ZN0501', 8, 'Yatawatta Divisional Education Office'),
(67, 'ZN0501', 8, 'Ukuwela Divisional Education Office'),
(68, 'ZN0601', 8, 'Nuwara Eliya Divisional Education Office'),
(69, 'ZN0603', 8, 'Ambagamuwa Divisional Education Office'),
(70, 'ZN0604', 8, 'Walapane Divisional Education Office'),
(71, 'ZN0602', 8, 'Kotmale Divisional Education Office'),
(72, 'ZN0605', 8, 'Udahewaheta Divisional Education Office'),
(73, 'ZN0601', 8, 'Nuwara Eliya Tamil - 1 Divisional Education Office'),
(74, 'ZN0601', 8, 'Nuwara Eliya Tamil - 2 Divisional Education Office'),
(75, 'ZN0603', 8, 'Hatton Tamil - 1 Divisional Education Office'),
(76, 'ZN0603', 8, 'Hatton Tamil - 2 Divisional Education Office'),
(77, 'ZN0601', 8, 'Nuwara Eliya Tamil - 3 Divisional Education Office'),
(78, 'ZN0603', 8, 'Hattan Tamil - 3 Divisional Education Office'),
(79, 'ZN0701', 8, 'Galle Divisional Education Office'),
(80, 'ZN0701', 8, 'Habaraduwa Divisional Education Office'),
(81, 'ZN0701', 8, 'Akmeemana Divisional Education Office'),
(82, 'ZN0703', 8, 'HikkaduwaDivisional Education Office'),
(83, 'ZN0702', 8, 'Elpitiya Divisional Education Office'),
(84, 'ZN0703', 8, 'Ambalangoda Divisional Education Office'),
(85, 'ZN0702', 8, 'Bentota Divisional Education Office'),
(86, 'ZN0702', 8, 'Karandeniya Divisional Education Office'),
(87, 'ZN0703', 8, 'Balapitiya Divisional Education Office'),
(88, 'ZN0705', 8, 'Mapalagama Divisional Education Office'),
(89, 'ZN0702', 8, 'Pitigala Divisional Education Office'),
(90, 'ZN0705', 8, 'Udugama(Yakkalamulla) Divisional Education Office'),
(91, 'ZN0705', 8, 'Tawalama Divisional Education Office'),
(92, 'ZN0701', 8, 'Baddegama Divisional Education Office'),
(93, 'ZN0702', 8, 'Divitura-Welivitiya Divisional Education Office'),
(94, 'ZN0801', 8, 'Matara Divisional Education Office'),
(95, 'ZN0801', 8, 'Weligama Divisional Education Office'),
(96, 'ZN0802', 8, 'Welipitiya Divisional Education Office'),
(97, 'ZN0801', 8, 'Devinuwara Divisional Education Office'),
(98, 'ZN0801', 8, 'Dikwella Divisional Education Office'),
(99, 'ZN0802', 8, 'Akuressa Divisional Education Office'),
(100, 'ZN0803', 8, 'Tihagoda Divisional Education Office'),
(101, 'ZN0803', 8, 'Hakmana Divisional Education Office'),
(102, 'ZN0803', 8, 'Mulatiyana Divisional Education Office'),
(103, 'ZN0803', 8, 'Kamburupitiya Divisional Education Office'),
(104, 'ZN0802', 8, 'Malimboda Divisional Education Office'),
(105, 'ZN0804', 8, 'Morawaka Divisional Education Office'),
(106, 'ZN0804', 8, 'Pasgoda Divisional Education Office'),
(107, 'ZN0804', 8, 'Kotapola Divisional Education Office'),
(108, 'ZN0901', 8, 'Tangalle Divisional Education Office'),
(109, 'ZN0901', 8, 'Beliatta Divisional Education Office'),
(110, 'ZN0903', 8, 'Katuwana Divisional Education Office'),
(111, 'ZN0903', 8, 'Walasmulla Divisional Education Office'),
(112, 'ZN0902', 8, 'Hambantota Divisional Education Office'),
(113, 'ZN0901', 8, 'Angunakolapelessa Divisional Education Office'),
(114, 'ZN0902', 8, 'Tissamaharama Divisional Education Office'),
(115, 'ZN0902', 8, 'Ambalantota Divisional Education Office'),
(116, 'ZN0902', 8, 'Lunugamvehera Divisional Education Office'),
(117, 'ZN0902', 8, 'Suriyaweva Divisional Education Office'),
(118, 'ZN1001', 8, 'Jaffna Divisional Education Office'),
(119, 'ZN1001', 8, 'Nallur Divisional Education Office'),
(120, 'ZN1003', 8, 'Chavakachcheri Divisional Education Office'),
(121, 'ZN1002', 8, 'Delft Divisional Education Office'),
(122, 'ZN1002', 8, 'Kayts Divisional Education Office'),
(123, 'ZN1003', 8, 'Maruthankerny Divisional Education Office'),
(124, 'ZN1003', 8, 'Point Pedro Divisional Education Office'),
(125, 'ZN1003', 8, 'Karaveddy Divisional Education Office'),
(126, 'ZN1001', 8, 'Kopay Divisional Education Office'),
(127, 'ZN1004', 8, 'Uduvil Divisional Education Office'),
(128, 'ZN1004', 8, 'Chankanai Divisional Education Office'),
(129, 'ZN1004', 8, 'Sandilipay Divisional Education Office'),
(130, 'ZN1004', 8, 'Tellipalai Divisional Education Office'),
(131, 'ZN1002', 8, 'Velanai Divisional Education Office'),
(132, 'ZN1002', 8, 'Karainagar Divisional Education Office'),
(133, 'ZN1101', 8, 'Karachchi Divisional Education Office'),
(134, 'ZN1101', 8, 'Kandawalai Divisional Education Office'),
(135, 'ZN1101', 8, 'Pallai Divisional Education Office'),
(136, 'ZN1101', 8, 'Poonakary Divisional Education Office'),
(137, 'ZN1201', 8, 'Mannar Divisional Education Office'),
(138, 'ZN1202', 8, 'Manthai West Divisional Education Office'),
(139, 'ZN1201', 8, 'Musali Divisional Education Office'),
(140, 'ZN1201', 8, 'Nanaddan Divisional Education Office'),
(141, 'ZN1202', 8, 'Madhu Divisional Education Office'),
(142, 'ZN1301', 8, 'Vavuniya South (Sinhala) Divisional Education Office'),
(143, 'ZN1301', 8, 'Vavuniya South (Tamil) Divisional Education Office'),
(144, 'ZN1302', 8, 'Vavuniya North Divisional Education Office'),
(145, 'ZN1301', 8, 'Vengalachettikulam Divisional Education Office'),
(146, 'ZN1302', 8, 'Omanthai Divisional Education Office'),
(147, 'ZN1401', 8, 'Maritime Pattu Divisional Education Office'),
(148, 'ZN1402', 8, 'Manthai East Divisional Education Office'),
(149, 'ZN1402', 8, 'Thunukkai Divisional Education Office'),
(150, 'ZN1401', 8, 'Puthukudurippu Divisional Education Office'),
(151, 'ZN1402', 8, 'Oddusudan Divisional Education Office'),
(152, 'ZN1401', 8, 'Welioya Divisional Education Office'),
(153, 'ZN1501', 8, 'Manmunai - North Divisional Education Office'),
(154, 'ZN1501', 8, 'Eravurpattu-1 Divisional Education Office'),
(155, 'ZN1504', 8, 'Eravur Town Divisional Education Office'),
(156, 'ZN1503', 8, 'M.S.E Pattu Divisional Education Office'),
(157, 'ZN1503', 8, 'Porativupattu Divisional Education Office'),
(158, 'ZN1501', 8, 'Manmunaipattu Divisional Education Office'),
(159, 'ZN1505', 8, 'Manmunai-S. West Divisional Education Office'),
(160, 'ZN1502', 8, 'Koralapattu North Divisional Education Office'),
(161, 'ZN1505', 8, 'Manmunai - West Divisional Education Office'),
(162, 'ZN1502', 8, 'Koralaipattu Divisional Education Office'),
(163, 'ZN1504', 8, 'Kaththankudy Divisional Education Office'),
(164, 'ZN1504', 8, 'Koralaipattu West Divisional Education Office'),
(165, 'ZN1502', 8, 'Eravurpattu - 2 Divisional Education Office'),
(166, 'ZN1505', 8, 'Eravur pattu - 3 Divisional Education Office'),
(167, 'ZN1601', 8, 'Ampara Divisional Education Office'),
(168, 'ZN1601', 8, 'Uhana Divisional Education Office'),
(169, 'ZN1604', 8, 'Padiyatalawa Divisional Education Office'),
(170, 'ZN1601', 8, 'Damana Divisional Education Office'),
(171, 'ZN1605', 8, 'Dehiattakandiya Divisional Education Office'),
(172, 'ZN1604', 8, 'Mahaoya Divisional Education Office'),
(173, 'ZN1601', 8, 'Lahugala Divisional Education Office'),
(174, 'ZN1602', 8, 'Kalmunai Divisional Education Office'),
(175, 'ZN1602', 8, 'Kalmunai Tamil Divisional Education Office'),
(176, 'ZN1602', 8, 'Ninthavur Divisional Education Office'),
(177, 'ZN1603', 8, 'Sammanthurai Divisional Education Office'),
(178, 'ZN1606', 8, 'Addalachchenai Divisional Education Office'),
(179, 'ZN1606', 8, 'Akkaraipattu Divisional Education Office'),
(180, 'ZN1607', 8, 'Alayadivembu Divisional Education Office'),
(181, 'ZN1602', 8, 'Karaithivu Divisional Education Office'),
(182, 'ZN1606', 8, 'Potuvil 1(Muslim) Divisional Education Office'),
(183, 'ZN1607', 8, 'Tirukkovil Divisional Education Office'),
(184, 'ZN1603', 8, 'Iragamam Divisional Education Office'),
(185, 'ZN1603', 8, 'Navithanveli Divisional Education Office'),
(186, 'ZN1602', 8, 'Sainthamaruthu Divisional Education Office'),
(187, 'ZN1607', 8, 'Potuvil 2(Tamil) Divisional Education Office'),
(188, 'ZN1602', 8, 'Kalmunai Muslim Divisional Education Office'),
(189, 'ZN1701', 8, 'Trincomalee Town Divisional Education Office'),
(190, 'ZN1703', 8, 'Kantalai Divisional Education Office'),
(191, 'ZN1704', 8, 'Kinniya Divisional Education Office'),
(192, 'ZN1702', 8, 'Mutur Divisional Education Office'),
(193, 'ZN1705', 8, 'Gomarankadawala Divisional Education Office'),
(194, 'ZN1701', 8, 'Kuchchaveli Divisional Education Office'),
(195, 'ZN1703', 8, 'Seruwila Divisional Education Office'),
(196, 'ZN1702', 8, 'Eechchilanpattu Divisional Education Office'),
(197, 'ZN1701', 8, 'Thampalakamam Divisional Education Office'),
(198, 'ZN1705', 8, 'Morawewa Divisional Education Office'),
(199, 'ZN1705', 8, 'Padavi Sripura Divisional Education Office'),
(200, 'ZN1704', 8, 'Mullipothana Divisional Education Office'),
(201, 'ZN1704', 8, 'Kurinchakerny Divisional Education Office'),
(202, 'ZN1801', 8, 'Kurunegala Divisional Education Office'),
(203, 'ZN1801', 8, 'Polgahawela Divisional Education Office'),
(204, 'ZN1801', 8, 'Mawathagama Divisional Education Office'),
(205, 'ZN1806', 8, 'Ridigama Divisional Education Office'),
(206, 'ZN1806', 8, 'Ibbagamuwa Divisional Education Office'),
(207, 'ZN1805', 8, 'Alawwa Divisional Education Office'),
(208, 'ZN1805', 8, 'Kuliyapitiya - East Divisional Education Office'),
(209, 'ZN1803', 8, 'Wariyapola Divisional Education Office'),
(210, 'ZN1802', 8, 'Panduwasnuwara Divisional Education Office'),
(211, 'ZN1802', 8, 'Bingiriya Divisional Education Office'),
(212, 'ZN1805', 8, 'Pannala Divisional Education Office'),
(213, 'ZN1804', 8, 'Maho Divisional Education Office'),
(214, 'ZN1804', 8, 'Polpitigama Divisional Education Office'),
(215, 'ZN1803', 8, 'Kobeigane Divisional Education Office'),
(216, 'ZN1803', 8, 'Nikaweratiya Divisional Education Office'),
(217, 'ZN1804', 8, 'Galgamuwa Divisional Education Office'),
(218, 'ZN1804', 8, 'Giribawa Divisional Education Office'),
(219, 'ZN1802', 8, 'Kuliyapitiya - West Divisional Education Office'),
(220, 'ZN1806', 8, 'Ganewatta Divisional Education Office'),
(221, 'ZN1802', 8, 'Udubaddawa Divisional Education Office'),
(222, 'ZN1803', 8, 'Kotavehera Divisional Education Office'),
(223, 'ZN1802', 8, 'Dahanakgedera Divisional Education Office'),
(224, 'ZN1901', 8, 'Puttalam North Divisional Education Office'),
(225, 'ZN1901', 8, 'Anamaduwa Divisional Education Office'),
(226, 'ZN1901', 8, 'Kalpitiya Divisional Education Office'),
(227, 'ZN1902', 8, 'Chilaw Divisional Education Office'),
(228, 'ZN1902', 8, 'Arachchikattuwa Divisional Education Office'),
(229, 'ZN1902', 8, 'Nattandiya Divisional Education Office'),
(230, 'ZN1902', 8, 'Wennappuwa Divisional Education Office'),
(231, 'ZN1901', 8, 'Pallama Divisional Education Office'),
(232, 'ZN1901', 8, 'Puttalam South Divisional Education Office'),
(233, 'ZN2001', 8, 'Nuwaragam Palatha - East Divisional Education Office'),
(234, 'ZN2001', 8, 'Nuwaragam Palatha - Central Divisional Education Office'),
(235, 'ZN2001', 8, 'Rambewa Divisional Education Office'),
(236, 'ZN2001', 8, 'Nochchiyagama Divisional Education Office'),
(237, 'ZN2001', 8, 'Wilachchiya Divisional Education Office'),
(238, 'ZN2002', 8, 'Tambuttegama Divisional Education Office'),
(239, 'ZN2002', 8, 'Talawa Divisional Education Office'),
(240, 'ZN2002', 8, 'Rajanganaya Divisional Education Office'),
(241, 'ZN2002', 8, 'Galnewa Divisional Education Office'),
(242, 'ZN2003', 8, 'Kekirawa Divisional Education Office'),
(243, 'ZN2003', 8, 'Palugaswewa Divisional Education Office'),
(244, 'ZN2003', 8, 'Palagala Divisional Education Office'),
(245, 'ZN2003', 8, 'Thirappane Divisional Education Office'),
(246, 'ZN2003', 8, 'Ipalogama Divisional Education Office'),
(247, 'ZN2004', 8, 'Galenbindunuwewa Divisional Education Office'),
(248, 'ZN2004', 8, 'Kahatagasdigiliya Divisional Education Office'),
(249, 'ZN2004', 8, 'Mihintale Divisional Education Office'),
(250, 'ZN2005', 8, 'Kebithigollewa Divisional Education Office'),
(251, 'ZN2005', 8, 'Padaviya Divisional Education Office'),
(252, 'ZN2005', 8, 'Horowpathana Divisional Education Office'),
(253, 'ZN2005', 8, 'Medawachchiya Divisional Education Office'),
(254, 'ZN2001', 8, 'Nachchaduwa Divisional Education Office'),
(255, 'ZN2101', 8, 'Tamankaduwa Divisional Education Office'),
(256, 'ZN2101', 8, 'Lankapura Divisional Education Office'),
(257, 'ZN2103', 8, 'Dimbulagala Divisional Education Office'),
(258, 'ZN2102', 8, 'Hingurakgoda Divisional Education Office'),
(259, 'ZN2102', 8, 'Medirigiriya Divisional Education Office'),
(260, 'ZN2102', 8, 'Elahera Divisional Education Office'),
(261, 'ZN2103', 8, 'Welikanda Divisional Education Office'),
(262, 'ZN2103', 8, 'Aralaganwila Divisional Education Office'),
(263, 'ZN2201', 8, 'Badulla Divisional Education Office'),
(264, 'ZN2205', 8, 'Passara Divisional Education Office'),
(265, 'ZN2201', 8, 'Haliela Divisional Education Office'),
(266, 'ZN2206', 8, 'Soranatota Divisional Education Office'),
(267, 'ZN2206', 8, 'Meegahakivula Divisional Education Office'),
(268, 'ZN2206', 8, 'Kandeketiya Divisional Education Office'),
(269, 'ZN2202', 8, 'Bandarawela Divisional Education Office'),
(270, 'ZN2204', 8, 'Uva-Paranagama Divisional Education Office'),
(271, 'ZN2204', 8, 'Welimada Divisional Education Office'),
(272, 'ZN2202', 8, 'Haldummulla Divisional Education Office'),
(273, 'ZN2202', 8, 'HaputaleDivisional Education Office'),
(274, 'ZN2202', 8, 'Ella Divisional Education Office'),
(275, 'ZN2203', 8, 'Mahiyanganaya Divisional Education Office'),
(276, 'ZN2203', 8, 'Ridimaliyedda Divisional Education Office'),
(277, 'ZN2301', 8, 'Monaragala Divisional Education Office'),
(278, 'ZN2302', 8, 'Buttala Divisional Education Office'),
(279, 'ZN2304', 8, 'Tanamalwila Divisional Education Office'),
(280, 'ZN2302', 8, 'Wellawaya Divisional Education Office'),
(281, 'ZN2301', 8, 'Siyambalanduwa Divisional Education Office'),
(282, 'ZN2301', 8, 'Badalkumbura Divisional Education Office'),
(283, 'ZN2303', 8, 'Madulla Divisional Education Office'),
(284, 'ZN2303', 8, 'Bibile Divisional Education Office'),
(285, 'ZN2303', 8, 'Medagama Divisional Education Office'),
(286, 'ZN2401', 8, 'Ratnapura 1 Divisional Education Office'),
(287, 'ZN2401', 8, 'Pelmadulla Divisional Education Office'),
(288, 'ZN2404', 8, 'Nivitigala Divisional Education Office'),
(289, 'ZN2401', 8, 'Eheliyagoda Divisional Education Office'),
(290, 'ZN2401', 8, 'Kuruwita Divisional Education Office'),
(291, 'ZN2404', 8, 'Ayagama Divisional Education Office'),
(292, 'ZN2404', 8, 'Kalawana Divisional Education Office'),
(293, 'ZN2403', 8, 'Balangoda Divisional Education Office'),
(294, 'ZN2403', 8, 'Imbulpe Divisional Education Office'),
(295, 'ZN2403', 8, 'Weligepola Divisional Education Office'),
(296, 'ZN2405', 8, 'Godakawela Divisional Education Office'),
(297, 'ZN2405', 8, 'Kolonne Divisional Education Office'),
(298, 'ZN2405', 8, 'Embilipitiya Divisional Education Office'),
(299, 'ZN2401', 8, 'Ratnapura 2 Divisional Education Office'),
(300, 'ZN2404', 8, 'Kahawatta Divisional Education Office'),
(301, 'ZN2501', 8, 'Kegalle Divisional Education Office'),
(302, 'ZN2501', 8, 'Galigamuwa Divisional Education Office'),
(303, 'ZN2501', 8, 'Warakapola Divisional Education Office'),
(304, 'ZN2504', 8, 'Ruwanwella Divisional Education Office'),
(305, 'ZN2504', 8, 'Dehiowita Divisional Education Office'),
(306, 'ZN2504', 8, 'Deraniyagala Divisional Education Office'),
(307, 'ZN2504', 8, 'Yatiyantota Divisional Education Office'),
(308, 'ZN2503', 8, 'Mawanella Divisional Education Office'),
(309, 'ZN2503', 8, 'Rambukkana Divisional Education Office'),
(310, 'ZN2503', 8, 'Aranayaka Divisional Education Office'),
(311, 'ZN2501', 8, 'Dedigama Divisional Education Office'),
(312, 'ZN2504', 8, 'Kitulgala Divisional Education Office');

-- --------------------------------------------------------

--
-- Table structure for table `Division_List`
--

CREATE TABLE `Division_List` (
  `ID` int(5) NOT NULL,
  `zone_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `div_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `division_name` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Division_List`
--

INSERT INTO `Division_List` (`ID`, `zone_id`, `div_id`, `division_name`) VALUES
(1, 'ZN0101', 'ED0114', 'Colombo - North'),
(2, 'ZN0101', 'ED0115', 'Colombo - Central'),
(3, 'ZN0101', 'ED0116', 'Colombo - South'),
(4, 'ZN0101', 'ED0117', 'Borella'),
(5, 'ZN0102', 'ED0107', 'Homagama'),
(6, 'ZN0102', 'ED0112', 'Hanwella'),
(7, 'ZN0102', 'ED0113', 'Paddukka'),
(8, 'ZN0103', 'ED0103', 'Kolonnawa'),
(9, 'ZN0103', 'ED0104', 'Nugegoda'),
(10, 'ZN0103', 'ED0108', 'Maharagama'),
(11, 'ZN0103', 'ED0110', 'Kaduwela'),
(12, 'ZN0104', 'ED0105', 'Dehiwala'),
(13, 'ZN0104', 'ED0106', 'Moratuwa'),
(14, 'ZN0104', 'ED0109', 'Kesbewa'),
(15, 'ZN0201', 'ED0201', 'Gampaha'),
(16, 'ZN0201', 'ED0202', 'Attanagalla'),
(17, 'ZN0201', 'ED0205', 'Dompe (Weke)'),
(18, 'ZN0202', 'ED0203', 'Mirigama'),
(19, 'ZN0202', 'ED0208', 'Minuwangoda'),
(20, 'ZN0202', 'ED0211', 'Divulapitiya'),
(21, 'ZN0203', 'ED0209', 'Katana'),
(22, 'ZN0203', 'ED0210', 'Negombo'),
(23, 'ZN0203', 'ED0213', 'Ja-ela'),
(24, 'ZN0204', 'ED0204', 'Mahara'),
(25, 'ZN0204', 'ED0206', 'Biyagama'),
(26, 'ZN0204', 'ED0207', 'Kelaniya'),
(27, 'ZN0204', 'ED0212', 'Wattala'),
(28, 'ZN0301', 'ED0301', 'Kalutara'),
(29, 'ZN0301', 'ED0304', 'Beruwala'),
(30, 'ZN0301', 'ED0305', 'Panadura'),
(31, 'ZN0301', 'ED0306', 'Dodangoda'),
(32, 'ZN0302', 'ED0307', 'Matugama'),
(33, 'ZN0302', 'ED0309', 'Agalawatta I'),
(34, 'ZN0302', 'ED0310', 'Walallawita'),
(35, 'ZN0302', 'ED0312', 'Agalawatta II'),
(36, 'ZN0303', 'ED0302', 'Bandaragama'),
(37, 'ZN0303', 'ED0303', 'Horana'),
(38, 'ZN0303', 'ED0308', 'Bulathsinhala'),
(39, 'ZN0401', 'ED0401', 'Gangawata Korale'),
(40, 'ZN0401', 'ED0403', 'Patha Hewaheta'),
(41, 'ZN0403', 'ED0402', 'Yatinuwara'),
(42, 'ZN0403', 'ED0405', 'Uda Nuwara'),
(43, 'ZN0404', 'ED0404', 'Uda Palatha'),
(44, 'ZN0404', 'ED0406', 'Ganga-Ihala Korale'),
(45, 'ZN0404', 'ED0407', 'Pasbage Korale'),
(46, 'ZN0405', 'ED0409', 'Minipe'),
(47, 'ZN0405', 'ED0410', 'Medadumbara'),
(48, 'ZN0405', 'ED0417', 'Ududumbara'),
(49, 'ZN0406', 'ED0411', 'Kundasale'),
(50, 'ZN0406', 'ED0415', 'Patha Dumbara'),
(51, 'ZN0406', 'ED0416', 'Panvila'),
(52, 'ZN0407', 'ED0408', 'Harispattuwa'),
(53, 'ZN0407', 'ED0412', 'Galagedara'),
(54, 'ZN0407', 'ED0418', 'Hatharaliyadda'),
(55, 'ZN0407', 'ED0413', 'Pujapitiya'),
(56, 'ZN0407', 'ED0414', 'Akurana'),
(57, 'ZN0501', 'ED0501', 'Matale'),
(58, 'ZN0501', 'ED0502', 'Rattota'),
(59, 'ZN0501', 'ED0510', 'Yatawatta'),
(60, 'ZN0501', 'ED0511', 'Ukuwela'),
(61, 'ZN0502', 'ED0506', 'Galewela'),
(62, 'ZN0502', 'ED0507', 'Dambulla'),
(63, 'ZN0502', 'ED0509', 'Pallepola'),
(64, 'ZN0503', 'ED0505', 'Ambanganga Korale'),
(65, 'ZN0503', 'ED0508', 'Naula'),
(66, 'ZN0504', 'ED0503', 'Wilgamuwa'),
(67, 'ZN0504', 'ED0504', 'Laggala'),
(68, 'ZN0601', 'ED0601', 'Nuwara Eliya'),
(69, 'ZN0601', 'ED0606', 'Nuwara Eliya Tamil - 1'),
(70, 'ZN0601', 'ED0607', 'Nuwara Eliya Tamil - 2'),
(71, 'ZN0601', 'ED0610', 'Nuwara Eliya Tamil - 3'),
(72, 'ZN0602', 'ED0604', 'Kotmale'),
(73, 'ZN0603', 'ED0602', 'Ambagamuwa'),
(74, 'ZN0603', 'ED0608', 'Hatton Tamil - 1'),
(75, 'ZN0603', 'ED0609', 'Hatton Tamil - 2'),
(76, 'ZN0603', 'ED0611', 'Hattan Tamil - 3'),
(77, 'ZN0604', 'ED0603', 'Walapane'),
(78, 'ZN0605', 'ED0605', 'Udahewaheta'),
(79, 'ZN0701', 'ED0701', 'Galle'),
(80, 'ZN0701', 'ED0702', 'Habaraduwa'),
(81, 'ZN0701', 'ED0703', 'Akmeemana'),
(82, 'ZN0701', 'ED0715', 'Baddegama'),
(83, 'ZN0702', 'ED0706', 'Elpitiya'),
(84, 'ZN0702', 'ED0708', 'Bentota'),
(85, 'ZN0702', 'ED0709', 'Karandeniya'),
(86, 'ZN0702', 'ED0717', 'Divitura-Welivitiya'),
(87, 'ZN0702', 'ED0712', 'Pitigala'),
(88, 'ZN0703', 'ED0704', 'Hikkaduwa'),
(89, 'ZN0703', 'ED0707', 'Ambalangoda'),
(90, 'ZN0703', 'ED0710', 'Balapitiya'),
(91, 'ZN0705', 'ED0711', 'Mapalagama'),
(92, 'ZN0705', 'ED0713', 'Yakkalamulla (Udugama)'),
(93, 'ZN0705', 'ED0714', 'Tawalama'),
(94, 'ZN0801', 'ED0801', 'Matara'),
(95, 'ZN0801', 'ED0802', 'Weligama'),
(96, 'ZN0801', 'ED0804', 'Devinuwara'),
(97, 'ZN0801', 'ED0805', 'Dikwella'),
(98, 'ZN0802', 'ED0803', 'Welipitiya'),
(99, 'ZN0802', 'ED0806', 'Akuressa'),
(100, 'ZN0802', 'ED0811', 'Malimboda'),
(101, 'ZN0803', 'ED0807', 'Tihagoda'),
(102, 'ZN0803', 'ED0808', 'Hakmana'),
(103, 'ZN0803', 'ED0809', 'Mulatiyana'),
(104, 'ZN0803', 'ED0810', 'Kamburupitiya'),
(105, 'ZN0804', 'ED0812', 'Morawaka'),
(106, 'ZN0804', 'ED0813', 'Pasgoda'),
(107, 'ZN0804', 'ED0814', 'Kotapola'),
(108, 'ZN0901', 'ED0901', 'Tangalle'),
(109, 'ZN0901', 'ED0902', 'Beliatta'),
(110, 'ZN0901', 'ED0906', 'Angunakolapelessa'),
(111, 'ZN0902', 'ED0905', 'Hambantota'),
(112, 'ZN0902', 'ED0907', 'Tissamaharama'),
(113, 'ZN0902', 'ED0908', 'Ambalantota'),
(114, 'ZN0902', 'ED0909', 'Lunugamvehera'),
(115, 'ZN0902', 'ED0911', 'Suriyaweva'),
(116, 'ZN0903', 'ED0903', 'Katuwana'),
(117, 'ZN0903', 'ED0904', 'Walasmulla'),
(118, 'ZN1001', 'ED1001', 'Jaffna'),
(119, 'ZN1001', 'ED1002', 'Nallur'),
(120, 'ZN1001', 'ED1009', 'Kopay'),
(121, 'ZN1002', 'ED1005', 'Kayts'),
(122, 'ZN1002', 'ED1004', 'Delft'),
(123, 'ZN1002', 'ED1014', 'Velanai'),
(124, 'ZN1002', 'ED1015', 'Karainagar'),
(125, 'ZN1003', 'ED1003', 'Chavakachcheri'),
(126, 'ZN1004', 'ED1010', 'Uduvil'),
(127, 'ZN1004', 'ED1011', 'Chankanai'),
(128, 'ZN1004', 'ED1012', 'Sandilipay'),
(129, 'ZN1004', 'ED1013', 'Tellipalai'),
(130, 'ZN1005', 'ED1007', 'Point Pedro'),
(131, 'ZN1005', 'ED1006', 'Maruthankerny'),
(132, 'ZN1005', 'ED1008', 'Karaveddy'),
(133, 'ZN1101', 'ED1101', 'Karachchi'),
(134, 'ZN1101', 'ED1102', 'Kandawalai'),
(135, 'ZN1101', 'ED1103', 'Palai'),
(136, 'ZN1101', 'ED1104', 'Punahari'),
(137, 'ZN1201', 'ED1201', 'Mannar'),
(138, 'ZN1201', 'ED1203', 'Musali'),
(139, 'ZN1201', 'ED1204', 'Nanaddan'),
(140, 'ZN1202', 'ED1202', 'Manthai West'),
(141, 'ZN1202', 'ED1205', 'Madhu'),
(142, 'ZN1301', 'ED1301', 'Vavuniya South (Sinhala)'),
(143, 'ZN1301', 'ED1302', 'Vavuniya South (Tamil)'),
(144, 'ZN1301', 'ED1304', 'Vengalachettikulam'),
(145, 'ZN1302', 'ED1303', 'Vavuniya North'),
(146, 'ZN1302', 'ED1305', 'Omanthai'),
(147, 'ZN1401', 'ED1401', 'Maritime Pattu'),
(148, 'ZN1401', 'ED1404', 'Puthukudurippu'),
(149, 'ZN1401', 'ED1406', 'Welioya'),
(150, 'ZN1402', 'ED1403', 'Thunukkai'),
(151, 'ZN1402', 'ED1402', 'Manthai East'),
(152, 'ZN1402', 'ED1405', 'Oddusudan'),
(153, 'ZN1501', 'ED1501', 'Manmunai - North'),
(154, 'ZN1501', 'ED1502', 'Eravurpattu -1'),
(155, 'ZN1501', 'ED1506', 'Manmunaipattu'),
(156, 'ZN1502', 'ED1508', 'Koralapattu North'),
(157, 'ZN1502', 'ED1510', 'Koralaipattu'),
(158, 'ZN1502', 'ED1513', 'Eravurpattu - 2'),
(159, 'ZN1503', 'ED1504', 'M.S.E Pattu'),
(160, 'ZN1503', 'ED1505', 'Porativupattu'),
(161, 'ZN1504', 'ED1503', 'Eravur Town'),
(162, 'ZN1504', 'ED1511', 'Kaththankudy'),
(163, 'ZN1504', 'ED1512', 'Koralaipattu West'),
(164, 'ZN1505', 'ED1507', 'Manmunai-S. West'),
(165, 'ZN1505', 'ED1509', 'Manmunai - West'),
(166, 'ZN1505', 'ED1514', 'Eravur pattu - 3'),
(167, 'ZN1601', 'ED1601', 'Ampara'),
(168, 'ZN1601', 'ED1602', 'Uhana'),
(169, 'ZN1601', 'ED1604', 'Damana'),
(170, 'ZN1601', 'ED1607', 'Lahugala'),
(171, 'ZN1602', 'ED1608', 'Kalmunai'),
(172, 'ZN1602', 'ED1609', 'Kalmunai Tamil'),
(173, 'ZN1602', 'ED1610', 'Ninthavur'),
(174, 'ZN1602', 'ED1615', 'Karaithivu'),
(175, 'ZN1602', 'ED1622', 'Kalmunai Muslim'),
(176, 'ZN1603', 'ED1611', 'Sammanthurai'),
(177, 'ZN1603', 'ED1618', 'Irakamam'),
(178, 'ZN1603', 'ED1619', 'Navithanveli'),
(179, 'ZN1604', 'ED1603', 'Padiyatalawa'),
(180, 'ZN1604', 'ED1606', 'Mahaoya'),
(181, 'ZN1605', 'ED1605', 'Dehiattakandiya'),
(182, 'ZN1606', 'ED1612', 'Addalachchenai'),
(183, 'ZN1606', 'ED1613', 'Akkaraipattu'),
(184, 'ZN1606', 'ED1616', 'Potuvil 1'),
(185, 'ZN1607', 'ED1614', 'Alayadivembu'),
(186, 'ZN1607', 'ED1621', 'Potuvil 2'),
(187, 'ZN1607', 'ED1617', 'Tirukkovil'),
(188, 'ZN1701', 'ED1701', 'Trincomalee Town'),
(189, 'ZN1701', 'ED1706', 'Kuchchaveli'),
(190, 'ZN1701', 'ED1709', 'Thampalakamam'),
(191, 'ZN1702', 'ED1704', 'Mutur'),
(192, 'ZN1702', 'ED1708', 'Eechchilanpattu'),
(193, 'ZN1703', 'ED1702', 'Kantalai'),
(194, 'ZN1703', 'ED1707', 'Seruwila'),
(195, 'ZN1704', 'ED1703', 'Kinniya'),
(196, 'ZN1704', 'ED1712', 'Mullipothana'),
(197, 'ZN1704', 'ED1713', 'Kurinchakerny'),
(198, 'ZN1705', 'ED1705', 'Gomarankadawala'),
(199, 'ZN1705', 'ED1710', 'Morawewa'),
(200, 'ZN1705', 'ED1711', 'Padavi Sripura'),
(201, 'ZN1801', 'ED1801', 'Kurunegala'),
(202, 'ZN1801', 'ED1802', 'Polgahawela'),
(203, 'ZN1801', 'ED1803', 'Mawathagama'),
(204, 'ZN1802', 'ED1809', 'Panduwasnuwara'),
(205, 'ZN1802', 'ED1810', 'Bingiriya'),
(206, 'ZN1802', 'ED1818', 'Kuliyapitiya - West'),
(207, 'ZN1802', 'ED1820', 'Udubaddawa'),
(208, 'ZN1802', 'ED1822', 'DahanaKgedera'),
(209, 'ZN1803', 'ED1808', 'Wariyapola'),
(210, 'ZN1803', 'ED1814', 'Kobeigane'),
(211, 'ZN1803', 'ED1815', 'Nikaweratiya'),
(212, 'ZN1803', 'ED1821', 'Kotavehera'),
(213, 'ZN1804', 'ED1812', 'Maho'),
(214, 'ZN1804', 'ED1813', 'Polpitigama'),
(215, 'ZN1804', 'ED1816', 'Galgamuwa'),
(216, 'ZN1804', 'ED1817', 'Giribawa'),
(217, 'ZN1805', 'ED1807', 'Kuliyapitiya - East'),
(218, 'ZN1805', 'ED1806', 'Alawwa'),
(219, 'ZN1805', 'ED1811', 'Pannala'),
(220, 'ZN1806', 'ED1804', 'Ridigama'),
(221, 'ZN1806', 'ED1805', 'Ibbagamuwa'),
(222, 'ZN1806', 'ED1819', 'Ganewatta'),
(223, 'ZN1901', 'ED1901', 'Puttalam'),
(224, 'ZN1901', 'ED1903', 'Anamaduwa'),
(225, 'ZN1901', 'ED1905', 'Kalpitiya'),
(226, 'ZN1901', 'ED1915', 'Pallama'),
(227, 'ZN1901', 'ED1917', 'Puttalam   South'),
(228, 'ZN1902', 'ED1907', 'Chilaw'),
(229, 'ZN1902', 'ED1908', 'Arachchikattuwa'),
(230, 'ZN1902', 'ED1909', 'Nattandiya'),
(231, 'ZN1902', 'ED1910', 'Wennappuwa'),
(232, 'ZN2001', 'ED2001', 'Nuwaragam Palatha East'),
(233, 'ZN2001', 'ED2002', 'Nuwaragam Palatha Central'),
(234, 'ZN2001', 'ED2003', 'Rambewa'),
(235, 'ZN2001', 'ED2004', 'Nochchiyagama'),
(236, 'ZN2001', 'ED2005', 'Wilachchiya'),
(237, 'ZN2001', 'ED2022', 'Nachchaduwa'),
(238, 'ZN2002', 'ED2006', 'Tambuttegama'),
(239, 'ZN2002', 'ED2007', 'Talawa'),
(240, 'ZN2002', 'ED2008', 'Rajanganaya'),
(241, 'ZN2002', 'ED2009', 'Galnewa'),
(242, 'ZN2003', 'ED2010', 'Kekirawa'),
(243, 'ZN2003', 'ED2011', 'Palugaswewa'),
(244, 'ZN2003', 'ED2012', 'Palagala'),
(245, 'ZN2003', 'ED2013', 'Thirappane'),
(246, 'ZN2003', 'ED2014', 'Ipalogama'),
(247, 'ZN2004', 'ED2015', 'Galenbindunuwewa'),
(248, 'ZN2004', 'ED2016', 'Kahatagasdigiliya'),
(249, 'ZN2004', 'ED2017', 'Mihintale'),
(250, 'ZN2005', 'ED2018', 'Kebithigollewa'),
(251, 'ZN2005', 'ED2019', 'Padaviya'),
(252, 'ZN2005', 'ED2020', 'Horowpathana'),
(253, 'ZN2005', 'ED2021', 'Medawachchiya'),
(254, 'ZN2101', 'ED2101', 'Tamankaduwa'),
(255, 'ZN2101', 'ED2102', 'Lankapura'),
(256, 'ZN2102', 'ED2104', 'Hingurakgoda'),
(257, 'ZN2102', 'ED2105', 'Medirigiriya'),
(258, 'ZN2102', 'ED2106', 'Elahera'),
(259, 'ZN2103', 'ED2103', 'Dimbulagala'),
(260, 'ZN2103', 'ED2107', 'Welikanda'),
(261, 'ZN2103', 'ED2108', 'Aralaganwila'),
(262, 'ZN2201', 'ED2201', 'Badulla'),
(263, 'ZN2201', 'ED2203', 'Haliela'),
(264, 'ZN2206', 'ED2204', 'Soranatota'),
(265, 'ZN2206', 'ED2205', 'Meegahakivula'),
(266, 'ZN2206', 'ED2206', 'Kandeketiya'),
(267, 'ZN2202', 'ED2207', 'Bandarawela'),
(268, 'ZN2202', 'ED2210', 'Haldummulla'),
(269, 'ZN2202', 'ED2211', 'Haputale'),
(270, 'ZN2202', 'ED2212', 'Ella'),
(271, 'ZN2203', 'ED2213', 'Mahiyanganaya'),
(272, 'ZN2203', 'ED2214', 'Ridimaliyedda'),
(273, 'ZN2204', 'ED2208', 'Uva-Paranagama'),
(274, 'ZN2204', 'ED2209', 'Welimada'),
(275, 'ZN2205', 'ED2202', 'Passara'),
(276, 'ZN2301', 'ED2301', 'Monaragala'),
(277, 'ZN2301', 'ED2305', 'Siyambalanduwa'),
(278, 'ZN2301', 'ED2306', 'Badalkumbura'),
(279, 'ZN2302', 'ED2302', 'Buttala'),
(280, 'ZN2302', 'ED2304', 'Wellawaya'),
(281, 'ZN2303', 'ED2307', 'Madulla'),
(282, 'ZN2303', 'ED2308', 'Bibile'),
(283, 'ZN2303', 'ED2309', 'Medagama'),
(284, 'ZN2304', 'ED2310', 'Thanamalvila'),
(285, 'ZN2401', 'ED2401', 'Ratnapura 1'),
(286, 'ZN2401', 'ED2402', 'Pelmadulla'),
(287, 'ZN2401', 'ED2404', 'Eheliyagoda'),
(288, 'ZN2401', 'ED2405', 'Kuruwita'),
(289, 'ZN2401', 'ED2414', 'Ratnapura 2'),
(290, 'ZN2403', 'ED2408', 'Balangoda'),
(291, 'ZN2403', 'ED2409', 'Imbulpe'),
(292, 'ZN2403', 'ED2410', 'Weligepola'),
(293, 'ZN2404', 'ED2403', 'Nivitigala'),
(294, 'ZN2404', 'ED2406', 'Ayagama'),
(295, 'ZN2404', 'ED2407', 'Kalawana'),
(296, 'ZN2404', 'ED2416', 'Kahawatta'),
(297, 'ZN2405', 'ED2411', 'Godakawela'),
(298, 'ZN2405', 'ED2412', 'Kolonne'),
(299, 'ZN2405', 'ED2413', 'Embilipitiya'),
(300, 'ZN2501', 'ED2501', 'Kegalle'),
(301, 'ZN2501', 'ED2502', 'Galigamuwa'),
(302, 'ZN2501', 'ED2503', 'Warakapola'),
(303, 'ZN2501', 'ED2511', 'Dedigama'),
(304, 'ZN2503', 'ED2508', 'Mawanella'),
(305, 'ZN2503', 'ED2509', 'Rambukkana'),
(306, 'ZN2503', 'ED2510', 'Aranayaka'),
(307, 'ZN2504', 'ED2504', 'Ruwanwella'),
(308, 'ZN2504', 'ED2505', 'Dehiowita'),
(309, 'ZN2504', 'ED2506', 'Deraniyagala'),
(310, 'ZN2504', 'ED2507', 'Yatiyantota'),
(311, 'ZN2504', 'ED2512', 'Kitulgala');

-- --------------------------------------------------------

--
-- Table structure for table `General_Service`
--

CREATE TABLE `General_Service` (
  `ID` int(5) NOT NULL,
  `NIC` varchar(15) COLLATE utf8_bin NOT NULL,
  `date_join` date NOT NULL,
  `way_join` varchar(15) COLLATE utf8_bin NOT NULL,
  `cadre` varchar(15) COLLATE utf8_bin NOT NULL,
  `grade` varchar(15) COLLATE utf8_bin NOT NULL,
  `subject` int(5) DEFAULT NULL,
  `medium` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `confirm` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `General_Service`
--

INSERT INTO `General_Service` (`ID`, `NIC`, `date_join`, `way_join`, `cadre`, `grade`, `subject`, `medium`, `confirm`) VALUES
(1, '883323173v', '2017-03-13', 'open', 'general-carder', 'grade3', NULL, 'sinhala', 'no'),
(3, '883323174v', '2017-05-15', 'supern', 'general-carder', 'grade2', NULL, 'sinhala', 'yes'),
(9, '883323175v', '2017-03-13', 'open', 'general-carder', 'grade1', NULL, 'sinhala', '');

-- --------------------------------------------------------

--
-- Table structure for table `Institute`
--

CREATE TABLE `Institute` (
  `ID` int(5) NOT NULL,
  `div_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `institute_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `workplace_id` int(5) NOT NULL,
  `institute_name` varchar(150) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Institute`
--

INSERT INTO `Institute` (`ID`, `div_id`, `institute_id`, `workplace_id`, `institute_name`) VALUES
(1, 'ED0108', 'NC0101', 9, 'MAHARAGAMA NATIONAL COLLEGE OF EDUCATION'),
(2, 'ED0202', 'NC0201', 9, 'SIYANE NATIONAL COLLEGE OF EDUCATION'),
(3, 'ED0203', 'NC0202', 9, 'HAPITIGAMA NATIONAL COLLEGE OF EDUCATION'),
(4, 'ED0202', 'NC0203', 9, 'SARIPUTTANATIONAL COLLEGE OF EDUCATION-NITTAMBUWA'),
(5, 'ED1806', 'NC0204', 9, 'SARIPUTTANATIONAL COLLEGE OF EDUCATION-DAMBEDENIYA BRANCH'),
(6, 'ED0301', 'NC0301', 9, 'PASDUNRATA NATIONAL COLLEGE OF EDUCATION'),
(7, 'ED0301', 'NC0302', 9, 'DHARGA TOWN NATIONAL COLLEGE OF EDUCATION'),
(8, 'ED0411', 'NC0401', 9, 'MAHAWELI NATIONAL COLLEGE OF EDUCATION'),
(9, 'ED0405', 'NC0402', 9, 'PERADENIYA NATIONAL COLLEGE OF EDUCATION'),
(10, 'ED0601', 'NC0601', 9, 'SRIPADA NATIONAL COLLEGE OF EDUCATION'),
(11, 'ED0703', 'NC0701', 9, 'RUHUNU NATIONAL COLLEGE OF EDUCATION,'),
(12, 'ED0806', 'NC0801', 9, 'NILWALA NATIONAL COLLEGE OF EDUCATION'),
(13, 'ED1009', 'NC1001', 9, 'JAFFNA NATIONAL COLLEGE OF EDUCATION'),
(14, 'ED1301', 'NC1301', 9, 'VAVUNIA NATIONAL COLLEGE OF EDUCATION'),
(15, 'ED1506', 'NC1501', 9, 'BATTICOLOA NATIONAL COLLEGE OF EDUCATION'),
(16, 'ED1612', 'NC1601', 9, 'ADALACHCHENAI NATIONAL COLLEGE OF EDUCATION'),
(17, 'ED1810', 'NC1801', 9, 'WAYAMBA NATIONAL COLLEGE OF EDUCATION'),
(18, 'ED2101', 'NC2101', 9, 'PULATISIPURA NATIONAL COLLEGE OF EDUCATION'),
(19, 'ED2207', 'NC2201', 9, 'UVA NATIONAL COLLEGE OF EDUCATION'),
(20, 'ED2411', 'NC2401', 9, 'RUWANPURA NATIONAL COLLEGE OF EDUCATION'),
(21, 'ED0108', 'TT0101', 10, 'TEACHERS TRAINING COLLEGE, MAHARAGAMA'),
(22, 'ED0402', 'TT0401', 10, 'TEACHERS TRAINING COLLEGE, GIRAGAMA'),
(23, 'ED0601', 'TT0601', 10, 'TEACHERS TRAINING COLLEGE, KOTAGALA'),
(24, 'ED0710', 'TT0701', 10, 'TEACHERS TRAINING COLLEGE, BALAPITIYA'),
(25, 'ED0702', 'TT0702', 10, 'TEACHERS TRAINING COLLEGE, UNAWATUNA'),
(26, 'ED1009', 'TT1001', 10, 'TEACHERS TRAINING COLLEGE, KOPAI'),
(27, 'ED1009', 'TT1002', 10, 'TEACHERS TRAINING COLLEGE, PALALI'),
(28, 'ED1501', 'TT1501', 10, 'TEACHERS TRAINING COLLEGE, BATTICALOA'),
(29, 'ED1612', 'TT1502', 10, 'TEACHERS TRAINING COLLEGE,ADALACHCHENA'),
(30, 'ED0117', 'TC0101', 11, 'Colombo Teacher Centre'),
(31, 'ED0105', 'TC0102', 11, 'Kalubowila Teacher Centre'),
(32, 'ED0108', 'TC0103', 11, 'Maharagama Teacher Centre'),
(33, 'ED0112', 'TC0104', 11, 'Hanwella Teacher Centre'),
(34, 'ED0207', 'TC0201', 11, 'Kelaniya Teacher Centre'),
(35, 'ED0208', 'TC0202', 11, 'Minuwangoda Teacher Centre'),
(36, 'ED0304', 'TC0301', 11, 'Aluthgama Teacher Centre'),
(37, 'ED0303', 'TC0302', 11, 'Horana Teacher Centre'),
(38, 'ED0210', 'TC0303', 11, 'Bolawalana Teacher Centre'),
(39, 'ED0305', 'TC0304', 11, 'Panadura Teacher Centre'),
(40, 'ED0310', 'TC0305', 11, 'Meegahatenna Teacher Centre'),
(41, 'ED0411', 'TC0401', 11, 'Walala Teacher Centre'),
(42, 'ED0404', 'TC0402', 11, 'Gampola Teacher Centre'),
(43, 'ED0417', 'TC0403', 11, 'Uda-dumbara Teacher Centre'),
(44, 'ED0405', 'TC0404', 11, 'Peradeniya Teacher Centre'),
(45, 'ED0408', 'TC0405', 11, 'Katugastota Teacher Centre'),
(46, 'ED0402', 'TC0406', 11, 'Giragama Teacher Centre'),
(47, 'ED0506', 'TC0501', 11, 'Galewela Teacher Centre'),
(48, 'ED0504', 'TC0502', 11, 'Pallegama Teacher Centre'),
(49, 'ED0501', 'TC0503', 11, 'Matale Teacher Centre'),
(50, 'ED0508', 'TC0504', 11, 'Naula Teacher Centre'),
(51, 'ED0601', 'TC0601', 11, 'Nuwara-eliya Teacher Centre'),
(52, 'ED0608', 'TC0602', 11, 'Hatton Teacher Centre'),
(53, 'ED0604', 'TC0603', 11, 'Kothmale Teacher Centre'),
(54, 'ED0603', 'TC0604', 11, 'Nildandahinna Teacher Centre'),
(55, 'ED0605', 'TC0605', 11, 'Padiyapelela Teacher Centre'),
(56, 'ED0706', 'TC0701', 11, 'Elpitiya Teacher Centre'),
(57, 'ED0710', 'TC0702', 11, 'Balapitiya Teacher Centre'),
(58, 'ED0702', 'TC0703', 11, 'Unawatuna Teacher Centre'),
(59, 'ED0811', 'TC0801', 11, 'Akuressa Teacher Centre'),
(60, 'ED0805', 'TC0802', 11, 'Dickwella Teacher Centre'),
(61, 'ED0801', 'TC0803', 11, 'Matara Teacher Centre'),
(62, 'ED0814', 'TC0804', 11, 'Deniyaya Teacher Centre'),
(63, 'ED0809', 'TC0805', 11, 'Deiyandara Teacher Centre'),
(64, 'ED0714', 'TC0901', 11, 'Panangala Teacher Centre'),
(65, 'ED0905', 'TC0902', 11, ' Hambantota Teacher Centre'),
(66, 'ED0904', 'TC0903', 11, 'Weeraketiya Teacher Centre'),
(67, 'ED0909', 'TC0904', 11, 'Lunugamwehera Teacher Centre'),
(68, 'ED1002', 'TC1001', 11, 'Jaffna Teacher Centre'),
(69, 'ED1012', 'TC1002', 11, 'Valikamam (Manipai) Teacher Centre'),
(70, 'ED1007', 'TC1003', 11, 'Nelliady Teacher Centre'),
(71, 'ED1014', 'TC1004', 11, 'Velanai Island Teacher Centre'),
(72, 'ED1003', 'TC1005', 11, 'Varani Teacher Centre'),
(73, 'ED1102', 'TC1101', 11, 'Paranthan Teacher Centre'),
(74, 'ED1101', 'TC1102', 11, 'Akkarayankulam Teacher Centre'),
(75, 'ED1201', 'TC1201', 11, 'Mannar Teacher Centre'),
(76, 'ED1204', 'TC1202', 11, 'Murukkan Teacher Centre'),
(77, 'ED1205', 'TC1203', 11, 'Madhu Teacher Centre'),
(78, 'ED1204', 'TC1204', 11, 'Mannar Aggraganya Teacher Centre'),
(79, 'ED1303', 'TC1301', 11, 'Puliyankulam Teacher Centre'),
(80, 'ED1304', 'TC1302', 11, 'Cheddikulam Teacher Centre'),
(81, 'ED1401', 'TC1401', 11, 'Mulliyawalai Teacher Centre'),
(82, 'ED1405', 'TC1402', 11, 'Mankulam Teacher Centre'),
(83, 'ED1501', 'TC1501', 11, 'Batticaloa Teacher Centre'),
(84, 'ED1511', 'TC1502', 11, 'Kaththankudi Teacher Centre'),
(85, 'ED1507', 'TC1503', 11, 'Kaluwanchikudy Teacher Centre'),
(86, 'ED1510', 'TC1504', 11, 'Valachchenai Teacher Centre'),
(87, 'ED1613', 'TC1601', 11, 'Akkaraipattu Teacher Centre'),
(88, 'ED1611', 'TC1602', 11, 'Sammanthurai Teacher Centre'),
(89, 'ED1608', 'TC1603', 11, 'Kalmunai Teacher Centre'),
(90, 'ED1601', 'TC1604', 11, 'Ampara Teacher Centre'),
(91, 'ED1605', 'TC1605', 11, 'Dehiaththakandiya Teacher Centre'),
(92, 'ED1617', 'TC1606', 11, 'ThirukkovilTeacher Centre'),
(93, 'ED1701', 'TC1701', 11, 'Trincomalee (Tamil) Teacher Centre'),
(94, 'ED1701', 'TC1702', 11, 'Trincomalee (Sinhala) Teacher Centre'),
(95, 'ED1704', 'TC1703', 11, 'Mutur Teacher Centre'),
(96, 'ED1603', 'TC1704', 11, 'Serankadawala Teacher Centre'),
(97, 'ED1702', 'TC1705', 11, 'Kanthale Teacher Centre'),
(98, 'ED1703', 'TC1706', 11, 'Kinniya Teacher Centre'),
(99, 'ED1801', 'TC1801', 11, 'Kurunegala Teacher Centre'),
(100, 'ED1815', 'TC1802', 11, 'Nikaweratiya Teacher Centre'),
(101, 'ED1805', 'TC1803', 11, 'Ibbagamuwa Teacher Centre'),
(102, 'ED1816', 'TC1804', 11, 'Galgamuwa Teacher Centre'),
(103, 'ED1812', 'TC1805', 11, 'Maho Teacher Centre'),
(104, 'ED1809', 'TC1806', 11, 'Panduwasnuwara Teacher Centre'),
(105, 'ED1806', 'TC1807', 11, 'Dambadeniya Teacher Centre'),
(106, 'ED1818', 'TC1808', 11, 'Yakarawaththa Agraganya Teacher Centre'),
(107, 'ED1901', 'TC1901', 11, 'Puthlam Teacher Centre'),
(108, 'ED1903', 'TC1902', 11, 'Anamaduwa Teacher Centre'),
(109, 'ED1907', 'TC1903', 11, 'Madampe - Chilaw Teacher Centre'),
(110, 'ED1909', 'TC1904', 11, 'Naththandiya Teacher Centre'),
(111, 'ED2001', 'TC2001', 11, 'Anuradapura Teacher Centre'),
(112, 'ED2006', 'TC2002', 11, 'Thambuttegama Teacher Centre'),
(113, 'ED2015', 'TC2003', 11, 'Galenbidunawewa Teacher Centre'),
(114, 'ED2006', 'TC2004', 11, 'Kekirawa Teacher Centre'),
(115, 'ED2101', 'TC2101', 11, 'Polonnaruwa Teacher Centre'),
(116, 'ED2019', 'TC2102', 11, 'Padaviya Teacher Centre'),
(117, 'ED2106', 'TC2103', 11, 'Bakamuna Teacher Centre'),
(118, 'ED2104', 'TC2104', 11, 'Minneriya Teacher Centre'),
(119, 'ED2103', 'TC2105', 11, 'Manampitiya Teacher Centre'),
(120, 'ED2207', 'TC2201', 11, 'Bandarawela Teacher Centre'),
(121, 'ED2209', 'TC2202', 11, 'Welimada Teacher Centre'),
(122, 'ED2203', 'TC2203', 11, 'Haliela (Sinhala) Teacher Centre'),
(123, 'ED2213', 'TC2204', 11, 'Mahiyangana Teacher Centre'),
(124, 'ED2202', 'TC2205', 11, 'Passara Teacher Centre'),
(125, 'ED2203', 'TC2215', 11, 'Haliela (Tamil) Teacher Centre'),
(126, 'ED2301', 'TC2301', 11, 'Monaragala Teacher Centre'),
(127, 'ED2304', 'TC2303', 11, 'Wellawaya Teacher Centre'),
(128, 'ED2309', 'TC2304', 11, 'Medagama (Bibila) Teacher Centre'),
(129, 'ED2401', 'TC2401', 11, 'Rathnapura Teacher Centre'),
(130, 'ED2408', 'TC2402', 11, 'Balangoda Teacher Centre'),
(131, 'ED2407', 'TC2403', 11, 'Kalawana Teacher Centre'),
(132, 'ED2413', 'TC2404', 11, 'Embilipitiya Teacher Centre'),
(133, 'ED2505', 'TC2405', 11, 'Dehiowita Teacher Centre'),
(134, 'ED2506', 'TC2406', 11, 'Deraniyagala Teacher Centre'),
(135, 'ED2501', 'TC2501', 11, 'Kegalle Teacher Centre'),
(136, 'ED2510', 'TC2502', 11, 'Mawanella Teacher Centre'),
(137, 'ED0108', 'IT0101', 12, 'Western Provincial PICTEC, Pannipitiya'),
(138, 'ED0401', 'IT0201', 12, 'Central Provincial PICTEC, Gurudeniya, Kandy'),
(139, 'ED0702', 'IT0301', 12, 'Southern Provincial PICTEC, Unawatuna'),
(140, 'ED1305', 'IT0401', 12, 'Northern Provincial PICTEC, Marakkarampalai'),
(141, 'ED1701', 'IT0501', 12, 'Eastern Provincial PICTEC, Trincomalee'),
(142, 'ED1808', 'IT0601', 12, 'North Western Provincial PICTEC, Wariyapola'),
(143, 'ED2001', 'IT0701', 12, 'North Central Provincial PICTEC, Anuradhapura'),
(144, 'ED2306', 'IT0801', 12, 'Uva Provincial PICTEC, Buttala'),
(145, 'ED2505', 'IT0901', 12, 'Sabaragamuwa Provincial PICTEC, Dehiovita'),
(146, 'ED0114', 'CR0101', 13, 'DEMATAGODA'),
(147, 'ED0116', 'CR0102', 13, 'LUMBINI'),
(148, 'ED0107', 'CR0103', 13, 'HOMAGAMA'),
(149, 'ED0107', 'CR0104', 13, 'HANWELLA'),
(150, 'ED0110', 'CR0105', 13, 'ATURUGIRIYA'),
(151, 'ED0110', 'CR0106', 13, 'BOMIRIYA'),
(152, 'ED0108', 'CR0107', 13, 'MAHARAGAMA'),
(153, 'ED0110', 'CR0108', 13, 'MALABE'),
(154, 'ED0104', 'CR0109', 13, 'NUGEGODA'),
(155, 'ED0106', 'CR0110', 13, 'PILIYANDALA'),
(156, 'ED0202', 'CR0201', 13, 'ATTANAGALLA'),
(157, 'ED0201', 'CR0202', 13, 'GAMPAHA(ANURA)'),
(158, 'ED0201', 'CR0203', 13, 'GAMPAHA(TAKSILA)'),
(159, 'ED0201', 'CR0204', 13, 'GALAHITIYAWA'),
(160, 'ED0202', 'CR0205', 13, 'SANGABODHI'),
(161, 'ED0202', 'CR0206', 13, 'VEYANGODA'),
(162, 'ED0211', 'CR0207', 13, 'HUNUMULLA'),
(163, 'ED0208', 'CR0208', 13, 'UDUGAMPOLA'),
(164, 'ED0210', 'CR0209', 13, 'DALUPOTA'),
(165, 'ED0206', 'CR0210', 13, 'KALANIYA'),
(166, 'ED0301', 'CR0301', 13, 'KALUTARA'),
(167, 'ED0310', 'CR0302', 13, 'MATUGAMA'),
(168, 'ED0302', 'CR0303', 13, 'BANDARAGAMA'),
(169, 'ED0303', 'CR0304', 13, 'HORANA'),
(170, 'ED0402', 'CR0402', 13, 'DENUWARA'),
(171, 'ED0415', 'CR0403', 13, 'WATHEGAMA'),
(172, 'ED0408', 'CR0404', 13, 'KATUGASTOTA'),
(173, 'ED0501', 'CR0501', 13, 'MATALE'),
(174, 'ED0506', 'CR0502', 13, 'GALEWELA'),
(175, 'ED0508', 'CR0503', 13, 'NAULA'),
(176, 'ED0503', 'CR0504', 13, 'WILGAMUWA'),
(177, 'ED0601', 'CR0601', 13, 'NUWARA'),
(178, 'ED0608', 'CR0602', 13, 'HATTON'),
(179, 'ED0602', 'CR0603', 13, 'GINIGATHENA'),
(180, 'ED0605', 'CR0604', 13, 'HANGURANKETHA'),
(181, 'ED0701', 'CR0701', 13, 'GALLE'),
(182, 'ED0703', 'CR0702', 13, 'AKMEEMANA'),
(183, 'ED0709', 'CR0703', 13, 'KARANDENIYA'),
(184, 'ED0711', 'CR0704', 13, 'UDAGAMA'),
(185, 'ED0703', 'CR0705', 13, 'MANAWILA'),
(186, 'ED0806', 'CR0801', 13, 'GODAPITIYA'),
(187, 'ED0811', 'CR0802', 13, 'TELIJJAWILA'),
(188, 'ED0814', 'CR0803', 13, 'KOTAPOLA'),
(189, 'ED0801', 'CR0804', 13, 'MATARA'),
(190, 'ED0901', 'CR0901', 13, 'TANGALLE'),
(191, 'ED0905', 'CR0902', 13, 'DEBARAWEWA'),
(192, 'ED0904', 'CR0903', 13, 'WALASMULLA'),
(193, 'ED1001', 'CR1001', 13, 'JAFFNA'),
(194, 'ED1014', 'CR1002', 13, 'ILANDS'),
(195, 'ED1007', 'CR1003', 13, 'VADAMARACHCHI'),
(196, 'ED1003', 'CR1004', 13, 'TENMARACHCHI'),
(197, 'ED1010', 'CR1005', 13, 'VALIKAMAM'),
(198, 'ED1101', 'CR1101', 13, 'KILINOCHCH'),
(199, 'ED1201', 'CR1201', 13, 'MANNAR'),
(200, 'ED1202', 'CR1202', 13, 'MADHU'),
(201, 'ED1303', 'CR1301', 13, 'VAVUNIYA'),
(202, 'ED1302', 'CR1301', 13, 'VAVUNIYA'),
(203, 'ED1401', 'CR1401', 13, 'MULATIVU'),
(204, 'ED1405', 'CR1402', 13, 'THUNUKKAI'),
(205, 'ED1501', 'CR1501', 13, 'BATTICOLOA'),
(206, 'ED1510', 'CR1502', 13, 'KALKUDAH'),
(207, 'ED1504', 'CR1503', 13, 'PADDRIPPU'),
(208, 'ED1512', 'CR1504', 13, 'BATTICALOA'),
(209, 'ED1601', 'CR1601', 13, 'AMPARA'),
(210, 'ED1622', 'CR1602', 13, 'KALMUNAI'),
(211, 'ED1611', 'CR1603', 13, 'SAMMANTHURAI'),
(212, 'ED1606', 'CR1604', 13, 'MAHAOYA'),
(213, 'ED1605', 'CR1605', 13, 'DEHIATTAKANDIYA'),
(214, 'ED1613', 'CR1606', 13, 'AKKARAIPATTU'),
(215, 'ED1617', 'CR1607', 13, 'THIRUKKOVIL'),
(216, 'ED1701', 'CR1701', 13, 'TRINCOMALEE'),
(217, 'ED1704', 'CR1702', 13, 'MUTTUR'),
(218, 'ED1707', 'CR1703', 13, 'KANTHALE'),
(219, 'ED1703', 'CR1704', 13, 'KINNIYA'),
(220, 'ED1801', 'CR1801', 13, 'KURUNEGALA'),
(221, 'ED1810', 'CR1802', 13, 'BINGIRIYA'),
(222, 'ED1808', 'CR1803', 13, 'WARIYAPOLA'),
(223, 'ED1812', 'CR1804', 13, 'MAHO'),
(224, 'ED1811', 'CR1805', 13, 'GIRIULLA'),
(225, 'ED1903', 'CR1901', 13, 'PUTTALAM'),
(226, 'ED1907', 'CR1902', 13, 'CHILAW'),
(227, 'ED2001', 'CR2001', 13, 'ANURADHAPURA'),
(228, 'ED2006', 'CR2002', 13, 'TAMBUTTEGAMA'),
(229, 'ED2010', 'CR2003', 13, 'KEKIRAWA'),
(230, 'ED2016', 'CR2004', 13, 'KAHATAGASDIGILIYA'),
(231, 'ED2018', 'CR2005', 13, 'KEBITHIGOLLEWA'),
(232, 'ED2101', 'CR2101', 13, 'POLONNARUWA'),
(233, 'ED2104', 'CR2102', 13, 'HINGURAKGODA'),
(234, 'ED2201', 'CR2201', 13, 'BADULLA'),
(235, 'ED2203', 'CR2202', 13, 'HALIELA'),
(236, 'ED2206', 'CR2203', 13, 'VIYALUWA'),
(237, 'ED2210', 'CR2204', 13, 'BANDARAWELA'),
(238, 'ED2202', 'CR2209', 13, 'PASSARA'),
(239, 'ED2301', 'CR2301', 13, 'MONARAGALA'),
(240, 'ED2213', 'CR2302', 13, 'MAHIYANGANAYA'),
(241, 'ED2304', 'CR2303', 13, 'WELLAWAYA'),
(242, 'ED2308', 'CR2304', 13, 'BIBILE'),
(243, 'ED2402', 'CR2401', 13, 'PALMADULLA'),
(244, 'ED2405', 'CR2402', 13, 'KURUVITA'),
(245, 'ED2408', 'CR2403', 13, 'BALANGODA'),
(246, 'ED2411', 'CR2405', 13, 'GODAKAWELA'),
(247, 'ED2412', 'CR2406', 13, 'KOLONNA'),
(248, 'ED2503', 'CR2501', 13, 'TOLANGAMUWA'),
(249, 'ED2508', 'CR2502', 13, 'MAWANELLA'),
(250, 'ED2504', 'CR2504', 13, 'RUWANWELLA');

-- --------------------------------------------------------

--
-- Table structure for table `Main_Office_Branches`
--

CREATE TABLE `Main_Office_Branches` (
  `ID` int(5) NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `office_branch` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Main_Office_Branches`
--

INSERT INTO `Main_Office_Branches` (`ID`, `work_place_id`, `office_branch`) VALUES
(1, 1, 'National Operation Room'),
(2, 1, 'Aesthetic Education Branch'),
(3, 1, 'Bilingual Education Branch'),
(4, 1, 'Commerce & Business Studies Branch'),
(5, 1, 'Colleges of Education'),
(6, 1, 'Education Development Branch'),
(7, 1, 'English and Foreign Languages Branch'),
(8, 1, 'Mathematics Branch'),
(9, 1, 'National Languages and Humanities Education Unit'),
(10, 1, 'National Schools Branch'),
(11, 1, 'Piriven Education Branch'),
(12, 1, 'Oriental Studies Society'),
(13, 1, 'Religious and Value Education'),
(14, 1, 'School Activities Branch'),
(15, 1, 'Health & Nutrition Branch'),
(16, 1, 'Science Branch'),
(17, 1, 'Teacher Education Administration Branch'),
(18, 1, 'Teacher Transfer Unit'),
(19, 1, 'School Works Branch'),
(20, 1, 'School Supplies Branch'),
(21, 1, 'Monitoring and Performance Review Branch'),
(22, 1, 'Policy and Planning Branch'),
(23, 1, 'Education for All Branch'),
(24, 1, 'Data Management Branch'),
(25, 1, 'School Library Development Branch'),
(26, 1, 'Management and Quality Assurance Branch'),
(27, 1, 'Educational Publications Advisory Board'),
(28, 1, 'Private Schools Branch'),
(29, 1, 'Research and Development Unit'),
(30, 1, 'Education Services Establishment Division'),
(31, 1, 'Teacher Educators  Service Branch'),
(32, 1, 'Principals Branch'),
(33, 1, 'Teacher Establishment Branch'),
(34, 1, 'Thousand Secondary Schools Development Branch'),
(35, 1, 'Foreign Agencies and Foreign Affairs Branch'),
(36, 1, 'Muslim School Development Branch'),
(37, 1, 'Tamil Schools Development Branch'),
(38, 1, 'Sports & Physical Education Branch'),
(39, 1, 'Non-formal and Special Education Branch'),
(40, 1, 'Co-curricular Activities, Guidance and Counseling Branch'),
(41, 1, 'Plantation Schools Development  Branch'),
(42, 1, 'Human Resource Development Branch'),
(43, 1, 'Primary Education Branch'),
(44, 1, 'Technical Education Branch'),
(45, 1, 'Agriculture and Environmental Education Branch'),
(46, 1, 'Information & Communication Technology Branch'),
(47, 1, 'e-Learning and Nenasa Educational Unit'),
(48, 4, 'Early Child Hood Dev. & Primary Education '),
(49, 4, 'Sinhala'),
(50, 4, 'Tamil'),
(51, 4, 'English'),
(52, 4, 'Aesthetics'),
(53, 4, 'Religion'),
(54, 4, 'Social Science'),
(55, 4, 'Science'),
(56, 4, 'Mathematics'),
(57, 4, 'Technical Education'),
(58, 4, 'Commerce'),
(59, 4, 'Information Technology & Education Management Information System'),
(60, 4, 'Health &Physical Education '),
(61, 4, 'Printing & Publication'),
(62, 4, 'Planning Evaluation '),
(63, 4, 'Research &Development'),
(64, 4, 'Professional Development & Educational Management'),
(65, 4, 'Educational Administration & Development'),
(66, 4, 'Foreign Courses Unit'),
(67, 4, 'Inclusive Education'),
(68, 4, 'Classical /Foreign Languages & Bilingual Education'),
(69, 4, 'Electronic Dissemination'),
(70, 4, 'Guidance & Counseling '),
(71, 4, ' Open School '),
(72, 4, 'Teacher Education'),
(73, 4, 'Institutional Development'),
(74, 4, 'Administration'),
(75, 4, 'Engineering Services & Maintenance'),
(76, 4, 'Library Museum '),
(77, 4, 'Transport'),
(78, 3, 'Distribution'),
(79, 3, 'Production'),
(80, 3, 'Publication'),
(81, 3, 'Sinhala '),
(82, 3, 'Tamil'),
(83, 3, 'English'),
(84, 2, 'Research & Development'),
(85, 2, 'School Organization & Results'),
(86, 2, 'Technology'),
(87, 2, 'Confidential'),
(88, 2, 'Administrator & Investigation'),
(89, 2, 'Evaluation'),
(90, 2, 'Confidential & Organization Evaluation Results');

-- --------------------------------------------------------

--
-- Table structure for table `Main_Office_Divisions`
--

CREATE TABLE `Main_Office_Divisions` (
  `ID` int(5) NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `office_division` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Main_Office_Divisions`
--

INSERT INTO `Main_Office_Divisions` (`ID`, `work_place_id`, `office_division`) VALUES
(1, 1, 'Educational Quality Development Division'),
(2, 1, 'Policy Planning & Performance Review Division'),
(3, 1, 'Education Services Establishment Division'),
(4, 1, 'Procurement & Construction Division'),
(5, 1, 'School Affairs Division'),
(6, 1, 'Administration and Finance Division'),
(7, 4, 'Languages, Humanities & Social Sciences'),
(8, 4, 'Science & Technology'),
(9, 4, 'Education Leadership, Development Management'),
(10, 4, 'Alternative Education & Teacher Education'),
(11, 4, 'Administration, Finance & Support Services'),
(12, 3, 'Production & Distribution'),
(13, 3, 'Development'),
(14, 2, 'School Examination Testing Service'),
(15, 2, 'Agency Examination Testing Service');

-- --------------------------------------------------------

--
-- Table structure for table `Performing_Permanent`
--

CREATE TABLE `Performing_Permanent` (
  `ID` int(5) NOT NULL,
  `service_ID` int(5) NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `sub_location_id` varchar(5) COLLATE utf8_bin DEFAULT NULL,
  `work_branch_id` int(5) DEFAULT NULL,
  `work_division_id` int(5) DEFAULT NULL,
  `designation` varchar(50) COLLATE utf8_bin NOT NULL,
  `duty_date` date NOT NULL,
  `off_letter_no` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `Personal_Details`
--

CREATE TABLE `Personal_Details` (
  `ID` int(10) NOT NULL,
  `NIC` varchar(15) COLLATE utf8_bin NOT NULL,
  `title` varchar(10) COLLATE utf8_bin NOT NULL,
  `f_name` varchar(50) COLLATE utf8_bin NOT NULL,
  `m_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `l_name` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `dob` date NOT NULL,
  `ethinicity` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `gender` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `civil_status` varchar(10) COLLATE utf8_bin DEFAULT NULL,
  `f_appoint_date` date DEFAULT NULL,
  `f_appoint_type` varchar(10) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Personal_Details`
--

INSERT INTO `Personal_Details` (`ID`, `NIC`, `title`, `f_name`, `m_name`, `l_name`, `dob`, `ethinicity`, `gender`, `civil_status`, `f_appoint_date`, `f_appoint_type`) VALUES
(1, '555', 'mr', 'kk', 's', 'las', '2017-07-11', NULL, NULL, NULL, NULL, NULL),
(2, 'kgkg', 'mr', 'sss', 'aa', '54', '2017-07-26', NULL, NULL, NULL, NULL, NULL),
(4, '883323173v', 'mr', 'kosala', 'a', 'G', '2017-07-10', 'sinhala', 'male', 'single', NULL, NULL),
(24, '883323174v', 'mr', 'kosala', 'aa', 'G', '1970-01-01', 'sinhala', 'male', 'single', NULL, NULL),
(30, '883323175v', 'mr', 'kosala', '', 'G', '1970-01-01', 'sinhala', 'male', 'single', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Province_List`
--

CREATE TABLE `Province_List` (
  `province_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `province` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Province_List`
--

INSERT INTO `Province_List` (`province_id`, `province`) VALUES
('P01', 'Western'),
('P02', 'Central'),
('P03', 'Southern'),
('P04', 'Northern'),
('P05', 'Eastern'),
('P06', 'North Western'),
('P07', 'North Central'),
('P08', 'Uva'),
('P09', 'Sabaragamuwa');

-- --------------------------------------------------------

--
-- Table structure for table `Province_Offices`
--

CREATE TABLE `Province_Offices` (
  `ID` int(5) NOT NULL,
  `province_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `provine_office` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Province_Offices`
--

INSERT INTO `Province_Offices` (`ID`, `province_id`, `work_place_id`, `provine_office`) VALUES
(1, 'P01', 5, 'Western Provincial Department of Education'),
(2, 'P02', 5, 'Central Provincial Department of Education'),
(3, 'P03', 5, 'Southern Provincial Department of Education'),
(4, 'P04', 5, 'Northern Provincial Department of Education'),
(5, 'P05', 5, 'Eastern Provincial Department of Education'),
(6, 'P06', 5, 'North Western Provincial Department of Education'),
(7, 'P07', 5, 'North Central Provincial Department of Education'),
(8, 'P08', 5, 'Uva Provincial Department of Education'),
(9, 'P09', 5, 'Sabaragamuwa Provincial Department of Education'),
(10, 'P01', 6, 'Western Provincial Ministry of Education'),
(11, 'P02', 6, 'Central Provincial Ministry of Education'),
(12, 'P03', 6, 'Southern Provincial Ministry of Education'),
(13, 'P04', 6, 'Northern Provincial Ministry of Education'),
(14, 'P05', 6, 'Eastern Provincial Ministry of Education'),
(15, 'P06', 6, 'Eastern Provincial Ministry of Education'),
(16, 'P07', 6, 'North Central Provincial Ministry of Education'),
(17, 'P08', 6, 'Uva Provincial Ministry of Education'),
(18, 'P09', 6, 'Sabaragamuwa Provincial Ministry of Education');

-- --------------------------------------------------------

--
-- Table structure for table `Releasement`
--

CREATE TABLE `Releasement` (
  `ID` int(5) NOT NULL,
  `service_id` int(5) NOT NULL,
  `rel_type_id` int(5) NOT NULL,
  `rel_place_id` int(5) NOT NULL,
  `rel_start_date` date DEFAULT NULL,
  `rel_end_date` date DEFAULT NULL,
  `rel_designation` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `rel_date` date DEFAULT NULL,
  `salary_drawn` varchar(50) COLLATE utf8_bin NOT NULL,
  `rel_institute` varchar(100) COLLATE utf8_bin DEFAULT NULL,
  `off_letter_no` varchar(15) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Releasement`
--

INSERT INTO `Releasement` (`ID`, `service_id`, `rel_type_id`, `rel_place_id`, `rel_start_date`, `rel_end_date`, `rel_designation`, `rel_date`, `salary_drawn`, `rel_institute`, `off_letter_no`) VALUES
(2, 3, 1, 2, '1970-01-01', '1970-01-01', '', '1970-01-01', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `Releasement_Place`
--

CREATE TABLE `Releasement_Place` (
  `ID` int(5) NOT NULL,
  `rel_type_id` int(5) NOT NULL,
  `rel_place` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Releasement_Place`
--

INSERT INTO `Releasement_Place` (`ID`, `rel_type_id`, `rel_place`) VALUES
(1, 1, 'Local Institute'),
(2, 1, 'Foreign Institute'),
(3, 1, 'National Instutue of Education'),
(4, 2, 'Foreign'),
(5, 2, 'Forces'),
(6, 2, 'Parliament staff'),
(7, 2, 'University');

-- --------------------------------------------------------

--
-- Table structure for table `Releasement_Type`
--

CREATE TABLE `Releasement_Type` (
  `ID` int(5) NOT NULL,
  `rel_type` varchar(20) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Releasement_Type`
--

INSERT INTO `Releasement_Type` (`ID`, `rel_type`) VALUES
(1, 'Study'),
(2, 'Work');

-- --------------------------------------------------------

--
-- Table structure for table `Service`
--

CREATE TABLE `Service` (
  `ID` int(5) NOT NULL,
  `NIC` varchar(15) COLLATE utf8_bin NOT NULL,
  `service_mode` int(5) NOT NULL,
  `service_status` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `work_place_id` int(5) DEFAULT NULL,
  `sub_location_id` int(5) DEFAULT NULL,
  `work_branch_id` int(5) DEFAULT NULL,
  `work_division_id` int(5) DEFAULT NULL,
  `designation_id` int(5) DEFAULT NULL,
  `duty_date` date DEFAULT NULL,
  `duty_date_terminate` date DEFAULT NULL,
  `off_letter_no` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `grade` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `date_promoted` date DEFAULT NULL,
  `salary_drawned` varchar(100) COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Service`
--

INSERT INTO `Service` (`ID`, `NIC`, `service_mode`, `service_status`, `work_place_id`, `sub_location_id`, `work_branch_id`, `work_division_id`, `designation_id`, `duty_date`, `duty_date_terminate`, `off_letter_no`, `grade`, `date_promoted`, `salary_drawned`) VALUES
(1, '883323173v', 1, NULL, 1, NULL, 5, 3, 5, '2017-07-02', NULL, '500005', '1open', NULL, NULL),
(2, '883323174v', 2, NULL, 1, NULL, 2, 1, 1, '2017-07-17', NULL, 'ko4555', '1open', NULL, NULL),
(3, '883323175v', 7, NULL, NULL, NULL, 2, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Service_Mode`
--

CREATE TABLE `Service_Mode` (
  `ID` int(5) NOT NULL,
  `mode` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Service_Mode`
--

INSERT INTO `Service_Mode` (`ID`, `mode`) VALUES
(1, 'First appointment'),
(2, 'Promotion'),
(3, 'Transfer'),
(4, 'Promotion / Transfer'),
(5, 'Attachment'),
(6, 'Secondment'),
(7, 'Releasement'),
(8, 'Acting Duty'),
(9, 'Performing Duty');

-- --------------------------------------------------------

--
-- Table structure for table `Sleas_Subject`
--

CREATE TABLE `Sleas_Subject` (
  `ID` int(5) NOT NULL,
  `sub_name` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Sleas_Subject`
--

INSERT INTO `Sleas_Subject` (`ID`, `sub_name`) VALUES
(1, 'Sinhala'),
(2, 'Tamil'),
(3, 'English and Other Languages'),
(4, 'Mathematics'),
(5, 'Science'),
(6, 'Commerce'),
(7, 'Information Technology'),
(8, 'Physical Education'),
(9, 'Buddhism'),
(10, 'Christianity'),
(11, 'Hindu'),
(12, 'Islam'),
(13, 'Student Counseling and Guidance'),
(14, 'Aesthetics'),
(15, 'Technology'),
(16, 'Special Education '),
(17, 'Planning'),
(18, 'Primary Education '),
(19, 'History ');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `name` varchar(150) COLLATE utf8_bin NOT NULL,
  `user_name` varchar(20) COLLATE utf8_bin NOT NULL,
  `passwd` varchar(20) COLLATE utf8_bin NOT NULL,
  `level` varchar(20) COLLATE utf8_bin NOT NULL,
  `workplace_id` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `name`, `user_name`, `passwd`, `level`, `workplace_id`) VALUES
(1, 'Subject Clerk', 'subc', 'subc', '2', NULL),
(2, '', 'kosala', 'admin', '0', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Work_Place`
--

CREATE TABLE `Work_Place` (
  `ID` int(5) NOT NULL,
  `work_place_code` varchar(10) COLLATE utf8_bin NOT NULL,
  `work_place` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Work_Place`
--

INSERT INTO `Work_Place` (`ID`, `work_place_code`, `work_place`) VALUES
(1, 'moe', 'Ministry of Education'),
(2, 'exam', 'Department of Examinations'),
(3, 'epd', 'Department of Education Publication'),
(4, 'nie', 'National Institute of Education'),
(5, 'provinced', 'Provincial Department of Education'),
(6, 'provincem', 'Provincial Ministry of Education'),
(7, 'zone', 'Zonal Education Office'),
(8, 'division', 'Divisional Education Office'),
(9, 'ncoe', 'National College of Education'),
(10, 'ttc', 'Teacher Training College'),
(11, 'tc', 'Teacher Centers'),
(12, 'pictec', 'Provincial ICT Education Centre (PICTEC)'),
(13, 'crc', 'Zonal ICT Education Centre (ZICTEC/CRC)'),
(14, 'erc', 'Education Resource Centre'),
(15, 'pedc', 'Provincial Education Development Center'),
(16, 'nschool', 'National School'),
(17, 'pschool', 'Provincial School');

-- --------------------------------------------------------

--
-- Table structure for table `Zonal_Offices`
--

CREATE TABLE `Zonal_Offices` (
  `ID` int(5) NOT NULL,
  `dist_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `work_place_id` int(5) NOT NULL,
  `zonal_office` varchar(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Zonal_Offices`
--

INSERT INTO `Zonal_Offices` (`ID`, `dist_id`, `work_place_id`, `zonal_office`) VALUES
(1, 'D01', 7, 'Colombo Zonal Education Office'),
(2, 'D01', 7, 'Homagama Zonal Education Office'),
(3, 'D01', 7, 'Sri Jayawardhanapura Zonal Education Office'),
(4, 'D01', 7, 'Piliyandala Zonal Education Office'),
(5, 'D02', 7, 'Gampaha Zonal Education Office'),
(6, 'D02', 7, 'Minuwangoda Zonal Education Office'),
(7, 'D02', 7, 'Negambo Zonal Education Office'),
(8, 'D02', 7, 'Kelaniya Zonal Education Office'),
(9, 'D03', 7, 'Kalutara Zonal Education Office'),
(10, 'D03', 7, 'Matugama Zonal Education Office'),
(11, 'D03', 7, 'HoranaZonal Education Office'),
(12, 'D04', 7, 'Kandy Zonal Education Office'),
(13, 'D04', 7, 'Denuwara Zonal Education Office'),
(14, 'D04', 7, 'Gampola Zonal Education Office'),
(15, 'D04', 7, 'Teldeniya Zonal Education Office'),
(16, 'D04', 7, 'Waththegama Zonal Education Office'),
(17, 'D04', 7, 'Katugastota Zonal Education Office'),
(18, 'D05', 7, 'Matale Zonal Education Office'),
(19, 'D05', 7, 'Galewela Zonal Education Office'),
(20, 'D05', 7, 'Naula Zonal Education Office'),
(21, 'D05', 7, 'Wilgamuwa Zonal Education Office'),
(22, 'D06', 7, 'Nuwara Eliya Zonal Education Office'),
(23, 'D06', 7, 'Kothmale Zonal Education Office'),
(24, 'D06', 7, 'Hatton Zonal Education Office'),
(25, 'D06', 7, 'Walapane Zonal Education Office'),
(26, 'D06', 7, 'Hanguranketha Zonal Education Office'),
(27, 'D07', 7, 'Galle Zonal Education Office'),
(28, 'D07', 7, 'Elpitiya Zonal Education Office'),
(29, 'D07', 7, 'Ambalangoda Zonal Education Office'),
(30, 'D07', 7, 'Udugama Zonal Education Office'),
(31, 'D08', 7, 'MataraZonal Education Office'),
(32, 'D08', 7, 'Akuressa Zonal Education Office'),
(33, 'D08', 7, 'Mulatiyana(Hakmana) Zonal Education Office'),
(34, 'D08', 7, 'Morawaka Zonal Education Office'),
(35, 'D09', 7, 'Tangalle Zonal Education Office'),
(36, 'D09', 7, 'Hambantota Zonal Education Office'),
(37, 'D09', 7, 'Walasmulla Zonal Education Office'),
(38, 'D10', 7, 'Jaffna Zonal Education Office'),
(39, 'D10', 7, 'Islands Zonal Education Office'),
(40, 'D10', 7, 'Thenmarachchi Zonal Education Office'),
(41, 'D10', 7, 'Valikamam Zonal Education Office'),
(42, 'D10', 7, 'Vadamarachchi Zonal Education Office'),
(43, 'D11', 7, 'Kilinochchi Zonal Education Office'),
(44, 'D12', 7, 'Mannar Zonal Education Office'),
(45, 'D12', 7, 'Madhu Zonal Education Office'),
(46, 'D13', 7, 'Vavuniya South Zonal Education Office'),
(47, 'D13', 7, 'Vavuniya North Zonal Education Office'),
(48, 'D14', 7, 'Mullaitivu Zonal Education Office'),
(49, 'D14', 7, 'Thunukkai Zonal Education Office'),
(50, 'D15', 7, 'Batticaloa Zonal Education Office'),
(51, 'D15', 7, 'Kalkudah Zonal Education Office'),
(52, 'D15', 7, 'Paddrippu Zonal Education Office'),
(53, 'D15', 7, 'Batticaloa Central Zonal Education Office'),
(54, 'D15', 7, 'Batticaloa West Zonal Education Office'),
(55, 'D16', 7, 'Ampara Zonal Education Office'),
(56, 'D16', 7, 'Kalmunai Zonal Education Office'),
(57, 'D16', 7, 'Sammanthurai Zonal Education Office'),
(58, 'D16', 7, 'Mahaoya Zonal Education Office'),
(59, 'D16', 7, 'Dehiattakandiya Zonal Education Office'),
(60, 'D16', 7, 'Akkaraipattu Zonal Education Office'),
(61, 'D16', 7, 'Thirukkovil Zonal Education Office'),
(62, 'D17', 7, 'Trincomalee Zonal Education Office'),
(63, 'D17', 7, 'Muthur Zonal Education Office'),
(64, 'D17', 7, 'Kanthalai Zonal Education Office'),
(65, 'D17', 7, 'Kinniya Zonal Education Office'),
(66, 'D17', 7, 'Trincomalee North Zonal Education Office'),
(67, 'D18', 7, 'Kurunegala Zonal Education Office'),
(68, 'D18', 7, 'Kuliyapitiya Zonal Education Office'),
(69, 'D18', 7, 'Nikaweratiya Zonal Education Office'),
(70, 'D18', 7, 'Maho Zonal Education Office'),
(71, 'D18', 7, 'Giriulla Zonal Education Office'),
(72, 'D18', 7, 'Ibbagamuwa Zonal Education Office'),
(73, 'D19', 7, 'Puttalam Zonal Education Office'),
(74, 'D19', 7, 'Chilaw Zonal Education Office'),
(75, 'D20', 7, 'Anuradhapura Zonal Education Office'),
(76, 'D20', 7, 'Thambuttegama Zonal Education Office'),
(77, 'D20', 7, 'Kekirawa Zonal Education Office'),
(78, 'D20', 7, 'Galenbindunuwewa Zonal Education Office'),
(79, 'D20', 7, 'Kebithigollewa Zonal Education Office'),
(80, 'D21', 7, 'Polonnaruwa Zonal Education Office'),
(81, 'D21', 7, 'Hingurakgoda Zonal Education Office'),
(82, 'D21', 7, 'Dimbulagala Zonal Education Office'),
(83, 'D22', 7, 'Badulla Zonal Education Office'),
(84, 'D22', 7, 'Bandarawela Zonal Education Office'),
(85, 'D22', 7, 'Mahiyanganaya Zonal Education Office'),
(86, 'D22', 7, 'Welimada Zonal Education Office'),
(87, 'D22', 7, 'Passara Zonal Education Office'),
(88, 'D22', 7, 'Viyaluwa Zonal Education Office'),
(89, 'D23', 7, 'Monaragala Zonal Education Office'),
(90, 'D23', 7, 'Wellawaya Zonal Education Office'),
(91, 'D23', 7, 'Bibile Zonal Education Office'),
(92, 'D23', 7, 'Thanamalvila Zonal Education Office'),
(93, 'D24', 7, 'Ratnapura Zonal Education Office'),
(94, 'D24', 7, 'Balangoda Zonal Education Office'),
(95, 'D24', 7, 'Nivitigala Zonal Education Office'),
(96, 'D24', 7, 'Embilipitiya Zonal Education Office'),
(97, 'D25', 7, 'Kegalle Zonal Education Office'),
(98, 'D25', 7, 'Mawanella Zonal Education Office'),
(99, 'D25', 7, 'Dehiowita Zonal Education Office');

-- --------------------------------------------------------

--
-- Table structure for table `Zone_List`
--

CREATE TABLE `Zone_List` (
  `ID` int(5) NOT NULL,
  `dist_id` varchar(5) COLLATE utf8_bin NOT NULL,
  `zone_id` varchar(10) COLLATE utf8_bin NOT NULL,
  `zone` varchar(50) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `Zone_List`
--

INSERT INTO `Zone_List` (`ID`, `dist_id`, `zone_id`, `zone`) VALUES
(1, 'D01', 'ZN0101', 'COLOMBO'),
(2, 'D01', 'ZN0102', 'HOMAGAMA'),
(3, 'D01', 'ZN0103', 'SRIJ AYAWARDANAPURA'),
(4, 'D01', 'ZN0104', 'PILIYANDALA'),
(5, 'D02', 'ZN0201', 'GAMPAHA'),
(6, 'D02', 'ZN0202', 'MINUWANGODA'),
(7, 'D02', 'ZN0203', 'NEGOMBO'),
(8, 'D02', 'ZN0204', 'KELANIYA'),
(9, 'D03', 'ZN0301', 'KALUTARA'),
(10, 'D03', 'ZN0302', 'MATUGAMA'),
(11, 'D03', 'ZN0303', 'HORANA'),
(12, 'D04', 'ZN0401', 'KANDY'),
(13, 'D04', 'ZN0403', 'DENUWARA'),
(14, 'D04', 'ZN0404', 'GAMPOLA'),
(15, 'D04', 'ZN0405', 'TELDENIYA'),
(16, 'D04', 'ZN0406', 'WATHEGAMA'),
(17, 'D04', 'ZN0407', 'KATUGASTOTA'),
(18, 'D05', 'ZN0501', 'MATALE'),
(19, 'D05', 'ZN0502', 'GALEWALA'),
(20, 'D05', 'ZN0503', 'NAULA'),
(21, 'D05', 'ZN0504', 'WILGAMUWA'),
(22, 'D06', 'ZN0601', 'NUWARAELIYA'),
(23, 'D06', 'ZN0602', 'KOTMALE'),
(24, 'D06', 'ZN0603', 'HATTON'),
(25, 'D06', 'ZN0604', 'WALAPANE'),
(26, 'D06', 'ZN0605', 'HANGURANKETHA'),
(27, 'D07', 'ZN0701', 'GALLE'),
(28, 'D07', 'ZN0702', 'ELPITIYA'),
(29, 'D07', 'ZN0703', 'AMBALANGODA'),
(30, 'D07', 'ZN0705', 'UDUGAMA'),
(31, 'D08', 'ZN0801', 'MATARA'),
(32, 'D08', 'ZN0802', 'AKURESSA'),
(33, 'D08', 'ZN0803', 'MULATIYANA(HAKMANA)'),
(34, 'D08', 'ZN0804', 'MORAWAKA(DENIYAYA)'),
(35, 'D09', 'ZN0901', 'TANGALLE'),
(36, 'D09', 'ZN0902', 'HAMBANTOTA'),
(37, 'D09', 'ZN0903', 'WALASMULLA'),
(38, 'D10', 'ZN1001', 'JAFFNA'),
(39, 'D10', 'ZN1002', 'ISLANDS'),
(40, 'D10', 'ZN1003', 'THENMARACHCHI'),
(41, 'D10', 'ZN1004', 'VALIKAMAM'),
(42, 'D10', 'ZN1005', 'VADAMARACHCHI'),
(43, 'D11', 'ZN1101', 'KILINOCHCHI'),
(44, 'D12', 'ZN1201', 'MANNAR'),
(45, 'D12', 'ZN1202', 'MADHU'),
(46, 'D13', 'ZN1301', 'VAVUNIYA SOUTH'),
(47, 'D13', 'ZN1302', 'VAVUNIYA NORTH'),
(48, 'D14', 'ZN1401', 'MULLATIVU'),
(49, 'D14', 'ZN1402', 'THUNUKKAI'),
(50, 'D15', 'ZN1501', 'BATTICALOA'),
(51, 'D15', 'ZN1502', 'KALKUDAH'),
(52, 'D15', 'ZN1503', 'PADDIRIPPU'),
(53, 'D15', 'ZN1504', 'BATTICALOA CENTRAL'),
(54, 'D15', 'ZN1505', 'BATTICOLOA WEST'),
(55, 'D16', 'ZN1601', 'AMPARA'),
(56, 'D16', 'ZN1602', 'KALMUNAI'),
(57, 'D16', 'ZN1603', 'SAMMANTHURAI'),
(58, 'D16', 'ZN1604', 'MAHAOYA'),
(59, 'D16', 'ZN1605', 'DEHIATTAKANDIYA'),
(60, 'D16', 'ZN1606', 'AKKARAIPATTU'),
(61, 'D16', 'ZN1607', 'THIRUKKOVIL'),
(62, 'D17', 'ZN1701', 'TRINCOMALEE'),
(63, 'D17', 'ZN1702', 'MUTTUR'),
(64, 'D17', 'ZN1703', 'KANTALE'),
(65, 'D17', 'ZN1704', 'KINNIYA'),
(66, 'D17', 'ZN1705', 'TRINCOMALEE NORTH'),
(67, 'D18', 'ZN1801', 'KURUNEGALA'),
(68, 'D18', 'ZN1802', 'KULIYAPITIYA'),
(69, 'D18', 'ZN1803', 'NIKAWERATIYA'),
(70, 'D18', 'ZN1804', 'MAHO'),
(71, 'D18', 'ZN1805', 'GIRIULLA'),
(72, 'D18', 'ZN1806', 'IBBAGAMUWA'),
(73, 'D19', 'ZN1901', 'PUTTALAM'),
(74, 'D19', 'ZN1902', 'CHILAW'),
(75, 'D20', 'ZN2001', 'ANURADHAPURA'),
(76, 'D20', 'ZN2002', 'TAMBUTTEGAMA'),
(77, 'D20', 'ZN2003', 'KEKIRAWA'),
(78, 'D20', 'ZN2004', 'GALENBINDUNUWEWA'),
(79, 'D20', 'ZN2005', 'KEBITHIGOLLEWA'),
(80, 'D21', 'ZN2101', 'POLONNARUWA'),
(81, 'D21', 'ZN2102', 'HINGURAKGODA'),
(82, 'D21', 'ZN2103', 'DIMBULAGALA'),
(83, 'D22', 'ZN2201', 'BADULLA'),
(84, 'D22', 'ZN2202', 'BANDARAWELA'),
(85, 'D22', 'ZN2203', 'MAHIYANGANAYA'),
(86, 'D22', 'ZN2204', 'WELIMADA'),
(87, 'D22', 'ZN2205', 'PASSARA'),
(88, 'D22', 'ZN2206', 'VIYALUWA'),
(89, 'D23', 'ZN2301', 'MONARAGALA'),
(90, 'D23', 'ZN2302', 'WELLAWAYA'),
(91, 'D23', 'ZN2303', 'BIBILE'),
(92, 'D23', 'ZN2304', 'THANAMALVILA'),
(93, 'D24', 'ZN2401', 'RATNAPURA'),
(94, 'D24', 'ZN2403', 'BALANGODA'),
(95, 'D24', 'ZN2404', 'NIVITIGALA'),
(96, 'D24', 'ZN2405', 'EMBILIPITIYA'),
(97, 'D25', 'ZN2501', 'KEGALLE'),
(98, 'D25', 'ZN2503', 'MAWANELLA'),
(99, 'D25', 'ZN2504', 'DEHIOWITA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Acting_Permanent`
--
ALTER TABLE `Acting_Permanent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Acting_Permanent_fk1` (`work_place_id`),
  ADD KEY `Acting_Permanent_fk2` (`work_branch_id`),
  ADD KEY `Acting_Permanent_fk3` (`work_division_id`),
  ADD KEY `Acting_Permanent_fk0` (`service_ID`);

--
-- Indexes for table `Contact_Details`
--
ALTER TABLE `Contact_Details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NIC` (`NIC`);

--
-- Indexes for table `Designation`
--
ALTER TABLE `Designation`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `District_List`
--
ALTER TABLE `District_List`
  ADD PRIMARY KEY (`dist_id`),
  ADD KEY `District_List_fk0` (`province_id`);

--
-- Indexes for table `Divisional_Offices`
--
ALTER TABLE `Divisional_Offices`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Divisional_Offices_fk0` (`zone_id`),
  ADD KEY `Divisional_Offices_fk1` (`work_place_id`);

--
-- Indexes for table `Division_List`
--
ALTER TABLE `Division_List`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `div_id` (`div_id`),
  ADD KEY `Division_List_fk0` (`zone_id`);

--
-- Indexes for table `General_Service`
--
ALTER TABLE `General_Service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NIC` (`NIC`),
  ADD KEY `General_Service_fk1` (`subject`);

--
-- Indexes for table `Institute`
--
ALTER TABLE `Institute`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Institute_fk0` (`div_id`),
  ADD KEY `Institute_fk1` (`workplace_id`);

--
-- Indexes for table `Main_Office_Branches`
--
ALTER TABLE `Main_Office_Branches`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Main_Office_Branches_fk0` (`work_place_id`);

--
-- Indexes for table `Main_Office_Divisions`
--
ALTER TABLE `Main_Office_Divisions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Main_Office_Divisions_fk0` (`work_place_id`);

--
-- Indexes for table `Performing_Permanent`
--
ALTER TABLE `Performing_Permanent`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Performing_Permanent_fk1` (`work_place_id`),
  ADD KEY `Performing_Permanent_fk2` (`work_branch_id`),
  ADD KEY `Performing_Permanent_fk3` (`work_division_id`),
  ADD KEY `Performing_Permanent_fk0` (`service_ID`);

--
-- Indexes for table `Personal_Details`
--
ALTER TABLE `Personal_Details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NIC` (`NIC`);

--
-- Indexes for table `Province_List`
--
ALTER TABLE `Province_List`
  ADD PRIMARY KEY (`province_id`);

--
-- Indexes for table `Province_Offices`
--
ALTER TABLE `Province_Offices`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Province_Offices_fk0` (`province_id`),
  ADD KEY `Province_Offices_fk1` (`work_place_id`);

--
-- Indexes for table `Releasement`
--
ALTER TABLE `Releasement`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Releasement_fk1` (`rel_type_id`),
  ADD KEY `Releasement_fk2` (`rel_place_id`),
  ADD KEY `NIC` (`service_id`);

--
-- Indexes for table `Releasement_Place`
--
ALTER TABLE `Releasement_Place`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Releasement_Place_fk0` (`rel_type_id`);

--
-- Indexes for table `Releasement_Type`
--
ALTER TABLE `Releasement_Type`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Service`
--
ALTER TABLE `Service`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `NIC` (`NIC`),
  ADD KEY `Service_fk1` (`service_mode`),
  ADD KEY `Service_fk2` (`work_place_id`),
  ADD KEY `Service_fk3` (`work_branch_id`),
  ADD KEY `Service_fk4` (`designation_id`),
  ADD KEY `Service_fk5` (`work_division_id`);

--
-- Indexes for table `Service_Mode`
--
ALTER TABLE `Service_Mode`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Sleas_Subject`
--
ALTER TABLE `Sleas_Subject`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_fk0` (`workplace_id`);

--
-- Indexes for table `Work_Place`
--
ALTER TABLE `Work_Place`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Zonal_Offices`
--
ALTER TABLE `Zonal_Offices`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Zonal_Offices_fk0` (`dist_id`),
  ADD KEY `Zonal_Offices_fk1` (`work_place_id`);

--
-- Indexes for table `Zone_List`
--
ALTER TABLE `Zone_List`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `zone_id` (`zone_id`),
  ADD KEY `Zone_List_fk0` (`dist_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Contact_Details`
--
ALTER TABLE `Contact_Details`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `General_Service`
--
ALTER TABLE `General_Service`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `Institute`
--
ALTER TABLE `Institute`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `Personal_Details`
--
ALTER TABLE `Personal_Details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `Releasement`
--
ALTER TABLE `Releasement`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `Service`
--
ALTER TABLE `Service`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `Acting_Permanent`
--
ALTER TABLE `Acting_Permanent`
  ADD CONSTRAINT `Acting_Permanent_fk0` FOREIGN KEY (`service_ID`) REFERENCES `Service` (`ID`),
  ADD CONSTRAINT `Acting_Permanent_fk1` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`),
  ADD CONSTRAINT `Acting_Permanent_fk2` FOREIGN KEY (`work_branch_id`) REFERENCES `Main_Office_Branches` (`ID`),
  ADD CONSTRAINT `Acting_Permanent_fk3` FOREIGN KEY (`work_division_id`) REFERENCES `Main_Office_Divisions` (`ID`);

--
-- Constraints for table `Contact_Details`
--
ALTER TABLE `Contact_Details`
  ADD CONSTRAINT `Contact_Details_fk0` FOREIGN KEY (`NIC`) REFERENCES `Personal_Details` (`NIC`);

--
-- Constraints for table `District_List`
--
ALTER TABLE `District_List`
  ADD CONSTRAINT `District_List_fk0` FOREIGN KEY (`province_id`) REFERENCES `Province_List` (`province_id`);

--
-- Constraints for table `Divisional_Offices`
--
ALTER TABLE `Divisional_Offices`
  ADD CONSTRAINT `Divisional_Offices_fk0` FOREIGN KEY (`zone_id`) REFERENCES `Zone_List` (`zone_id`),
  ADD CONSTRAINT `Divisional_Offices_fk1` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Division_List`
--
ALTER TABLE `Division_List`
  ADD CONSTRAINT `Division_List_fk0` FOREIGN KEY (`zone_id`) REFERENCES `Zone_List` (`zone_id`);

--
-- Constraints for table `General_Service`
--
ALTER TABLE `General_Service`
  ADD CONSTRAINT `General_Service_fk0` FOREIGN KEY (`NIC`) REFERENCES `Personal_Details` (`NIC`),
  ADD CONSTRAINT `General_Service_fk1` FOREIGN KEY (`subject`) REFERENCES `Sleas_Subject` (`ID`);

--
-- Constraints for table `Institute`
--
ALTER TABLE `Institute`
  ADD CONSTRAINT `Institute_fk0` FOREIGN KEY (`div_id`) REFERENCES `Division_List` (`div_id`),
  ADD CONSTRAINT `Institute_fk1` FOREIGN KEY (`workplace_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Main_Office_Branches`
--
ALTER TABLE `Main_Office_Branches`
  ADD CONSTRAINT `Main_Office_Branches_fk0` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Main_Office_Divisions`
--
ALTER TABLE `Main_Office_Divisions`
  ADD CONSTRAINT `Main_Office_Divisions_fk0` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Performing_Permanent`
--
ALTER TABLE `Performing_Permanent`
  ADD CONSTRAINT `Performing_Permanent_fk0` FOREIGN KEY (`service_ID`) REFERENCES `Service` (`ID`),
  ADD CONSTRAINT `Performing_Permanent_fk1` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`),
  ADD CONSTRAINT `Performing_Permanent_fk2` FOREIGN KEY (`work_branch_id`) REFERENCES `Main_Office_Branches` (`ID`),
  ADD CONSTRAINT `Performing_Permanent_fk3` FOREIGN KEY (`work_division_id`) REFERENCES `Main_Office_Divisions` (`ID`);

--
-- Constraints for table `Province_Offices`
--
ALTER TABLE `Province_Offices`
  ADD CONSTRAINT `Province_Offices_fk0` FOREIGN KEY (`province_id`) REFERENCES `Province_List` (`province_id`),
  ADD CONSTRAINT `Province_Offices_fk1` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Releasement`
--
ALTER TABLE `Releasement`
  ADD CONSTRAINT `Releasement_fk0` FOREIGN KEY (`service_id`) REFERENCES `Service` (`ID`),
  ADD CONSTRAINT `Releasement_fk1` FOREIGN KEY (`rel_type_id`) REFERENCES `Releasement_Type` (`ID`),
  ADD CONSTRAINT `Releasement_fk2` FOREIGN KEY (`rel_place_id`) REFERENCES `Releasement_Place` (`ID`);

--
-- Constraints for table `Releasement_Place`
--
ALTER TABLE `Releasement_Place`
  ADD CONSTRAINT `Releasement_Place_fk0` FOREIGN KEY (`rel_type_id`) REFERENCES `Releasement_Type` (`ID`);

--
-- Constraints for table `Service`
--
ALTER TABLE `Service`
  ADD CONSTRAINT `Service_fk0` FOREIGN KEY (`NIC`) REFERENCES `Personal_Details` (`NIC`),
  ADD CONSTRAINT `Service_fk1` FOREIGN KEY (`service_mode`) REFERENCES `Service_Mode` (`ID`),
  ADD CONSTRAINT `Service_fk2` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`),
  ADD CONSTRAINT `Service_fk3` FOREIGN KEY (`work_branch_id`) REFERENCES `Main_Office_Branches` (`ID`),
  ADD CONSTRAINT `Service_fk4` FOREIGN KEY (`designation_id`) REFERENCES `Designation` (`ID`),
  ADD CONSTRAINT `Service_fk5` FOREIGN KEY (`work_division_id`) REFERENCES `Main_Office_Divisions` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_fk0` FOREIGN KEY (`workplace_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Zonal_Offices`
--
ALTER TABLE `Zonal_Offices`
  ADD CONSTRAINT `Zonal_Offices_fk0` FOREIGN KEY (`dist_id`) REFERENCES `District_List` (`dist_id`),
  ADD CONSTRAINT `Zonal_Offices_fk1` FOREIGN KEY (`work_place_id`) REFERENCES `Work_Place` (`ID`);

--
-- Constraints for table `Zone_List`
--
ALTER TABLE `Zone_List`
  ADD CONSTRAINT `Zone_List_fk0` FOREIGN KEY (`dist_id`) REFERENCES `District_List` (`dist_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
