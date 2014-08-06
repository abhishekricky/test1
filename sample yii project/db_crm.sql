-- phpMyAdmin SQL Dump
-- version 4.0.8
-- http://www.phpmyadmin.net
--
-- โฮสต์: localhost
-- เวลาในการสร้าง: 
-- เวอร์ชั่นของเซิร์ฟเวอร์: 5.6.14-log
-- รุ่นของ PHP: 5.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- ฐานข้อมูล: `db_crm`
--
CREATE DATABASE IF NOT EXISTS `db_crm` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `db_crm`;

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `bots`
--

DROP TABLE IF EXISTS `bots`;
CREATE TABLE IF NOT EXISTS `bots` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bot_name` varchar(255) NOT NULL,
  `bot_start_date` date NOT NULL,
  `bot_expire_date` date NOT NULL,
  `bot_status` enum('wait','open','block') NOT NULL,
  `bot_username` varchar(255) NOT NULL,
  `bot_password` varchar(255) NOT NULL,
  `bot_email` varchar(255) NOT NULL,
  `bot_ip` varchar(255) NOT NULL,
  `bot_image` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- dump ตาราง `bots`
--

INSERT INTO `bots` (`id`, `bot_name`, `bot_start_date`, `bot_expire_date`, `bot_status`, `bot_username`, `bot_password`, `bot_email`, `bot_ip`, `bot_image`) VALUES
(9, 'สุพลชัย พูลสวัสดิ์', '2013-10-16', '2014-10-16', 'open', 'suphonchai', '09c309bfcff1a1e623378ecb20d143be', 'suphonchai.ph@gmail.com', '127.0.0.1', NULL);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `companys`
--

DROP TABLE IF EXISTS `companys`;
CREATE TABLE IF NOT EXISTS `companys` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `website` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `tax_code` varchar(20) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `bot_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- dump ตาราง `companys`
--

INSERT INTO `companys` (`id`, `name`, `tel`, `fax`, `website`, `email`, `address`, `tax_code`, `logo`, `created_date`, `bot_id`) VALUES
(2, 'PingpongSoft and JavaThailand', '0868776053', '0868776053', 'www.pingpongsoft.com', '', '', '', '', '2013-09-20', 0);

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `customers`
--

DROP TABLE IF EXISTS `customers`;
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `created_date` date NOT NULL,
  `expire_date` date NOT NULL,
  `total_year` int(2) NOT NULL,
  `address` varchar(1000) NOT NULL,
  `status` enum('open','block') NOT NULL,
  `bot_id` int(11) NOT NULL,
  `tel` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nickname` varchar(255) NOT NULL,
  `is_visit` enum('no','yes') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

--
-- dump ตาราง `customers`
--

INSERT INTO `customers` (`id`, `fname`, `lname`, `remark`, `created_date`, `expire_date`, `total_year`, `address`, `status`, `bot_id`, `tel`, `email`, `nickname`, `is_visit`) VALUES
(1, 'วิศวกร', 'วิสัย', 'ทีมงานเดียวกัน', '0000-00-00', '0000-00-00', 0, '', 'open', 0, '0123456789', 'hope_tabb@gmail.com', 'โฮป', 'yes'),
(2, 'วิศวกร', 'วิสัย', 'ทีมงานเดียวกัน', '2013-09-20', '2014-09-20', 0, '', 'open', 0, '0123456789', 'hope_tabb@gmail.com', 'โฮป', 'no'),
(3, 'IPung', 'Pond', 'facebook', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', 'ติ้ก', 'no'),
(4, 'พิทักษ์', 'แสนหาญ', 'facebook', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', 'ทักษ์', 'no'),
(5, 'นครินทร์', 'ม่วงอ่อน', 'LekSoft', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', 'เล็ก', 'no'),
(6, 'ร้าน nscomputer', '', '', '2013-09-20', '2014-09-20', 0, '', 'open', 0, '', '', '', 'no'),
(7, 'คมกริช', 'อารีย์', 'ทีมงานเดียวกัน', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '0123456789', '', 'พี่ดรีม', 'no'),
(10, 'บุญเหลือ', 'นาบำรุง', '', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', '', 'no'),
(11, 'พรมมา', 'มาลาสาย', '', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', '', 'no'),
(12, 'ชลกฤษ', 'ท่วมสุข', '', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', 'กฤษ', 'no'),
(13, 'วรวุฒิ', 'คำพันธ์', 'ม.อุบล สาขา MIS', '2013-09-20', '2022-09-30', 0, '', 'open', 0, '', '', 'เจ', 'no'),
(14, 'ถาวร', 'ศรีเสนพิลา', 'ตัวเอง', '2013-09-21', '2022-09-30', 0, '', 'open', 0, '086877053', 'thekaroe@gmail.com', 'กบ', 'yes'),
(15, 'ร้านขายทราย', '', '', '2013-09-23', '2014-09-23', 0, '', 'open', 0, '0878958567', '', 'เจน', 'no'),
(16, 'จักรพันธ์', 'วันภูงา', '', '2013-09-23', '2022-09-23', 0, '', 'open', 0, '', '', 'เอ็ม', 'no'),
(17, 'tk', 'park', '', '2013-09-23', '2022-09-30', 0, '', 'open', 0, '', '', '', 'no'),
(18, 'วิชุดา', 'ดวงพรม', '', '2013-09-26', '2023-09-30', 0, 'www.พิษณุโลกบ้านเรา.com', 'open', 0, '0821700765', '', '', 'no'),
(19, 'iservice', '', '', '2013-10-01', '2018-10-01', 0, '', 'open', 0, '', '', 'โสรัต', 'yes');

-- --------------------------------------------------------

--
-- โครงสร้างตาราง `visits`
--

DROP TABLE IF EXISTS `visits`;
CREATE TABLE IF NOT EXISTS `visits` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `created_date` date NOT NULL,
  `will_complete_date` date NOT NULL,
  `do_date` date NOT NULL DEFAULT '0000-00-00',
  `visit_date` date NOT NULL,
  `topic` varchar(500) NOT NULL,
  `document` varchar(500) NOT NULL,
  `complete_date` date NOT NULL DEFAULT '0000-00-00',
  `status` enum('wait','do','complete') NOT NULL,
  `remark` varchar(500) DEFAULT NULL,
  `money` int(5) NOT NULL,
  `detail` text NOT NULL,
  `employee_id` int(11) NOT NULL DEFAULT '0',
  `bot_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=26 ;

