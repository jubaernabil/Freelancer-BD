-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 25, 2021 at 09:55 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `bid_table`
--

CREATE TABLE `bid_table` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bid_table`
--

INSERT INTO `bid_table` (`id`, `buyer_id`, `username`, `description`) VALUES
(1, 7, 'Samiul', 'hellow its samiul'),
(2, 8, 'Nabil', 'hello its nabil');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int(255) NOT NULL,
  `admin_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `discription` varchar(255) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `UPDATED_AT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `admin_id`, `title`, `category`, `image`, `discription`, `CREATED_AT`, `UPDATED_AT`) VALUES
(6, 43, 'mesbaul', 'mj', '1625213617-.png', 'new', '2021-07-02', '2021-07-02');

-- --------------------------------------------------------

--
-- Table structure for table `blog_table`
--

CREATE TABLE `blog_table` (
  `id` int(222) NOT NULL,
  `title` varchar(100) NOT NULL,
  `category` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blog_table`
--

INSERT INTO `blog_table` (`id`, `title`, `category`) VALUES
(6, 'Blog1', 'blog'),
(7, 'StoryLine', 'william'),
(8, 'Web development', 'Gold'),
(13, 'Web design', 'Afffieliete course');

-- --------------------------------------------------------

--
-- Table structure for table `buyercon_table`
--

CREATE TABLE `buyercon_table` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `contest_file` varchar(100) NOT NULL,
  `price` int(111) NOT NULL,
  `time` date NOT NULL,
  `description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyercon_table`
--

INSERT INTO `buyercon_table` (`id`, `title`, `contest_file`, `price`, `time`, `description`) VALUES
(1, 'uuu', '1625299461-.png', 554, '2021-07-02', 'okay done'),
(17, 'Digital Marketing', 'dsgdg', 1213, '2012-12-12', 'Affiliate Marketing'),
(18, 'Digital Marketing', 'Contestfile', 1213, '2012-12-12', 'best course');

-- --------------------------------------------------------

--
-- Table structure for table `buyerpro_table`
--

