-- Active: 1671545102166@@127.0.0.1@3306
-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 11:24 PM
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
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `announcements`
--

CREATE TABLE `announcements` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `author_id` int(11) NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `announcements`
--

INSERT INTO `announcements` (`id`, `title`, `description`, `author_id`, `amount`, `duration`, `duration_unit`, `created_at`) VALUES
(3, 'ERPNext +', 'Accounting, HR, CRM modules along with non profit app. Set up on frappe cloud, customise, provide basic training and handholding. This is for a very small non proft organisation which expects to grow in future and wants to get it rght in the beginning. Budget under 10k.', 1, 400, 2, 'Month', '2023-04-14 22:51:12'),
(4, 'Samsung Galaxy A22 5G Users - No experience needed', 'Needs to hire 10 Freelancers\r\nPLEASE READ:\r\n\r\nNeeded phone:\r\nSamsung Galaxy A22 5G\r\n\r\n\r\nRead the instructions below:\r\nThere is no right or wrong. Your honest behavior is most important, it will help us.\r\nThe task is simple, it will only take about 10 minutes to complete, and requires you to use your mobile phone\'s camera.\r\nWe will provide you with detailed instructions upon approval of the job.\r\nYou will need to perform heart rate measurements to help us improve our technology.\r\n\r\nRequirements:\r\n1- Have access to a popular android phone.\r\n2- If you read the instructions carefully, write drivingmissmaisy in your proposal\r\n\r\nThis is only 5$ only for using an app.\r\n\r\n\r\nFeel free apply.', 1, 200, 2, NULL, '2023-04-14 23:30:12');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `revenue` int(11) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `user_id`, `name`, `revenue`, `contact`, `language`, `country`, `facebook`, `instagram`, `twitter`, `linkedin`) VALUES
(1, 1, 'Adidas', 2150, 'adidas@brand.com', 'English', 'Germany', 'https://www.facebook.com/adidas/', 'https://www.instagram.com/adidas/', 'https://twitter.com/adidas', 'https://www.linkedin.com/company/adidas'),
(2, 2, 'Coca-Cola', 373, 'cocacola@brand.com', 'English', 'United States', 'https://www.facebook.com/cocacola/', 'https://www.instagram.com/cocacola/', 'https://twitter.com/CocaCola', 'https://www.linkedin.com/company/coca-cola'),
(3, 3, 'Apple', 3472, 'apple@brand.com', 'English', 'United States', 'https://www.facebook.com/apple/', 'https://www.instagram.com/apple/', 'https://twitter.com/Apple', 'https://www.linkedin.com/company/apple'),
(4, 4, 'Google', 1817, 'google@brand.com', 'English', 'United States', 'https://www.facebook.com/google/', 'https://www.instagram.com/google/', 'https://twitter.com/Google', 'https://www.linkedin.com/company/google'),
(5, 5, 'Amazon', 3861, 'amazon@brand.com', 'English', 'United States', 'https://www.facebook.com/Amazon/', 'https://www.instagram.com/amazon/', 'https://twitter.com/amazon', 'https://www.linkedin.com/company/amazon'),
(6, 6, 'Microsoft', 1533, 'microsoft@brand.com', 'English', 'United States', 'https://www.facebook.com/Microsoft/', 'https://www.instagram.com/microsoft/', 'https://twitter.com/Microsoft', 'https://www.linkedin.com/company/microsoft'),
(7, 7, 'PepsiCo', 704, 'pepsico@brand.com', 'English', 'United States', 'https://www.facebook.com/PepsiCo/', 'https://www.instagram.com/pepsico/', 'https://twitter.com/PepsiCo', 'https://www.linkedin.com/company/pepsico'),
(8, 8, 'Samsung', 2216, 'samsung@brand.com', 'English', 'South Korea', 'https://www.facebook.com/SamsungUSA/', 'https://www.instagram.com/samsung/', 'https://twitter.com/Samsung', 'https://www.linkedin.com/company/samsung');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `subject` varchar(45) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`) VALUES
(1, 'Name', 'email@email.com', 'phone', 'subject', 'message', '2023-04-20 21:21:45');

-- --------------------------------------------------------

--
-- Table structure for table `credits`
--

CREATE TABLE `credits` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `card_number` varchar(255) NOT NULL,
  `card_type` varchar(255) NOT NULL,
  `exp_date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `credits`
