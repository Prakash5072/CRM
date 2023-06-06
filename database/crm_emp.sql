-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 01, 2023 at 06:49 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `crm_emp`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `rt_att`
--

CREATE TABLE `rt_att` (
  `id` int(11) NOT NULL,
  `empid` varchar(20) NOT NULL,
  `attendance` varchar(20) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `retailer` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_att`
--

INSERT INTO `rt_att` (`id`, `empid`, `attendance`, `rdate`, `month`, `year`, `retailer`) VALUES
(1, 'E001', 'Present', '20-04-2023', 4, 2023, 'rtshop');

-- --------------------------------------------------------

--
-- Table structure for table `rt_cart`
--

CREATE TABLE `rt_cart` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pid` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `rdate` varchar(20) NOT NULL,
  `price` int(11) NOT NULL,
  `category` varchar(30) NOT NULL,
  `quantity` int(11) NOT NULL,
  `amount` int(11) NOT NULL,
  `bill_id` int(11) NOT NULL,
  `check_st` int(11) NOT NULL,
  `av_product` int(11) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `deliver_st` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_cart`
--

INSERT INTO `rt_cart` (`id`, `uname`, `pid`, `status`, `rdate`, `price`, `category`, `quantity`, `amount`, `bill_id`, `check_st`, `av_product`, `retailer`, `deliver_st`) VALUES
(2, 'gokul', 3, 1, '20-04-2023', 15000, 'Oppo', 1, 15000, 1, 0, 0, 'rtshop', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rt_category`
--

CREATE TABLE `rt_category` (
  `id` int(11) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_category`
--

INSERT INTO `rt_category` (`id`, `retailer`, `category`) VALUES
(1, 'rtshop', 'Laptop'),
(2, 'rtshop', 'Mobile');

-- --------------------------------------------------------

--
-- Table structure for table `rt_customer`
--

CREATE TABLE `rt_customer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `otp` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_customer`
--

INSERT INTO `rt_customer` (`id`, `name`, `address`, `city`, `mobile`, `email`, `uname`, `pass`, `create_date`, `otp`) VALUES
(1, 'Gokul', '4/6, 3rd cross, MK Nagar', 'Salem', 8621459855, 'gokul@gmail.com', 'gokul', '1234', '10-11-2022', '8902'),
(2, 'Vijay', '5/1', 'Karur', 7354245248, 'rndittrichy@gmail.com', 'vijay', '1234', '11-11-2022', '9259');

-- --------------------------------------------------------

--
-- Table structure for table `rt_employee`
--

CREATE TABLE `rt_employee` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_employee`
--

INSERT INTO `rt_employee` (`id`, `name`, `retailer`, `city`, `mobile`, `email`, `uname`, `pass`, `create_date`, `status`) VALUES
(1, 'Ram', 'rtshop', 'Salem', 8896577415, 'ram@gmail.com', 'E001', '123456', '15-04-2023', 0);

-- --------------------------------------------------------

--
-- Table structure for table `rt_product`
--

CREATE TABLE `rt_product` (
  `id` int(11) NOT NULL,
  `retailer` varchar(20) NOT NULL,
  `category` varchar(50) NOT NULL,
  `product` varchar(100) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `photo` varchar(50) NOT NULL,
  `details` varchar(200) NOT NULL,
  `status` int(11) NOT NULL,
  `required_qty` int(11) NOT NULL,
  `scount` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_product`
--

INSERT INTO `rt_product` (`id`, `retailer`, `category`, `product`, `price`, `quantity`, `photo`, `details`, `status`, `required_qty`, `scount`) VALUES
(1, 'rtshop', 'Laptop', 'Dell', 35000, 100, 'P1dell.jpg', 'Laptop', 0, 0, 0),
(2, 'rtshop', 'Laptop', 'Lenova', 25000, 5, 'P2lenova.jpg', 'Lenova', 1, 7, 2),
(3, 'rtshop', 'Mobile', 'Oppo', 15000, 29, 'P3oppo.jpg', 'Oppo', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rt_purchase`
--

CREATE TABLE `rt_purchase` (
  `id` int(11) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `amount` int(11) NOT NULL,
  `rdate` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_purchase`
--

INSERT INTO `rt_purchase` (`id`, `uname`, `amount`, `rdate`) VALUES
(1, 'gokul', 15000, '20-04-2023');

-- --------------------------------------------------------

--
-- Table structure for table `rt_retailer`
--

CREATE TABLE `rt_retailer` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(40) NOT NULL,
  `uname` varchar(20) NOT NULL,
  `pass` varchar(20) NOT NULL,
  `create_date` varchar(20) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rt_retailer`
--

INSERT INTO `rt_retailer` (`id`, `name`, `address`, `city`, `mobile`, `email`, `uname`, `pass`, `create_date`, `status`) VALUES
(1, 'RT Shop', '65/1, Big Bazar', 'Trichy', 9517624693, 'rtshop@gmail.com', 'rtshop', '1234', '08-11-2022', 1),
(2, 'RR Textile', '4/7', 'Karur', 7354245248, 'rrtextile@gmail.com', 'rrtextile', '1234', '11-11-2022', 1);
