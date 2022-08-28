-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 28, 2022 at 07:23 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lottery`
--

-- --------------------------------------------------------

--
-- Table structure for table `batches`
--

CREATE TABLE `batches` (
  `batch_id` int(11) NOT NULL,
  `start_date` varchar(10) NOT NULL,
  `end_date` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `batches`
--

INSERT INTO `batches` (`batch_id`, `start_date`, `end_date`) VALUES
(1044, '2/6/2022', '6/7/2022'),
(1045, '7/7/2022', '3/8/2022'),
(1046, '4/8/2022', '7/9/2022');

-- --------------------------------------------------------

--
-- Table structure for table `lotteries`
--

CREATE TABLE `lotteries` (
  `lottery_id` int(11) NOT NULL,
  `lottery_no` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `customer_name` varchar(255) DEFAULT NULL,
  `customer_ph_no` int(11) DEFAULT NULL,
  `payment_id` int(11) DEFAULT NULL,
  `paid` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lotteries`
--

INSERT INTO `lotteries` (`lottery_id`, `lottery_no`, `batch_id`, `user_id`, `customer_name`, `customer_ph_no`, `payment_id`, `paid`) VALUES
(1, 1037249, 1045, 1, 'U Htun U', NULL, NULL, 1),
(2, 1142239, 1045, 1, 'U Htun U', NULL, NULL, 1),
(3, 1175398, 1045, 1, 'Gu Glee', NULL, NULL, 1),
(4, 1765113, 1045, 1, 'Saw Say', NULL, NULL, 1),
(5, 1866265, 1045, 1, 'Available', NULL, NULL, 1),
(6, 1999167, 1045, 1, 'Available', NULL, NULL, 1),
(7, 1848190, 1045, 1, 'Wai Linn', NULL, NULL, 1),
(8, 2014481, 1045, 1, 'Saw Htoo Lo', NULL, NULL, 1),
(9, 2084235, 1045, 1, 'U Aung Zaw Myo', NULL, NULL, 1),
(10, 2171920, 1045, 1, 'Ma Moreene', NULL, NULL, 1),
(11, 2397373, 1045, 1, 'Ma Sheela', NULL, NULL, 1),
(12, 2469463, 1045, 1, 'Wai Linn', NULL, NULL, 1),
(13, 2557384, 1045, 1, 'Ma Sheela', NULL, NULL, 1),
(14, 3437796, 1045, 1, 'Yan Lin Kyaw', NULL, NULL, 1),
(15, 3367411, 1045, 1, 'Available', NULL, NULL, 1),
(16, 3812346, 1045, 1, 'Say Lah Pwe', NULL, NULL, 1),
(17, 4166883, 1045, 1, 'Saw Htoo Lo', NULL, NULL, 1),
(18, 4483614, 1045, 1, 'Available', NULL, NULL, 1),
(19, 4464326, 1045, 1, 'Available', NULL, NULL, 1),
(20, 4403145, 1045, 1, 'Wai Linn', NULL, NULL, 1),
(21, 3196615, 1045, 1, 'Saw Htoo Lo', NULL, NULL, 1),
(22, 2711505, 1045, 1, 'Available', NULL, NULL, 1),
(23, 1443622, 1046, 1, 'Koe Ko', NULL, NULL, 1),
(24, 2006812, 1046, 1, 'Arnan', NULL, NULL, 1),
(25, 2041739, 1046, 1, 'Ko Aung', NULL, NULL, 1),
(26, 3072178, 1046, 1, 'Ko Say', NULL, NULL, 1),
(27, 3445981, 1046, 1, 'Koe Ko', NULL, NULL, 1),
(28, 4023398, 1046, 1, 'Ko Say', NULL, NULL, 1),
(29, 4090085, 1046, 1, 'Ko Aung Zaw Myo', NULL, NULL, 1),
(30, 4109205, 1046, 1, 'Ko Aung Zaw Myo', NULL, NULL, 1),
(31, 4465317, 1046, 1, 'Aunty War', NULL, NULL, 1),
(32, 4485834, 1046, 1, 'Ku Glee', NULL, NULL, 1),
(33, 1576985, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(34, 1101008, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(35, 1806292, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(36, 1878074, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(37, 2066142, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(38, 2953711, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(39, 2823497, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(40, 2206631, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(41, 2196093, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(42, 2889685, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(43, 3368850, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(44, 3004566, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(45, 3464517, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(46, 3630489, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(47, 3590852, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(48, 3489389, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(49, 3899542, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(50, 4306683, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(51, 4363361, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(52, 4286840, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(53, 1365698, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(54, 1577586, 1046, 1, 'Ko Say', NULL, NULL, 1),
(55, 1875014, 1046, 1, 'May Than Lwin', NULL, NULL, 1),
(56, 2223794, 1046, 1, 'Available', NULL, NULL, 1),
(57, 3548258, 1046, 1, 'Available', NULL, NULL, 1),
(58, 3213231, 1046, 1, 'Ma Pu Tu', NULL, NULL, 1),
(59, 4468565, 1046, 1, 'U Htun Myint Kyaw', NULL, NULL, 1),
(60, 4084002, 1046, 1, 'Available', NULL, NULL, 1),
(61, 4201878, 1046, 1, 'Ko Bay Da', NULL, NULL, 0),
(62, 4170023, 1046, 1, 'Ma Arrlay', NULL, NULL, 1),
(63, 4499156, 1045, 1, 'John Michael', NULL, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `lottery_settings`
--

CREATE TABLE `lottery_settings` (
  `setting_id` int(11) NOT NULL,
  `setting_name` varchar(255) NOT NULL,
  `setting_value` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lottery_settings`
--

INSERT INTO `lottery_settings` (`setting_id`, `setting_name`, `setting_value`) VALUES
(1, 'Lottery Price', '1500 Kyats');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(11) NOT NULL,
  `payment_method` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_id`, `payment_method`) VALUES
(1, 'Wave Pay'),
(2, 'K Pay'),
(3, 'Cash');

-- --------------------------------------------------------

--
-- Table structure for table `privileges`
--

CREATE TABLE `privileges` (
  `privilege_id` int(11) NOT NULL,
  `privilege_level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `privileges`
--

INSERT INTO `privileges` (`privilege_id`, `privilege_level`) VALUES
(2, 'Admin'),
(3, 'Branch Admin'),
(1, 'Super Admin'),
(4, 'User');

-- --------------------------------------------------------

--
-- Table structure for table `prizes`
--

CREATE TABLE `prizes` (
  `prize_id` int(11) NOT NULL,
  `prize_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `prizes`
--

INSERT INTO `prizes` (`prize_id`, `prize_name`) VALUES
(1, 'First Prize'),
(2, 'Second Prize'),
(3, 'Third Prize'),
(4, 'Jackpot Prizes'),
(5, 'Lucky Prizes'),
(6, 'Gift Prizes'),
(7, 'Consolation Prizes'),
(8, 'Participation Prizes'),
(9, '2D Delight Prizes');

-- --------------------------------------------------------

--
-- Table structure for table `results`
--

CREATE TABLE `results` (
  `result_id` int(11) NOT NULL,
  `batch_id` int(11) NOT NULL,
  `prize_id` int(11) NOT NULL,
  `result_lottery_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `results`
--

INSERT INTO `results` (`result_id`, `batch_id`, `prize_id`, `result_lottery_no`) VALUES
(4, 1044, 1, 2587287),
(5, 1044, 2, 2326208),
(6, 1044, 3, 2267862),
(7, 1044, 4, 1052694),
(8, 1044, 4, 1149820),
(9, 1044, 4, 1445829),
(10, 1044, 4, 1460600),
(11, 1044, 4, 1543174),
(12, 1044, 4, 1684933),
(13, 1044, 4, 3015924),
(14, 1044, 4, 3126430),
(15, 1044, 4, 3256537),
(16, 1044, 4, 3763073),
(17, 1044, 5, 1066626),
(18, 1044, 5, 1086134),
(19, 1044, 5, 1196032),
(20, 1044, 5, 2398612),
(21, 1044, 5, 2513965),
(22, 1044, 5, 2910969),
(23, 1044, 5, 3245022),
(24, 1044, 5, 3610916),
(25, 1044, 5, 3829575),
(26, 1044, 5, 4000576),
(27, 1044, 6, 1098366),
(28, 1044, 6, 1134663),
(29, 1044, 6, 1154325),
(30, 1044, 6, 1411408),
(31, 1044, 6, 1465996),
(32, 1044, 6, 1567747),
(33, 1044, 6, 1673606),
(34, 1044, 6, 1756823),
(35, 1044, 6, 1873925),
(36, 1044, 6, 1900395),
(37, 1044, 6, 1904167),
(38, 1044, 6, 1945736),
(39, 1044, 6, 1998817),
(40, 1044, 6, 2082419),
(41, 1044, 6, 2145504),
(42, 1044, 6, 2182955),
(43, 1044, 6, 2191093),
(44, 1044, 6, 2647579),
(45, 1044, 6, 2900082),
(46, 1044, 6, 2907273),
(47, 1044, 6, 2956597),
(48, 1044, 6, 3097845),
(49, 1044, 6, 3192555),
(50, 1044, 6, 3404414),
(51, 1044, 6, 3409913),
(52, 1044, 6, 3470441),
(53, 1044, 6, 3565075),
(54, 1044, 6, 3644247),
(55, 1044, 6, 3927855),
(56, 1044, 6, 4034945),
(57, 1044, 7, 1088616),
(58, 1044, 7, 1119120),
(59, 1044, 7, 1162960),
(60, 1044, 7, 1195988),
(61, 1044, 7, 1629166),
(62, 1044, 7, 1785925),
(63, 1044, 7, 1881512),
(64, 1044, 7, 1894426),
(65, 1044, 7, 1996244),
(66, 1044, 7, 2049289),
(67, 1044, 7, 2112179),
(68, 1044, 7, 2201160),
(69, 1044, 7, 2232140),
(70, 1044, 7, 2295178),
(71, 1044, 7, 2311944),
(72, 1044, 7, 2468876),
(73, 1044, 7, 2539181),
(74, 1044, 7, 2542162),
(75, 1044, 7, 2589207),
(76, 1044, 7, 2691448),
(77, 1044, 7, 3073816),
(78, 1044, 7, 3182114),
(79, 1044, 7, 3208311),
(80, 1044, 7, 3239581),
(81, 1044, 7, 3560392),
(82, 1044, 7, 3816295),
(83, 1044, 7, 3820891),
(84, 1044, 7, 4128459),
(85, 1044, 7, 4136859),
(86, 1044, 7, 4331606),
(87, 1044, 8, 1097282),
(88, 1044, 8, 1145045),
(89, 1044, 8, 1162677),
(90, 1044, 8, 1234397),
(91, 1044, 8, 1340531),
(92, 1044, 8, 1385090),
(93, 1044, 8, 1393237),
(94, 1044, 8, 1630814),
(95, 1044, 8, 1704327),
(96, 1044, 8, 1720031),
(97, 1044, 8, 1755560),
(98, 1044, 8, 1895190),
(99, 1044, 8, 1969474),
(100, 1044, 8, 1988095),
(101, 1044, 8, 2126713),
(102, 1044, 8, 2186864),
(103, 1044, 8, 2377130),
(104, 1044, 8, 2414451),
(105, 1044, 8, 2442015),
(106, 1044, 8, 2489250),
(107, 1044, 8, 2499429),
(108, 1044, 8, 2547206),
(109, 1044, 8, 2573115),
(110, 1044, 8, 2960741),
(111, 1044, 8, 3035426),
(112, 1044, 8, 3152829),
(113, 1044, 8, 3176790),
(114, 1044, 8, 3177735),
(115, 1044, 8, 3181021),
(116, 1044, 8, 3189221),
(117, 1044, 8, 3193319),
(118, 1044, 8, 3298598),
(119, 1044, 8, 3493368),
(120, 1044, 8, 3600126),
(121, 1044, 8, 3672899),
(122, 1044, 8, 3697611),
(123, 1044, 8, 3706446),
(124, 1044, 8, 3783878),
(125, 1044, 8, 3863803),
(126, 1044, 8, 3903326),
(127, 1044, 8, 3942001),
(128, 1044, 8, 3944616),
(129, 1044, 8, 3953296),
(130, 1044, 8, 3955042),
(131, 1044, 8, 3992152),
(132, 1044, 8, 4070837),
(133, 1044, 8, 4073137),
(134, 1044, 8, 4115640),
(135, 1044, 8, 4179159),
(136, 1044, 8, 4299259),
(137, 1044, 9, 5),
(138, 1044, 9, 9),
(139, 1044, 9, 10),
(140, 1044, 9, 17),
(141, 1044, 9, 40),
(142, 1044, 9, 40),
(143, 1044, 9, 41),
(144, 1044, 9, 46),
(145, 1044, 9, 78),
(146, 1045, 1, 3142362),
(147, 1045, 2, 4314526),
(148, 1045, 3, 3973766),
(149, 1045, 4, 1147495),
(150, 1045, 4, 1170307),
(151, 1045, 4, 1388935),
(152, 1045, 4, 1513288),
(153, 1045, 4, 1683451),
(154, 1045, 4, 1820829),
(155, 1045, 4, 2756353),
(156, 1045, 4, 2807671),
(157, 1045, 4, 3128616),
(158, 1045, 4, 3379063),
(159, 1045, 5, 1414711),
(160, 1045, 5, 1875065),
(161, 1045, 5, 2417994),
(162, 1045, 5, 2663920),
(163, 1045, 5, 2860518),
(164, 1045, 5, 2971678),
(165, 1045, 5, 3543982),
(166, 1045, 5, 3674085),
(167, 1045, 5, 3785487),
(168, 1045, 5, 4390006),
(169, 1045, 6, 1011585),
(170, 1045, 6, 1220155),
(171, 1045, 6, 1241536),
(172, 1045, 6, 1282084),
(173, 1045, 6, 1441774),
(174, 1045, 6, 1715149),
(175, 1045, 6, 1784934),
(176, 1045, 6, 2107470),
(177, 1045, 6, 2112161),
(178, 1045, 6, 2150388),
(179, 1045, 6, 2155171),
(180, 1045, 6, 2290663),
(181, 1045, 6, 2351557),
(182, 1045, 6, 2369748),
(183, 1045, 6, 2393449),
(184, 1045, 6, 2468298),
(185, 1045, 6, 2669243),
(186, 1045, 6, 2771104),
(187, 1045, 6, 3001928),
(188, 1045, 6, 3165757),
(189, 1045, 6, 3627653),
(190, 1045, 6, 3698603),
(191, 1045, 6, 3783434),
(192, 1045, 6, 3824797),
(193, 1045, 6, 3897743),
(194, 1045, 6, 4084260),
(195, 1045, 6, 4205056),
(196, 1045, 6, 4255734),
(197, 1045, 6, 4342712),
(198, 1045, 6, 4497859),
(199, 1045, 7, 1143779),
(200, 1045, 7, 1268707),
(201, 1045, 7, 1339214),
(202, 1045, 7, 1423176),
(203, 1045, 7, 1564940),
(204, 1045, 7, 1657774),
(205, 1045, 7, 1792327),
(206, 1045, 7, 1806819),
(207, 1045, 7, 2193844),
(208, 1045, 7, 2196327),
(209, 1045, 7, 2199404),
(210, 1045, 7, 2296470),
(211, 1045, 7, 2463294),
(212, 1045, 7, 2478600),
(213, 1045, 7, 2843617),
(214, 1045, 7, 2988455),
(215, 1045, 7, 3086867),
(216, 1045, 7, 3238992),
(217, 1045, 7, 3364500),
(218, 1045, 7, 3622747),
(219, 1045, 7, 3774493),
(220, 1045, 7, 3861621),
(221, 1045, 7, 3932371),
(222, 1045, 7, 3973394),
(223, 1045, 7, 4075103),
(224, 1045, 7, 4101449),
(225, 1045, 7, 4215488),
(226, 1045, 7, 4282312),
(227, 1045, 7, 4304653),
(228, 1045, 7, 4406520),
(229, 1045, 8, 1003084),
(230, 1045, 8, 1091831),
(231, 1045, 8, 1125703),
(232, 1045, 8, 1163356),
(233, 1045, 8, 1172241),
(234, 1045, 8, 1303395),
(235, 1045, 8, 1396989),
(236, 1045, 8, 1420372),
(237, 1045, 8, 1425166),
(238, 1045, 8, 1473008),
(239, 1045, 8, 1595213),
(240, 1045, 8, 1730858),
(241, 1045, 8, 1771842),
(242, 1045, 8, 1811346),
(243, 1045, 8, 1859028),
(244, 1045, 8, 1953744),
(245, 1045, 8, 2185857),
(246, 1045, 8, 2238767),
(247, 1045, 8, 2320637),
(248, 1045, 8, 2333132),
(249, 1045, 8, 2534783),
(250, 1045, 8, 2570956),
(251, 1045, 8, 2576351),
(252, 1045, 8, 2602212),
(253, 1045, 8, 2660832),
(254, 1045, 8, 2793473),
(255, 1045, 8, 3023082),
(256, 1045, 8, 3046968),
(257, 1045, 8, 3054079),
(258, 1045, 8, 3143687),
(259, 1045, 8, 3240067),
(260, 1045, 8, 3288304),
(261, 1045, 8, 3337697),
(262, 1045, 8, 3345735),
(263, 1045, 8, 3345905),
(264, 1045, 8, 3451735),
(265, 1045, 8, 3576053),
(266, 1045, 8, 3662100),
(267, 1045, 8, 3665373),
(268, 1045, 8, 3729902),
(269, 1045, 8, 3807987),
(270, 1045, 8, 3834922),
(271, 1045, 8, 3956070),
(272, 1045, 8, 4010719),
(273, 1045, 8, 4054600),
(274, 1045, 8, 4100406),
(275, 1045, 8, 4239494),
(276, 1045, 8, 4274384),
(277, 1045, 8, 4307809),
(278, 1045, 8, 4499156),
(279, 1045, 9, 6),
(280, 1045, 9, 10),
(281, 1045, 9, 13),
(282, 1045, 9, 26),
(283, 1045, 9, 71),
(284, 1045, 9, 84),
(285, 1045, 9, 91),
(286, 1045, 9, 96),
(287, 1045, 9, 98);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `user_email` varchar(255) DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `privilege_id` int(11) NOT NULL,
  `banned` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user_email`, `password`, `privilege_id`, `banned`) VALUES
(1, 'superadmin', 'eugenes11416@gmail.com', '123', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `winners`
--

CREATE TABLE `winners` (
  `winner_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `lottery_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `batches`
--
ALTER TABLE `batches`
  ADD PRIMARY KEY (`batch_id`);

--
-- Indexes for table `lotteries`
--
ALTER TABLE `lotteries`
  ADD PRIMARY KEY (`lottery_id`),
  ADD UNIQUE KEY `lottery_no` (`lottery_no`);

--
-- Indexes for table `lottery_settings`
--
ALTER TABLE `lottery_settings`
  ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `privileges`
--
ALTER TABLE `privileges`
  ADD PRIMARY KEY (`privilege_id`),
  ADD UNIQUE KEY `privilege_level` (`privilege_level`);

--
-- Indexes for table `prizes`
--
ALTER TABLE `prizes`
  ADD PRIMARY KEY (`prize_id`);

--
-- Indexes for table `results`
--
ALTER TABLE `results`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `user_email` (`user_email`);

--
-- Indexes for table `winners`
--
ALTER TABLE `winners`
  ADD PRIMARY KEY (`winner_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `batches`
--
ALTER TABLE `batches`
  MODIFY `batch_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1047;

--
-- AUTO_INCREMENT for table `lotteries`
--
ALTER TABLE `lotteries`
  MODIFY `lottery_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `lottery_settings`
--
ALTER TABLE `lottery_settings`
  MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `privileges`
--
ALTER TABLE `privileges`
  MODIFY `privilege_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `prizes`
--
ALTER TABLE `prizes`
  MODIFY `prize_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `results`
--
ALTER TABLE `results`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=288;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `winners`
--
ALTER TABLE `winners`
  MODIFY `winner_id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
