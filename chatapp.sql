-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 02, 2022 at 05:12 AM
-- Server version: 8.0.27
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chatapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `address` text NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_type` tinyint(1) NOT NULL,
  `user_status` tinyint(1) NOT NULL,
  `friends` text,
  `user_pic` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `phone`, `address`, `password`, `user_type`, `user_status`, `friends`, `user_pic`) VALUES
(1, 'test', 'test@gmail.com', '3453453455', 'tes', 'test', 1, 1, '[\"2\"]', 'man.jpg'),
(2, 'test2', 'test2@gmail.com', '3453453455', 'tes', 'test', 1, 1, '[\"1\"]', 'woman.jpg'),
(3, 'Satya Sai Prakash ', 'saiprakash359@gmail.com', '7032833453', 'Bobbili', '984803291', 1, 1, '[\"1\",\"2\"]', 'default_img.jpeg');

-- --------------------------------------------------------

--
-- Table structure for table `users_messages`
--

DROP TABLE IF EXISTS `users_messages`;
CREATE TABLE IF NOT EXISTS `users_messages` (
  `msg_id` int NOT NULL AUTO_INCREMENT,
  `msg_content` longtext NOT NULL,
  `msg_status` tinyint(1) NOT NULL,
  `receiver_id` int NOT NULL,
  `receiver_status` tinyint(1) NOT NULL,
  `sender_id` int NOT NULL,
  `msg_createddate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sender_status` tinyint(1) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`msg_id`)
) ENGINE=MyISAM AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users_messages`
--

INSERT INTO `users_messages` (`msg_id`, `msg_content`, `msg_status`, `receiver_id`, `receiver_status`, `sender_id`, `msg_createddate`, `sender_status`, `user_id`) VALUES
(1, 'hiiiii', 1, 2, 1, 1, '2022-11-02 01:20:01', 1, 1),
(2, 'testtt', 1, 2, 1, 1, '2022-11-02 01:21:01', 1, 1),
(3, 'testtt', 1, 2, 1, 1, '2022-11-02 01:22:12', 1, 1),
(4, 'testt', 1, 2, 1, 1, '2022-11-02 01:23:01', 1, 1),
(5, 'Test', 1, 1, 1, 2, '2022-11-02 01:24:01', 1, 2),
(6, 'Checked', 1, 1, 1, 2, '2022-11-02 01:25:01', 1, 2),
(7, 'Test', 1, 1, 1, 2, '2022-11-02 01:26:01', 1, 2),
(8, 'Ok gor it', 1, 1, 1, 2, '2022-11-02 01:27:01', 1, 2),
(9, 'Ok ', 1, 1, 1, 2, '2022-11-02 01:28:01', 1, 2),
(10, 'Ok', 1, 2, 1, 1, '2022-11-02 01:29:01', 1, 1),
(11, 'Kk', 1, 2, 1, 1, '2022-11-02 01:29:02', 1, 1),
(12, 'Kkkaa', 1, 2, 1, 1, '2022-11-02 01:29:03', 1, 1),
(13, 'Always a gem', 1, 1, 1, 2, '2022-11-02 01:29:07', 1, 2),
(14, 'test', 1, 2, 1, 1, '2022-11-02 01:29:09', 1, 1),
(15, 'test', 1, 2, 1, 1, '2022-11-02 01:30:51', 1, 1),
(16, 'Goodam', 1, 1, 1, 2, '2022-11-02 01:38:22', 1, 2),
(17, 'i m ok', 1, 2, 1, 1, '2022-11-02 01:38:38', 1, 1),
(18, 'i mm okk', 1, 2, 1, 1, '2022-11-02 01:39:10', 1, 1),
(19, 'Good the nefwork is somehow slow', 1, 1, 1, 2, '2022-11-02 01:39:19', 1, 2),
(20, 'i kn0ow', 1, 2, 1, 1, '2022-11-02 01:39:27', 1, 1),
(21, 'Ok then all is well man', 1, 1, 1, 2, '2022-11-02 01:39:37', 1, 2),
(22, 'nooo not well', 1, 2, 1, 1, '2022-11-02 01:39:51', 1, 1),
(23, 'Hiiii', 1, 3, 1, 2, '2022-11-02 03:15:21', 1, 2),
(24, 'Hiii', 1, 3, 1, 1, '2022-11-02 03:16:51', 1, 1),
(25, 'Hiiii', 1, 3, 1, 1, '2022-11-02 03:18:03', 1, 1),
(26, 'dddd', 1, 2, 1, 1, '2022-11-02 03:27:09', 1, 1),
(27, 'sdsdf', 1, 1, 1, 2, '2022-11-02 03:27:14', 1, 2),
(28, 'sdfsfd', 1, 1, 1, 3, '2022-11-02 03:28:11', 1, 3),
(29, 'sdfsdf', 1, 3, 1, 1, '2022-11-02 03:28:20', 1, 1),
(30, 'sdfsdfsfd', 1, 1, 1, 3, '2022-11-02 03:28:22', 1, 3),
(31, 'Hii', 1, 1, 1, 3, '2022-11-02 03:29:03', 1, 3),
(32, 'hiiii', 1, 3, 1, 1, '2022-11-02 03:29:09', 1, 1),
(33, 'Entra ee app ', 1, 1, 1, 3, '2022-11-02 03:29:30', 1, 3),
(34, 'Thupuk', 1, 1, 1, 3, '2022-11-02 03:29:36', 1, 3),
(35, 'Entra', 1, 3, 1, 1, '2022-11-02 03:29:40', 1, 1),
(36, 'Ala antav', 1, 3, 1, 1, '2022-11-02 03:29:42', 1, 1),
(37, 'Nv', 1, 3, 1, 1, '2022-11-02 03:29:43', 1, 1),
(38, 'Jaffa ', 1, 1, 1, 3, '2022-11-02 03:29:48', 1, 3),
(39, 'Nuvve ra jafffa vi', 1, 3, 1, 1, '2022-11-02 03:29:52', 1, 1),
(40, 'Chi ', 1, 1, 1, 3, '2022-11-02 03:30:16', 1, 3),
(41, 'Entra extralaa', 1, 3, 1, 1, '2022-11-02 03:30:23', 1, 1),
(42, 'Karustha', 1, 3, 1, 1, '2022-11-02 03:30:26', 1, 1),
(43, 'Na ishtam ra', 1, 1, 1, 3, '2022-11-02 03:30:27', 1, 3),
(44, 'Nenh oppukonu ', 1, 3, 1, 1, '2022-11-02 03:30:31', 1, 1),
(45, 'Bose dk', 1, 1, 1, 3, '2022-11-02 03:30:33', 1, 3);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
