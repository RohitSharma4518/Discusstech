-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 01, 2022 at 02:07 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `discuss_tech`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `categories_id` int(10) NOT NULL,
  `categories_name` text NOT NULL,
  `categories_description` text NOT NULL,
  `created_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`categories_id`, `categories_name`, `categories_description`, `created_date`) VALUES
(1, 'Python', 'Python is an interpreted high-level general-purpose programming language. ', '2021-08-22 20:41:38'),
(2, 'JavaScript', 'JavaScript, often abbreviated as JS, is a programming language that conforms to the ECMAScript specification.', '2021-08-22 20:42:25'),
(3, 'Ruby', 'Ruby is an interpreted, high-level, general-purpose programming language.', '2021-08-31 14:00:07'),
(4, 'Kotlin', 'Kotlin is a cross-platform, statically typed, general-purpose programming language with type inference.', '2021-08-31 14:02:02');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(5) NOT NULL,
  `comment_desc` text NOT NULL,
  `thread_id` int(5) NOT NULL,
  `commented_by` int(5) NOT NULL,
  `comment_time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_desc`, `thread_id`, `commented_by`, `comment_time`) VALUES
(1, 'This is a Comment1', 1, 1, '2021-09-03 00:26:10'),
(2, 'FT', 1, 2, '2021-09-03 21:17:25'),
(3, 'hello\r\n', 1, 3, '2021-09-03 21:22:35'),
(4, 'hello\r\n', 1, 2, '2021-09-03 21:23:42'),
(5, 'hello\r\n', 1, 1, '2021-09-03 21:24:28'),
(6, 'This is another comment after making the comment page more informative bcoz of adding the username above the comment that they have posted', 1, 0, '2021-09-11 00:22:54'),
(7, 'This is a test post to check weather the new posts are getting the username or not of logged in users', 1, 3, '2021-09-11 00:51:31'),
(8, 'This is a post for testing thread 2', 5, 1, '2021-11-11 09:28:07'),
(9, 'This is nice question', 5, 2, '2021-11-11 10:33:57');

-- --------------------------------------------------------

--
-- Table structure for table `thread`
--

CREATE TABLE `thread` (
  `thread_id` int(5) NOT NULL,
  `thread_title` varchar(255) NOT NULL,
  `thread_desc` text NOT NULL,
  `thread_cat_id` int(4) NOT NULL,
  `thread_user_id` int(4) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `thread`
--

INSERT INTO `thread` (`thread_id`, `thread_title`, `thread_desc`, `thread_cat_id`, `thread_user_id`, `timestamp`) VALUES
(1, 'Installation Python IDE', 'I am not able to install Python IDE. What to do no...', 1, 1, '2021-09-11 23:43:06'),
(2, 'This is just a test Thread!', 'To see weather the I am able to post the userid or..', 1, 3, '2021-09-11 23:44:11'),
(3, 'JavaScript', 'JavaScript, often abbreviated as JS, is a programm...', 2, 3, '2021-09-11 23:57:36'),
(4, 'This is for testing purpose', 'Hello this is kuch bhi\r\n', 2, 4, '2021-09-11 23:59:15'),
(5, 'Testing 2', 'This is for testing 2', 2, 1, '2021-11-11 09:26:37'),
(6, 'JavaScr', '', 2, 2, '2021-11-11 10:29:39'),
(7, 'datatype error', 'datatype is invalid', 2, 3, '2021-11-11 14:53:28');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(8) NOT NULL,
  `username` varchar(50) NOT NULL,
  `userpass` varchar(255) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `userpass`, `timestamp`) VALUES
(1, 'admin@123', '$2y$10$UdqIkqCLutyW6JgqehbpC.B0VvKcTBArhZ.l2sNiUGHiBaMQG94hq', '2021-11-11 09:25:17'),
(2, 'admin@1234', '$2y$10$yRJ98zv4dqHH3DjCoHRfd.uf..RD/3uX4YNe/TjvT95Q/m1FF3j2q', '2021-11-11 10:26:06'),
(3, 'admin@1', '$2y$10$nvhCtTxODKc/Z9uN9Gk2heTtG9KWzyo3wHlR2vp8udBj9lEdp7hd.', '2021-11-11 14:51:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`categories_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `thread`
--
ALTER TABLE `thread`
  ADD PRIMARY KEY (`thread_id`);
ALTER TABLE `thread` ADD FULLTEXT KEY `thread_title` (`thread_title`,`thread_desc`);
ALTER TABLE `thread` ADD FULLTEXT KEY `thread_title_2` (`thread_title`,`thread_desc`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `categories_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `thread`
--
ALTER TABLE `thread`
  MODIFY `thread_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