--
-- dump ตาราง `visits`
--

INSERT INTO `visits` (`id`, `customer_id`, `created_date`, `will_complete_date`, `do_date`, `visit_date`, `topic`, `document`, `complete_date`, `status`, `remark`, `money`, `detail`, `employee_id`, `bot_id`) VALUES
(2, 2, '2013-09-21', '2013-09-23', '2013-09-23', '2013-09-21', 'เดินทางไปขอนแก่น ตอนเช้ามืด', '', '2013-09-23', 'complete', 'เอารถส่วนตัวไป', 0, '', 0, 0),
(3, 6, '2013-09-21', '2013-09-22', '0000-00-00', '2013-09-13', 'เพิ่มราคาทุนการซื้อ ลงในโปรแกรม jPOS 2013', '', '0000-00-00', 'wait', '', 0, 'version online', 0, 0),
(4, 14, '2013-09-21', '2013-09-21', '2013-09-21', '2013-09-21', 'ทำระบบ iCRM 2014 ส่วนของระบบการติดต่อนัดหมาย', '', '2013-09-22', 'complete', 'จัดรูปแบบด้วย', 0, 'ทั้งตรงกลาง และด้านขวามือ ให้จัดการสถานะงานได้ด้วย พร้อมมีสรุปบอกยอดงานคงเหลือ', 0, 0),
(5, 3, '2013-09-21', '2013-09-21', '0000-00-00', '2013-09-18', 'ส่งเอกสารหัวข้อการอบรม Java GUI, Yii Framework', '', '2013-09-25', 'complete', 'ฝากติ้กจัดการต่อ', 0, 'งานอบรมที่เชียงใหม่วันที่ 5 ตุลาคม นี้', 0, 0),
(6, 14, '2013-09-21', '2013-09-19', '2013-09-22', '2013-09-18', 'เขียนคำนำ สารบัญ หนังสือ Struts2', '', '2013-09-22', 'complete', '', 0, '', 0, 0),
(7, 14, '2013-09-21', '2013-09-24', '2013-09-25', '2013-09-21', 'เดินทางไปกรุงเทพ', '', '2013-09-25', 'complete', 'ไปตอนเย็น', 0, '', 0, 0),
(9, 14, '2013-09-22', '2013-09-23', '2013-09-23', '2013-09-22', 'รวมเล่ม DevGazine #4', '', '0000-00-00', 'do', 'แจกแบบ pdf', 0, 'ส่งจันทร์เย็นๆ ให้กับผู้สนใจ และให้โหลดได้เองด้วย', 0, 0),
(10, 15, '2013-09-23', '2013-09-24', '2013-09-25', '2013-09-23', 'clear ข้อมูลสินค้าเดิมออกให้หมด', '', '2013-09-25', 'complete', '', 0, '', 0, 0),
(11, 14, '2013-09-23', '2013-09-23', '2013-09-23', '2013-09-23', 'ส่ง jPOS ให้ติดตั้งเอง', '', '2013-09-23', 'complete', 'ซื้อไปติดตั้งเอง', 590, '', 0, 0),
(12, 3, '2013-09-23', '2013-10-04', '0000-00-00', '2013-09-23', 'เดินทางไปเชียงใหม่', '', '0000-00-00', 'wait', 'บินไปลงสนามบิน', 0, 'อบรม java, yii', 0, 0),
(13, 16, '2013-09-23', '2013-10-15', '0000-00-00', '2013-09-23', 'พาหาหอพัก', '', '0000-00-00', 'wait', '', 0, '', 0, 0),
(14, 17, '2013-09-23', '2013-09-24', '2013-09-25', '2013-09-23', 'ส่งรายชื่อผู้อบรม Android ให้', '', '2013-09-25', 'complete', 'image เข้าทางเมล์ให้', 0, '', 0, 0),
(15, 3, '2013-09-25', '2013-09-25', '2013-09-25', '2013-09-23', 'แก้ไขปัญหาของ tavoncourse ลงทะเบียนไม่ได้', '', '2013-09-25', 'complete', 'โดน spam', 0, '', 0, 0),
(16, 3, '2013-09-25', '2013-09-25', '2013-09-25', '2013-09-25', 'ปิดรอยรั่วหน้าลงทะเบียน tavoncourse.com', '', '2013-09-25', 'complete', 'ใส่ captcha หรืออะไรก็ได้ที่กัน สแปม', 0, '', 0, 0),
(17, 14, '2013-09-25', '2013-09-28', '2013-09-26', '2013-09-25', 'ทำระบบรายงานของ CRM', '', '2013-09-30', 'complete', 'ทั้งหมด 9 Report', 0, '', 0, 0),
(18, 14, '2013-09-25', '2013-09-26', '2013-09-26', '2013-09-25', 'รายการแจ้งเดือนด้านขวาของ iCRM 2014', '', '2013-09-26', 'complete', 'เฉพาะรายการที่ยังไม่เสร็จ เรียงตามความล่าช้า', 0, '', 0, 0),
(19, 15, '2013-09-26', '2013-09-27', '0000-00-00', '2013-09-26', 'แก้ไขหน้าขาย jPOS ให้แก้ราคาได้เองตามต้องการ', '', '0000-00-00', 'wait', 'หน้าบิลด้วย หัวบิล', 0, '', 0, 0),
(20, 14, '2013-09-26', '2013-09-26', '2013-09-26', '2013-09-26', 'ทำหน้า View ของ CRM', '', '2013-09-26', 'complete', '', 0, '', 0, 0),
(21, 14, '2013-09-26', '2013-09-27', '2013-09-26', '2013-09-26', 'ย้ายโฮส pingpongsoft.com', '', '2013-09-30', 'complete', 'ย้ายไปอยู่กับ hostneverdie.com', 1204, '', 0, 0),
(22, 14, '2013-09-30', '2013-09-30', '0000-00-00', '2013-09-30', 'เปิดตัว CRM 2014', '', '0000-00-00', 'wait', 'ให้ผู้สนใจเข้ามาสมัครใช้งานได้ทันที', 0, 'สมัครแล้วได้ใช้เลย', 0, 0),
(23, 14, '2013-09-30', '2013-09-30', '0000-00-00', '2013-09-30', 'รวมเล่ม DevGazine #5', '', '0000-00-00', 'wait', 'ต้องรวมให้เสร็จวันนี้เลย ช้าไม่ได้', 0, '', 0, 0),
(24, 19, '2013-10-01', '2013-10-07', '0000-00-00', '2013-10-01', 'แก้ไขปรับปรุง iService', '', '0000-00-00', 'wait', 'ขอบเขตในอีเมล์ GMail', 10000, 'แก้ด่วนในเดือนนี้ต้องพร้อมใช้งาน', 0, 0),
(25, 1, '2013-10-16', '2013-10-18', '2013-10-16', '2013-10-16', 'Test', '', '0000-00-00', 'do', '', 0, 'ทดลองใส่ข้อมูลในระบบ', 0, 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
