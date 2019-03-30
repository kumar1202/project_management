-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 30, 2019 at 09:58 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `proman`
--

-- --------------------------------------------------------

--
-- Table structure for table `path`
--

CREATE TABLE `path` (
  `filename` varchar(50) NOT NULL,
  `path` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `path`
--

INSERT INTO `path` (`filename`, `path`) VALUES
('cnrep.docx', 'uploads/cnrep.docx'),
('cnrep.docx', 'uploads/cnrep.docx'),
('Eberhart0120-20PSO.docx', 'uploads/testEberhart0120-20PSO.docx'),
('cnrep.docx', 'uploads/messmanagementcnrep.docx'),
('Eberhart0120-20PSO.docx', 'uploads/testing/Eberhart0120-20PSO.docx'),
('cnrepfinal.docx', 'uploads/testing/cnrepfinal.docx'),
('cnrepfinal.docx', 'uploads/hel/cnrepfinal.docx'),
('Eberhart0120-20PSO.docx', 'uploads/messmanagement/Eberhart0120-20PSO.docx'),
('cnrep.docx', 'uploads/shakti/cnrep.docx');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `proid` int(100) NOT NULL,
  `propass` varchar(15) NOT NULL,
  `proname` varchar(100) NOT NULL,
  `prodeadline` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`proid`, `propass`, `proname`, `prodeadline`) VALUES
(1, '', 'messmanagement', '2019-03-30'),
(4, '', 'tri', '2019-03-29');

-- --------------------------------------------------------

--
-- Table structure for table `stlogin`
--

CREATE TABLE `stlogin` (
  `name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stlogin`
--

INSERT INTO `stlogin` (`name`, `username`, `password`) VALUES
('ashish', '1rv16is019', '123456'),
('mayank', '1rv16is029', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(150) NOT NULL,
  `usn` varchar(15) NOT NULL,
  `projectid` int(100) NOT NULL,
  `teamid` int(100) NOT NULL,
  `teacherid` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `usn`, `projectid`, `teamid`, `teacherid`) VALUES
('mayank', '1rv16is029', 0, 4, 0),
('ashish', '1rv16is019', 0, 4, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `teamid` int(15) NOT NULL,
  `teamname` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`teamid`, `teamname`) VALUES
(4, 'A');

-- --------------------------------------------------------

--
-- Table structure for table `tlogin`
--

CREATE TABLE `tlogin` (
  `id` int(11) NOT NULL,
  `name` varchar(25) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tlogin`
--

INSERT INTO `tlogin` (`id`, `name`, `username`, `password`) VALUES
(1, 'hel', 'hel', 'hel'),
(2, 'kumar', 'kumar', 'kumar');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`proid`,`propass`,`proname`);

--
-- Indexes for table `stlogin`
--
ALTER TABLE `stlogin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `team`
--
ALTER TABLE `team`
  ADD PRIMARY KEY (`teamid`,`teamname`),
  ADD UNIQUE KEY `teamname` (`teamname`);

--
-- Indexes for table `tlogin`
--
ALTER TABLE `tlogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `proid` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `team`
--
ALTER TABLE `team`
  MODIFY `teamid` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tlogin`
--
ALTER TABLE `tlogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
