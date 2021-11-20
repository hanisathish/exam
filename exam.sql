-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2021 at 07:21 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exam`
--

-- --------------------------------------------------------

--
-- Table structure for table `ci_sessions`
--

CREATE TABLE `ci_sessions` (
  `id` varchar(40) NOT NULL DEFAULT '0',
  `ip_address` varchar(45) NOT NULL DEFAULT '0',
  `data` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_coment`
--

CREATE TABLE `class_coment` (
  `content_id` int(11) NOT NULL,
  `generated_time` int(11) NOT NULL,
  `content` longtext NOT NULL,
  `content_by` int(11) NOT NULL,
  `published` int(11) NOT NULL DEFAULT 0,
  `class_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_coment`
--

INSERT INTO `class_coment` (`content_id`, `generated_time`, `content`, `content_by`, `published`, `class_id`) VALUES
(1, 1631797330, 'asdasda', 1, 1, 1),
(2, 1631797351, 'ki', 9, 0, 1),
(3, 1631797368, 'ok', 1, 1, 1),
(4, 1631797373, 'nonoo', 9, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_gid`
--

CREATE TABLE `class_gid` (
  `clgid` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `gid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `class_gid`
--

INSERT INTO `class_gid` (`clgid`, `class_id`, `gid`) VALUES
(7, 1, 1),
(8, 1, 3),
(9, 1, 4);

-- --------------------------------------------------------

--
-- Table structure for table `live_class`
--

CREATE TABLE `live_class` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(1000) NOT NULL,
  `initiated_by` int(11) NOT NULL,
  `initiated_time` int(11) NOT NULL,
  `closed_time` int(11) NOT NULL,
  `content` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `live_class`
--

INSERT INTO `live_class` (`class_id`, `class_name`, `initiated_by`, `initiated_time`, `closed_time`, `content`) VALUES
(1, 'adsasd', 1, 1631799000, 0, '<div>asasdad asd</div><div>asd</div><div>asd</div><div>&nbsp;asdasd</div><div>asd</div><div>&nbsp;as</div><div>das</div><div>d</div><div>&nbsp;ads</div><div>as</div><div>dasdas asd asd asdasdasd aasdasd asdas</div><div>das asdas d</div><div>asdasdas</div><div>dasda dasd</div><div>asdas asdasdas</div><div><br></div><div>as d</div><div>asdas<br></div>');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_answers`
--

CREATE TABLE `savsoft_answers` (
  `aid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `uid` int(11) NOT NULL,
  `score_u` float NOT NULL DEFAULT 0,
  `rid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_answers`
--

INSERT INTO `savsoft_answers` (`aid`, `qid`, `q_option`, `uid`, `score_u`, `rid`) VALUES
(8, 2, '5', 8, 1, 1),
(9, 1, '2', 8, 0, 1),
(28, 3, 'masker', 1, 0, 7),
(29, 4, 'sdfsfdsfds fdsf dsfsd\r\n dsf \r\nsf dsf\r\nfdsf\r\n sf\r\ns \r\nsf \r\n\r\ndssdfs sdf dsf dsfs dfdsfsd dsf fsd fdsfsdf sd\r\n dsfsf\r\n \r\ndsdf dsfs fd\r\ns sdf sdfds', 1, 0, 7),
(30, 2, '5', 1, 1, 7),
(31, 1, '3', 1, 0, 7),
(38, 3, '1dasdas', 1, 0, 11),
(39, 4, 'asdada', 1, 0, 11),
(40, 2, '5', 1, 1, 11),
(42, 2, '5', 1, 1, 12),
(51, 2, '5', 1, 1, 13),
(53, 2, '5', 1, 1, 14),
(64, 3, '1', 11, 0, 16),
(65, 4, 'adsa asdasd', 11, 0, 16),
(66, 2, '5', 11, 1, 16),
(67, 1, '2', 11, 0, 16),
(69, 1, '3', 12, 0, 19),
(76, 1, '1', 12, 1, 22),
(77, 3, 'laliga', 12, 0, 22),
(78, 4, 'adsadasda', 12, 0, 22),
(86, 1, '2', 13, 0, 23),
(87, 3, 'sdffdsfdsf', 13, 0, 23),
(88, 4, 'sdfdsfsfdsfs', 13, 0, 23),
(90, 4, 'asdsada', 13, 0, 24),
(93, 3, 'asdasdasda', 15, 0, 28),
(95, 1, '1', 20, 1, 36),
(96, 1, '4', 1, 0, 40);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_category`
--

CREATE TABLE `savsoft_category` (
  `cid` int(11) NOT NULL,
  `category_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_category`
--

INSERT INTO `savsoft_category` (`cid`, `category_name`) VALUES
(1, 'Analyst'),
(2, 'Software Engg');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_group`
--

CREATE TABLE `savsoft_group` (
  `gid` int(11) NOT NULL,
  `group_name` varchar(1000) NOT NULL,
  `price` float NOT NULL,
  `valid_for_days` int(11) NOT NULL DEFAULT 0,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_group`
--

INSERT INTO `savsoft_group` (`gid`, `group_name`, `price`, `valid_for_days`, `description`) VALUES
(1, 'Free', 0, 0, '10 Free quiz'),
(3, 'Premium-1', 100, 90, '100 Quizzes'),
(4, 'Group 3', 2500, 90, '<p>Unlimites quizzes.</p>\r\n<p>Phone support</p>');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_level`
--

CREATE TABLE `savsoft_level` (
  `lid` int(11) NOT NULL,
  `level_name` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_level`
--

INSERT INTO `savsoft_level` (`lid`, `level_name`) VALUES
(1, 'Easy'),
(2, 'Difficult');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_notification`
--

CREATE TABLE `savsoft_notification` (
  `nid` int(11) NOT NULL,
  `notification_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `title` varchar(100) DEFAULT NULL,
  `message` varchar(1000) DEFAULT NULL,
  `click_action` varchar(100) DEFAULT NULL,
  `notification_to` varchar(1000) DEFAULT NULL,
  `response` text DEFAULT NULL,
  `uid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_options`
--

CREATE TABLE `savsoft_options` (
  `oid` int(11) NOT NULL,
  `qid` int(11) NOT NULL,
  `q_option` text NOT NULL,
  `q_option_match` varchar(1000) DEFAULT NULL,
  `score` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_options`
--

INSERT INTO `savsoft_options` (`oid`, `qid`, `q_option`, `q_option_match`, `score`) VALUES
(1, 1, '<p>CCCCCC</p>', NULL, 1),
(2, 1, '<p>DDDDDDD</p>', NULL, 0),
(3, 1, '<p>EEEEE</p>', NULL, 0),
(4, 1, '<p>FFFFFFF</p>', NULL, 0),
(5, 2, '<p>11111</p>', NULL, 1),
(6, 2, '<p>222222</p>', NULL, 0),
(7, 3, 'mask', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_payment`
--

CREATE TABLE `savsoft_payment` (
  `pid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `gid` int(11) NOT NULL,
  `amount` float NOT NULL,
  `paid_date` int(11) NOT NULL,
  `payment_gateway` varchar(100) NOT NULL DEFAULT 'Paypal',
  `payment_status` varchar(100) NOT NULL DEFAULT 'Pending',
  `transaction_id` varchar(1000) NOT NULL,
  `other_data` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qbank`
--

CREATE TABLE `savsoft_qbank` (
  `qid` int(11) NOT NULL,
  `question_type` varchar(100) NOT NULL DEFAULT 'Multiple Choice Single Answer',
  `question` text NOT NULL,
  `description` text NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `no_time_served` int(11) NOT NULL DEFAULT 0,
  `no_time_corrected` int(11) NOT NULL DEFAULT 0,
  `no_time_incorrected` int(11) NOT NULL DEFAULT 0,
  `no_time_unattempted` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_qbank`
--

INSERT INTO `savsoft_qbank` (`qid`, `question_type`, `question`, `description`, `cid`, `lid`, `no_time_served`, `no_time_corrected`, `no_time_incorrected`, `no_time_unattempted`) VALUES
(1, 'Multiple Choice Single Answer', '<p>What</p>', '<p>Desc fffff</p>', 2, 1, 36, 2, 5, 29),
(2, 'Multiple Choice Single Answer', '<p>Myna</p>', '<p>dddd</p>', 2, 1, 22, 5, 0, 17),
(3, 'Short Answer', '<p>Laliga SHort Ans</p>', '<p>Laliga SHort Ans desc</p>', 2, 1, 30, 0, 6, 24),
(4, 'Long Answer', '<p>Fikr Long Asn</p>', '<p>Fikr Long Asn desc</p>', 2, 1, 30, 0, 0, 24);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_qcl`
--

CREATE TABLE `savsoft_qcl` (
  `qcl_id` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `lid` int(11) NOT NULL,
  `noq` int(11) NOT NULL,
  `i_correct` text NOT NULL,
  `i_incorrect` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_quiz`
--

CREATE TABLE `savsoft_quiz` (
  `quid` int(11) NOT NULL,
  `quiz_name` varchar(1000) NOT NULL,
  `description` text NOT NULL,
  `start_date` int(11) NOT NULL,
  `end_date` int(11) NOT NULL,
  `gids` text NOT NULL,
  `qids` text NOT NULL,
  `noq` int(11) NOT NULL,
  `correct_score` text NOT NULL,
  `incorrect_score` text NOT NULL,
  `ip_address` text NOT NULL,
  `duration` int(11) NOT NULL DEFAULT 10,
  `maximum_attempts` int(11) NOT NULL DEFAULT 1,
  `pass_percentage` float NOT NULL DEFAULT 50,
  `view_answer` int(11) NOT NULL DEFAULT 1,
  `camera_req` int(11) NOT NULL DEFAULT 1,
  `question_selection` int(11) NOT NULL DEFAULT 1,
  `gen_certificate` int(11) NOT NULL DEFAULT 0,
  `certificate_text` text DEFAULT NULL,
  `with_login` int(11) NOT NULL DEFAULT 1,
  `quiz_template` varchar(100) NOT NULL DEFAULT 'Default'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_quiz`
--

INSERT INTO `savsoft_quiz` (`quid`, `quiz_name`, `description`, `start_date`, `end_date`, `gids`, `qids`, `noq`, `correct_score`, `incorrect_score`, `ip_address`, `duration`, `maximum_attempts`, `pass_percentage`, `view_answer`, `camera_req`, `question_selection`, `gen_certificate`, `certificate_text`, `with_login`, `quiz_template`) VALUES
(8, 'Venus', '<p>DDDD</p>', 1634746110, 1667146110, '1', '1,2,3,4', 4, '1,1,1,1', '0,0,0,0', '', 10, 10, 50, 1, 0, 0, 0, NULL, 0, 'Default');

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_result`
--

CREATE TABLE `savsoft_result` (
  `rid` int(11) NOT NULL,
  `quid` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `result_status` varchar(100) NOT NULL DEFAULT 'Open',
  `start_time` int(11) NOT NULL,
  `end_time` int(11) NOT NULL,
  `categories` text NOT NULL,
  `category_range` text NOT NULL,
  `r_qids` text NOT NULL,
  `individual_time` text NOT NULL,
  `total_time` int(11) NOT NULL DEFAULT 0,
  `score_obtained` float NOT NULL DEFAULT 0,
  `percentage_obtained` float NOT NULL DEFAULT 0,
  `attempted_ip` varchar(100) NOT NULL,
  `score_individual` text NOT NULL,
  `photo` varchar(100) NOT NULL,
  `manual_valuation` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_result`
--

INSERT INTO `savsoft_result` (`rid`, `quid`, `uid`, `result_status`, `start_time`, `end_time`, `categories`, `category_range`, `r_qids`, `individual_time`, `total_time`, `score_obtained`, `percentage_obtained`, `attempted_ip`, `score_individual`, `photo`, `manual_valuation`) VALUES
(1, 1, 8, 'Pass', 1616950370, 1616950395, 'Math', '2', '2,1', '0,21', 21, 1, 50, '::1', '1,2', '', 0),
(2, 1, 1, 'Fail', 1617211158, 1617274647, 'Math', '2', '2,1', '424,0', 424, 0, 0, '::1', '0,0', '', 0),
(3, 1, 1, 'Fail', 1617274649, 1617276851, 'Math', '2', '2,1', '249,0', 249, 0, 0, '127.0.0.1', '0,0', '', 0),
(4, 1, 1, 'Fail', 1617276853, 1617279471, 'Math', '2', '2,1', '506,17', 499, 0, 0, '127.0.0.1', '0,0', '', 0),
(5, 1, 1, 'Fail', 1617279478, 1617280094, 'Math', '2', '2,1', '501,52', 553, 0, 0, '127.0.0.1', '0,0', '', 0),
(6, 1, 1, 'Fail', 1617280100, 1617281072, 'Math', '2', '2,1', '476,75', 551, 0, 0, '127.0.0.1', '0,0', '', 0),
(7, 1, 1, 'Pending', 1617281157, 1617281202, 'Math', '4', '3,4,2,1', '2,30,6,4', 42, 1, 25, '::1', '2,3,1,2', '', 1),
(8, 1, 1, 'Fail', 1617356833, 1617357895, 'Math', '4', '3,4,2,1', '425,4,0,0', 411, 0, 0, '::1', '0,0,0,0', '', 0),
(9, 1, 1, 'Fail', 1617357898, 1617359559, 'Math', '4', '3,4,2,1', '537,0,0,0', 515, 0, 0, '::1', '0,0,0,0', '', 0),
(10, 1, 1, 'Fail', 1617359564, 1617360812, 'Math', '4', '3,4,2,1', '527,0,0,0', 518, 0, 0, '::1', '0,0,0,0', '', 0),
(11, 1, 1, 'Pending', 1617541513, 1617542429, 'Math', '4', '3,4,2,1', '0,5,4,0', 9, 1, 25, '::1', '2,3,1,0', '', 1),
(12, 2, 1, 'Pass', 1617544572, 1617544589, 'Math', '1', '2', '11', 11, 1, 100, '::1', '1', '', 0),
(15, 2, 1, 'Fail', 1617545139, 1632231044, 'Math', '1', '2', '3', 3, 0, 0, '::1', '0', '', 0),
(16, 1, 11, 'Pending', 1631815177, 1631815209, 'Math', '4', '3,4,2,1', '0,20,4,5', 29, 1, 25, '127.0.0.1', '2,3,1,2', '', 1),
(17, 3, 12, 'Fail', 1631980763, 1631980784, 'Math', '3', '1,3,4', '0,12,5', 17, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(18, 3, 12, 'Fail', 1631981082, 1631981090, 'Math', '3', '1,3,4', '4,0,0', 4, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(19, 3, 12, 'Fail', 1631981119, 1631981127, 'Math', '3', '1,3,4', '5,0,0', 5, 0, 0, '127.0.0.1', '2,0,0', '', 0),
(20, 3, 12, 'Fail', 1631981152, 1631981158, 'Math', '3', '1,3,4', '3,0,0', 3, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(21, 3, 12, 'Fail', 1631981167, 1631981173, 'Math', '3', '1,3,4', '2,0,0', 2, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(22, 3, 12, 'Pending', 1631981178, 1631981197, 'Math', '3', '1,3,4', '0,11,5', 16, 1, 33.3333, '127.0.0.1', '1,2,3', '', 1),
(23, 4, 13, 'Fail', 1632232199, 1632232274, 'Math', '4', '1,2,3,4', '0,50,10,11', 71, 1, 25, '127.0.0.1', '2,0,2,1', '', 0),
(24, 4, 13, 'Fail', 1632232390, 1632232401, 'Math', '4', '1,2,3,4', '0,2,1,5', 8, 1, 25, '127.0.0.1', '0,0,0,1', '', 0),
(25, 4, 14, 'Fail', 1633046508, 1633046553, 'Math', '4', '1,2,3,4', '0,17,16,8', 41, 0, 0, '127.0.0.1', '0,0,0,0', '', 0),
(26, 4, 14, 'Open', 1633046563, 0, 'Math', '4', '1,2,3,4', '0,2,1,0', 0, 0, 0, '127.0.0.1', '0,0,0,0', '', 0),
(27, 3, 15, 'Fail', 1633048655, 1633048680, 'Math', '3', '1,3,4', '0,14,8', 22, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(28, 4, 15, 'Fail', 1633050031, 1633050142, 'Math', '4', '1,2,3,4', '29,6,4,50', 89, 0, 0, '::1', '0,0,2,0', '', 0),
(29, 4, 16, 'Open', 1633452885, 0, 'Math', '4', '1,2,3,4', '0,0,0,0', 0, 0, 0, '::1', '0,0,0,0', '', 0),
(30, 3, 17, 'Fail', 1633667809, 1633667885, 'Math', '3', '1,3,4', '60,0,0', 60, 0, 0, '::1', '0,0,0', '', 0),
(31, 3, 18, 'Fail', 1633698133, 1633700241, 'Software Engg', '3', '1,3,4', '0,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(32, 3, 18, 'Fail', 1633700243, 1633700308, 'Software Engg', '3', '1,3,4', '29,0,0', 29, 0, 0, '::1', '0,0,0', '', 0),
(33, 3, 18, 'Fail', 1633700314, 1633700384, 'Software Engg', '3', '1,3,4', '30,0,0', 30, 0, 0, '::1', '0,0,0', '', 0),
(34, 3, 19, 'Open', 1633700386, 0, 'Software Engg', '3', '1,3,4', '18,0,0', 0, 0, 0, '::1', '0,0,0', '', 0),
(35, 3, 1, 'Fail', 1633700414, 1633700481, 'Software Engg', '3', '1,3,4', '29,0,0', 29, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(36, 3, 20, 'Fail', 1633712198, 1633712296, 'Software Engg', '3', '1,3,4', '0,48,12', 60, 1, 33.3333, '::1', '1,0,0', '', 0),
(37, 3, 20, 'Fail', 1633712392, 1633712459, 'Software Engg', '3', '1,3,4', '59,0,0', 59, 0, 0, '::1', '0,0,0', '', 0),
(38, 3, 21, 'Fail', 1633712428, 1633712501, 'Software Engg', '3', '1,3,4', '0,29,0', 29, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(39, 3, 22, 'Fail', 1633773244, 1633773303, 'Software Engg', '3', '1,3,4', '0,33,7', 40, 0, 0, '::1', '0,0,0', '', 0),
(40, 7, 1, 'Open', 1634745440, 0, 'Software Engg', '4', '1,2,3,4', '0,42,447,0', 0, 0, 0, '127.0.0.1', '2,0,0,0', '', 0),
(41, 3, 17, 'Open', 1634746006, 0, 'Software Engg', '3', '1,3,4', '0,0,0', 0, 0, 0, '127.0.0.1', '0,0,0', '', 0),
(42, 8, 23, 'Fail', 1634746602, 1634746618, 'Software Engg', '4', '1,2,3,4', '13,0,0,0', 13, 0, 0, '::1', '0,0,0,0', '', 0),
(43, 8, 24, 'Fail', 1634894910, 1634894918, 'Software Engg', '4', '1,2,3,4', '4,0,0,0', 4, 0, 0, '127.0.0.1', '0,0,0,0', '', 0),
(44, 8, 25, 'Fail', 1637388179, 1637388211, 'Software Engg', '4', '1,2,3,4', '30,0,0,0', 30, 0, 0, '::1', '0,0,0,0', '', 0),
(45, 8, 25, 'Fail', 1637388270, 1637388317, 'Software Engg', '4', '1,2,3,4', '29,0,0,0', 29, 0, 0, '::1', '0,0,0,0', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `savsoft_users`
--

CREATE TABLE `savsoft_users` (
  `uid` int(11) NOT NULL,
  `password` varchar(1000) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `contact_no` varchar(1000) DEFAULT NULL,
  `connection_key` varchar(1000) DEFAULT NULL,
  `gid` int(11) NOT NULL DEFAULT 1,
  `su` int(11) NOT NULL DEFAULT 0,
  `subscription_expired` int(11) NOT NULL DEFAULT 0,
  `verify_code` int(11) NOT NULL DEFAULT 0,
  `wp_user` varchar(100) DEFAULT NULL,
  `registered_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `photo` varchar(1000) DEFAULT NULL,
  `user_status` varchar(100) NOT NULL DEFAULT 'Active',
  `web_token` varchar(1000) DEFAULT NULL,
  `android_token` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `savsoft_users`
--

INSERT INTO `savsoft_users` (`uid`, `password`, `email`, `first_name`, `last_name`, `contact_no`, `connection_key`, `gid`, `su`, `subscription_expired`, `verify_code`, `wp_user`, `registered_date`, `photo`, `user_status`, `web_token`, `android_token`) VALUES
(1, 'e10adc3949ba59abbe56e057f20f883e', 'admin@example.com', 'Admin', 'Admin', '1234567890', NULL, 1, 1, 1776290400, 0, '', '2017-04-20 11:22:38', NULL, 'Active', 'dnwIpQWkxyA:APA91bFZLhdxZnPcNareTyHnJRikJGqaT7qh9DF4jSmyKSOq1rv6k7uwgmaQ4_K7jT3WNNUeKRdRQYsNf_OZaQZ7i5nKI_CjA6QGPwPsL5_D7ShPTtsuIwTkr0CuGx0RS7oAVNg_bImc', NULL),
(5, 'e10adc3949ba59abbe56e057f20f883e', 'user@example.com', 'User', 'User', '1234567890', '123', 1, 0, 2122569000, 0, '', '2017-04-20 11:22:38', NULL, 'Active', NULL, NULL),
(6, 'e10adc3949ba59abbe56e057f20f883e', 'sathish@cobrasoftwares.in', 'Sathish', 'K', '', NULL, 1, 0, 1854210600, 0, NULL, '2018-10-07 07:46:43', NULL, 'Active', NULL, NULL),
(7, 'e10adc3949ba59abbe56e057f20f883e', 'maara@s.com', '123456', 'S', '12121212', NULL, 1, 0, 0, 9933, NULL, '2021-03-26 08:21:25', NULL, 'Active', NULL, NULL),
(8, 'e10adc3949ba59abbe56e057f20f883e', 'veera@veera.com', 'veera s', 'asd', '', NULL, 1, 0, 1932229800, 0, NULL, '2021-03-28 16:52:37', NULL, 'Active', NULL, NULL),
(9, 'e10adc3949ba59abbe56e057f20f883e', 'sa@sa.com', 'Sa', 's', '', NULL, 1, 0, 1947090600, 0, NULL, '2021-09-16 13:00:44', NULL, 'Active', NULL, NULL),
(10, 'e10adc3949ba59abbe56e057f20f883e', 'kiran@g.com', 'kiran', 's', '12', NULL, 1, 0, 0, 8668, NULL, '2021-09-16 17:57:01', NULL, 'Active', NULL, NULL),
(11, 'e10adc3949ba59abbe56e057f20f883e', 'ulka@d.com', 'Ulka', 'd', '12', NULL, 1, 0, 1947090600, 0, NULL, '2021-09-16 17:58:48', NULL, 'Active', NULL, NULL),
(12, '95628fa167d9812ddaee4fcdc64dfdf0', '1631980763', 'Guest User', '1631980763', '', NULL, 1, 0, 0, 0, NULL, '2021-09-18 15:59:23', NULL, 'Active', NULL, NULL),
(13, 'd9ab8c2f9cfe12d7a527522476bf54fe', '1632232199', 'Guest User', '1632232199', '', NULL, 1, 0, 0, 0, NULL, '2021-09-21 13:49:59', NULL, 'Active', NULL, NULL),
(14, 'e10adc3949ba59abbe56e057f20f883e', 's@s.com', 'Sal', 'F', '1241', NULL, 1, 0, 0, 0, NULL, '2021-10-01 00:00:38', NULL, 'Active', NULL, NULL),
(15, 'e10adc3949ba59abbe56e057f20f883e', 'sa@s.com', 'asd', 'ads', '1212', NULL, 1, 0, 1948386600, 0, NULL, '2021-10-01 00:33:33', NULL, 'Active', NULL, NULL),
(16, '13e02e2641c8db1fef9a91e525f5e79e', '1633452885', 'Guest User', '1633452885', '', NULL, 1, 0, 0, 0, NULL, '2021-10-05 16:54:45', NULL, 'Active', NULL, NULL),
(17, '951ab6861c81a0627f76fef0286bbf13', '1633667808', 'Guest User', '1633667808', '', NULL, 1, 0, 0, 0, NULL, '2021-10-08 04:36:48', NULL, 'Active', NULL, NULL),
(18, '119d43c8bf7fe41a0edbf2aeaa806536', '1633698132', 'Guest User', '1633698132', '', NULL, 1, 0, 0, 0, NULL, '2021-10-08 13:02:12', NULL, 'Active', NULL, NULL),
(19, 'd6181e24bc01e4a832249fa9a2de8470', '1633700386', 'Guest User', '1633700386', '', NULL, 1, 0, 0, 0, NULL, '2021-10-08 13:39:46', NULL, 'Active', NULL, NULL),
(20, '1985bad7e9088ae53f108cc861fa54e4', '1633712197', 'Guest User', '1633712197', '', NULL, 1, 0, 0, 0, NULL, '2021-10-08 16:56:37', NULL, 'Active', NULL, NULL),
(21, '5d8176326ac0334b1beae1310f62f0c4', '1633712428', 'Guest User', '1633712428', '', NULL, 1, 0, 0, 0, NULL, '2021-10-08 17:00:28', NULL, 'Active', NULL, NULL),
(22, '7f16486d20834824212195ac69501bb7', '1633773244', 'Guest User', '1633773244', '', NULL, 1, 0, 0, 0, NULL, '2021-10-09 09:54:04', NULL, 'Active', NULL, NULL),
(23, '0c9e73f0462d878db77f6b29bd5d580a', '1634746602', 'Guest User', '1634746602', '', NULL, 1, 0, 0, 0, NULL, '2021-10-20 16:16:42', NULL, 'Active', NULL, NULL),
(24, '76a3839282e3a0d00cfde255d74109df', '1634894909', 'Guest User', '1634894909', '', NULL, 1, 0, 0, 0, NULL, '2021-10-22 09:28:29', NULL, 'Active', NULL, NULL),
(25, '254fa7691a1ca09ccdceaf216a7afc13', '1637388179', 'Guest User', '1637388179', '', NULL, 1, 0, 0, 0, NULL, '2021-11-20 06:02:59', NULL, 'Active', NULL, NULL),
(26, 'e10adc3949ba59abbe56e057f20f883e', 'sase@s.com', 'asasasd', 'asd', '22342342344', NULL, 1, 0, 1952706600, 0, NULL, '2021-11-20 06:19:29', NULL, 'Active', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ci_sessions`
--
ALTER TABLE `ci_sessions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_coment`
--
ALTER TABLE `class_coment`
  ADD PRIMARY KEY (`content_id`);

--
-- Indexes for table `class_gid`
--
ALTER TABLE `class_gid`
  ADD PRIMARY KEY (`clgid`);

--
-- Indexes for table `live_class`
--
ALTER TABLE `live_class`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  ADD PRIMARY KEY (`aid`);

--
-- Indexes for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  ADD PRIMARY KEY (`cid`);

--
-- Indexes for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  ADD PRIMARY KEY (`gid`);

--
-- Indexes for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  ADD PRIMARY KEY (`lid`);

--
-- Indexes for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  ADD PRIMARY KEY (`nid`);

--
-- Indexes for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  ADD PRIMARY KEY (`oid`);

--
-- Indexes for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  ADD PRIMARY KEY (`pid`);

--
-- Indexes for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  ADD PRIMARY KEY (`qid`);

--
-- Indexes for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  ADD PRIMARY KEY (`qcl_id`);

--
-- Indexes for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  ADD PRIMARY KEY (`quid`);

--
-- Indexes for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_coment`
--
ALTER TABLE `class_coment`
  MODIFY `content_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `class_gid`
--
ALTER TABLE `class_gid`
  MODIFY `clgid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `live_class`
--
ALTER TABLE `live_class`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `savsoft_answers`
--
ALTER TABLE `savsoft_answers`
  MODIFY `aid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT for table `savsoft_category`
--
ALTER TABLE `savsoft_category`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoft_group`
--
ALTER TABLE `savsoft_group`
  MODIFY `gid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_level`
--
ALTER TABLE `savsoft_level`
  MODIFY `lid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `savsoft_notification`
--
ALTER TABLE `savsoft_notification`
  MODIFY `nid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_options`
--
ALTER TABLE `savsoft_options`
  MODIFY `oid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `savsoft_payment`
--
ALTER TABLE `savsoft_payment`
  MODIFY `pid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_qbank`
--
ALTER TABLE `savsoft_qbank`
  MODIFY `qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `savsoft_qcl`
--
ALTER TABLE `savsoft_qcl`
  MODIFY `qcl_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `savsoft_quiz`
--
ALTER TABLE `savsoft_quiz`
  MODIFY `quid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `savsoft_result`
--
ALTER TABLE `savsoft_result`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `savsoft_users`
--
ALTER TABLE `savsoft_users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
