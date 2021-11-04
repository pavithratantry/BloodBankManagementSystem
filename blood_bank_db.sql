-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 04, 2021 at 03:57 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blood_bank_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `blood`
--

CREATE TABLE `blood` (
  `BLOOD_TYPE` varchar(3) NOT NULL,
  `DONOR_ID` int(11) NOT NULL,
  `BLOOD_BANK_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood`
--

INSERT INTO `blood` (`BLOOD_TYPE`, `DONOR_ID`, `BLOOD_BANK_ID`) VALUES
('AB+', 1, 111),
('A-', 2, 222),
('AB-', 3, 222),
('O+', 4, 333),
('B+', 5, 222),
('O-', 6, 222),
('O+', 7, 333),
('B+', 8, 111),
('AB-', 9, 333),
('B-', 10, 444),
('AB-', 11, 444),
('O-', 12, 555),
('AB-', 13, 555),
('B-', 121, 111),
('O-', 122, 222),
('A-', 123, 111),
('AB+', 130, 333),
('AB-', 134, 222),
('A+', 149, 999),
('AB+', 195, 666),
('A+', 215, 999),
('O-', 216, 888),
('AB-', 218, 888),
('O-', 219, 999),
('A-', 225, 777),
('A+', 228, 666),
('O+', 239, 555),
('O+', 258, 222),
('B+', 260, 333),
('AB+', 270, 555);

-- --------------------------------------------------------

--
-- Table structure for table `blood_bank`
--

CREATE TABLE `blood_bank` (
  `BLOOD_BANK_ID` int(11) NOT NULL,
  `NAME` varchar(30) NOT NULL,
  `ADDRESS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_bank`
--

INSERT INTO `blood_bank` (`BLOOD_BANK_ID`, `NAME`, `ADDRESS`) VALUES
(111, 'LIONS BLOOD BANK', 'Chord Road, Bangalore'),
(222, 'JAYANAGAR BLOOD BANK', 'Jayanagar, Bangalore'),
(333, 'Red Cross Blood Bank', 'Yelahanka, Bangalore'),
(444, 'Rashtrotthana Blood Centre', 'Chamrajpet'),
(555, 'KR Hospital Blood Bank', 'Srinagar, Bengaluru'),
(666, 'KIMS', 'BDA Complex'),
(777, 'Victoria Hospital Blood Bank', '1st main Rd'),
(888, 'Swamy Vivekananda Blood Bank', 'Corporation circle'),
(999, 'Malleshwaram Blood Bank', 'Malleshwaram, Bengaluru');

-- --------------------------------------------------------

--
-- Table structure for table `blood_delivery`
--

CREATE TABLE `blood_delivery` (
  `BLOOD_BANK_ID` int(11) NOT NULL,
  `PATIENT_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `blood_delivery`
--

INSERT INTO `blood_delivery` (`BLOOD_BANK_ID`, `PATIENT_ID`) VALUES
(111, 43),
(111, 1),
(222, 2),
(222, 4),
(222, 5),
(222, 37),
(333, 3),
(777, 51),
(999, 64),
(222, 67),
(666, 66),
(999, 68),
(333, 69),
(777, 70),
(999, 71),
(555, 65),
(555, 72),
(666, 73),
(111, 75);

-- --------------------------------------------------------

--
-- Table structure for table `doctor`
--

CREATE TABLE `doctor` (
  `DOC_ID` int(11) NOT NULL,
  `DOC_NAME` varchar(20) NOT NULL,
  `DOC_ADDRESS` varchar(50) NOT NULL,
  `DOC_PHNO` bigint(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctor`
--

INSERT INTO `doctor` (`DOC_ID`, `DOC_NAME`, `DOC_ADDRESS`, `DOC_PHNO`) VALUES
(1, 'Dr Amish', 'KIMS Hospital, Bangalore', 7845129636),
(2, 'Dr Ram', 'Apollo Hospital, Bangalore', 9856321471),
(3, 'Dr Varsha', 'Ram Nursing Home', 9856895471),
(4, 'Dr Alok', 'DG Hospital', 9875641231),
(5, 'Dr Smitha', 'Srinagar', 7845123698),
(6, 'Dr Ananth', 'Basvangudi', 9632587415),
(7, 'Dr Yash', 'Bapuji Nagar', 9865756324),
(8, 'Dr Prasad', 'Uttarahali', 9966358211),
(9, 'Dr Shobha', 'Girinagar', 8745693214),
(10, 'Dr Geetha', 'RR Nagar', 8567412365);

-- --------------------------------------------------------

--
-- Table structure for table `donor`
--

CREATE TABLE `donor` (
  `DONOR_ID` int(11) NOT NULL,
  `DONOR_NAME` varchar(20) NOT NULL,
  `DONOR_ADDRESS` varchar(50) NOT NULL,
  `DONOR_PHNO` bigint(11) NOT NULL,
  `DONOR_DOB` date NOT NULL,
  `GENDER` varchar(1) NOT NULL,
  `WEIGHT` float NOT NULL,
  `BP` varchar(11) NOT NULL,
  `IRON_COUNT` float NOT NULL,
  `DOC_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `donor`
--

INSERT INTO `donor` (`DONOR_ID`, `DONOR_NAME`, `DONOR_ADDRESS`, `DONOR_PHNO`, `DONOR_DOB`, `GENDER`, `WEIGHT`, `BP`, `IRON_COUNT`, `DOC_ID`) VALUES
(1, 'Rakesh Sharma', 'RR Nagar, Bangalore', 9874589635, '1998-01-06', 'M', 78, '120/80', 18, 1),
(2, 'Mona', 'Vijayanagar,Bangalore', 9876543218, '1998-07-02', 'F', 58, '110/70', 15, 2),
(3, 'Neelam', 'SRINAGAR, BANGALORE', 7412541254, '1999-06-02', 'F', 60, '110/80', 15, 2),
(4, 'Mohan', 'KR Market', 7788456321, '1999-01-01', 'M', 78, '90/120', 15, 1),
(5, 'Maria', 'Chamrajpet, Bangalore', 8865472391, '1993-05-01', 'F', 55, '135/70', 14, 3),
(6, 'Deepa', 'Girinagar', 8855224477, '1981-08-01', 'F', 44, '120/80', 14, 3),
(7, 'Rohan', 'Kumarswamy Layout, Bangalore', 8845671239, '1998-12-05', 'M', 85, '120/80', 16, 1),
(8, 'Zoya', 'Chamrajpet, Bangalore', 8897456321, '1991-06-10', 'F', 75, '135/70', 15, 4),
(9, 'mayank', 'Girinagar', 7745896321, '1999-06-02', 'M', 58, '140/90', 15, 1),
(10, 'Pavithra', 'Muneshwara Block, Bengaluru', 9686685659, '2000-08-07', 'F', 58, '110/70', 15, 10),
(11, 'Hari', 'RR Nagar', 8874596852, '1995-12-12', 'M', 74, '120/80', 12, 8),
(12, 'Mohini', 'Basveshvar nagar, Bangalore', 8856472365, '1999-06-02', 'F', 60, '120/60', 14, 5),
(13, 'Vaishnavi', 'Indranagar, Bangalore', 9996685231, '1980-03-02', 'F', 44, '120/80', 15, 8),
(121, 'Anu', 'Basveshvar nagar, Bangalore', 8847569321, '1989-04-05', 'F', 62, '120/80', 15, 4),
(122, 'Mahesh', 'Srinagar, Bangalore', 8496523178, '1980-06-22', 'M', 85, '120/80', 14, 2),
(123, 'Priyanka', 'RR Nagar, Bangalore', 987654321, '1989-06-05', 'F', 55, '115/70', 14, 3),
(130, 'Sara', 'Nayandahalli', 985247713, '1985-05-05', 'F', 55, '115/70', 17, 2),
(134, 'Naser', 'GIRINAGAR, BANGALORE', 7745698231, '1976-08-08', 'M', 85, '115/70', 13, 3),
(149, 'Akul', 'Chamrajpet, Bangalore', 7894587932, '1966-04-28', 'M', 75, '120/80', 15, 6),
(195, 'Rani', 'Chamrajpet ', 8695364125, '1985-10-15', 'F', 64, '118/60', 18, 7),
(215, 'Preetham', 'Vijayanagar,Bangalore', 8567489216, '1991-06-10', 'M', 60, '120/80', 14, 5),
(216, 'Priyanka', 'GIRINAGAR, BANGALORE', 7743458963, '1998-06-17', 'F', 78, '115/70', 14, 5),
(218, 'Arun', 'RR Nagar, Bangalore', 7896541236, '2000-02-28', 'M', 60, '90/120', 14, 8),
(219, 'Janaki', 'Chamrajpet ', 9968532147, '1973-07-08', 'F', 48, '115/70', 13, 7),
(225, 'Madhuri', 'JP Nagar, Bangalore', 7845968574, '1974-03-05', 'F', 65, '120/80', 12, 10),
(228, 'Anish', 'Gandhi bazar, Bangalore', 8456971236, '1998-12-04', 'M', 78, '120/80', 13, 6),
(239, 'Varshini', 'RR Nagar, Bangalore', 9958632541, '2000-12-05', 'F', 78, '115/70', 13, 9),
(243, 'Vishnu', 'Padmanabhnagar, Bangalore', 8444554204, '1991-06-10', 'M', 75, '135/70', 14, 1),
(258, 'Saniya', 'Chamrajpet, Bangalore', 9876543218, '1993-05-01', 'F', 55, '135/70', 14, 4),
(260, 'Kiran Sharma', 'Nayandahalli', 7788456321, '2000-08-07', 'M', 60, '120/80', 14, 3),
(270, 'Niyathi Gowda', 'Jayanagar, Bangalore', 8856563254, '2000-06-02', 'F', 58, '120/80', 14, 4);

--
-- Triggers `donor`
--
DELIMITER $$
CREATE TRIGGER `delete_trigger` AFTER DELETE ON `donor` FOR EACH ROW INSERT INTO log (
        donor_id,
        old_row_data,
        new_row_data,
        dml_type,
        dml_timestamp
    )
    VALUES(
        OLD.DONOR_ID,
        JSON_OBJECT(
            "DONOR_NAME", OLD.DONOR_NAME,
            "DONOR_ADDRESS", OLD.DONOR_ADDRESS,
            "DONOR_PHNO", OLD.DONOR_PHNO,
            "DONOR_DOB", OLD.DONOR_DOB,
            "GENDER", OLD.GENDER,
            "WEIGHT", OLD.WEIGHT,
            "BP", OLD.BP,
            "IRON_COUNT", OLD.IRON_COUNT,
            "DOC_ID", OLD.DOC_ID
        ),
        null,
        'DELETE',
        CURRENT_TIMESTAMP
     
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert_trigger` AFTER INSERT ON `donor` FOR EACH ROW INSERT INTO log (
       donor_id,
        old_row_data,
        new_row_data,
        dml_type,
        dml_timestamp
    )
    VALUES(
        NEW.donor_id,
        null,
        JSON_OBJECT(
            "DONOR_NAME", NEW.DONOR_NAME,
            "DONOR_ADDRESS", NEW.DONOR_ADDRESS,
            "DONOR_PHNO", NEW.DONOR_PHNO,
            "DONOR_DOB", NEW.DONOR_DOB,
            "GENDER", NEW.GENDER,
            "WEIGHT", NEW.WEIGHT,
            "BP", NEW.BP,
            "IRON_COUNT", NEW.IRON_COUNT,
            "DOC_ID", NEW.DOC_ID
        ),
        'INSERT',
        CURRENT_TIMESTAMP
    )
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update_trigger` AFTER UPDATE ON `donor` FOR EACH ROW INSERT INTO log (
        donor_id,
        old_row_data,
        new_row_data,
        dml_type,
        dml_timestamp
       
    )
    VALUES(
        NEW.donor_id,
        JSON_OBJECT(
            "DONOR_NAME", OLD.DONOR_NAME,
            "DONOR_ADDRESS", OLD.DONOR_ADDRESS,
            "DONOR_PHNO", OLD.DONOR_PHNO,
            "DONOR_DOB", OLD.DONOR_DOB,
            "GENDER", OLD.GENDER,
            "WEIGHT", OLD.WEIGHT,
            "BP", OLD.BP,
            "IRON_COUNT", OLD.IRON_COUNT,
            "DOC_ID", OLD.DOC_ID
        ),
        JSON_OBJECT(
            "DONOR_NAME", NEW.DONOR_NAME,
            "DONOR_ADDRESS", NEW.DONOR_ADDRESS,
            "DONOR_PHNO", NEW.DONOR_PHNO,
            "DONOR_DOB", NEW.DONOR_DOB,
            "GENDER", NEW.GENDER,
            "WEIGHT", NEW.WEIGHT,
            "BP", NEW.BP,
            "IRON_COUNT", NEW.IRON_COUNT
           
        ),
        'UPDATE',
        CURRENT_TIMESTAMP
        
    )
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `log`
--

CREATE TABLE `log` (
  `donor_id` bigint(20) NOT NULL,
  `old_row_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`old_row_data`)),
  `new_row_data` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`new_row_data`)),
  `dml_type` enum('INSERT','UPDATE','DELETE') NOT NULL,
  `dml_timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `log`
--

INSERT INTO `log` (`donor_id`, `old_row_data`, `new_row_data`, `dml_type`, `dml_timestamp`) VALUES
(1, '{\"DONOR_NAME\": \"Rakesh\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5}', 'UPDATE', '2021-01-24 14:46:20'),
(1, '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5}', 'UPDATE', '2021-01-24 14:47:05'),
(1, '{\"DONOR_NAME\": \"Rakesh\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5}', 'UPDATE', '2021-01-24 14:48:17'),
(1, '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5}', 'UPDATE', '2021-01-24 15:07:27'),
(1, '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5}', 'UPDATE', '2021-01-24 15:07:58'),
(1, '{\"DONOR_NAME\": \"Rakesh\", \"DONOR_ADDRESS\": \"JP Nagar, Bangalore\", \"DONOR_PHNO\": 8475693214, \"DONOR_DOB\": \"1995-12-08\", \"GENDER\": \"M\", \"WEIGHT\": 75, \"BP\": \"120/60\", \"IRON_COUNT\": 13.5, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"KR Market\", \"DONOR_PHNO\": 7788456321, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18}', 'UPDATE', '2021-01-24 15:15:26'),
(1, '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"KR Market\", \"DONOR_PHNO\": 7788456321, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh \", \"DONOR_ADDRESS\": \"Vijayanagar, Bangalore\", \"DONOR_PHNO\": 7788456321, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18}', 'UPDATE', '2021-01-24 15:17:28'),
(1, '{\"DONOR_NAME\": \"Rakesh \", \"DONOR_ADDRESS\": \"Vijayanagar, Bangalore\", \"DONOR_PHNO\": 7788456321, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"RR Nagar, Bangalore\", \"DONOR_PHNO\": 123, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18}', 'UPDATE', '2021-01-24 16:41:15'),
(1, '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"RR Nagar, Bangalore\", \"DONOR_PHNO\": 123, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"Rakesh Sharma\", \"DONOR_ADDRESS\": \"RR Nagar, Bangalore\", \"DONOR_PHNO\": 9874589635, \"DONOR_DOB\": \"1998-01-06\", \"GENDER\": \"M\", \"WEIGHT\": 78, \"BP\": \"120/80\", \"IRON_COUNT\": 18}', 'UPDATE', '2021-01-24 16:42:05'),
(2, '{\"DONOR_NAME\": \"Mona\", \"DONOR_ADDRESS\": \"Vijayanagar,Bangalore\", \"DONOR_PHNO\": 9876543218, \"DONOR_DOB\": \"1998-07-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"110/70\", \"IRON_COUNT\": 15, \"DOC_ID\": 2}', '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"Vijayanagar,Bangalore\", \"DONOR_PHNO\": 9876543218, \"DONOR_DOB\": \"1998-07-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"110/70\", \"IRON_COUNT\": 15}', 'UPDATE', '2021-01-24 15:06:04'),
(2, '{\"DONOR_NAME\": \"\", \"DONOR_ADDRESS\": \"Vijayanagar,Bangalore\", \"DONOR_PHNO\": 9876543218, \"DONOR_DOB\": \"1998-07-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"110/70\", \"IRON_COUNT\": 15, \"DOC_ID\": 2}', '{\"DONOR_NAME\": \"Mona\", \"DONOR_ADDRESS\": \"Vijayanagar,Bangalore\", \"DONOR_PHNO\": 9876543218, \"DONOR_DOB\": \"1998-07-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"110/70\", \"IRON_COUNT\": 15}', 'UPDATE', '2021-01-24 15:08:03'),
(9, '{\"DONOR_NAME\": \"maya\", \"DONOR_ADDRESS\": \"Girinagar\", \"DONOR_PHNO\": 7745896321, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"140/90\", \"IRON_COUNT\": 15, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"mayank\", \"DONOR_ADDRESS\": \"Girinagar\", \"DONOR_PHNO\": 7745896321, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"140/90\", \"IRON_COUNT\": 15}', 'UPDATE', '2021-01-22 03:13:08'),
(9, '{\"DONOR_NAME\": \"mayank\", \"DONOR_ADDRESS\": \"Girinagar\", \"DONOR_PHNO\": 7745896321, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"140/90\", \"IRON_COUNT\": 15, \"DOC_ID\": 1}', '{\"DONOR_NAME\": \"mayank\", \"DONOR_ADDRESS\": \"Girinagar\", \"DONOR_PHNO\": 7745896321, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"M\", \"WEIGHT\": 58, \"BP\": \"140/90\", \"IRON_COUNT\": 15}', 'UPDATE', '2021-01-22 03:13:15'),
(12, '{\"DONOR_NAME\": \"Rohini\", \"DONOR_ADDRESS\": \"Vijayanagar,Bangalore\", \"DONOR_PHNO\": 7854123695, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 60, \"BP\": \"120/60\", \"IRON_COUNT\": 14, \"DOC_ID\": 5}', '{\"DONOR_NAME\": \"Mohini\", \"DONOR_ADDRESS\": \"Basveshvar nagar, Bangalore\", \"DONOR_PHNO\": 8856472365, \"DONOR_DOB\": \"1999-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 60, \"BP\": \"120/60\", \"IRON_COUNT\": 14}', 'UPDATE', '2021-01-24 17:19:49'),
(14, '{\"DONOR_NAME\": \"Satish\", \"DONOR_ADDRESS\": \"KR Market\", \"DONOR_PHNO\": 7788456321, \"DONOR_DOB\": \"1998-08-08\", \"GENDER\": \"M\", \"WEIGHT\": 60, \"BP\": \"120/80\", \"IRON_COUNT\": 14, \"DOC_ID\": 2}', NULL, 'DELETE', '2021-01-22 03:18:48'),
(217, '{\"DONOR_NAME\": \"Priyank\", \"DONOR_ADDRESS\": \"Muneshwara Nagar, BANGALORE\", \"DONOR_PHNO\": 7458963215, \"DONOR_DOB\": \"1985-01-21\", \"GENDER\": \"F\", \"WEIGHT\": 85, \"BP\": \"118/60\", \"IRON_COUNT\": 14, \"DOC_ID\": 5}', NULL, 'DELETE', '2021-01-28 07:40:20'),
(258, NULL, '{\"DONOR_NAME\": \"Saniya\", \"DONOR_ADDRESS\": \"Chamrajpet, Bangalore\", \"DONOR_PHNO\": 9876543218, \"DONOR_DOB\": \"1993-05-01\", \"GENDER\": \"F\", \"WEIGHT\": 55, \"BP\": \"135/70\", \"IRON_COUNT\": 14, \"DOC_ID\": 4}', 'INSERT', '2021-01-22 03:03:18'),
(270, '{\"DONOR_NAME\": \"Niyathi\", \"DONOR_ADDRESS\": \"Jayanagar, Bangalore\", \"DONOR_PHNO\": 8569563256, \"DONOR_DOB\": \"2000-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"120/80\", \"IRON_COUNT\": 14, \"DOC_ID\": 4}', '{\"DONOR_NAME\": \"Niyathi Gowda\", \"DONOR_ADDRESS\": \"Jayanagar, Bangalore\", \"DONOR_PHNO\": 8856563254, \"DONOR_DOB\": \"2000-06-02\", \"GENDER\": \"F\", \"WEIGHT\": 58, \"BP\": \"120/80\", \"IRON_COUNT\": 14}', 'UPDATE', '2021-01-28 07:39:33');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `PATIENT_ID` int(11) NOT NULL,
  `PATIENT_NAME` varchar(20) NOT NULL,
  `PATIENT_PHNO` bigint(11) NOT NULL,
  `PATIENT_ADDRESS` varchar(50) NOT NULL,
  `HOSPITAL_ADDRESS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`PATIENT_ID`, `PATIENT_NAME`, `PATIENT_PHNO`, `PATIENT_ADDRESS`, `HOSPITAL_ADDRESS`) VALUES