--

INSERT INTO `credits` (`id`, `user_id`, `card_number`, `card_type`, `exp_date`) VALUES
(5, 1, '10123185132', 'visa', '2024-12-01'),
(6, 10, '10123185132', 'mastercard', '2023-12-31'),
(7, 1, '123', 'mastercard', '2023-12-01');

-- --------------------------------------------------------

--
-- Table structure for table `deletedaccounts`
--

CREATE TABLE `deletedaccounts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `approved` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deletedaccounts`
--

INSERT INTO `deletedaccounts` (`id`, `user_id`, `approved`) VALUES
(2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `influencers`
--

CREATE TABLE `influencers` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `job` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `language` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `facebook` varchar(50) DEFAULT NULL,
  `instagram` varchar(50) DEFAULT NULL,
  `twitter` varchar(50) DEFAULT NULL,
  `linkedin` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `influencers`
--

INSERT INTO `influencers` (`id`, `user_id`, `first_name`, `last_name`, `age`, `job`, `contact`, `language`, `country`, `facebook`, `instagram`, `twitter`, `linkedin`) VALUES
(1, 10, 'Oussama', 'ElNegraz', 35, 'Engineer', 'contact@negraz.com', 'Spanish', 'Spain', 'https://facebook.com/negraz', 'https://instagram.com/negraz', 'https://twitter.com/negraz', 'https://linkedin.com/in/negraz'),
(2, 11, 'Mohammed', 'Ali', NULL, NULL, 'mohammedali@email.com', 'Arabic', 'Saudi Arabia', 'https://facebook.com/mohammedali', 'https://instagram.com/mohammedali', 'https://twitter.com/mohammedali', 'https://linkedin.com/in/mohammedali'),
(3, 12, 'Sophie', 'Liu', NULL, NULL, 'sophieliu@email.com', 'Mandarin', 'China', 'https://facebook.com/sophieliu', 'https://instagram.com/sophieliu', 'https://twitter.com/sophieliu', 'https://linkedin.com/in/sophieliu'),
(4, 13, 'David', 'Gonzalez', NULL, NULL, 'davidgonzalez@email.com', 'Spanish', 'Mexico', 'https://facebook.com/davidgonzalez', 'https://instagram.com/davidgonzalez', 'https://twitter.com/davidgonzalez', 'https://linkedin.com/in/davidgonzalez'),
(5, 14, 'Fatima', 'Ahmed', NULL, NULL, 'fatimaahmed@email.com', 'Arabic', 'Egypt', 'https://facebook.com/fatimaahmed', 'https://instagram.com/fatimaahmed', 'https://twitter.com/fatimaahmed', 'https://linkedin.com/in/fatimaahmed'),
(6, 15, 'Kento', 'Suzuki', NULL, NULL, 'kentosuzuki@email.com', 'Japanese', 'Japan', 'https://facebook.com/kentosuzuki', 'https://instagram.com/kentosuzuki', 'https://twitter.com/kentosuzuki', 'https://linkedin.com/in/kentosuzuki'),
(7, 16, 'Sofia', 'Rodriguez', NULL, NULL, 'sofiarodriguez@email.com', 'Spanish', 'Colombia', 'https://facebook.com/sofiarodriguez', 'https://instagram.com/sofiarodriguez', 'https://twitter.com/sofiarodriguez', 'https://linkedin.com/in/sofiarodriguez');

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `message_text` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `receiver_id`, `message_text`, `created_at`) VALUES
(1, 10, 1, 'Looks clean and fresh UI. 😍', '2023-04-11 19:16:08'),
(2, 10, 1, 'How can I purchase it?', '2023-04-11 19:18:08'),
(3, 1, 10, 'Thanks, From our official site 😇', '2023-04-11 19:16:10'),
(4, 10, 1, 'I will purchase it for sure. 👍', '2023-04-11 19:26:12'),
(5, 1, 10, 'hi', '2023-04-11 22:05:13'),
(6, 1, 10, 'How re u', '2023-04-11 22:06:17'),
(7, 1, 11, 'Hey mohamed', '2023-04-11 22:06:41'),
(8, 1, 11, 'why 2 times', '2023-04-11 22:06:48'),
(9, 11, 1, 'Hey i like to talk too', '2023-04-11 23:19:05'),
(10, 1, 11, 'test', '2023-04-11 23:41:11'),
(11, 1, 10, 'Fine', '2023-04-12 09:08:13'),
(12, 1, 11, 'Test', '2023-04-12 09:08:26'),
(13, 10, 1, 'Yeah Hamdulah', '2023-04-12 09:09:29'),
(14, 10, 4, 'Hey google', '2023-04-12 09:12:12'),
(15, 1, 10, 'Hi ', '2023-04-12 11:07:56'),
(16, 10, 1, 'How re u', '2023-04-12 11:08:29'),
(17, 1, 10, 'Fine', '2023-04-12 13:51:42'),
(18, 10, 1, 'Thanks. 👍', '2023-04-13 00:09:02'),
(19, 1, 10, 'Hey i wanna talk about our partnership', '2023-04-14 21:04:28'),
(20, 10, 1, 'Sure what do you want exactly to know', '2023-04-14 21:04:41'),
(21, 1, 10, 'hi', '2023-04-15 10:53:29'),
(22, 1, 10, 'How re u', '2023-04-15 22:51:25'),
(23, 1, 11, 'Chfiha Mohamed Ali mda5am', '2023-04-17 17:28:51'),
(24, 10, 1, 'Fine', '2023-04-18 14:51:48'),
(25, 17, 12, 'hEY', '2023-04-27 21:25:29'),
(26, 17, 12, '123', '2023-04-27 21:25:33'),
(27, 12, 17, 'hi', '2023-04-27 21:55:21'),
(28, 17, 12, 'hello', '2023-04-27 21:55:47'),
(29, 12, 17, 'nice', '2023-04-27 21:55:58'),
(30, 17, 12, 'fine', '2023-04-27 21:56:33'),
(31, 12, 17, 'cute', '2023-04-27 21:57:02'),
(32, 12, 17, 'hihihi', '2023-04-27 21:57:10'),
(33, 17, 12, 'nice', '2023-04-27 21:57:13'),
(34, 12, 17, 'what wrong', '2023-04-27 22:00:09'),
(35, 17, 12, 'nothing', '2023-04-27 22:05:10'),
(36, 12, 17, 'hi', '2023-04-27 22:05:28'),
(37, 1, 10, 'TEst', '2023-04-28 21:19:52'),
(38, 1, 10, 'Hi', '2023-04-29 13:26:47'),
(39, 10, 1, 'Okey', '2023-04-29 14:08:08'),
(40, 1, 10, 'Chfiha zayn', '2023-05-03 21:10:22'),
(41, 10, 1, 'hi', '2023-05-03 21:10:56'),
(42, 1, 10, 'hello', '2023-05-03 21:12:02'),
(43, 10, 1, 'ok', '2023-05-03 21:12:08'),
(44, 1, 10, 'test', '2023-05-03 21:12:15'),
(45, 10, 1, 'test', '2023-05-03 21:12:25'),
(46, 10, 1, 'hi', '2023-05-03 21:12:33'),
(47, 10, 1, 'h', '2023-05-03 21:12:41'),
(48, 10, 1, 'h', '2023-05-03 21:12:45'),
(49, 1, 10, 'hi', '2023-05-03 21:14:00'),
(50, 10, 1, 'a', '2023-05-03 21:14:15'),
(51, 10, 1, 'hi', '2023-05-03 21:22:23'),
(52, 10, 1, 'test', '2023-05-03 21:22:44'),
(53, 1, 10, 'a', '2023-05-03 21:23:00'),
(54, 10, 1, 'b', '2023-05-03 21:23:02'),
(55, 10, 1, 'c', '2023-05-03 21:23:06'),
(56, 1, 10, 'd', '2023-05-03 21:23:08'),
(57, 1, 10, 'azr', '2023-05-03 21:23:15'),
(58, 10, 1, 'qs', '2023-05-03 21:23:18');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `message` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `avatar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `user_id`, `title`, `message`, `created_at`, `avatar`) VALUES
(1, 1, 'Deposit', 'You have deposited 1000 to your account', '2023-05-01 21:51:47', NULL),
(2, 1, 'Partnership #17', 'Your partnership request has been payed', '2023-05-01 21:51:47', NULL),
(3, 10, 'Partnership #17', 'Your partnership request has been payed', '2023-05-01 21:51:47', NULL),
(4, 1, 'Withdraw', 'You have withdrawed 1645.00 from your account', '2023-05-01 21:51:47', NULL),
(5, 1, 'Partnership #20', 'Your partnership request has not been payed', '2023-05-01 21:51:47', NULL),
(6, 1, 'Partnership #20', 'Your partnership request has not been payed', '2023-05-01 21:51:47', NULL),
(7, 1, 'Partnership #20', 'Your partnership request has not been payed', '2023-05-01 21:51:47', NULL),
(8, 1, 'Partnership #20', 'Your partnership request has not been payed', '2023-05-01 21:51:47', NULL),
(9, 1, 'Partnership #20', 'Your partnership request has not been payed', '2023-05-01 21:51:47', NULL),
(10, 1, 'Deposit', 'You have deposited 1000 to your account', '2023-05-01 21:51:47', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `partnerships`
--

CREATE TABLE `partnerships` (
  `id` int(11) NOT NULL,
  `influencer_id` int(11) NOT NULL,
  `brand_id` int(11) NOT NULL,
  `terms` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `duration_unit` varchar(50) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `sender_id` int(11) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `partnerships`
--

INSERT INTO `partnerships` (`id`, `influencer_id`, `brand_id`, `terms`, `amount`, `duration`, `duration_unit`, `start_date`, `sender_id`, `status`) VALUES
(11, 10, 1, '', 160, 3, 'week', '2022-11-01', 1, 'Done'),
(14, 10, 1, '', 500, 5, 'week', '2024-12-31', 1, 'approved'),
(15, 10, 1, '', 400, 3, 'day', '2022-12-01', 1, 'Done'),
(16, 10, 1, '', 50, 1, 'day', '2023-01-01', 1, 'Done'),
(17, 10, 1, '', 400, 1, 'day', '2023-12-01', 1, 'approved'),
(20, 10, 1, '', 450, 2, 'month', '2023-04-13', 10, 'Payment Pending'),
(21, 10, 1, '', 50, -1, 'day', '2023-12-31', 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `rated_user_id` int(11) NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `rated_user_id`, `rating`, `created_at`) VALUES
(1, 1, 14, 1, '2023-04-14 09:53:02'),
(3, 1, 11, 4, '2023-04-14 13:25:02'),
(4, 1, 10, 5, '2023-04-14 20:46:59'),
(5, 10, 1, 5, '2023-04-14 21:00:57');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(11) NOT NULL,
  `reviewer_id` int(11) NOT NULL,
  `reviewed_user_id` int(11) NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `reviewer_id`, `reviewed_user_id`, `comment`, `created_at`) VALUES
(6, 1, 14, 'Test Review', '2023-04-14 11:41:52'),
(7, 1, 14, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Exercitationem quasi distinctio inventore sed, optio reprehenderit quos! Ipsa itaque fugit obcaecati.', '2023-04-14 20:39:04'),
(8, 1, 10, 'Lorem ipsum dolor, sit amet consectetur adipisicing elit. Exercitationem quasi distinctio inventore sed, optio reprehenderit quos! Ipsa itaque fugit obcaecati.\r\n', '2023-04-14 20:46:45'),
(9, 10, 1, 'Best services\r\n', '2023-04-14 21:01:05'),
(10, 1, 11, 'Review', '2023-04-29 13:29:36'),
(11, 1, 11, 'Review', '2023-04-29 13:29:41'),
(12, 1, 11, 'Review', '2023-04-29 13:30:45'),
(13, 1, 11, 'Review', '2023-04-29 13:31:28'),
(14, 1, 11, 'Review', '2023-04-29 13:31:35'),
(15, 1, 11, 'Review', '2023-04-29 13:31:43'),
(16, 1, 11, 'Review', '2023-04-29 13:31:51'),
(17, 1, 11, 'Review', '2023-04-29 13:34:03'),
(18, 1, 10, 'Review', '2023-04-29 13:37:23'),
(19, 10, 1, 'Second time\r\n', '2023-04-29 14:08:49');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `type` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `partnership_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `user_id`, `amount`, `type`, `created_at`, `partnership_id`) VALUES
(14, 1, 1000, 'desposit', '2023-04-13 21:34:43', NULL),
(15, 1, -25, 'withdraw', '2023-04-13 21:42:57', NULL),
(22, 1, -160, 'Partnership', '2023-04-13 23:41:30', 11),
(23, 1, -160, 'Partnership', '2023-04-13 23:41:43', 11),
(24, 1, -160, 'Partnership', '2023-04-13 23:41:56', 11),
(26, 1, 50, 'desposit', '2023-04-13 23:54:12', NULL),
(27, 1, 50, 'desposit', '2023-04-13 23:56:22', NULL),
(28, 1, -500, 'Partnership', '2023-04-13 23:58:21', 14),
(29, 1, -50, 'Partnership', '2023-04-14 00:01:12', 16),
(30, 10, 50, 'Partnership', '2023-04-14 00:19:30', 16),
(31, 10, 160, 'Partnership', '2023-04-14 00:20:18', 11),
(32, 1, 400, 'desposit', '2023-04-14 13:29:51', NULL),
(33, 1, -400, 'Partnership', '2023-04-14 13:29:55', 15),
(34, 10, 400, 'Partnership', '2023-04-14 13:31:07', 15),
(35, 10, -400, 'withdraw', '2023-04-28 16:06:26', NULL),
(36, 1, 1000, 'desposit', '2023-04-29 19:18:30', NULL),
(37, 1, 1000, 'desposit', '2023-04-29 19:18:48', NULL),
(38, 1, -400, 'Partnership', '2023-05-01 21:08:02', 17),
(39, 1, -1645, 'withdraw', '2023-05-01 21:08:26', NULL),
(40, 1, 1000, 'desposit', '2023-05-01 21:47:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(50) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `balance` int(11) DEFAULT 0,
  `token` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `role`, `avatar`, `balance`, `token`) VALUES
