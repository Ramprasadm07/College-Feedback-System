-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2020 at 07:51 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.1.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `id12722236_feedback_form`
--

-- --------------------------------------------------------

--
-- Table structure for table `ac`
--

CREATE TABLE `ac` (
  `rollno` varchar(150) NOT NULL,
  `course` varchar(150) NOT NULL,
  `staff` varchar(150) NOT NULL,
  `term` varchar(50) NOT NULL,
  `dept` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ac`
--

INSERT INTO `ac` (`rollno`, `course`, `staff`, `term`, `dept`) VALUES
('17MES01', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical Engineering(SS)E'),
('17MES02', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical Engineering(SS)E'),
('17MES03', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical Engineering(SS)E'),
('17MES04', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical Engineering(SS)E'),
('17MES05', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical Engineering(SS)E'),
('17MES06', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical Engineering(SS)E'),
('17MES07', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical Engineering(SS)E'),
('17MES08', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical Engineering(SS)E'),
('17MES09', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical Engineering(SS)E'),
('17MES10', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical Engineering(SS)E'),
('17ME13', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical EngineeringE'),
('17ME14', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical EngineeringE'),
('17ME15', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical EngineeringE'),
('17ME16', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical EngineeringE'),
('17ME17', '2403 B REFRIGERATION AND AIR CONDITIONING', 'S.MOHANRAJ', 'VI', 'Mechanical EngineeringE'),
('17ME18', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical EngineeringE'),
('17ME19', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical EngineeringE'),
('17ME20', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical EngineeringE'),
('17ME21', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical EngineeringE'),
('17ME22', '2403 A MECHATRONICS', 'S.JEHAN MOHAN', 'VI', 'Mechanical EngineeringE');

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `ac_yr` varchar(150) DEFAULT NULL,
  `courses` varchar(100) NOT NULL,
  `term` varchar(150) NOT NULL,
  `inc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`id`, `dept`, `ac_yr`, `courses`, `term`, `inc`) VALUES
(1, 'Computer Engineering', '2017-2020', '6201 - C++ Programming', 'III', 0),
(2, 'Computer Engineering', '2017-2021', '6202 - Computer Hardware and SerVIcing', 'III', 0),
(3, 'Computer Engineering', '2017-2022', '6203 - Beee', 'III', 0),
(4, 'Mechanical Engineering', '2017-2020', '6301 - car', 'III', 0),
(5, 'Mechanical Engineering', '2017-2021', '6302 - motor', 'III', 0),
(6, 'Mechanical Engineering', '2017-2022', '6303 - bus', 'III', 0);

--
-- Triggers `courses`
--
DELIMITER $$
CREATE TRIGGER `ins` AFTER INSERT ON `courses` FOR EACH ROW BEGIN

declare d,c,t varchar(150);
select term into t from courses where id=new.id;
select dept into d from courses where id=new.id;

select courses into c from courses where id=new.id;

