-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 09, 2018 at 04:28 AM
-- Server version: 5.6.35
-- PHP Version: 7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_videoplayerproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `adult`
--

CREATE TABLE `adult` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `information` text NOT NULL,
  `catergories_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adult`
--

INSERT INTO `adult` (`id`, `name`, `information`, `catergories_id`, `picture`) VALUES
(0, 'Gone in Sixty Seconds', 'A retired master car thief must come back to the industry and steal fifty cars with his crew in one night to save his brother\'s life. ', 1, 'goneinsixtyseconds.jpg'),
(1, 'Mrs. Doubtfire', 'After a bitter divorce, an actor disguises himself as a female housekeeper to spend time with his children held in custody by his former wife. ', 2, 'mrsdoubtfire.jpg'),
(2, 'Star Wars The Last Jedi', 'Rey develops her newly discovered abilities with the guidance of Luke Skywalker, who is unsettled by the strength of her powers. Meanwhile, the Resistance prepares for battle with the First Order. ', 1, 'thelastjedi.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Action'),
(2, 'Comedy'),
(3, 'Children');

-- --------------------------------------------------------

--
-- Table structure for table `kids`
--

CREATE TABLE `kids` (
  `id` int(4) NOT NULL,
  `name` varchar(255) NOT NULL,
  `information` text NOT NULL,
  `categories_id` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `kids`
--

INSERT INTO `kids` (`id`, `name`, `information`, `categories_id`, `picture`) VALUES
(1, 'The Fox and the Hound', 'Two childhood friends find themselves forced to become enemies. ', 3, 'foxandthehound.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adult`
--
ALTER TABLE `adult`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catergories_id` (`catergories_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kids`
--
ALTER TABLE `kids`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `kids`
--
ALTER TABLE `kids`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `adult`
--
ALTER TABLE `adult`
  ADD CONSTRAINT `adult_ibfk_1` FOREIGN KEY (`catergories_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `kids`
--
ALTER TABLE `kids`
  ADD CONSTRAINT `kids_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
