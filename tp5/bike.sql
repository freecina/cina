-- phpMyAdmin SQL Dump
-- version 4.6.6deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 02, 2017 at 11:52 AM
-- Server version: 10.1.21-MariaDB-5+b1
-- PHP Version: 7.0.15-1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bike`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(30) NOT NULL,
  `pwd` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `pwd`) VALUES
(1, 'root', '202cb962ac59075b964b07152d234b70'),
(19, 'freecina', '202cb962ac59075b964b07152d234b70');

-- --------------------------------------------------------

--
-- Table structure for table `adver`
--

CREATE TABLE `adver` (
  `id` mediumint(9) NOT NULL,
  `name` varchar(39) NOT NULL,
  `des` text NOT NULL,
  `pic` varchar(200) NOT NULL,
  `type` varchar(39) NOT NULL,
  `adver` varchar(39) NOT NULL,
  `time` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `adver`
--

INSERT INTO `adver` (`id`, `name`, `des`, `pic`, `type`, `adver`, `time`) VALUES
(7, 'freecina', 'freecina', '/uploads/20170227/23f2da6ec4638bf793e25c3f2a29e4b5.jpg', 'freecina', 'freecina', 1488171211);

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `id` mediumint(9) NOT NULL,
  `title` varchar(50) NOT NULL,
  `keywords` varchar(50) NOT NULL,
  `des` char(250) NOT NULL,
  `author` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `pic` varchar(160) NOT NULL,
  `click` mediumint(25) NOT NULL DEFAULT '0',
  `zan` mediumint(25) NOT NULL DEFAULT '0',
  `time` int(11) NOT NULL,
  `cateid` varchar(29) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`id`, `title`, `keywords`, `des`, `author`, `content`, `pic`, `click`, `zan`, `time`, `cateid`) VALUES
(8, '都梦想之', 'gan', '都梦想之', 'cina', '<p>都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之</p>', '/uploads/20170227/bfb5fff6bbeaf03938f4ad1f41fbe544.jpg', 7, 4, 1488125112, '26'),
(10, '梦想之都', 'gan', '梦想之都', '梦想之都', '<p>梦想之都梦想之都梦想之都</p>', '/uploads/20170227/27948b6330fd99764c630774060912bb.jpg', 2, 0, 1488125399, '24'),
(11, 'love', '日本', 'love', 'love', '<p>lovelovelovelovelovelovelovelovelovelovelove</p>', '/uploads/20170227/d281171deed89d0e85d9bde14dfa04a7.jpg', 1, 0, 1488159514, '27'),
(12, '韩国成均馆大学新生入学仪式', '韩国', '韩国成均馆大学新生入学仪式梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都梦想之都', 'cina', '<p>韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩服行跪拜大礼韩国成均馆大学新生入学仪式 穿韩</p>', '/uploads/20170227/6f9e0303af7e630ff91aa6d3b4b24ecb.jpg', 2, 0, 1488166116, '0'),
(13, '锤炼实战本领', 'gan', '锤炼实战本领', 'cina', '<p><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong><strong style=\"margin: 0px; padding: 0px; font-family: SimSun, 宋体; font-size: 14px; text-indent: 30px; white-space: normal; background-color: rgb(255, 255, 255);\">锤炼实战本领</strong></p>', '/uploads/20170227/8b1ddc2c9ea958707df9b88c57a91693.jpg', 0, 0, 1488166193, '23'),
(14, '中东防展上台湾叫卖雄风3导弹', '中东防展上台湾叫卖雄风3导弹', '中东防展上台湾叫卖雄风3导弹', 'cina', '<h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><h1 class=\"artiTitle\" style=\"margin: 0px; padding: 10px 0px; font-size: 22px; line-height: 30px; text-align: center; clear: both; width: 980px; font-family: \">中东防展上台湾叫卖雄风3导弹</h1><p><br/></p>', '/uploads/20170227/ed3c3867cf92ffb8c8b1d9c1a8ce2c5a.jpg', 1, 0, 1488166244, '24');

-- --------------------------------------------------------

--
-- Table structure for table `cate`
--

CREATE TABLE `cate` (
  `id` mediumint(9) NOT NULL,
  `catename` varchar(30) NOT NULL,
  `type` tinyint(1) NOT NULL,
  `pid` mediumint(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `cate`
--

INSERT INTO `cate` (`id`, `catename`, `type`, `pid`) VALUES
(22, '中国', 1, 26),
(23, '美国', 1, 0),
(24, '日本', 1, 0),
(26, '四川', 2, 22),
(27, '纽约', 1, 23),
(28, '成都', 1, 26),
(29, '东京', 1, 24),
(31, '成华', 2, 28);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adver`
--
ALTER TABLE `adver`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cate`
--
ALTER TABLE `cate`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `adver`
--
ALTER TABLE `adver`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `cate`
--
ALTER TABLE `cate`
  MODIFY `id` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