insert into coursse_mark(dept,term,course,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,total,average,ic) VALUES (d,t,c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `coursse_mark`
--

CREATE TABLE `coursse_mark` (
  `id` int(11) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `term` varchar(150) NOT NULL,
  `course` varchar(150) DEFAULT NULL,
  `q1` varchar(50) DEFAULT NULL,
  `q2` varchar(50) DEFAULT NULL,
  `q3` varchar(50) DEFAULT NULL,
  `q4` varchar(50) DEFAULT NULL,
  `q5` varchar(50) DEFAULT NULL,
  `q6` varchar(50) DEFAULT NULL,
  `q7` varchar(50) DEFAULT NULL,
  `q8` varchar(50) DEFAULT NULL,
  `q9` varchar(50) DEFAULT NULL,
  `q10` varchar(50) DEFAULT NULL,
  `q11` varchar(50) DEFAULT NULL,
  `q12` varchar(50) DEFAULT NULL,
  `q13` varchar(50) DEFAULT NULL,
  `q14` varchar(50) DEFAULT NULL,
  `q15` varchar(50) DEFAULT NULL,
  `q16` varchar(50) DEFAULT NULL,
  `q17` varchar(50) DEFAULT NULL,
  `q18` varchar(50) DEFAULT NULL,
  `q19` varchar(50) DEFAULT NULL,
  `q20` varchar(50) DEFAULT NULL,
  `q21` varchar(50) DEFAULT NULL,
  `q22` varchar(50) DEFAULT NULL,
  `q23` varchar(50) DEFAULT NULL,
  `q24` varchar(50) DEFAULT NULL,
  `q25` varchar(50) DEFAULT NULL,
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `average` int(11) DEFAULT NULL,
  `ic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `coursse_mark`
--

INSERT INTO `coursse_mark` (`id`, `dept`, `term`, `course`, `q1`, `q2`, `q3`, `q4`, `q5`, `q6`, `q7`, `q8`, `q9`, `q10`, `q11`, `q12`, `q13`, `q14`, `q15`, `q16`, `q17`, `q18`, `q19`, `q20`, `q21`, `q22`, `q23`, `q24`, `q25`, `a`, `b`, `c`, `d`, `e`, `f`, `total`, `average`, `ic`) VALUES
(1, 'Computer Engineering', 'III', '6201 - C++ Programming', '1', '1', '2', '2', '3', '3', '4', '4', '1', '1', '2', '2', '3', '3', '4', '4', '1', '1', '2', '2', '3', '3', '4', '4', '1', 4, 28, 8, 4, 5, 12, 61, 61, 1),
(2, 'Computer Engineering', 'III', '6202 - Computer Hardware and SerVIcing', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 3, 11, 2, 3, 2, 4, 25, 25, 1),
(3, 'Computer Engineering', 'III', '6203 - Beee', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', 3, 11, 2, 3, 2, 4, 25, 25, 1),
(4, 'Mechanical Engineering', 'III', '6301 - car', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'Mechanical Engineering', 'III', '6302 - motor', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(6, 'Mechanical Engineering', 'III', '6303 - bus', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '0', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cou_che`
--

CREATE TABLE `cou_che` (
  `course` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `dept` varchar(300) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`dept`, `id`) VALUES
('Computer Engineering', 1),
('Mechanical Engineering', 2);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `sno` int(11) NOT NULL,
  `rollno` varchar(50) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `academic_year` varchar(150) DEFAULT NULL,
  `term` varchar(30) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `ques1` int(11) DEFAULT NULL,
  `ques2` int(11) DEFAULT NULL,
  `ques3` int(11) DEFAULT NULL,
  `ques4` int(11) DEFAULT NULL,
  `ques5` int(11) DEFAULT NULL,
  `ques6` int(11) DEFAULT NULL,
  `ques7` int(11) DEFAULT NULL,
  `ques8` int(11) DEFAULT NULL,
  `ques9` int(11) DEFAULT NULL,
  `ques10` int(11) DEFAULT NULL,
  `ques11` int(11) DEFAULT NULL,
  `ques12` int(11) DEFAULT NULL,
  `ques13` int(11) DEFAULT NULL,
  `ques14` int(11) DEFAULT NULL,
  `ques15` int(11) DEFAULT NULL,
  `ques16` int(11) DEFAULT NULL,
  `ques17` int(11) DEFAULT NULL,
  `ques18` int(11) DEFAULT NULL,
  `ques19` int(11) DEFAULT NULL,
  `ques20` int(11) DEFAULT NULL,
  `ques21` int(11) DEFAULT NULL,
  `ques22` int(11) DEFAULT NULL,
  `ques23` int(11) DEFAULT NULL,
  `ques24` int(11) DEFAULT NULL,
  `ques25` int(11) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  `f` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`sno`, `rollno`, `dept`, `academic_year`, `term`, `course`, `ques1`, `ques2`, `ques3`, `ques4`, `ques5`, `ques6`, `ques7`, `ques8`, `ques9`, `ques10`, `ques11`, `ques12`, `ques13`, `ques14`, `ques15`, `ques16`, `ques17`, `ques18`, `ques19`, `ques20`, `ques21`, `ques22`, `ques23`, `ques24`, `ques25`, `a`, `b`, `c`, `d`, `e`, `f`, `total`) VALUES
(1, '17ct07', 'Computer Engineering', '0', 'III', '6201 - C++ Programming', 1, 1, 2, 2, 3, 3, 4, 4, 1, 1, 2, 2, 3, 3, 4, 4, 1, 1, 2, 2, 3, 3, 4, 4, 1, 4, 28, 8, 4, 5, 12, 61),
(2, '17ct07', 'Computer Engineering', '0', 'III', '6202 - Computer Hardware and SerVIcing', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 11, 2, 3, 2, 4, 25),
(6, '17ct07', 'Computer Engineering', '0', 'III', '6203 - Beee', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 3, 11, 2, 3, 2, 4, 25);

--
-- Triggers `feedback`
--
DELIMITER $$
CREATE TRIGGER `sam` AFTER INSERT ON `feedback` FOR EACH ROW BEGIN
declare qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15,qq16,qq17,qq18,qq19,qq20,qq21,qq22,qq23,qq24,qq25,tot,t,i,a1,b1,c1,d1,e1,f1 integer;
DECLARE cou varchar(255);
DECLARE dep varchar(255);
DECLARE ter varchar(255);
SELECT dept into dep from feedback where sno=new.sno;
SELECT term into ter from feedback where sno=new.sno;

select total into tot from feedback where sno=new.sno;
select course into cou from feedback where sno=new.sno;
SELECT ques1 into qq1 from feedback where sno=new.sno;
SELECT ques2 into qq2 from feedback where sno=new.sno;
SELECT ques3 into qq3 from feedback where sno=new.sno;
SELECT ques4 into qq4 from feedback where sno=new.sno;
SELECT ques5 into qq5 from feedback where sno=new.sno;
SELECT ques6 into qq6 from feedback where sno=new.sno;
SELECT ques7 into qq7 from feedback where sno=new.sno;
SELECT ques8 into qq8 from feedback where sno=new.sno;
SELECT ques9 into qq9 from feedback where sno=new.sno;
SELECT ques10 into qq10 from feedback where sno=new.sno;
SELECT ques11 into qq11 from feedback where sno=new.sno;
SELECT ques12 into qq12 from feedback where sno=new.sno;
SELECT ques13 into qq13 from feedback where sno=new.sno;
SELECT ques14 into qq14 from feedback where sno=new.sno;
SELECT ques15 into qq15 from feedback where sno=new.sno;
SELECT ques16 into qq16 from feedback where sno=new.sno;
SELECT ques17 into qq17 from feedback where sno=new.sno;
SELECT ques18 into qq18 from feedback where sno=new.sno;
SELECT ques19 into qq19 from feedback where sno=new.sno;
SELECT ques20 INTO qq20 from feedback where sno=new.sno;
SELECT ques21 into qq21 from feedback where sno=new.sno;
SELECT ques22 into qq22 from feedback where sno=new.sno;
SELECT ques23 into qq23 from feedback where sno=new.sno;
SELECT ques24 into qq24 from feedback where sno=new.sno;
SELECT ques25 into qq25 from feedback where sno=new.sno;
set a1=qq1+qq2+qq3;
set b1=qq4+qq5+qq6+qq7+qq8+qq9+qq10+qq11+qq12+qq13+qq14;
set c1=qq15+qq16;
set d1=qq17+qq18+qq19;
set e1=qq20+qq21;
set f1=qq22+qq23+qq24+qq25;
UPDATE coursse_mark set q1=q1+qq1,q2=q2+qq2,q3=q3+qq3,q4=q4+qq4,q5=q5+qq5,q6=q6+qq6,q7=q7+qq7,q8=q8+qq8,q9=q9+qq9,q10=q10+qq10,q11=q11+qq11,q12=q12+qq12,q13=q13+qq13,q14=q14+qq14,q15=q15+qq15,q16=q16+qq16,q17=q17+qq17,q18=q18+qq18,q19=q19+qq19,q20=q20+qq20,q21=q21+qq21,q22=q22+qq22,q23=q23+qq23,q24=q24+qq24,q25=q25+qq25,a=a+a1,b=b+b1,c=c+c1,d=d+d1,e=e+e1,f=f+f1,total=total+tot,ic=ic+1,average=total/ic where course=cou and dept=dep and term=ter;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `first_courses`
--

CREATE TABLE `first_courses` (
  `id` int(11) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `sec` varchar(50) NOT NULL,
  `ac_yr` varchar(150) DEFAULT NULL,
  `courses` varchar(100) NOT NULL,
  `term` varchar(100) NOT NULL,
  `inc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `first_courses`
--
DELIMITER $$
CREATE TRIGGER `ins1` AFTER INSERT ON `first_courses` FOR EACH ROW BEGIN

declare d,c,t,s varchar(150);
select term into t from first_courses where id=new.id;
select sec into s from first_courses where id=new.id;
select dept into d from first_courses where id=new.id;

select courses into c from first_courses where id=new.id;

insert into first_coursse_mark(dept,sec,term,course,q1,q2,q3,q4,q5,q6,q7,q8,q9,q10,q11,q12,q13,q14,q15,q16,q17,q18,q19,q20,q21,q22,q23,q24,q25,total,average,ic) VALUES (d,s,t,c,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);

end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `first_coursse_mark`
--

CREATE TABLE `first_coursse_mark` (
  `id` int(11) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `sec` varchar(50) NOT NULL,
  `term` varchar(150) DEFAULT NULL,
  `course` varchar(150) DEFAULT NULL,
  `q1` varchar(50) DEFAULT NULL,
  `q2` varchar(50) DEFAULT NULL,
  `q3` varchar(50) DEFAULT NULL,
  `q4` varchar(50) DEFAULT NULL,
  `q5` varchar(50) DEFAULT NULL,
  `q6` varchar(50) DEFAULT NULL,
  `q7` varchar(50) DEFAULT NULL,
  `q8` varchar(50) DEFAULT NULL,
  `q9` varchar(50) DEFAULT NULL,
  `q10` varchar(50) DEFAULT NULL,
  `q11` varchar(50) DEFAULT NULL,
  `q12` varchar(50) DEFAULT NULL,
  `q13` varchar(50) DEFAULT NULL,
  `q14` varchar(50) DEFAULT NULL,
  `q15` varchar(50) DEFAULT NULL,
  `q16` varchar(50) DEFAULT NULL,
  `q17` varchar(50) DEFAULT NULL,
  `q18` varchar(50) DEFAULT NULL,
  `q19` varchar(50) DEFAULT NULL,
  `q20` varchar(50) DEFAULT NULL,
  `q21` varchar(50) DEFAULT NULL,
  `q22` varchar(50) DEFAULT NULL,
  `q23` varchar(50) DEFAULT NULL,
  `q24` varchar(50) DEFAULT NULL,
  `q25` varchar(50) DEFAULT NULL,
  `a` int(11) NOT NULL,
  `b` int(11) NOT NULL,
  `c` int(11) NOT NULL,
  `d` int(11) NOT NULL,
  `e` int(11) NOT NULL,
  `f` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `average` varchar(100) DEFAULT NULL,
  `ic` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_feedback`
--

CREATE TABLE `first_feedback` (
  `sno` int(11) NOT NULL,
  `rollno` varchar(50) DEFAULT NULL,
  `dept` varchar(255) DEFAULT NULL,
  `sec` varchar(150) NOT NULL,
  `academic_year` varchar(150) DEFAULT NULL,
  `term` varchar(30) NOT NULL,
  `course` varchar(100) DEFAULT NULL,
  `ques1` int(11) DEFAULT NULL,
  `ques2` int(11) DEFAULT NULL,
  `ques3` int(11) DEFAULT NULL,
  `ques4` int(11) DEFAULT NULL,
  `ques5` int(11) DEFAULT NULL,
  `ques6` int(11) DEFAULT NULL,
  `ques7` int(11) DEFAULT NULL,
  `ques8` int(11) DEFAULT NULL,
  `ques9` int(11) DEFAULT NULL,
  `ques10` int(11) DEFAULT NULL,
  `ques11` int(11) DEFAULT NULL,
  `ques12` int(11) DEFAULT NULL,
  `ques13` int(11) DEFAULT NULL,
  `ques14` int(11) DEFAULT NULL,
  `ques15` int(11) DEFAULT NULL,
  `ques16` int(11) DEFAULT NULL,
  `ques17` int(11) DEFAULT NULL,
  `ques18` int(11) DEFAULT NULL,
  `ques19` int(11) DEFAULT NULL,
  `ques20` int(11) DEFAULT NULL,
  `ques21` int(11) DEFAULT NULL,
  `ques22` int(11) DEFAULT NULL,
  `ques23` int(11) DEFAULT NULL,
  `ques24` int(11) DEFAULT NULL,
  `ques25` int(11) DEFAULT NULL,
  `a` int(11) DEFAULT NULL,
  `b` int(11) DEFAULT NULL,
  `c` int(11) DEFAULT NULL,
  `d` int(11) DEFAULT NULL,
  `e` int(11) DEFAULT NULL,
  `f` int(11) DEFAULT NULL,
  `total` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Triggers `first_feedback`
--
DELIMITER $$
CREATE TRIGGER `upd1` AFTER INSERT ON `first_feedback` FOR EACH ROW BEGIN
declare qq1,qq2,qq3,qq4,qq5,qq6,qq7,qq8,qq9,qq10,qq11,qq12,qq13,qq14,qq15,qq16,qq17,qq18,qq19,qq20,qq21,qq22,qq23,qq24,qq25,tot,t,i,a1,b1,c1,d1,e1,f1 integer;
DECLARE cou varchar(255);

select total into tot from first_feedback where sno=new.sno;
select course into cou from first_feedback where sno=new.sno;
SELECT ques1 into qq1 from first_feedback where sno=new.sno;
SELECT ques2 into qq2 from first_feedback where sno=new.sno;
SELECT ques3 into qq3 from first_feedback where sno=new.sno;
SELECT ques4 into qq4 from first_feedback where sno=new.sno;
SELECT ques5 into qq5 from first_feedback where sno=new.sno;
SELECT ques6 into qq6 from first_feedback where sno=new.sno;
SELECT ques7 into qq7 from first_feedback where sno=new.sno;
SELECT ques8 into qq8 from first_feedback where sno=new.sno;
SELECT ques9 into qq9 from first_feedback where sno=new.sno;
SELECT ques10 into qq10 from first_feedback where sno=new.sno;
SELECT ques11 into qq11 from first_feedback where sno=new.sno;
SELECT ques12 into qq12 from first_feedback where sno=new.sno;
SELECT ques13 into qq13 from first_feedback where sno=new.sno;
SELECT ques14 into qq14 from first_feedback where sno=new.sno;
SELECT ques15 into qq15 from first_feedback where sno=new.sno;
SELECT ques16 into qq16 from first_feedback where sno=new.sno;
SELECT ques17 into qq17 from first_feedback where sno=new.sno;
SELECT ques18 into qq18 from first_feedback where sno=new.sno;
SELECT ques19 into qq19 from first_feedback where sno=new.sno;
SELECT ques20 INTO qq20 from first_feedback where sno=new.sno;
SELECT ques21 into qq21 from first_feedback where sno=new.sno;
SELECT ques22 into qq22 from first_feedback where sno=new.sno;
SELECT ques23 into qq23 from first_feedback where sno=new.sno;
SELECT ques24 into qq24 from first_feedback where sno=new.sno;
SELECT ques25 into qq25 from first_feedback where sno=new.sno;
set a1=qq1+qq2+qq3;
set b1=qq4+qq5+qq6+qq7+qq8+qq9+qq10+qq11+qq12+qq13+qq14;
set c1=qq15+qq16;
set d1=qq17+qq18+qq19;
set e1=qq20+qq21;
set f1=qq22+qq23+qq24+qq25;
UPDATE first_coursse_mark set q1=q1+qq1,q2=q2+qq2,q3=q3+qq3,q4=q4+qq4,q5=q5+qq5,q6=q6+qq6,q7=q7+qq7,q8=q8+qq8,q9=q9+qq9,q10=q10+qq10,q11=q11+qq11,q12=q12+qq12,q13=q13+qq13,q14=q14+qq14,q15=q15+qq15,q16=q16+qq16,q17=q17+qq17,q18=q18+qq18,q19=q19+qq19,q20=q20+qq20,q21=q21+qq21,q22=q22+qq22,q23=q23+qq23,q24=q24+qq24,q25=q25+qq25,a=a+a1,b=b+b1,c=c+c1,d=d+d1,e=e+e1,f=f+f1,total=total+tot,ic=ic+1,average=total/ic where course=cou;
end
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `first_main_ad`
--

CREATE TABLE `first_main_ad` (
  `id` int(11) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_main_ad`
--

INSERT INTO `first_main_ad` (`id`, `username`, `password`) VALUES
(1, 'sample1', 'sample1'),
(2, 'sample2', 'sample2');

-- --------------------------------------------------------

--
-- Table structure for table `first_staff`
--

CREATE TABLE `first_staff` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(150) DEFAULT NULL,
  `course` varchar(100) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `term` varchar(150) DEFAULT NULL,
  `sec` varchar(50) DEFAULT NULL,
  `ac_yr` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_student`
--

CREATE TABLE `first_student` (
  `stud_no` int(11) NOT NULL,
  `rollno` varchar(150) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `ac_yr` varchar(150) DEFAULT NULL,
  `term` varchar(150) NOT NULL,
  `sec` varchar(50) DEFAULT NULL,
  `key_gen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `first_users`
--

CREATE TABLE `first_users` (
  `id` int(11) NOT NULL,
  `us` varchar(150) DEFAULT NULL,
  `pwd` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `first_users`
--

INSERT INTO `first_users` (`id`, `us`, `pwd`) VALUES
(1, 'iqac', '212nptc'),
(2, 'iqac', '212npt');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `logined` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`logined`) VALUES
('17ct07');

-- --------------------------------------------------------

--
-- Table structure for table `main_ad`
--

CREATE TABLE `main_ad` (
  `id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `main_ad`
--

INSERT INTO `main_ad` (`id`, `username`, `password`) VALUES
(1, 'sample1', 'sample1'),
(2, 'sample2', 'sample2');

-- --------------------------------------------------------

--
-- Table structure for table `mechtra`
--

CREATE TABLE `mechtra` (
  `rollno` varchar(150) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mechtra`
--

INSERT INTO `mechtra` (`rollno`) VALUES
('1');

-- --------------------------------------------------------

--
-- Table structure for table `sec`
--

CREATE TABLE `sec` (
  `sec` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec`
--

INSERT INTO `sec` (`sec`) VALUES
('A'),
('B'),
('C'),
('D'),
('E'),
('F'),
('G'),
('H'),
('I'),
('J'),
('K'),
('L');

-- --------------------------------------------------------

--
-- Table structure for table `simple`
--

CREATE TABLE `simple` (
  `id` int(11) NOT NULL,
  `s` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `simple`
--

INSERT INTO `simple` (`id`, `s`) VALUES
(0, '1'),
(0, 'stud'),
(0, 'stud'),
(0, 'stud'),
(0, 'stud');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` int(11) NOT NULL,
  `staff_name` varchar(150) DEFAULT NULL,
  `course` varchar(150) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `term` varchar(150) NOT NULL,
  `ac_yr` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `staff_name`, `course`, `dept`, `term`, `ac_yr`) VALUES
(1, 'A.Nalini', '6201 - C++ Programming', 'Computer Engineering', 'III', '2017-2020'),
(2, 'M.Nadeesh', '6202 - Computer Hardware and SerVIcing', 'Computer Engineering', 'III', '2017-2021'),
(3, 'N.Pavitra', '6203 - Beee', 'Computer Engineering', 'III', '2017-2022'),
(4, 'P.sidhu', '6301 - car', 'Mechanical Engineering', 'III', '2017-2020'),
(5, 'M.Sharik', '6302 - motor', 'Mechanical Engineering', 'III', '2017-2021'),
(6, 'A.Sabari', '6303 - bus', 'Mechanical Engineering', 'III', '2017-2022');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stud_no` int(11) NOT NULL,
  `rollno` varchar(150) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `ac_yr` varchar(150) DEFAULT NULL,
  `term` varchar(150) NOT NULL,
  `key_gen` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stud_no`, `rollno`, `dept`, `ac_yr`, `term`, `key_gen`) VALUES
(1, '17ct01', 'Computer Engineering', '2017-2020', 'III', '1234'),
(2, '17ct02', 'Computer Engineering', '2017-2021', 'III', '1235'),
(3, '17ct03', 'Computer Engineering', '2017-2022', 'III', '1236'),
(4, '17ct04', 'Computer Engineering', '2017-2023', 'III', '1237'),
(5, '17ct05', 'Computer Engineering', '2017-2024', 'III', '1238'),
(6, '17ct06', 'Computer Engineering', '2017-2025', 'III', '1239'),
(7, '17ct07', 'Computer Engineering', '2017-2026', 'III', '1240'),
(8, '17ct08', 'Computer Engineering', '2017-2027', 'III', '1241'),
(9, '17ct09', 'Computer Engineering', '2017-2028', 'III', '1242'),
(10, '17ct10', 'Computer Engineering', '2017-2029', 'III', '1243'),
(11, '17ct11', 'Computer Engineering', '2017-2030', 'III', '1244'),
(12, '17ct12', 'Computer Engineering', '2017-2031', 'III', '1245'),
(13, '17ct13', 'Computer Engineering', '2017-2032', 'III', '1246'),
(14, '17ct14', 'Computer Engineering', '2017-2033', 'III', '1247'),
(15, '17ct15', 'Computer Engineering', '2017-2034', 'III', '1248'),
(16, '17ct16', 'Computer Engineering', '2017-2035', 'III', '1249'),
(17, '17ct17', 'Computer Engineering', '2017-2036', 'III', '1250'),
(18, '17ct18', 'Computer Engineering', '2017-2037', 'III', '1251'),
(19, '17ct19', 'Computer Engineering', '2017-2038', 'III', '1252'),
(20, '17ct20', 'Computer Engineering', '2017-2039', 'III', '1253'),
(21, '17ct21', 'Computer Engineering', '2017-2040', 'III', '1254'),
(22, '17ct22', 'Computer Engineering', '2017-2041', 'III', '1255'),
(23, '17ct23', 'Computer Engineering', '2017-2042', 'III', '1256'),
(24, '17ct24', 'Computer Engineering', '2017-2043', 'III', '1257'),
(25, '17ct25', 'Computer Engineering', '2017-2044', 'III', '1258'),
(26, '17ct26', 'Computer Engineering', '2017-2045', 'III', '1259'),
(27, '17ct27', 'Computer Engineering', '2017-2046', 'III', '1260'),
(28, '17ct28', 'Computer Engineering', '2017-2047', 'III', '1261'),
(29, '17ct29', 'Computer Engineering', '2017-2048', 'III', '1262'),
(30, '17ct30', 'Computer Engineering', '2017-2049', 'III', '1263'),
(31, '18cta01', 'Computer Engineering', '2017-2050', 'III', '1264'),
(32, '18cta02', 'Computer Engineering', '2017-2051', 'III', '1265'),
(33, '17me01', 'Mechanical Engineering', '2017-2051', 'III', '1265'),
(34, '17me02', 'Mechanical Engineering', '2017-2052', 'III', '1266'),
(35, '17me03', 'Mechanical Engineering', '2017-2053', 'III', '1267'),
(36, '17me04', 'Mechanical Engineering', '2017-2054', 'III', '1268'),
(37, '17me05', 'Mechanical Engineering', '2017-2055', 'III', '1269'),
(38, '17me06', 'Mechanical Engineering', '2017-2056', 'III', '1270'),
(39, '17me07', 'Mechanical Engineering', '2017-2057', 'III', '1271'),
(40, '17me08', 'Mechanical Engineering', '2017-2058', 'III', '1272'),
(41, '17me09', 'Mechanical Engineering', '2017-2059', 'III', '1273'),
(42, '17me10', 'Mechanical Engineering', '2017-2060', 'III', '1274'),
(43, '17me11', 'Mechanical Engineering', '2017-2061', 'III', '1275'),
(44, '17me12', 'Mechanical Engineering', '2017-2062', 'III', '1276'),
(45, '17me13', 'Mechanical Engineering', '2017-2063', 'III', '1277'),
(46, '17me14', 'Mechanical Engineering', '2017-2064', 'III', '1278'),
(47, '17me15', 'Mechanical Engineering', '2017-2065', 'III', '1279'),
(48, '17me16', 'Mechanical Engineering', '2017-2066', 'III', '1280'),
(49, '17me17', 'Mechanical Engineering', '2017-2067', 'III', '1281'),
(50, '17me18', 'Mechanical Engineering', '2017-2068', 'III', '1282'),
(51, '17me19', 'Mechanical Engineering', '2017-2069', 'III', '1283'),
(52, '17me20', 'Mechanical Engineering', '2017-2070', 'III', '1284'),
(53, '17me21', 'Mechanical Engineering', '2017-2071', 'III', '1285'),
(54, '17me22', 'Mechanical Engineering', '2017-2072', 'III', '1286'),
(55, '17me23', 'Mechanical Engineering', '2017-2073', 'III', '1287'),
(56, '17me24', 'Mechanical Engineering', '2017-2074', 'III', '1288'),
(57, '17me25', 'Mechanical Engineering', '2017-2075', 'III', '1289'),
(58, '17me26', 'Mechanical Engineering', '2017-2076', 'III', '1290'),
(59, '17me27', 'Mechanical Engineering', '2017-2077', 'III', '1291'),
(60, '17me28', 'Mechanical Engineering', '2017-2078', 'III', '1292');

-- --------------------------------------------------------

--
-- Table structure for table `term`
--

CREATE TABLE `term` (
  `id` int(11) NOT NULL,
  `dept` varchar(150) DEFAULT NULL,
  `term` varchar(100) DEFAULT NULL,
  `student_count` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `us` varchar(150) DEFAULT NULL,
  `pwd` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `us`, `pwd`) VALUES
(1, 'iqac', '212nptc'),
(2, 'iqac', '212npt');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coursse_mark`
--
ALTER TABLE `coursse_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `first_courses`
--
ALTER TABLE `first_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_coursse_mark`
--
ALTER TABLE `first_coursse_mark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_feedback`
--
ALTER TABLE `first_feedback`
  ADD PRIMARY KEY (`sno`);

--
-- Indexes for table `first_staff`
--
ALTER TABLE `first_staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `first_student`
--
ALTER TABLE `first_student`
  ADD PRIMARY KEY (`stud_no`);

--
-- Indexes for table `first_users`
--
ALTER TABLE `first_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login_user`
--
ALTER TABLE `login_user`
  ADD PRIMARY KEY (`logined`);

--
-- Indexes for table `main_ad`
--
ALTER TABLE `main_ad`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`stud_no`,`rollno`) USING BTREE;

--
-- Indexes for table `term`
--
ALTER TABLE `term`
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
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `coursse_mark`
--
ALTER TABLE `coursse_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `department`
--
ALTER TABLE `department`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `first_courses`
--
ALTER TABLE `first_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_coursse_mark`
--
ALTER TABLE `first_coursse_mark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_feedback`
--
ALTER TABLE `first_feedback`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_staff`
--
ALTER TABLE `first_staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_student`
--
ALTER TABLE `first_student`
  MODIFY `stud_no` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `first_users`
--
ALTER TABLE `first_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `main_ad`
--
ALTER TABLE `main_ad`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `stud_no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `term`
--
ALTER TABLE `term`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
