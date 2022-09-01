-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 30, 2022 at 11:39 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `book_list`
--

CREATE TABLE `book_list` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0 COMMENT '0=pending,1=confirm, 2=cancelled\r\n',
  `schedule` date DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `book_list`
--

INSERT INTO `book_list` (`id`, `user_id`, `package_id`, `status`, `schedule`, `date_created`) VALUES
(4, 6, 9, 0, '2022-08-30', '2022-08-19 03:39:51'),
(5, 6, 9, 0, '2022-08-22', '2022-08-19 03:40:22'),
(6, 1, 1, 1, '2022-08-20', '2022-08-19 03:42:15'),
(7, 1, 9, 3, '2022-08-25', '2022-08-19 05:32:57'),
(8, 6, 1, 2, '2022-08-24', '2022-08-19 16:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry`
--

CREATE TABLE `inquiry` (
  `id` int(30) NOT NULL,
  `name` text DEFAULT NULL,
  `email` text DEFAULT NULL,
  `subject` varchar(250) NOT NULL,
  `message` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry`
--

INSERT INTO `inquiry` (`id`, `name`, `email`, `subject`, `message`, `status`, `date_created`) VALUES
(8, 'Rownok Ripon', 'mail.rownok@gmail.com', 'Computer Science And Engineering  ', 'I have a problem', 1, '2022-08-19 05:35:05'),
(9, 'Rifat', 'rifat@gmail.com', 'Booking issue ', 'I cant book packages', 1, '2022-08-19 16:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` int(30) NOT NULL,
  `title` text DEFAULT NULL,
  `tour_location` text DEFAULT NULL,
  `cost` double NOT NULL,
  `description` text DEFAULT NULL,
  `upload_path` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1 COMMENT '1 =active ,2 = Inactive',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `tour_location`, `cost`, `description`, `upload_path`, `status`, `date_created`) VALUES
(1, 'Coxs Bazar Package ', 'Coxs Bazar, Bangladesh ', 7500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;b style=&quot;&quot;&gt;Features:&lt;/b&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;4 Days 3 night&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Full VIP Meal&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;Hotel Details:&lt;/span&gt;&lt;/i&gt;&lt;/b&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Hotel Sea Crown- Marin Drive, Kola Toli, New Beach, 4700 Cox&#039;s Bazar, Bangladesh&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;Transport Details:&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Greenline Paribahan (Sleeper)&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;&lt;b style=&quot;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;font color=&quot;#ff9c00&quot;&gt;Description:&lt;/font&gt;&lt;/i&gt;&lt;/b&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Situated on the beachfront and offering a 24-hour front desk, Hotel Sea Crown is located just 1.5 km from the famous Sugandha Beach. Free WiFi access is available.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Each air-conditioned room here will provide you with a seating area and work desk. Featuring a shower, the private bathroom comes with free toiletries.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;At Hotel Sea Crown you will find a garden. Other facilities offered at the property include a shared lounge, a tour desk, and luggage storage. The property offers free parking.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The property is located just 3 km from the scenic Laboni Beach and 4.1 km from Buddhist Temple and the popular Cox&#039;s Bazar. The Cox&#039;s Bazar Airport and Cox&#039;s Bazar Bus Station are located within 4.8 km.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Room service is available for 24-hour.&lt;/p&gt;', 'uploads/package_1', 1, '2021-06-18 10:31:03'),
(7, 'Bandarban Package', 'Nilgiri,Bandarban, Bangladesh', 6500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;Features:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;3 Days 2 night&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Full VIP Meal&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;Hotel Details:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Hotel Hill View-&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif; text-align: start;&quot;&gt;Bus Station Road, 4600 Bāndarban, Bangladesh&lt;/span&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;, Bangladesh&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;Transport Details:&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Greenline Paribahan (Sleeper)&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;font color=&quot;#ff9c00&quot;&gt;Description:&lt;/font&gt;&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Situated on the beachfront and offering a 24-hour front desk, Hotel Sea Crown is located just 1.5 km from the famous Sugandha Beach. Free WiFi access is available.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Each air-conditioned room here will provide you with a seating area and work desk. Featuring a shower, the private bathroom comes with free toiletries.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;At Hotel Sea Crown you will find a garden. Other facilities offered at the property include a shared lounge, a tour desk, and luggage storage. The property offers free parking.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The property is located just 3 km from the scenic Laboni Beach and 4.1 km from Buddhist Temple and the popular Cox&#039;s Bazar. The Cox&#039;s Bazar Airport and Cox&#039;s Bazar Bus Station are located within 4.8 km.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Room service is available for 24-hour.&lt;/p&gt;', 'uploads/package_7', 1, '2021-06-18 11:17:11'),
(8, 'Sajak valley Package', 'Sajak valley, Bangladesh ', 4500, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;Features:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;2 Days 1 night&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Full VIP Meal&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-weight: bolder;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px; background-color: rgb(255, 255, 255);&quot;&gt;Hotel Details:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;KureGhar- Marin Drive, Kola Toli, New Beach,&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;text-align: left;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Sajak valley, Bangladesh&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;Transport Details:&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&amp;nbsp;London Express LTD (AC)&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;font color=&quot;#ff9c00&quot;&gt;Description:&lt;/font&gt;&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;&lt;span style=&quot;color: rgb(64, 64, 64); font-family: poppins, sans-serif; font-size: 16px;&quot;&gt;Cloud castle resort is one of the best cloud view resorts in Sajek Valley , if you love to see clouds behind your hand or from the corridor then&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;margin: 0px; padding: 0px; font-family: poppins, sans-serif; font-weight: 600; color: rgb(64, 64, 64); font-size: 16px;&quot;&gt;Cloud Castle Sajek Resort&lt;/span&gt;&lt;span style=&quot;color: rgb(64, 64, 64); font-family: poppins, sans-serif; font-size: 16px;&quot;&gt;&amp;nbsp;is the best option for you. This eye catchy cloud resort is located end of Sajek and is the main attraction of Sajek valley Konglak para.&amp;nbsp;&lt;/span&gt;&lt;span style=&quot;color: rgb(64, 64, 64); font-family: poppins, sans-serif; font-size: 16px;&quot;&gt;Everybody likes to see the cloud in Sajek and Cloud Castle resort is the best resort in Sajek for cloud view.Don&rsquo;t worry about food Cloud castle resort have its own restaurant let&rsquo;s see some delicious food:&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 'uploads/package_8', 1, '2021-06-18 13:34:08'),
(9, 'Sylhet HOT Package', 'Jaflong, Sylhet- Bangladesh', 8000, '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;Features:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;ul&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;6 Days 5 night&lt;/font&gt;&lt;/li&gt;&lt;li style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Full VIP Meal&lt;/font&gt;&lt;/li&gt;&lt;/ul&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;Hotel Details&lt;/span&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;:&lt;/span&gt;&lt;/i&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;text-align: left; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Hotel Norjahan Grand - Marin Drive, Kola Toli, New Beach, 4700 Cox&#039;s&amp;nbsp;&lt;/font&gt;&lt;span style=&quot;text-align: left;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Jaflong, Sylhet -&amp;nbsp;&lt;/font&gt;&lt;/span&gt;&lt;span style=&quot;text-align: left;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;&amp;nbsp;Bangladesh&lt;/font&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font face=&quot;Open Sans, Arial, sans-serif&quot; color=&quot;#ff9c00&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;Transport Details:&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;font color=&quot;#000000&quot; face=&quot;Open Sans, Arial, sans-serif&quot;&gt;Ena Transport(AC)&lt;/font&gt;&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 18px;&quot;&gt;&lt;span style=&quot;font-weight: bolder; background-color: rgb(255, 255, 255);&quot;&gt;&lt;i style=&quot;&quot;&gt;&lt;font color=&quot;#ff9c00&quot; style=&quot;&quot;&gt;Description:&lt;/font&gt;&lt;/i&gt;&lt;/span&gt;&lt;/span&gt;&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Situated on the beachfront and offering a 24-hour front desk, Hotel Sea Crown is located just 1.5 km from the famous Sugandha Beach. Free WiFi access is available.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;Each air-conditioned room here will provide you with a seating area and work desk. Featuring a shower, the private bathroom comes with free toiletries.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;At Hotel Sea Crown you will find a garden. Other facilities offered at the property include a shared lounge, a tour desk, and luggage storage. The property offers free parking.&lt;/p&gt;&lt;p style=&quot;color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The property is located just 3 km from the scenic Laboni Beach and 4.1 km from Buddhist Temple and the popular Cox&#039;s Bazar. The Cox&#039;s Bazar Airport and Cox&#039;s Bazar Bus Station are located within 4.8 km.&lt;/p&gt;&lt;p style=&quot;margin-bottom: 0px; color: rgb(38, 38, 38); font-family: BlinkMacSystemFont, -apple-system, &amp;quot;Segoe UI&amp;quot;, Roboto, Helvetica, Arial, sans-serif;&quot;&gt;The guests can enjoy their meals at the in-house restaurant and refreshing alcoholic and non-alcoholic beverages at the bar. Room service is available for 24-hour.&lt;/p&gt;', 'uploads/package_9', 1, '2022-08-19 03:39:24');

-- --------------------------------------------------------

--
-- Table structure for table `rate_review`
--

CREATE TABLE `rate_review` (
  `id` int(30) NOT NULL,
  `user_id` int(30) NOT NULL,
  `package_id` int(30) NOT NULL,
  `rate` int(11) NOT NULL,
  `review` text DEFAULT NULL,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'GHURBO'),
(6, 'short_name', 'Admin Panel'),
(11, 'logo', 'uploads/1660858980_269992393_103471112216778_7567544081724651648_n.jpg'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1660857480_pexels-oleksandr-pidvalnyi-1004584.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/1660858980_269992393_103471112216778_7567544081724651648_n.jpg', NULL, 1, '2021-01-20 14:02:37', '2022-08-19 15:07:47'),
(4, 'John', 'Smith', 'jsmith', '1254737c076cf867dc53d60a0364f38e', NULL, NULL, 0, '2021-06-19 08:36:09', '2021-06-19 10:53:12'),
(5, 'Claire', 'Blake', 'cblake', '4744ddea876b11dcb1d169fadf494418', NULL, NULL, 0, '2021-06-19 10:01:51', '2021-06-19 12:03:23'),
(6, 'Rifat', 'Sarkar', 'rifat181', '9d2626da43ece91e461456a85da07639', NULL, NULL, 0, '2022-08-19 16:08:16', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `book_list`
--
ALTER TABLE `book_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inquiry`
--
ALTER TABLE `inquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rate_review`
--
ALTER TABLE `rate_review`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book_list`
--
ALTER TABLE `book_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `inquiry`
--
ALTER TABLE `inquiry`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `rate_review`
--
ALTER TABLE `rate_review`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
