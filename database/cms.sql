-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 15, 2024 at 02:03 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cms`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(3) NOT NULL,
  `cat_title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'HTML'),
(2, 'CSS'),
(3, 'JavaScript'),
(4, 'jQuery'),
(5, 'PHP');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `comment_id` int(11) NOT NULL,
  `comment_post_id` int(11) NOT NULL,
  `comment_author` varchar(255) NOT NULL,
  `comment_email` varchar(255) NOT NULL,
  `comment_content` text NOT NULL,
  `comment_status` varchar(255) NOT NULL,
  `comment_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`comment_id`, `comment_post_id`, `comment_author`, `comment_email`, `comment_content`, `comment_status`, `comment_date`) VALUES
(1, 1, 'Abbas Jamdar', 'abbasjamdar53@gmail.com', 'I love HTML because it is simple enough to learn', 'approved', '2024-12-12'),
(2, 2, 'Ammar Raj', 'ammarraj953@gmail.com', 'I love CSS because it is simple enough to learn', 'approved', '2024-12-12'),
(3, 3, 'Murtaza Sandal', 'murtaza786@gmail.com', 'I love JavaScript because it is simple enough to learn', 'approved', '2024-12-12'),
(4, 4, 'Taher Vakil', 'tahervakil53@gmail.com', 'I love jQuery because it is simple enough to learn', 'approved', '2024-12-12'),
(5, 5, 'Safder Husain', 'hakku010@yahoo.com', 'I love PHP because it is simple enough to learn', 'approved', '2024-12-12');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_category_id` int(11) NOT NULL,
  `post_title` varchar(255) NOT NULL,
  `post_author` varchar(255) NOT NULL,
  `post_user` varchar(255) NOT NULL,
  `post_date` date NOT NULL,
  `post_image` text NOT NULL,
  `post_content` text NOT NULL,
  `post_tags` varchar(255) NOT NULL,
  `post_comment_count` int(11) NOT NULL,
  `post_status` varchar(255) NOT NULL DEFAULT 'draft',
  `post_views_count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_category_id`, `post_title`, `post_author`, `post_user`, `post_date`, `post_image`, `post_content`, `post_tags`, `post_comment_count`, `post_status`, `post_views_count`) VALUES
(1, 1, 'HTML', '', 'Hussain', '2024-12-12', 'html.png', '<p>Hypertext Markup Language is the standard markup language for creating web pages and web applications. With Cascading Style Sheets and JavaScript, it forms a triad of cornerstone technologies for the World Wide Web.</p>', 'Hyper Text Markup Language, HTML, Language', 0, 'published', 5),
(2, 2, 'CSS', '', 'Mohammed', '2024-12-12', 'css.png', '<p>Cascading Style Sheets is a style sheet language used for describing the presentation of a document written in a markup language like HTML. CSS is a cornerstone technology of the World Wide Web, alongside HTML and JavaScript.</p>', 'cacading, styles, sheet, CSS, design', 0, 'published', 5),
(3, 3, 'JavaScript', '', 'Abbas', '2024-12-12', 'javascript.png', '<p>JavaScript, often abbreviated as JS, is a high-level, interpreted programming language. It is a language which is also characterized as dynamic, weakly typed, prototype-based and multi-paradigm.</p>', 'js, javascript, animation, validation', 0, 'published', 6),
(4, 4, 'jQuery', '', 'Ammar', '2024-12-12', 'jquery.jpg', '<p>jQuery is a cross-platform JavaScript library designed to simplify the client-side scripting of HTML. It is free, open-source software using the permissive MIT License.</p>', 'jQuery, front-end, minified, fast', 0, 'published', 5),
(5, 5, 'PHP', '', 'Hakim', '2024-12-12', 'php.png', '<p>PHP: Hypertext Preprocessor is a server-side scripting language designed for web development but also used as a general-purpose programming language.</p>', 'PHP, Hyper, Text, Pre Processor, Back-End, Programming, Language', 0, 'published', 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_image` text NOT NULL,
  `user_role` varchar(255) NOT NULL,
  `randSalt` varchar(255) NOT NULL DEFAULT '$2y$10$iusesomecrazystrings22'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `user_firstname`, `user_lastname`, `user_email`, `user_image`, `user_role`, `randSalt`) VALUES
(1, 'Hakim', '$2y$10$VUjxuPFysq6YogV5BiUWD.ge6UAG4yhvVg1MHDNvItpv/GwhOHRLO', 'Hakimuddin', 'Ratlamwala', 'cool786hakku@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(2, 'Ammar', '$2y$10$vx.kVwCFftGbyB7zj.ADcORyIQhhJ/xe4ir/z45SaO4p1nycbjUam', 'Ammar', 'Raj', 'ammarraj953@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(3, 'Taher', '$2y$10$t7U/2BZQfSI.3Qp7QfnE0ew5cf1hoxkHZN8E8iiQ7MFHKnANq4Noq', 'Taher', 'Vakil', 'tahervakil53@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(4, 'Idrees', '$2y$10$4Ej4h.6GYOOsPwWIbQGEbO5lMRMZEtbCK8mPQiHbjiWy8EWVZY.U.', 'Idrees', 'Barnagarwala', 'idrees786@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(5, 'Abbas', '$2y$10$nbsaGvL7B5QYPQ8MhU4YJOMrqJYww7YF8yZYU/DeSboIrIXPC/KXq', 'Abbas', 'Jamdar', 'abbasjamdar53@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(6, 'Hussain', '$2y$10$JH62AYx6JAVmf4tG.LXceuU4l00CAdBmF7AEbFMhqvR1soqkULhhK', 'Hussain', 'Bhinderwala', 'hussain786@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(7, 'Mohammed', '$2y$10$sUQwbbrSXfjo9gt1sdQvKujWFQJvb4VMDK5Wgd1Bi7CB08R8TqQn.', 'Mohammed', 'Shahpur', 'mohammed786@gmail.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(8, 'Murtaza', '$2y$10$cBNlUqHoWiCATfAOurZTeuqZc7ptK5Yvd4DQtFLtM8KcONBvx98da', 'Murtaza', 'Sandal', 'murtaza786@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22'),
(9, 'Safder', '$2y$10$trbgmNt9YtqpVGb2nFFxyOPLI2icp2aV.FFgbhFH34MJjoJNWtcV.', 'Safder', 'Husain', 'hakku010@yahoo.com', '', 'Admin', '$2y$10$iusesomecrazystrings22'),
(10, 'Zahid', '$2y$10$7BgcMgU1zCMEBpRa5IXrsuRr/WjaigYHakMuOWIdvVA5S2s80vrg2', 'Zahid', 'Husain', 'zahidratlamwala339@gmail.com', '', 'Subscriber', '$2y$10$iusesomecrazystrings22');

-- --------------------------------------------------------

--
-- Table structure for table `users_online`
--

CREATE TABLE `users_online` (
  `id` int(11) NOT NULL,
  `session` varchar(255) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users_online`
--

INSERT INTO `users_online` (`id`, `session`, `time`) VALUES
(1, '05sdnedn54dajgvdojs9dkl74m', 1734267784);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`comment_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users_online`
--
ALTER TABLE `users_online`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `users_online`
--
ALTER TABLE `users_online`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
