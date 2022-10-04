-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 23, 2022 at 05:40 PM
-- Server version: 5.7.39-cll-lve
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `progressive_supernet`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'george@progressive.co.ke', '6eea9b7ef19179a06954edd0f6c05ceb');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order`
--

CREATE TABLE `invoice_order` (
  `user_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_receiver_name` varchar(255) NOT NULL,
  `order_receiver_address` varchar(255) NOT NULL,
  `order_total_before_tax` varchar(255) NOT NULL,
  `order_total_tax` varchar(255) NOT NULL,
  `order_tax_per` varchar(255) NOT NULL,
  `order_total_after_tax` varchar(255) NOT NULL,
  `order_amount_paid` varchar(255) NOT NULL,
  `order_total_amount_due` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `note` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_order`
--

INSERT INTO `invoice_order` (`user_id`, `order_id`, `order_receiver_name`, `order_receiver_address`, `order_total_before_tax`, `order_total_tax`, `order_tax_per`, `order_total_after_tax`, `order_amount_paid`, `order_total_amount_due`, `order_date`, `note`) VALUES
(1, 3, 'Demo Company', '225 Demo Address', '198', '0', '0', '198', '198', '0', '2021-07-11 23:30:54', 'demo trial'),
(1, 4, 'Atsupplies', '323 Posum Point Road', '2036', '142.52', '7', '2178.52', '2178.52', '0', '2021-07-12 00:01:07', 'None, demo test!!!'),
(1, 5, 'Assestit Company', '247 Clan Alpine Way', '4116', '288.12', '7', '4404.12', '4404.12', '0', '2021-07-12 00:06:31', 'none at the moment!!'),
(1, 6, 'kimkim', 'george@progressive.co.ke', '9500', '0', '', '9500', '', '9500', '2022-06-23 12:17:30', ''),
(0, 7, 'kimkim', 'juja', '', '', '4', '', '', '', '2022-06-23 10:23:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_order_item`
--

CREATE TABLE `invoice_order_item` (
  `order_id` int(11) NOT NULL,
  `item_code` varchar(255) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `order_item_quantity` varchar(255) NOT NULL,
  `order_item_price` varchar(255) NOT NULL,
  `order_item_final_amount` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `invoice_order_item`
--

INSERT INTO `invoice_order_item` (`order_id`, `item_code`, `item_name`, `order_item_quantity`, `order_item_price`, `order_item_final_amount`) VALUES
(0, '101', 'Item One', '52', '110', '5720'),
(0, '102', 'Item Two', '22', '52', '1144'),
(0, '101', 'Product One', '115', '12', '1380'),
(3, '108', 'Demo Item', '18', '11', '198'),
(4, '205', 'Demo Item One', '52', '11', '572'),
(4, '215', 'Demo Item Two', '25', '25', '625'),
(4, '218', 'Demo Item Three', '21', '10', '210'),
(4, '220', 'Demo Item Four', '55', '8', '440'),
(4, '228', 'Demo Item Five', '9', '21', '189'),
(5, '330', 'Item One Demo', '11', '5', '55'),
(5, '333', 'Item Two Demo', '19', '5', '95'),
(5, '343', 'Item Three Demo', '25', '2', '50'),
(5, '401', 'Item Four Demo', '36', '20', '720'),
(5, '402', 'Item Five Demo', '47', '68', '3196'),
(6, '1', 'ubnt receiver', '1', '6500', '6500'),
(6, '2', 'tenda router', '1', '2000', '2000'),
(6, '3', 'ethernet cable ', '1', '1000', '1000'),
(7, 'tech', 'tech1', '3', '50', '50');

-- --------------------------------------------------------

--
-- Table structure for table `sentsms`
--

CREATE TABLE `sentsms` (
  `id` int(100) NOT NULL,
  `number` varchar(30) NOT NULL,
  `message` varchar(130) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sentsms`
--

INSERT INTO `sentsms` (`id`, `number`, `message`, `timestamp`) VALUES
(11, '', '', '2022-06-20 05:57:22'),
(12, '0726312315', 'hello', '2022-06-20 05:57:29'),
(13, '0726312315', 'hello', '2022-06-20 06:03:59'),
(14, '0726312315', 'Dear customer, we will be undertaking planned infrastructure enhancement in your area to improve your Home Fibre experience from 1', '2022-06-20 06:05:11'),
(15, '0726312315', 'Dear customer, we will be undertaking planned infrastructure enhancement in your area to improve your Home Fibre experience from 1', '2022-06-20 06:06:41'),
(16, '0706920533', 'Dear Alphin you have a pending internet bill of ksh 2000 . Kindly make payment to till number 9648737.Thankyou', '2022-06-21 08:02:02'),
(17, '0701399088', 'Dear Kelvin you have a pending internet bill of ksh 1500 . Kindly make payment to till number 9648737.Thankyou', '2022-06-21 08:05:40'),
(18, '0706920533', 'Dear Alphin you have a pending internet bill of ksh 2000 . Kindly make payment to till number 9648737.Thankyou', '2022-06-23 08:36:38'),
(19, '0796513760', 'Dear Morris your internet subscription of ksh. 2000 is overdue. Kindly make payment to till number 9648737.Thankyou', '2022-06-23 08:40:57'),
(20, '0796513760', 'Dear Caroline your internet subscription of ksh. 2000 was due on 21/05/2022. Kindly make payment to till number 9648737.Thankyou', '2022-06-24 14:27:17'),
(21, '0740740157', 'Dear Roselyne your internet subscription is due on 27/6/2022. Kindly make payment to till number 9648737.Thankyou', '2022-06-26 05:27:41'),
(22, '0706920533', 'Dear Alphin your internet subscription of ksh 2000 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-06-27 09:43:48'),
(23, '0740740157', 'Dear Roselyne your internet subscription is overdue. Kindly make payment to till number 9648737.Thankyou', '2022-06-29 10:23:12'),
(24, '0705176177', 'Dear customer thank you for joining the supernet fraternity.we are glad to have you onboard.Thankyou. ', '2022-07-01 15:14:53'),
(25, '0705176177', 'This is our till number 9648737', '2022-07-01 15:18:47'),
(26, '0740688572', 'Dear Steve your internet subscription of ksh. 2000 is due on 4/07/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-03 06:44:59'),
(27, '0713700318', 'Dear Judith your internet subscription of ksh. 1500 is due on 3/07/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-03 06:45:49'),
(28, '0718779807', 'Dear Briton your internet subscription of ksh.2500 Is due on 3/07/2022. Kindly make payment to till number 9648737.', '2022-07-03 06:46:23'),
(29, '0769403978', 'Dear Jeff your internet subscription of ksh 1500 is due on 6/07/2022. Kindly make payment to till number 9648737.', '2022-07-06 05:38:22'),
(30, '0700298415', 'Dear Byrone your internet subscription of ksh.1500 is due on 8/07/2022. Kindly make payment to till number 9648737.', '2022-07-06 05:39:10'),
(31, '0718931328', 'Dear Monica your internet subscription of ksh.1500 is due on 8/07/2022. Kindly make payment to till number 9648737.', '2022-07-06 05:39:47'),
(32, '0701550688', 'Dear Dennis your internet subscription of ksh 1500 was due on 8/07/2022. Kindly make payment to till number 9648737.', '2022-07-09 04:01:40'),
(33, '0718779807', 'Dear Briton your internet subscription of ksh.2500 was due on 06/07/2022. Kindly make payment to till number 9648737.', '2022-07-09 04:02:21'),
(34, '0718931328', 'Dear Monica your internet subscription of ksh.1500 was due on 8/07/2022. Kindly make payment to till number 9648737.', '2022-07-09 04:03:09'),
(35, '0722421801', 'Dear Stanley your internet subscription of ksh. 1500 was due on 10/07/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-09 04:03:45'),
(36, '0796226146', 'Dear Kelvin your internet subscription of ksh.1500 is due on 14/07/2022. Kindly make payment to till number 9648737.', '2022-07-13 07:07:40'),
(37, '0708919100', 'Dear Mule your internet subscription of ksh.1500 is due on 19/07/2022. Kindly make payment to till number 9648737.', '2022-07-16 04:45:46'),
(38, '0722657378', 'Dear Kenneth your internet subscription of ksh 1500 is due on 18/07/2022. Kindly make payment to till number 9648737.', '2022-07-16 04:53:44'),
(39, '0796737570', 'Dear Vincent your internet subscription of ksh 1500 is due on 20/07/2022. Kindly make payment to till number 9648737.', '2022-07-16 04:54:52'),
(40, '0728691614', 'Dear Joshua your internet subscription of ksh. 2000 is due on 21/07/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-20 16:39:40'),
(41, '0710822872', 'Dear Ann your internet subscription of ksh 1500 is due on 21/07/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-20 16:40:00'),
(42, '0710822872', 'Dear Ann your internet subscription of ksh 1500 is overdue. Kindly make payment to till number 9648737.Thankyou', '2022-07-23 05:36:40'),
(43, '0706920533', 'Dear Alphin your internet subscription of ksh 2000 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-07-27 12:59:27'),
(44, '0796737570', 'Dear customer, we will be undertaking planned infrastructure enhancement in your area to improve your internet experience on 16th ', '2022-07-28 08:25:52'),
(45, '0740740157', 'Dear Roselyne your internet subscription of Ksh.2000 is due on 29/7/2022. Kindly make payment to till number 9648737.Thankyou', '2022-07-29 08:46:21'),
(46, '0705176177', 'Dear Charles your internet subscription of ksh 2000 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-08-01 11:33:16'),
(47, '0705176177', 'Dear Charles your internet subscription of ksh 1500 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-08-01 11:33:40'),
(48, '0740688572', 'Dear Steve your internet subscription of ksh. 2000 is due on 4/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-01 11:37:43'),
(49, '0716823637', 'Dear Carol your  internet subscription of ksh.2000 is due on 6/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-05 11:47:59'),
(50, '0718931328', 'Dear Monica your internet subscription of ksh.1500 is due on 8/08/2022. Kindly make payment to till number 9648737.', '2022-08-08 12:57:54'),
(51, '0701550688', 'Dear Dennis your internet subscription of ksh 1500 was due on 8/08/2022. Kindly make payment to till number 9648737.', '2022-08-08 12:58:19'),
(52, '0700298415', 'Dear Byrone your internet subscription of ksh.1500 is due on 8/08/2022. Kindly make payment to till number 9648737.', '2022-08-08 12:59:49'),
(53, '0722421801', 'Dear Stanley your internet subscription of ksh. 1500 was due on 10/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-11 05:50:03'),
(54, '0726770102', 'Dear Humphrey your internet subscription of 2000ksh. is overdue. Kindly make payment to till number 9648737.Thankyou', '2022-08-12 10:39:05'),
(55, '0769403978', 'Dear Jeff your internet subscription of ksh 1500 is due on 15/08/2022. Kindly make payment to till number 9648737.', '2022-08-13 19:45:04'),
(56, '0796226146', 'Dear Kelvin your internet subscription of ksh.1500 is due on 15/08/2022. Kindly make payment to till number 9648737.', '2022-08-13 19:45:32'),
(57, '0707526566', 'Dear Emmanuel your internet subscription of ksh 1500 is due on 15/08/2022. Kindly make payment to till number 9648737.', '2022-08-13 19:46:49'),
(58, '0769403978', 'Dear Jeff your internet subscription of ksh.1500 was due on 8/15/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:29:40'),
(59, '0796226146', 'Dear Kelvin your internet subscription of ksh.1500 was due on 8/16/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:30:16'),
(60, '0722657378', 'Dear Kenneth your internet subscription of ksh 1500 is due on 18/08/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:31:20'),
(61, '0707526566', 'Dear Emmanuel you have a pending internet bill of ksh 1500 . Kindly make payment to till number 9648737.Thankyou', '2022-08-16 08:32:35'),
(62, '0701132113', 'Dear Allan your internet subscription of ksh.5000 is due on 8/17/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:33:35'),
(63, '0700548527', 'Dear Fred your internet subscription of ksh.1500 is due on 8/19/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:34:48'),
(64, '0708919100', 'Dear Mule your internet subscription of ksh.1500 is due on 19/08/2022. Kindly make payment to till number 9648737.', '2022-08-16 08:36:11'),
(65, '0726770102', 'Dear Humphrey your internet subscription of 2000ksh. is overdue. Kindly make payment to till number 9648737.Thankyou', '2022-08-17 06:42:10'),
(66, '0796737570', 'Dear Vincent your internet subscription of ksh 1500 is due on 20/08/2022. Kindly make payment to till number 9648737.', '2022-08-19 16:46:50'),
(67, '0710822872', 'Dear Ann your internet subscription of ksh 1500 is due on 21/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-19 17:05:44'),
(68, '0728691614', 'Dear Joshua your internet subscription of ksh. 2000 is due on 21/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-19 17:06:04'),
(69, '0706920533', 'Dear Alphin your internet subscription of ksh. 2000 is due on 27/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-08-24 06:17:23'),
(70, '0796667715', 'Dear Consolata your internet subscription of ksh 1500 is due on 30/08/2022. Kindly make payment to till number 9648737.', '2022-08-29 06:29:15'),
(71, '0700548527', 'Dear Fred your internet subscription of ksh 1500 is due on 1/9/2022. Kindly make payment to till number 9648737.', '2022-08-29 06:30:10'),
(72, '0708919100', 'Dear Fred your internet subscription of ksh 1500 is due on 1/9/2022. Kindly make payment to till number 9648737.', '2022-09-01 18:19:39'),
(73, '0713700318', 'Dear Judith your internet subscription of ksh. 1500 is due on 3/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-01 18:21:28'),
(74, '0700548527', 'Dear Fred your internet subscription of ksh 1500 is due on 1/9/2022. Kindly make payment to till number 9648737.', '2022-09-01 18:25:23'),
(75, '0705176177', 'Dear Charles your internet subscription of ksh 1500 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-09-01 18:25:58'),
(76, '0705176177', 'Dear Charles your internet subscription of ksh 2000 is due today. Kindly make payment to till number 9648737.Thankyou', '2022-09-01 18:26:19'),
(77, '0740688572', 'Dear Steve your internet subscription of ksh. 2000 is due on 4/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-01 18:27:37'),
(78, '0726839923', 'Dear Briton your internet subscription of ksh.2000 Is due on today. Kindly make payment to till number 9648737.', '2022-09-04 06:52:03'),
(79, '0740688572', 'Dear Steve your internet subscription of ksh. 2000 is due on 4/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-04 06:52:44'),
(80, '0716823637', 'Dear Carol your  internet subscription is due on 6/08/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-04 06:58:32'),
(81, '0722421801', 'Dear Stanley your internet subscription of ksh. 1500 is due on 10/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-07 04:49:38'),
(82, '0718931328', 'Dear Monica your internet subscription of ksh.1500 is due on 8/09/2022. Kindly make payment to till number 9648737.', '2022-09-07 04:49:59'),
(83, '0700298415', 'Dear Byrone your internet subscription of ksh.1500 is due on 8/09/2022. Kindly make payment to till number 9648737.', '2022-09-07 04:50:19'),
(84, '0722421801', 'Dear Stanley your internet subscription of ksh. 1500 was due on 10/September/2022. Kindly make payment to till number 9648737.Than', '2022-09-11 05:27:31'),
(85, '0796226146', 'Dear Kelvin your internet subscription of ksh.1500 is due on 14/09/2022. Kindly make payment to till number 9648737.', '2022-09-14 07:15:21'),
(86, '0701132113', 'Dear Allan your internet subscription of ksh 5000 is due on 17/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-14 07:16:41'),
(87, '0707526566', 'Dear Emmanuel your internet subscription of ksh 1500 is due on 15/09/2022. Kindly make payment to till number 9648737.', '2022-09-14 07:17:24'),
(88, '0708919100', 'Dear Mule your internet subscription of ksh.1500 is due on 17/09/2022. Kindly make payment to till number 9648737.', '2022-09-17 04:11:35'),
(89, '0721236799', 'Dear James your internet subscription of ksh. 2000 is due on 19/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-17 04:13:12'),
(90, '0705290584', 'Dear Winnie your internet subscription of ksh 1500 is due on 22/09/2022. Kindly make payment to till number 9648737.Thankyou', '2022-09-18 06:39:27'),
(91, '0796737570', 'Dear Vincent your internet subscription of ksh 2000 is due on 20/09/2022. Kindly make payment to till number 9648737.', '2022-09-18 06:40:26'),
(92, '0722657378', 'Dear Kenneth your internet subscription of ksh 1500 is due on 24/09/2022. Kindly make payment to till number 9648737.', '2022-09-22 03:09:57'),
(93, '0722657378', 'Dear Kenneth your internet subscription of ksh 1500 is due on 24/08/2022. Kindly make payment to till number 9648737.', '2022-09-22 19:28:50');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) DEFAULT NULL,
  `lname` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `contactno` varchar(11) DEFAULT NULL,
  `package` varchar(20) NOT NULL,
  `charge` varchar(20) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT '1',
  `due_date` varchar(20) NOT NULL,
  `posting_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fname`, `lname`, `email`, `contactno`, `package`, `charge`, `type`, `due_date`, `posting_date`) VALUES
(20, 'george', 'kimani', 'george@progressive.co.ke', '0726312315', '3mbps', '1000', '1', '2022-08-31', '2022-05-09 19:04:39'),
(21, 'Jeff', 'muya', '', '0769403978', '3mbps', '1500', '1', '2022-08-07', '2022-05-11 18:42:08'),
(22, 'Dennis', 'Wambui', 'd@gmail.com', '0701550688', '3mbps', '1500', '1', '2022-06-27', '2022-05-11 18:44:29'),
(24, 'Kelvin', 'Musomba', 'km@gmail.com', '0796226146', '3mbps', '1500', '1', '2022-06-15', '2022-05-11 18:48:22'),
(25, 'Byrone', 'Otieno', 'bo@gmail.com', '0700298415', '3mbps', '1500', '1', '2022-06-08', '2022-05-11 18:50:04'),
(26, 'Monica', 'a1', 'ma@gmail.com', '0718931328', '3mbps', '1500', '1', '2022-06-08', '2022-05-11 18:52:18'),
(27, 'Ann', 'Nyokabi', 'an@gmail.com', '0710822872', '3mbps', '1500', '1', '2022-05-24', '2022-05-11 18:56:37'),
(28, 'Joshua', '4c', 'j4@gmail.com', '0728691614', '5mbps', '2000', '1', '2022-05-21', '2022-05-11 18:57:57'),
(31, 'Rael', 'Mwende', 'rm@gmail.com', '0705438081', '3mbps', 'other', '2', '', '2022-05-11 19:05:48'),
(33, 'Steve', 'Biko', 'sbk@gmail.com', '0740688572', '5mbps', '2000', '1', '2022-06-04', '2022-05-11 19:15:34'),
(34, 'Stanley', 'Kimani', 'skimani@progressive.co.ke', '0722421801', '3mbps', '1500', '1', '2022-06-10', '2022-05-11 19:16:22'),
(36, 'Fredrick', 'Mule', 'fmule@gmail.com', '0708919100', '5mbps', '2000', '1', '2022-06-28', '2022-05-20 19:26:14'),
(38, 'Persie', 'Bururu', 'pb@gmail.com', '0758529934', '10mbps', '3000', '1', '2022-06-28', '2022-05-27 05:28:22'),
(39, 'Alphin', 'Cyber', 'ac@gmail.com', '0706920533', '5mbps', '2000', '1', '2022-06-27', '2022-05-30 09:20:51'),
(41, 'Judith', 'Cheptanui', 'jc@gmail.com', '0713700318', '3mbps', '1500', '1', '2022-07-03', '2022-06-08 04:04:50'),
(42, 'kelvin', 'Kinyanjui', 'kk@gmail.com', '0701399088', '5mbps', '1500', '2', '2022-07-15', '2022-06-16 09:36:10'),
(43, 'Kenneth', 'Nyabeta', 'kn@gmail.com', '0722657378', '3mbps', '1500', '1', '2022-09-24', '2022-06-18 19:18:55'),
(44, 'Vincent ', 'Eliezer', 've@gmail.com', '0796737570', '5mbps', '2000', '1', '2022-07-20', '2022-06-20 18:32:36'),
(45, 'Charles', 'Mbugua', 'kiori43charles@gmail.com', '0705176177', '3mbps', '1500', '1', '2022-08-01', '2022-07-01 15:12:42'),
(46, 'Charles', 'Mbugua school', 'kiori43.charles@gmail.com', '0705176177', '5mbps', '2000', '1', '2022-08-01', '2022-07-03 07:13:45'),
(47, 'Caroline', 'chapchap', 'cc@gmail.com', '0716823637', '3mbps', '1500', '1', '2022-08-09', '2022-07-09 03:14:54'),
(48, 'Emmanuel ', 'Mwendwa', 'em@gmail.com', '0707526566', '5mbps', '1500', '1', '2022-10-19', '2022-07-24 19:53:46'),
(49, 'Allan', 'jk flat', 'ajk@gmail.com', '0701132113', '15', '5000', '1', '2022-08-17', '2022-07-24 19:55:23'),
(50, 'Fred ', 'host', 'fh@gmail.com', '0700548527', '10mbps', 'other', '1', '2022-09-01', '2022-07-24 19:56:48'),
(51, 'Consolata ', 'Rally', 'conso@gmail.com', '0796667715', '3mbps', '1500', '1', '2022-08-30', '2022-08-06 03:40:54'),
(52, 'James', 'Sandiego', 'js@gmail.com', '0721236799', '5mbps', '2000', '1', '2022-09-19', '2022-08-19 17:02:23'),
(53, 'Humphrey', 'Shalom', 'hs@gmail.com', '0726770102', '5mbps', '2000', '1', '2022-08-08', '2022-08-19 17:03:36'),
(54, 'Winnie ', 'Muli', 'wm@gmail.con', '0705290584', '3mbps', '1500', '1', '2022-09-22', '2022-08-21 17:42:01'),
(55, 'Bonny', 'Green house', 'bg@gmail.com', '0721911878', '3mbps', 'other', '2', '2022-09-23', '2022-08-23 08:58:59'),
(56, 'Briton', 'Odhiambo ps', 'boo@gmail.com', '0726839923', '5mbps', '2000', '1', '2022-09-04', '2022-08-23 09:00:54'),
(57, 'Carol', 'Grappy rally', 'cgr@gmail.com', '0714794036', '5mbps', '2000', '1', '2022-08-27', '2022-08-29 07:03:09'),
(58, 'Lenah ', 'Mbataru', 'lm@gmail.com', '0724658023', '3mbps', '1500', '1', '2022-08-31', '2022-08-29 07:04:30'),
(59, 'James', 'Jpflat', 'jp@gmail.com', '0723116874', '5mbps', '2000', '2', '2022-09-01', '2022-09-01 18:19:11'),
(60, 'Eugene', 'Kayeli thepearl', 'ekt@gmail.com', '0712004001', '3mbps', '1500', '1', '2022-09-03', '2022-09-03 11:29:11'),
(61, 'Reagan', 'Green house', 'rgh@gmail.com', '0707445255', '5mbps', '2000', '1', '2022-10-07', '2022-09-08 08:01:02'),
(62, 'Mishac', 'kyalo', 'mk@gmail.com', '0706066950', '5mbps', '2000', '1', '2022-10-13', '2022-09-13 05:30:03'),
(63, 'Kevinlagat', 'Lagat green house', 'kevinkosgei532@gmail.com', '0708962221', '5mbps', '2000', '1', '2022-10-17', '2022-09-16 15:34:10'),
(64, 'Mike', 'Kigen', 'michaelmaiyo44@gmail.com', '0797759614', '5mbps', '2000', '1', '2022-10-19', '2022-09-19 14:15:35'),
(65, 'Florence ', 'Yonah ', 'florencerosay59@gmail.com', '0729490005', '5mbps', '1500', '1', '2022-10-19', '2022-09-19 14:48:27'),
(66, 'Priscilla', 'Wangui', 'quipriscilla@gmail.com', '0790456625', '3mbps', '1500', '1', '2022-10-20', '2022-09-19 16:22:30'),
(67, 'Habil', 'Olembo', 'ho@gmail.com', '0721684337', '3mbps', '1500', '1', '2022-09-21', '2022-09-20 16:57:41'),
(68, 'Ruth', 'Wanjiru', 'ruthshiro001@gmail.com', '0716514866', '3mbps', '1500', '1', '2022-10-23', '2022-09-22 15:52:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `invoice_order`
--
ALTER TABLE `invoice_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `sentsms`
--
ALTER TABLE `sentsms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `invoice_order`
--
ALTER TABLE `invoice_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sentsms`
--
ALTER TABLE `sentsms`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