CREATE TABLE `buyerpro_table` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `project_file` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `time` varchar(111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyerpro_table`
--

INSERT INTO `buyerpro_table` (`id`, `title`, `project_file`, `price`, `time`) VALUES
(20, 'Web development', 'php,js,laravel,ajax', 11, '9/2/22'),
(28, 'Machine Learning', 'dsgfsg', 100, '15/2/17'),
(33, 'QQQ', 'asd', 100, '15/2/17'),
(35, 'Digital Marketing11', 'asd', 12, '12/12/12');

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contest_file` text NOT NULL,
  `price` int(255) NOT NULL,
  `time` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `UPDATED_AT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`id`, `buyer_id`, `title`, `contest_file`, `price`, `time`, `description`, `CREATED_AT`, `UPDATED_AT`) VALUES
(47, 41, 'bKash', '1625289619-.jpg', 1233, '2021-06-10', 'ok', '2021-06-30', '2021-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `buyer_table`
--

CREATE TABLE `buyer_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(1111) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` int(222) NOT NULL,
  `description` varchar(100) NOT NULL,
  `image` varchar(1111) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer_table`
--

INSERT INTO `buyer_table` (`id`, `username`, `password`, `first_name`, `last_name`, `email`, `phone`, `description`, `image`) VALUES
(1, 'Samiul', '122134', 'Md. Samiul', 'Hoque', 'samiul59@gmail.com', 79532536, 'Hey, i am Sam', ''),
(2, 'Mesba', '13155', 'Mesbaul', 'Alam', 'mesbau4@gmail.com', 90634647, 'hello, this is mesba ', '');

-- --------------------------------------------------------

--
-- Table structure for table `contests`
--

CREATE TABLE `contests` (
  `id` int(255) NOT NULL,
  `buyer_id` int(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contest_file` text NOT NULL,
  `price` int(255) NOT NULL,
  `time` date NOT NULL,
  `description` varchar(255) NOT NULL,
  `CREATED_AT` date NOT NULL,
  `UPDATED_AT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contests`
--

INSERT INTO `contests` (`id`, `buyer_id`, `title`, `contest_file`, `price`, `time`, `description`, `CREATED_AT`, `UPDATED_AT`) VALUES
(1, 41, 'landing page', '1625289596-.jpg', 123, '2021-07-08', 'done', '2021-07-02', '2021-07-03');

-- --------------------------------------------------------

--
-- Table structure for table `employee_table`
--

CREATE TABLE `employee_table` (
  `id` int(222) NOT NULL,
  `name` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee_table`
--

INSERT INTO `employee_table` (`id`, `name`, `user_name`, `password`, `company_name`, `contact`) VALUES
(3, 'Alam', '12ssf', '244t4', 'bobl', '1313'),
(4, 'Md Smiul Alam', 'samiul345', '12134', 'orbitech', '1313');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_table`
--

CREATE TABLE `job_table` (
  `id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `company_name` varchar(100) NOT NULL,
  `location` varchar(100) NOT NULL,
  `salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `job_table`
--

INSERT INTO `job_table` (`id`, `title`, `company_name`, `location`, `salary`) VALUES
(4, 'Digital Marketing', 'orbitech', 'farmgate', 111),
(5, 'Web development', 'orbitech', 'uttora', 1213);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `seller_table`
--

CREATE TABLE `seller_table` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `discription` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seller_table`
--

INSERT INTO `seller_table` (`id`, `username`, `email`, `discription`) VALUES
(1, 'Robertson', 'Robertson12@gmail.com', 'I am from scottland.I am searching for web developer'),
(2, 'Kayle jamieson', 'jamieson12@gmail.com', 'I am looking for digital marketer');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` int(100) NOT NULL,
  `type` varchar(100) NOT NULL,
  `dept` varchar(100) NOT NULL,
  `active` int(222) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `type`, `dept`, `active`) VALUES
(1, 'samiul', 23342154, '3', 'cse', 1),
(2, 'mumu', 1212, '2', 'se', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_table`
--

CREATE TABLE `user_table` (
  `id` int(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(222) NOT NULL,
  `password` varchar(100) NOT NULL,
  `type` int(100) NOT NULL,
  `phone` int(11) NOT NULL,
  `active` int(100) NOT NULL,
  `adress` varchar(222) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_table`
--

INSERT INTO `user_table` (`id`, `username`, `email`, `password`, `type`, `phone`, `active`, `adress`, `image`) VALUES
(2, 'Samiul', 'samiul@gmail.com', '7654321', 3, 321124, 1, 'uttara', ''),
(8, 'Fuad', 'fuad13@gmail.com', '6867224124', 2, 435475, 1, 'bogora', ''),
(10, 'Nabil', 'jobair78@gmail.com', '335231', 3, 13255476, 1, 'comilla', ''),
(11, 'Mesbahul', 'mesbaul90@gmail.com', 'daf1111sa', 1, 184356, 1, 'nowgaon', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bid_table`
--
ALTER TABLE `bid_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_table`
--
ALTER TABLE `blog_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyercon_table`
--
ALTER TABLE `buyercon_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyerpro_table`
--
ALTER TABLE `buyerpro_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `buyer_table`
--
ALTER TABLE `buyer_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_table`
--
ALTER TABLE `employee_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `job_table`
--
ALTER TABLE `job_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `seller_table`
--
ALTER TABLE `seller_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bid_table`
--
ALTER TABLE `bid_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `blog_table`
--
ALTER TABLE `blog_table`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `buyercon_table`
--
ALTER TABLE `buyercon_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `buyerpro_table`
--
ALTER TABLE `buyerpro_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `buyer_table`
--
ALTER TABLE `buyer_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee_table`
--
ALTER TABLE `employee_table`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `job_table`
--
ALTER TABLE `job_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `seller_table`
--
ALTER TABLE `seller_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
