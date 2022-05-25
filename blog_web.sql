-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2022 at 04:17 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `status` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`, `status`) VALUES
(1, 'tithi@gmail.com', 'tithi', 2);

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

CREATE TABLE `blog` (
  `id` int(255) NOT NULL,
  `titel` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `publish_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(255) NOT NULL,
  `author` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` (`id`, `titel`, `img`, `description`, `publish_date`, `status`, `author`) VALUES
(14, 'Eggless Black Forest Cake Recipe', 'eggless-black-forest-cake.jpg.webp', 'If you love sweets as much as I do, you’re in for a real treat. I’ve compiled a list of over 35 of my favorite cake recipes, all of which are egg free! Whether you’re looking for a tasty snack to serve with your afternoon tea or need a show-stopping cente', '2022-05-20 15:03:34', 1, 'Tithi'),
(15, 'Homemade Chocolate Recipe', 'IMG_E9010-scaled.jpg', 'Making your own chocolate is so easy and quick..it requires only 4 main ingredients and a few easy steps . I have been experimenting with homemade chocolate since the last few days and have made several batches (few of which were curdled n ruined because ', '2022-05-20 15:08:01', 1, 'Titu'),
(16, 'Ice Cream Recipe', 'vanilla-ice-cream-recipe.webp', 'This quick and easy ice cream recipe is a basic ice cream made with cream and condensed milk. this is a soft, smooth and velvety ice cream recipe (without any ice crystals) and a recipe that does not take much time.\r\n\r\nThere is no cooking involved and als', '2022-05-21 13:34:11', 0, 'supu'),
(17, 'duck', 'duck2.jpeg', 'it is a duck', '2022-05-24 06:06:04', 0, 'rana'),
(18, 'dog', 'download (1).jpeg', 'Dogs are very reliable animals.', '2022-05-24 14:29:18', 0, 'tithi');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` int(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `phone`) VALUES
(3, 'Tithi Mondal', 'tithi@gmail.com', 2147483647),
(4, 'ranabir mondal', 'ranabirmondal14@gmail.com', 2147483647);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `role`) VALUES
(15, 'iti', 'iti@gmail.com', '1234', 0),
(19, 'tithi', 'tithi@gmail.com', '6767', 0),
(20, 'mou', 'mou@gmail.com', 'mou', 0),
(21, 'abcd', 'abcd@gmail.com', 'abcd', 0),
(22, 'abcd', 'abcd@gmail.com', 'abcd', 0),
(23, 'priti mondal', 'priti@gmail.com', 'priti', 0),
(24, 'supu', 'supu@gmail.com', '1234', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog`
--
ALTER TABLE `blog`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `blog`
--
ALTER TABLE `blog`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
