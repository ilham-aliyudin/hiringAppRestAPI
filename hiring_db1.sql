-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 13, 2020 at 05:25 PM
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
-- Database: `hiring_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `engineer`
--

CREATE TABLE `engineer` (
  `id` int(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jobdesc` varchar(100) NOT NULL,
  `lokasi` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `skill` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `engineer`
--

INSERT INTO `engineer` (`id`, `nama`, `jobdesc`, `lokasi`, `status`, `deskripsi`, `skill`) VALUES
(22, 'Ryunoesuke', 'Web Developer', 'Surabaya', 'Freelancer', 'Native Mobile Programmer with Kotlin', 'PHP'),
(24, 'ilham aliyudin', 'Web Developer', 'Bandung', 'Freelancer', 'Native Mobile Programmer with Kotlin', 'Kotlin'),
(26, 'Lionel messsiah', 'Web Developer', 'Surabaya', 'Freelancer', 'Native Mobile Programmer with Kotlin', 'PHP'),
(27, 'Christian Ronaldo', 'Sys Admin', 'Jakarta', 'Freelancer', 'Junior Sys Admins', 'Linux'),
(28, 'Pogba', 'Sys Admin', 'Jakarta', 'Freelancer', 'Junior Sys Admins', 'Linux'),
(29, 'Manuel Neur', 'Sys Admin', 'Jakarta', 'Freelancer', 'Junior Sys Admins', 'Linux'),
(30, 'Lewadownski', 'Devs Ops', 'Banten', 'Fulltime', 'Junior Devs Ops', 'Linux'),
(31, 'Gotze', 'Sys Admin', 'Jakarta', 'Freelancer', 'Junior Sys Admins', 'Linux');

-- --------------------------------------------------------

--
-- Table structure for table `experience`
--

CREATE TABLE `experience` (
  `id` int(30) NOT NULL,
  `company_name` varchar(20) NOT NULL,
  `position` varchar(20) NOT NULL,
  `start_periode` varchar(20) NOT NULL,
  `end_periode` varchar(20) NOT NULL,
  `description` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `experience`
--

INSERT INTO `experience` (`id`, `company_name`, `position`, `start_periode`, `end_periode`, `description`) VALUES
(1, 'PT MAHA RAJA', 'SYS ADMIN', '20 Agustus 2011', '17 Agustus 2017', 'No Description');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(30) NOT NULL,
  `nama_app` varchar(100) NOT NULL,
  `link_github` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `image` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `nama_app`, `link_github`, `deskripsi`, `image`) VALUES
(5, 'bedah', 'Disini link githubnya', 'Ini Deskripsi', 'image-1601184894510-apis-for-marketers.png'),
(9, 'bedah', 'Disini link githubnya', 'Ini Deskripsi', 'image-1601185207654-Screenshot (7).png'),
(10, 'bedah', 'Disini link githubnya', 'Ini Deskripsi', 'image-1601186163675-Screenshot (7).png');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id_project` int(30) NOT NULL,
  `project_name` varchar(100) NOT NULL,
  `description` varchar(100) NOT NULL,
  `deadline` datetime NOT NULL,
  `image` varchar(100) NOT NULL,
  `id_recruiter` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id_project`, `project_name`, `description`, `deadline`, `image`, `id_recruiter`) VALUES
(1, 'Membangun Jembatan ', 'Membangun Jembatan Gantung Sukabumi', '2020-10-12 19:43:20', 'null', 3);

-- --------------------------------------------------------

--
-- Table structure for table `recruiter`
--

CREATE TABLE `recruiter` (
  `id` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `bidang` varchar(20) NOT NULL,
  `lokasi` varchar(20) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `email` varchar(20) NOT NULL,
  `kontak` int(20) NOT NULL,
  `jabatan` varchar(20) NOT NULL,
  `id_user` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `recruiter`
--

INSERT INTO `recruiter` (`id`, `nama`, `bidang`, `lokasi`, `deskripsi`, `email`, `kontak`, `jabatan`, `id_user`) VALUES
(3, 'PT.Sentosa Abadi', 'Arsitektur', 'Bandung', 'Perusahaan di dibidang furniture', 'anginribut@gmail.com', 8562, 'HRD', 11);

-- --------------------------------------------------------

--
-- Table structure for table `skill`
--

CREATE TABLE `skill` (
  `id_skill` int(30) NOT NULL,
  `nama_skill` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skill`
--

INSERT INTO `skill` (`id_skill`, `nama_skill`) VALUES
(1, ''),
(2, 'kotlin');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_password` varchar(200) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_role` int(1) NOT NULL,
  `user_status` int(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `user_password`, `user_email`, `user_role`, `user_status`, `created_at`, `updated_at`) VALUES
(11, 'ilham aliyudin', '$2a$10$Pycye8nF6ddr4xfhsUx2FetBA7ZIMmF.G3nIIj3Q9GRLiSIIVOYGy', 'ilham@gmail.com', 1, 1, '2020-09-26 12:55:39', '2020-09-26 12:55:39'),
(14, 'raitenshi', '$2a$10$b18c9bdBXIcScNs9m87yYOS68MpvWoDPn.2Zu1S0MEk4R007/Wueq', 'raitenshi@gmail.com', 1, 1, '2020-10-13 15:17:37', '2020-10-13 15:17:37');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `engineer`
--
ALTER TABLE `engineer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `experience`
--
ALTER TABLE `experience`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`),
  ADD KEY `id_recruiter` (`id_recruiter`);

--
-- Indexes for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `skill`
--
ALTER TABLE `skill`
  ADD PRIMARY KEY (`id_skill`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `engineer`
--
ALTER TABLE `engineer`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `experience`
--
ALTER TABLE `experience`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `recruiter`
--
ALTER TABLE `recruiter`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `skill`
--
ALTER TABLE `skill`
  MODIFY `id_skill` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `project_ibfk_1` FOREIGN KEY (`id_recruiter`) REFERENCES `recruiter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `recruiter`
--
ALTER TABLE `recruiter`
  ADD CONSTRAINT `recruiter_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