(1, 'Adidas', 'adidas@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'http://localhost/MVC_v2/public/uploads/644d12299fc7c.png', 1000, NULL),
(2, 'cocacola', 'cocacola@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://is3-ssl.mzstatic.com/image/thumb/Purple5/v4/1e/37/74/1e37748c-6ef6-89fa-022d-311c37f00883/source/256x256bb.jpg', 0, NULL),
(3, 'apple', 'apple@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://cdn.wallpapersafari.com/85/64/Gjov4X.jpg', 0, NULL),
(4, 'google', 'google@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://mir-s3-cdn-cf.behance.net/project_modules/max_1200/d2abd662597191.5a9589b09ddf5.jpg', 0, NULL),
(5, 'amazon', 'amazon@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://static.vecteezy.com/system/resources/previews/018/780/169/non_2x/3d-illustration-of-amazon-logo-free-png.png', 0, NULL),
(6, 'microsoft', 'microsoft@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://assets.bwbx.io/images/users/iqjWHBFdfxIU/iFfff2Dw7Xx4/v0/1200x-1.jpg', 0, NULL),
(7, 'pepsico', 'pepsico@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnZvlmWbGm4CAhRwN_KpNoJrWEiUZUw3x6ryKpjKhj9zChF67PASjJxVZXXCKNLLgWH-g&usqp=CAU', 0, NULL),
(8, 'samsung', 'samsung@brand.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'brand', 'https://static.vecteezy.com/system/resources/thumbnails/020/927/096/small/samsung-brand-logo-phone-symbol-white-design-south-korean-mobile-illustration-with-blue-background-free-vector.jpg', 0, NULL),
(10, 'Oussama ElNegraz', 'maria@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'http://localhost/MVC/public/uploads/644bf0715dbff.png', 210, NULL),
(11, 'Mohamed', 'med@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-1.png', 0, NULL),
(12, 'sophie', 'sophie@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-3.png', 0, NULL),
(13, 'David', 'david@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-1.png', 0, NULL),
(14, 'Fatima', 'fatima@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-2.png', 0, NULL),
(15, 'Kento', 'kento@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-3.png', 0, NULL),
(16, 'Sofia', 'sofia@influencer.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'influencer', 'https://www.wordpress.codeinsolution.com/influexa/wp-content/uploads/sites/24/2023/03/Team-1.png', 0, NULL),
(17, 'admin', 'admin@admin.com', '$2y$10$fhN9HLtoBpYxzsMuulGl6eCgYRipfb/Tkxxa/NsbSnWZRpKvkoWmS', 'admin', 'https://static.vecteezy.com/system/resources/previews/009/636/683/original/admin-3d-illustration-icon-png.png', 0, NULL),
(18, 'test', 'test@test.com', '$2y$10$kOn1VkP2BuKMoOvfZYuF7ufrTrXUAjKqSoa05kWMqxBv89iOmq76O', NULL, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `announcements`
--
ALTER TABLE `announcements`
  ADD PRIMARY KEY (`id`),
  ADD KEY `author_id` (`author_id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `credits`
--
ALTER TABLE `credits`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `deletedaccounts`
--
ALTER TABLE `deletedaccounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `influencers`
--
ALTER TABLE `influencers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_id` (`sender_id`),
  ADD KEY `receiver_id` (`receiver_id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `partnerships`
--
ALTER TABLE `partnerships`
  ADD PRIMARY KEY (`id`),
  ADD KEY `influencer_id` (`influencer_id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `sender_id` (`sender_id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `rated_user_id` (`rated_user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviewer_id` (`reviewer_id`),
  ADD KEY `reviewed_user_id` (`reviewed_user_id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `partnership_id` (`partnership_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `token` (`token`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `announcements`
--
ALTER TABLE `announcements`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `credits`
--
ALTER TABLE `credits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `deletedaccounts`
--
ALTER TABLE `deletedaccounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `influencers`
--
ALTER TABLE `influencers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `partnerships`
--
ALTER TABLE `partnerships`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admins`
--
ALTER TABLE `admins`
  ADD CONSTRAINT `admins_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `announcements`
--
ALTER TABLE `announcements`
  ADD CONSTRAINT `announcements_ibfk_1` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `brands`
--
ALTER TABLE `brands`
  ADD CONSTRAINT `brands_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `credits`
--
ALTER TABLE `credits`
  ADD CONSTRAINT `credits_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `deletedaccounts`
--
ALTER TABLE `deletedaccounts`
  ADD CONSTRAINT `deletedaccounts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `influencers`
--
ALTER TABLE `influencers`
  ADD CONSTRAINT `influencers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `partnerships`
--
ALTER TABLE `partnerships`
  ADD CONSTRAINT `partnerships_ibfk_1` FOREIGN KEY (`influencer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `partnerships_ibfk_2` FOREIGN KEY (`brand_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `partnerships_ibfk_3` FOREIGN KEY (`sender_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_ibfk_2` FOREIGN KEY (`rated_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`reviewer_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`reviewed_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`partnership_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