(1, 'Raj', 9845123478, 'Jayanagar, Bangalore', 'Apollo Hospital, Jayanagar, Bangalore'),
(2, 'Neha', 7895412369, 'RR Nagar, Bangalore', 'SSNMC Hospital, RR Nagar, Bangalore'),
(3, 'Ramu', 7896541473, 'JP Nagar', 'Apollo Hospital'),
(4, 'Shama', 8563214792, 'JP Nagar', 'Apollo Hospital, Jayanagar, Bangalore'),
(5, 'Harsha', 7856854528, 'Gandhi Bazar', 'Vasavi Hospital'),
(37, 'Diya', 8569741236, 'Srinagar', 'Kusuma Hospital, Srinagar'),
(43, 'Rohan', 7896584123, 'MG Road, Bangalore', 'Vinayaka Hospital'),
(44, 'Krishna', 7896584123, 'MG Road, Bangalore', 'Fortis Hospital, Jayanagar'),
(51, 'Robert', 8658965211, 'Uttarahali', 'Vinayaka Hospital'),
(64, 'Lahari', 8745693524, 'Girinagar', 'Ashwini Hospital'),
(65, 'Rohan', 7965848569, 'Seetha Circle', 'Vinayaka Hospital'),
(66, 'Sumeru', 8854759632, 'Brigade Road', 'Apollo Hospital'),
(67, 'Ruchitha', 9687458635, 'Padmanabhnagar', 'DG Hospital'),
(68, 'Sohan', 9968532147, 'Malleshwaram, Bangalore', 'KC General Hospital'),
(69, 'Kiran', 8856321476, 'Hanumanth Nagar', 'AV Multispeciality Hospital, Hoskerahalli'),
(70, 'Mayuri', 987563254, 'Malleshwaram, Bangalore', 'Lakshmi Hospital'),
(71, 'Anju', 7458963256, 'Hanumanth Nagar', 'Vinayaka Hospital'),
(72, 'John ', 9985632147, 'Rajajinagar', 'AV Multispeciality Hospital, Hoskerahalli'),
(73, 'Govind', 8567412368, 'Hanumanth Nagar', 'Fortis Hospital, Jayanagar'),
(75, 'rtrg', 55886658522222222, 'ytwyrtyrtyt', 'thtryrtyrty');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `sno` int(11) NOT NULL,
  `username` varchar(23) NOT NULL,
  `password` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`sno`, `username`, `password`) VALUES
