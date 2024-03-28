-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 27, 2024 at 09:51 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crud`
--

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `hobbies` varchar(100) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `deleted_user` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `gender`, `hobbies`, `department_id`, `deleted_user`) VALUES
(1, 'John', 'Doe', 'john.doe@example.com', 'hashedpassword1', 'Male', 'Reading, Swimming', 6, 0),
(2, 'Vanraj', 'Rajwadi', 'vanraj@gmail.com', 'vanraj123', 'Male', 'Listening Songs, DotNet', 5, 0),
(3, 'Keval', 'Dave', 'keval@gmail.com', 'keval123', 'Male', 'Andriod , PUBG', 7, 0),
(4, 'Hardik', 'Prajapati', 'hardikp@gmail.com', 'hardik123', 'Male', 'Coding , Dancing', 6, 0),
(5, 'David', 'Lee', 'david.lee@example.com', 'hashedpassword5', 'Male', 'Gaming, Watching Movies', 6, 0),
(6, 'Sarah', 'Wilson', 'sarah.wilson@example.com', 'hashedpassword6', 'Female', 'Singing, Yoga', 1, 0),
(7, 'Daniel', 'Martinez', 'daniel.martinez@example.com', 'hashedpassword7', 'Male', 'Cycling, Playing Guitar', 3, 0),
(8, 'Jessica', 'Taylor', 'jessica.taylor@example.com', 'hashedpassword8', 'Female', 'Cooking, Reading', 4, 0),
(9, 'Matthew', 'Anderson', 'matthew.anderson@example.com', 'hashedpassword9', 'Male', 'Running, Writing', 1, 0),
(10, 'Olivia', 'Garcia', 'olivia.garcia@example.com', 'hashedpassword10', 'Female', 'Painting, Photography', 3, 1),
(11, 'Yash', 'Ahir', 'yash@gmail.com', 'yashahir1', 'Male', 'Cricket, Coding', 1, 0),
(12, 'Yash', 'Ahir', 'yash5@gmail.com', 'yashahir1', 'Male', 'Cricket, Coding', 1, 0),
(13, 'Hardik', 'Ahir', 'hardik@gmail.com', 'hardik123', 'Male', 'Stock Market, Coding', 2, 0),
(14, 'Aniket', 'Shah', 'aniket@gmail.com', 'aniket123', 'Male', 'Stock Market, Andriod', 7, 0);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
