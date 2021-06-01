-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 07, 2021 at 04:29 PM
-- Server version: 8.0.13-4
-- PHP Version: 7.2.24-0ubuntu0.18.04.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `1oKVzRz3p4`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `Aid` varchar(35) NOT NULL,
  `Apass` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`Aid`, `Apass`) VALUES
('admin@djyus.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `examans`
--

CREATE TABLE `examans` (
  `EAnsID` int(50) NOT NULL,
  `ExamID` int(10) NOT NULL,
  `Senrl` varchar(50) NOT NULL,
  `Sname` varchar(50) NOT NULL,
  `Ans1` mediumtext NOT NULL,
  `Ans2` mediumtext NOT NULL,
  `Ans3` mediumtext NOT NULL,
  `Ans4` mediumtext NOT NULL,
  `Ans5` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examans`
--

INSERT INTO `examans` (`EAnsID`, `ExamID`, `Senrl`, `Sname`, `Ans1`, `Ans2`, `Ans3`, `Ans4`, `Ans5`) VALUES
(7, 4, '146891660', 'Parth  Shah', 'Okay', 'Okay', 'Okay', 'Okay', 'Okay'),
(8, 4, '146891660', 'Parth  Shah', 'OKAY', 'OKAY', 'OKAY', 'OKAY', 'OKAY'),
(9, 5, '146891660', 'Parth  Shah', 'hi', 'hi', 'hi', 'hi', 'hi'),
(10, 4, '146891660', 'Parth  Shah', 'Hyper text markup', '1', '2', '3', '4');

-- --------------------------------------------------------

--
-- Table structure for table `examdetails`
--

CREATE TABLE `examdetails` (
  `ExamID` int(50) NOT NULL,
  `ExamName` varchar(50) NOT NULL,
  `Q1` varchar(10000) NOT NULL,
  `Q2` varchar(10000) NOT NULL,
  `Q3` varchar(10000) NOT NULL,
  `Q4` varchar(10000) NOT NULL,
  `Q5` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `examdetails`
--

INSERT INTO `examdetails` (`ExamID`, `ExamName`, `Q1`, `Q2`, `Q3`, `Q4`, `Q5`) VALUES
(4, 'HTML', 'What is the previous version of HTML, prior to HTML5?', ' What does HTML stand for?', 'Who is making the Web standards?', 'Choose the correct HTML element for the largest heading:', 'What is the correct HTML element for inserting a line break?'),
(5, ' PHP', ' What does PHP stand for?', 'PHP server scripts are surrounded by delimiters, which?', 'How do you write \"Hello World\" in PHP', ' All variables in PHP start with which symbol?', 'What is the correct way to end a PHP statement?'),
(9, 'JavaScript', 'Inside which HTML element do we put the JavaScript?', 'What is the correct JavaScript syntax to change the content of the HTML element below?\r\n\r\n\r\n<p id=\"demo\">This is a demonstration.</p>', 'Where is the correct place to insert a JavaScript?', 'What is the correct syntax for referring to an external script called \"xxx.js\"?', 'The external JavaScript file must contain the <script> tag. True or False?');

-- --------------------------------------------------------

--
-- Table structure for table `facutlytable`
--

CREATE TABLE `facutlytable` (
  `FID` int(10) NOT NULL,
  `FName` varchar(50) NOT NULL,
  `ChName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `JDate` date NOT NULL,
  `City` varchar(10) NOT NULL,
  `Pass` varchar(10) NOT NULL,
  `PhNo` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facutlytable`
--

INSERT INTO `facutlytable` (`FID`, `FName`, `ChName`, `Addrs`, `Gender`, `JDate`, `City`, `Pass`, `PhNo`) VALUES
(101, 'Harry', 'CodeWithHarry', 'Pitampura', 'Male', '1995-02-03', 'Delhi', '1234', 123456789),
(102, 'Mosh Hamedani', 'Programming with Mosh', 'Street 8', 'Male', '1996-07-20', 'California', '1234', 1478963215),
(103, 'Navin Reddy', 'Telusko', 'Bandra', 'Male', '1997-08-15', 'Mumbai', '1234', 1597534566);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuEid` varchar(35) NOT NULL,
  `Gname` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`GuEid`, `Gname`) VALUES
('virajshah@gmail.com', 'Viraj Shah'),
('yashshah@gmail.com', 'Yash Shah');

-- --------------------------------------------------------

--
-- Table structure for table `query`
--

CREATE TABLE `query` (
  `Query` text NOT NULL,
  `Ans` text CHARACTER SET latin1 COLLATE latin1_swedish_ci,
  `Eid` varchar(35) NOT NULL,
  `Qid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `query`
--

INSERT INTO `query` (`Query`, `Ans`, `Eid`, `Qid`) VALUES
('														Any updates?  ', '										6th April																', 'parthshah@gmail.com', 1),
('							When should we submit the project? ', '			Will let you know										', 'parthshah@gmail.com', 2),
('							Thanks! ', '					Welcome!								', 'parthshah@gmail.com', 3),
('							Hey! ', '			Hello										', 'parthshah@gmail.com', 4);

-- --------------------------------------------------------

--
-- Table structure for table `result`
--

CREATE TABLE `result` (
  `RsID` bigint(20) NOT NULL,
  `Eno` varchar(20) NOT NULL,
  `Ex_ID` int(10) NOT NULL,
  `Marks` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

INSERT INTO `result` (`RsID`, `Eno`, `Ex_ID`, `Marks`) VALUES
(2382, '146891660', 4, 'Pass'),
(2383, '146891660', 4, 'Pass'),
(2384, '146891660', 5, 'Pass'),
(2385, '146891660', 5, 'Under Progress'),
(2386, '146891660', 4, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `studenttable`
--

CREATE TABLE `studenttable` (
  `Eno` bigint(20) NOT NULL,
  `FName` varchar(30) NOT NULL,
  `LName` varchar(30) NOT NULL,
  `FaName` varchar(30) NOT NULL,
  `Addrs` text NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `Course` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `PhNo` bigint(10) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Eid` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `studenttable`
--

INSERT INTO `studenttable` (`Eno`, `FName`, `LName`, `FaName`, `Addrs`, `Gender`, `Course`, `DOB`, `PhNo`, `Pass`, `Eid`) VALUES
(146891660, 'Parth ', 'Shah', 'Vipul', 'Mumbai', 'Male', 'Comps', '1999-07-18', 7867867862, 'parth', 'parthshah@gmail.com'),
(146891661, 'Het ', 'Raval', 'Bharatkumar', 'Mira Road', 'Male', 'Comps', '1999-09-07', 1231231234, 'hetr', 'hetraval@gmail.com'),
(146891662, 'Viraj', 'Shah', 'P', 'Dahisar', 'Male', 'HTML', '1999-05-05', 9999999999, '123456789', 'viraj@gmail.com'),
(146891664, 'yash', 'shah', 'ad', 'aawafa', 'Male', 'asd', '0034-03-04', 4891698187, '1234', 'yash@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `V_id` int(10) NOT NULL,
  `V_Title` varchar(50) NOT NULL,
  `V_Url` longtext NOT NULL,
  `V_Remarks` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='This table is used to store videos info.';

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`V_id`, `V_Title`, `V_Url`, `V_Remarks`) VALUES
(1, 'PHP', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/1SnPKhCdlsU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'Php Tutorial for Beginners in Hindi with MySQL Project'),
(2, 'HTML', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/qz0aGYrrlhU\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'HTML Tutorial for Beginners: HTML Crash Course [2021]'),
(3, 'JavaScript', '<iframe width=\"560\" height=\"315\" src=\"https://www.youtube.com/embed/pU722vRd66A\" frameborder=\"0\" allow=\"autoplay; encrypted-media\" allowfullscreen></iframe>', 'JavaScript Tutorial for Beginners | Full Course');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`Aid`);

--
-- Indexes for table `examans`
--
ALTER TABLE `examans`
  ADD PRIMARY KEY (`EAnsID`);

--
-- Indexes for table `examdetails`
--
ALTER TABLE `examdetails`
  ADD PRIMARY KEY (`ExamID`),
  ADD UNIQUE KEY `ExamName` (`ExamName`);

--
-- Indexes for table `facutlytable`
--
ALTER TABLE `facutlytable`
  ADD PRIMARY KEY (`FID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`Gname`);

--
-- Indexes for table `query`
--
ALTER TABLE `query`
  ADD PRIMARY KEY (`Qid`);

--
-- Indexes for table `result`
--
ALTER TABLE `result`
  ADD PRIMARY KEY (`RsID`);

--
-- Indexes for table `studenttable`
--
ALTER TABLE `studenttable`
  ADD PRIMARY KEY (`Eno`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`V_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examans`
--
ALTER TABLE `examans`
  MODIFY `EAnsID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `examdetails`
--
ALTER TABLE `examdetails`
  MODIFY `ExamID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `facutlytable`
--
ALTER TABLE `facutlytable`
  MODIFY `FID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `query`
--
ALTER TABLE `query`
  MODIFY `Qid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `result`
--
ALTER TABLE `result`
  MODIFY `RsID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2387;

--
-- AUTO_INCREMENT for table `studenttable`
--
ALTER TABLE `studenttable`
  MODIFY `Eno` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146891665;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `V_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