(2, 'nisha', '456'),
(3, 'pavithra', '123');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blood`
--
ALTER TABLE `blood`
  ADD PRIMARY KEY (`DONOR_ID`),
  ADD KEY `blood_ibfk_2` (`BLOOD_BANK_ID`);

--
-- Indexes for table `blood_bank`
--
ALTER TABLE `blood_bank`
  ADD PRIMARY KEY (`BLOOD_BANK_ID`);

--
-- Indexes for table `blood_delivery`
--
ALTER TABLE `blood_delivery`
  ADD KEY `BLOOD_BANK_ID` (`BLOOD_BANK_ID`),
  ADD KEY `PATIENT_ID` (`PATIENT_ID`);

--
-- Indexes for table `doctor`
--
ALTER TABLE `doctor`
  ADD PRIMARY KEY (`DOC_ID`);

--
-- Indexes for table `donor`
--
ALTER TABLE `donor`
  ADD PRIMARY KEY (`DONOR_ID`),
  ADD KEY `donor_ibfk_1` (`DOC_ID`);

--
-- Indexes for table `log`
--
ALTER TABLE `log`
  ADD PRIMARY KEY (`donor_id`,`dml_type`,`dml_timestamp`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`PATIENT_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donor`
--
ALTER TABLE `donor`
  MODIFY `DONOR_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=279;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `PATIENT_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blood`
--
ALTER TABLE `blood`
  ADD CONSTRAINT `blood_ibfk_1` FOREIGN KEY (`DONOR_ID`) REFERENCES `donor` (`DONOR_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_ibfk_2` FOREIGN KEY (`BLOOD_BANK_ID`) REFERENCES `blood_bank` (`BLOOD_BANK_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `blood_delivery`
--
ALTER TABLE `blood_delivery`
  ADD CONSTRAINT `blood_delivery_ibfk_1` FOREIGN KEY (`BLOOD_BANK_ID`) REFERENCES `blood_bank` (`BLOOD_BANK_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `blood_delivery_ibfk_2` FOREIGN KEY (`PATIENT_ID`) REFERENCES `patient` (`PATIENT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `donor`
--
ALTER TABLE `donor`
  ADD CONSTRAINT `donor_ibfk_1` FOREIGN KEY (`DOC_ID`) REFERENCES `doctor` (`DOC_ID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
