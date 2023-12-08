-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2023 at 06:56 PM
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
-- Database: `tangent_test`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`id`, `name`) VALUES
(1, 'Adam'),
(2, 'Mali'),
(3, 'Josh'),
(4, 'Mosh'),
(5, 'Adam2'),
(6, 'Adam3'),
(7, 'Adam4'),
(8, 'Adam5'),
(9, 'Adam6'),
(10, 'Adam7'),
(11, 'Adam8'),
(12, 'Adam9'),
(13, 'Adam10'),
(14, 'Adam11'),
(15, 'Adam12'),
(16, 'Adam13'),
(17, 'Adam14'),
(18, 'Adam15'),
(19, 'Adam16'),
(20, 'Adam17'),
(21, 'Adam18'),
(22, 'Adam19'),
(23, 'Adam20'),
(24, 'Adam21'),
(25, 'Adam22'),
(26, 'Adam23'),
(27, 'Adam24'),
(28, 'Adam25'),
(29, 'Adam26'),
(30, 'Adam27'),
(31, 'Adam28'),
(32, 'Adam29'),
(33, 'Adam30'),
(34, 'Adam31'),
(35, 'Adam32'),
(36, 'Adam33'),
(37, 'Adam34'),
(38, 'Adam35'),
(39, 'Adam36'),
(40, 'Adam37'),
(41, 'Adam38'),
(42, 'Adam39'),
(43, 'Adam40'),
(44, 'Adam41'),
(45, 'Adam42'),
(46, 'Adam43'),
(47, 'Adam44'),
(48, 'Adam45'),
(49, 'Adam46'),
(50, 'Adam47'),
(51, 'Adam48'),
(52, 'Adam49'),
(53, 'Adam50');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `customer_id`, `date`) VALUES
(1, 1, '2023-11-21'),
(2, 5, '2023-11-22'),
(3, 20, '2023-11-23'),
(4, 18, '2023-11-28'),
(5, 36, '2023-11-26'),
(6, 28, '2023-11-22'),
(7, 7, '2023-11-15'),
(8, 30, '2023-11-16'),
(9, 40, '2023-11-29'),
(10, 43, '2023-11-05'),
(11, 41, '2023-11-09'),
(12, 53, '2023-11-03'),
(13, 48, '2023-11-05'),
(14, 2, '2023-11-06'),
(15, 6, '2023-11-28'),
(16, 1, '2023-11-06'),
(17, 32, '2023-11-09'),
(18, 43, '2023-11-01'),
(19, 22, '2023-11-25'),
(20, 33, '2023-11-04'),
(21, 20, '2023-11-16'),
(22, 21, '2023-11-15'),
(23, 48, '2023-11-05'),
(24, 41, '2023-11-30'),
(25, 17, '2023-11-20'),
(26, 11, '2023-11-05'),
(27, 26, '2023-11-21'),
(28, 18, '2023-11-16'),
(29, 13, '2023-11-30'),
(30, 38, '2023-11-21'),
(31, 30, '2023-11-19'),
(32, 41, '2023-11-09'),
(33, 14, '2023-11-18'),
(34, 22, '2023-11-09'),
(35, 45, '2023-11-29'),
(36, 41, '2023-11-17'),
(37, 30, '2023-11-11'),
(38, 17, '2023-11-14'),
(39, 22, '2023-11-24'),
(40, 39, '2023-11-26'),
(41, 50, '2023-11-05'),
(42, 21, '2023-11-18'),
(43, 16, '2023-11-06'),
(44, 22, '2023-11-15'),
(45, 1, '2023-11-16'),
(46, 51, '2023-11-21'),
(47, 20, '2023-11-29'),
(48, 23, '2023-11-27'),
(49, 44, '2023-11-26'),
(50, 49, '2023-11-12'),
(51, 11, '2023-11-05'),
(52, 42, '2023-11-20'),
(53, 52, '2023-11-23'),
(54, 29, '2023-11-26'),
(55, 13, '2023-11-22'),
(56, 37, '2023-11-18'),
(57, 6, '2023-11-04'),
(58, 3, '2023-11-02'),
(59, 31, '2023-11-01'),
(60, 31, '2023-11-02'),
(61, 18, '2023-11-25'),
(62, 12, '2023-11-03'),
(63, 37, '2023-11-17'),
(64, 31, '2023-11-18'),
(65, 23, '2023-11-17'),
(66, 29, '2023-11-07'),
(67, 5, '2023-11-11'),
(68, 33, '2023-11-24'),
(69, 40, '2023-11-04'),
(70, 12, '2023-11-06'),
(71, 51, '2023-11-05'),
(72, 36, '2023-11-15'),
(73, 41, '2023-11-28'),
(74, 37, '2023-11-23'),
(75, 33, '2023-11-24'),
(76, 28, '2023-11-23'),
(77, 23, '2023-11-25'),
(78, 12, '2023-11-09'),
(79, 1, '2023-11-11'),
(80, 26, '2023-11-27'),
(81, 30, '2023-11-22'),
(82, 28, '2023-11-29'),
(83, 18, '2023-11-05'),
(84, 48, '2023-11-15'),
(85, 47, '2023-11-20'),
(86, 15, '2023-11-05'),
(87, 5, '2023-11-27'),
(88, 20, '2023-11-22'),
(89, 13, '2023-11-27'),
(90, 11, '2023-11-24'),
(91, 45, '2023-11-30'),
(92, 21, '2023-11-24'),
(93, 46, '2023-11-10'),
(94, 10, '2023-11-24'),
(95, 20, '2023-11-30'),
(96, 3, '2023-11-13'),
(97, 22, '2023-11-03'),
(98, 2, '2023-11-08'),
(99, 7, '2023-11-18'),
(100, 12, '2023-11-08'),
(101, 35, '2023-11-10'),
(102, 21, '2023-11-17'),
(103, 20, '2023-11-14'),
(104, 45, '2023-11-11'),
(105, 27, '2023-11-23'),
(106, 19, '2023-11-03'),
(107, 32, '2023-11-03'),
(108, 3, '2023-11-29'),
(109, 28, '2023-11-19'),
(110, 7, '2023-11-21'),
(111, 7, '2023-11-11'),
(112, 24, '2023-11-23'),
(113, 48, '2023-11-11'),
(114, 16, '2023-11-08'),
(115, 51, '2023-11-17'),
(116, 4, '2023-11-22'),
(117, 43, '2023-11-05'),
(118, 2, '2023-11-07'),
(119, 8, '2023-11-16'),
(120, 5, '2023-11-08'),
(121, 45, '2023-11-05'),
(122, 40, '2023-11-10'),
(123, 41, '2023-11-18'),
(124, 13, '2023-11-21'),
(125, 50, '2023-11-19'),
(126, 39, '2023-11-16'),
(127, 8, '2023-11-13'),
(128, 47, '2023-11-12'),
(129, 5, '2023-11-11'),
(130, 23, '2023-11-11'),
(131, 50, '2023-11-06'),
(132, 32, '2023-11-17'),
(133, 16, '2023-11-13'),
(134, 5, '2023-11-03'),
(135, 51, '2023-11-06'),
(136, 4, '2023-11-20'),
(137, 4, '2023-11-06'),
(138, 32, '2023-11-24'),
(139, 39, '2023-11-25'),
(140, 13, '2023-11-27'),
(141, 2, '2023-11-26'),
(142, 27, '2023-11-29'),
(143, 46, '2023-11-30'),
(144, 32, '2023-11-15'),
(145, 41, '2023-11-18'),
(146, 42, '2023-11-16'),
(147, 36, '2023-11-09'),
(148, 27, '2023-11-27'),
(149, 40, '2023-11-17'),
(150, 26, '2023-11-27'),
(151, 26, '2023-11-10'),
(152, 23, '2023-11-10'),
(153, 36, '2023-11-28'),
(154, 19, '2023-11-23'),
(155, 40, '2023-11-09'),
(156, 8, '2023-11-14'),
(157, 5, '2023-11-03'),
(158, 4, '2023-11-04'),
(159, 43, '2023-11-28'),
(160, 14, '2023-11-03'),
(161, 37, '2023-11-08'),
(162, 27, '2023-11-25'),
(163, 16, '2023-11-20'),
(164, 14, '2023-11-11'),
(165, 9, '2023-11-18'),
(166, 33, '2023-11-22'),
(167, 20, '2023-11-23'),
(168, 25, '2023-11-27'),
(169, 42, '2023-11-23'),
(170, 36, '2023-11-29'),
(171, 39, '2023-11-21'),
(172, 20, '2023-11-24'),
(173, 33, '2023-11-15'),
(174, 48, '2023-11-06'),
(175, 15, '2023-11-13'),
(176, 16, '2023-11-04'),
(177, 40, '2023-11-15'),
(178, 31, '2023-11-22'),
(179, 22, '2023-11-10'),
(180, 40, '2023-11-08'),
(181, 48, '2023-11-10'),
(182, 51, '2023-11-23'),
(183, 3, '2023-11-07'),
(184, 4, '2023-11-02'),
(185, 8, '2023-11-16'),
(186, 17, '2023-11-23'),
(187, 6, '2023-11-04'),
(188, 8, '2023-11-30'),
(189, 4, '2023-11-06'),
(190, 15, '2023-11-08'),
(191, 18, '2023-11-15'),
(192, 44, '2023-11-19'),
(193, 4, '2023-11-03'),
(194, 12, '2023-11-12'),
(195, 12, '2023-11-12'),
(196, 32, '2023-11-05'),
(197, 20, '2023-11-16'),
(198, 38, '2023-11-12'),
(199, 51, '2023-11-19'),
(200, 37, '2023-11-18'),
(201, 5, '2023-11-08');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `order_id`, `product_id`) VALUES
(1, 1, 54),
(2, 44, 61),
(3, 27, 89),
(4, 25, 59),
(5, 28, 52),
(6, 48, 97),
(7, 38, 60),
(8, 50, 90),
(9, 30, 55),
(10, 41, 75),
(11, 49, 84),
(12, 38, 77),
(13, 34, 64),
(14, 20, 93),
(15, 40, 97),
(16, 19, 69),
(17, 16, 66),
(18, 8, 82),
(19, 12, 78),
(20, 28, 94),
(21, 45, 74),
(22, 14, 59),
(23, 6, 86),
(24, 34, 99),
(25, 33, 79),
(26, 15, 54),
(27, 3, 75),
(28, 24, 70),
(29, 47, 72),
(30, 42, 64),
(31, 5, 52),
(32, 13, 92),
(33, 26, 55),
(34, 36, 57),
(35, 6, 80),
(36, 16, 82),
(37, 22, 101),
(38, 8, 68),
(39, 28, 93),
(40, 18, 58),
(41, 24, 87),
(42, 41, 62),
(43, 45, 58),
(44, 36, 95),
(45, 31, 96),
(46, 26, 92),
(47, 12, 99),
(48, 45, 54),
(49, 4, 88),
(50, 35, 68),
(51, 1, 54),
(52, 8, 76),
(53, 161, 77),
(54, 130, 93),
(55, 44, 66),
(56, 91, 70),
(57, 69, 96),
(58, 95, 99),
(59, 9, 98),
(60, 145, 54),
(61, 46, 78),
(62, 16, 62),
(63, 37, 62),
(64, 128, 84),
(65, 138, 101),
(66, 148, 79),
(67, 182, 77),
(68, 16, 75),
(69, 71, 91),
(70, 121, 89),
(71, 38, 65),
(72, 26, 88),
(73, 6, 60),
(74, 138, 55),
(75, 148, 89),
(76, 32, 86),
(77, 182, 71),
(78, 16, 53),
(79, 45, 71),
(80, 126, 100),
(81, 11, 96),
(82, 200, 95),
(83, 19, 75),
(84, 63, 94),
(85, 32, 93),
(86, 34, 72),
(87, 92, 76),
(88, 150, 73),
(89, 130, 77),
(90, 165, 61),
(91, 2, 54),
(92, 120, 70),
(93, 119, 59),
(94, 63, 74),
(95, 129, 60),
(96, 184, 76),
(97, 151, 77),
(98, 96, 65),
(99, 189, 82),
(100, 9, 67),
(101, 132, 59),
(102, 162, 91),
(103, 104, 83),
(104, 103, 65),
(105, 63, 84),
(106, 136, 53),
(107, 149, 89),
(108, 151, 83),
(109, 21, 83),
(110, 185, 88),
(111, 106, 86),
(112, 98, 100),
(113, 92, 74),
(114, 33, 61),
(115, 5, 59),
(116, 169, 94),
(117, 23, 74),
(118, 41, 61),
(119, 178, 65),
(120, 167, 69),
(121, 23, 89),
(122, 176, 53),
(123, 52, 93),
(124, 167, 68),
(125, 19, 72),
(126, 4, 96),
(127, 57, 76),
(128, 45, 59),
(129, 23, 75),
(130, 130, 56),
(131, 57, 74),
(132, 159, 76),
(133, 164, 73),
(134, 113, 87),
(135, 117, 60),
(136, 44, 81),
(137, 142, 94),
(138, 69, 99),
(139, 134, 63),
(140, 193, 86),
(141, 20, 87),
(142, 122, 66),
(143, 67, 58),
(144, 143, 73),
(145, 47, 82),
(146, 3, 58),
(147, 14, 55),
(148, 130, 78),
(149, 37, 97),
(150, 18, 96),
(151, 185, 75),
(152, 1, 54),
(153, 79, 98),
(154, 118, 93),
(155, 141, 83),
(156, 58, 54),
(157, 108, 82),
(158, 183, 71),
(159, 116, 58),
(160, 137, 59),
(161, 158, 65),
(162, 87, 70),
(163, 157, 99),
(164, 201, 58),
(165, 187, 55),
(166, 7, 56),
(167, 99, 90),
(168, 110, 99),
(169, 111, 77),
(170, 127, 58),
(171, 156, 65),
(172, 188, 99),
(173, 94, 85),
(174, 51, 54),
(175, 90, 97),
(176, 62, 62),
(177, 70, 100),
(178, 78, 70),
(179, 100, 61),
(180, 194, 58),
(181, 195, 63),
(182, 29, 64),
(183, 55, 84),
(184, 89, 92),
(185, 124, 97),
(186, 140, 95),
(187, 160, 86),
(188, 86, 77),
(189, 175, 62),
(190, 190, 97),
(191, 43, 78),
(192, 114, 62),
(193, 133, 76),
(194, 163, 86),
(195, 186, 93),
(196, 61, 70),
(197, 83, 67),
(198, 191, 81),
(199, 154, 63),
(200, 88, 55),
(201, 172, 59),
(202, 197, 59),
(203, 102, 95),
(204, 39, 100),
(205, 97, 64),
(206, 179, 68),
(207, 65, 64),
(208, 77, 97),
(209, 152, 68),
(210, 112, 77),
(211, 168, 80),
(212, 80, 62),
(213, 105, 95),
(214, 76, 72),
(215, 82, 76),
(216, 109, 65),
(217, 54, 59),
(218, 66, 56),
(219, 81, 84),
(220, 59, 79),
(221, 60, 59),
(222, 64, 100),
(223, 17, 75),
(224, 107, 53),
(225, 144, 100),
(226, 196, 71),
(227, 68, 89),
(228, 75, 79),
(229, 166, 74),
(230, 173, 60),
(231, 101, 53),
(232, 72, 98),
(233, 147, 69),
(234, 153, 66),
(235, 170, 66),
(236, 56, 82),
(237, 74, 82),
(238, 198, 53),
(239, 139, 89),
(240, 171, 69),
(241, 155, 87),
(242, 177, 69),
(243, 180, 66),
(244, 73, 73),
(245, 123, 65),
(246, 146, 100),
(247, 10, 67),
(248, 192, 59),
(249, 93, 83),
(250, 85, 58),
(251, 84, 87),
(252, 174, 73),
(253, 181, 60),
(254, 125, 92),
(255, 131, 89),
(256, 115, 84),
(257, 135, 55),
(258, 199, 65),
(259, 53, 70);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `name`, `price`) VALUES
(52, 'P1', 5.10),
(53, 'P2', 5.26),
(54, 'P3', 3.59),
(55, 'P4', 6.67),
(56, 'P5', 9.48),
(57, 'P6', 1.48),
(58, 'P7', 2.79),
(59, 'P8', 7.87),
(60, 'P9', 7.15),
(61, 'P10', 4.61),
(62, 'P11', 4.35),
(63, 'P12', 1.35),
(64, 'P13', 7.98),
(65, 'P14', 3.28),
(66, 'P15', 2.59),
(67, 'P16', 2.73),
(68, 'P17', 7.55),
(69, 'P18', 1.17),
(70, 'P19', 3.83),
(71, 'P20', 5.86),
(72, 'P21', 6.38),
(73, 'P22', 3.99),
(74, 'P23', 2.89),
(75, 'P24', 1.63),
(76, 'P25', 8.17),
(77, 'P26', 5.63),
(78, 'P27', 7.24),
(79, 'P28', 1.78),
(80, 'P29', 1.12),
(81, 'P30', 7.53),
(82, 'P31', 8.28),
(83, 'P32', 6.86),
(84, 'P33', 9.27),
(85, 'P34', 6.18),
(86, 'P35', 5.84),
(87, 'P36', 8.81),
(88, 'P37', 6.54),
(89, 'P38', 7.59),
(90, 'P39', 1.61),
(91, 'P40', 8.59),
(92, 'P41', 5.55),
(93, 'P42', 3.88),
(94, 'P43', 2.23),
(95, 'P44', 1.36),
(96, 'P45', 7.66),
(97, 'P46', 8.65),
(98, 'P47', 4.43),
(99, 'P48', 4.89),
(100, 'P49', 2.76),
(101, 'P50', 9.31);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=260;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;