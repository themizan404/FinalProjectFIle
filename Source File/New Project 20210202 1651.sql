-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.73-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema ums
--

CREATE DATABASE IF NOT EXISTS ums;
USE ums;

--
-- Definition of table `approvedbookrequest`
--

DROP TABLE IF EXISTS `approvedbookrequest`;
CREATE TABLE `approvedbookrequest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookCode` varchar(45) DEFAULT NULL,
  `bookName` varchar(155) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `edition` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `sid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `approvedbookrequest`
--

/*!40000 ALTER TABLE `approvedbookrequest` DISABLE KEYS */;
INSERT INTO `approvedbookrequest` (`id`,`bookCode`,`bookName`,`author`,`genre`,`publisher`,`quantity`,`edition`,`price`,`sid`,`name`,`email`,`phone`,`address`,`status`) VALUES 
 (1,'1','Harry Potter and the Philosopher\'s Stone','J. K. Rowling','Novel','J. K. Rowling','5','Second','1500','1255304','Mezbaur Rahman','sany500@gmail.com','01731206771','Mezbaur Rahman','Approved'),
 (2,'3','Intro to Java Programming, Comprehensive Version','Y. Daniel Liang','Programming','Y. Daniel Liang','5','10th Edition','1000','1256466','Maria Jannat','maria500@gmail.com','017356968654','Maria Jannat','Approved'),
 (3,'3','Intro to Java Programming, Comprehensive Version','Y. Daniel Liang','Programming','Y. Daniel Liang','5','10th Edition','1000','1255304','Mezbaur Rahman','sany500@gmail.com','01731206771','Mezbaur Rahman','Approved');
/*!40000 ALTER TABLE `approvedbookrequest` ENABLE KEYS */;


--
-- Definition of table `assignfacultycourse`
--

DROP TABLE IF EXISTS `assignfacultycourse`;
CREATE TABLE `assignfacultycourse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` int(10) unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `bloodGroup` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `semesterCode` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  `courseCode` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `deptCode` varchar(45) DEFAULT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignfacultycourse`
--

/*!40000 ALTER TABLE `assignfacultycourse` DISABLE KEYS */;
INSERT INTO `assignfacultycourse` (`id`,`fid`,`name`,`email`,`phone`,`address`,`designation`,`dob`,`religion`,`bloodGroup`,`gender`,`semesterCode`,`semesterName`,`uniCode`,`uniName`,`courseCode`,`courseName`,`deptCode`,`deptName`) VALUES 
 (5,110,'Mr A','mra@gmail.com','017356968654','Rajshahi','Assistant Professor','1982-01-26','Islam','A+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (6,111,'Mr B','tahsincou@yahoo.com','017356968654','Mirpur','Professor','1972-05-30','Islam','O+','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','131','Physics-1','104','Physics'),
 (7,110,'Mr A','mra@gmail.com','017356968654','Rajshahi','Assistant Professor','1982-01-26','Islam','A+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','128','Thermodynamics Chemistry','102','Chemistry'),
 (8,111,'Mr B','tahsincou@yahoo.com','017356968654','Mirpur','Professor','1972-05-30','Islam','O+','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','132','Applied Physics-2','104','Physics');
/*!40000 ALTER TABLE `assignfacultycourse` ENABLE KEYS */;


--
-- Definition of table `assignstudentcourse`
--

DROP TABLE IF EXISTS `assignstudentcourse`;
CREATE TABLE `assignstudentcourse` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(10) unsigned DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `mName` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `bloodGroup` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `semesterCode` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  `courseCode` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `deptCode` varchar(45) DEFAULT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignstudentcourse`
--

/*!40000 ALTER TABLE `assignstudentcourse` DISABLE KEYS */;
INSERT INTO `assignstudentcourse` (`id`,`sid`,`name`,`email`,`phone`,`address`,`fName`,`mName`,`dob`,`religion`,`bloodGroup`,`gender`,`semesterCode`,`semesterName`,`uniCode`,`uniName`,`courseCode`,`courseName`,`deptCode`,`deptName`) VALUES 
 (27,1255304,'Mezbaur Rahman','sany500@gmail.com','01731206771','Faridpur,Dhaka','Md. Feroz Khandakar','Mst. Merina Begum','1993-12-20','Islam','O+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (28,1256466,'Maria Jannat','maria500@gmail.com','017356968654','Mirpur,Dhaka','Mr. A','Ms. B','1993-01-30','Islam','A+','Female','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (29,1255425,'Safayet Zahid','safayet@gmail.com','017356968658','Noakhali','Mr. A','Ms. B','1993-01-30','Islam','B+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (30,1255960,'Sumaiya Ferdouse Swarna','swarna@gmail.com','017356968654','Madaripur, Dhaka','Mr D','Ms E','1993-01-28','Islam','O+','Female','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (31,1255830,'Ahsun Habib','habib@gmail.com','017356968654','Rajshahi','Mr D','Ms E','2021-01-04','Islam','B+','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','132','Applied Physics-2','104','Physics'),
 (32,1255656,'Golam Hossain','golam@gmail.com','017356968654','Rajshahi','Mr D','Ms E','1991-01-22','Islam','AB+','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','132','Applied Physics-2','104','Physics'),
 (33,1256084,'Gazi Rezvekhar Zaman','rezve@gmail.com','017356968654','Ibrahimpur, Dhaka','Mr D','Ms E','1993-01-30','Islam','AB-','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','132','Applied Physics-2','104','Physics'),
 (34,1256317,'Md. Mizanur Rahman ','mijan@gmail.com','017356968654','Mirpur, Dhaka','Mr D','Ms E','1993-06-30','Islam','AB+','Male','1070','Spring 2019-2020(Ph)','1001','East-West University','132','Applied Physics-2','104','Physics'),
 (35,1255304,'Mezbaur Rahman','sany500@gmail.com','01731206771','Faridpur,Dhaka','Md. Feroz Khandakar','Mst. Merina Begum','1993-12-20','Islam','O+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','128','Thermodynamics Chemistry','102','Chemistry'),
 (36,1255830,'Ahsun Habib','habib@gmail.com','017356968654','Rajshahi','Mr D','Ms E','2021-01-04','Islam','B+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (37,1255656,'Golam Hossain','golam@gmail.com','017356968654','Rajshahi','Mr D','Ms E','1991-01-22','Islam','AB+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','127','Stereo Chemistry','102','Chemistry'),
 (38,1255304,'Mezbaur Rahman','sany500@gmail.com','01731206771','Faridpur,Dhaka','Md. Feroz Khandakar','Mst. Merina Begum','1993-12-20','Islam','O+','Male','1060','Spring 2019-2020(ch)','1001','East-West University','125','Separation Technique','102','Chemistry');
/*!40000 ALTER TABLE `assignstudentcourse` ENABLE KEYS */;


--
-- Definition of table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
CREATE TABLE `attendance` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `studentId` varchar(45) DEFAULT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `studentSemester` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  `facultyName` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance`
--

/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` (`id`,`studentId`,`studentName`,`studentSemester`,`status`,`date`,`facultyName`,`courseName`) VALUES 
 (74,'1255830','Ahsun Habib','Spring 2019-2020(Ph)','Present','2021-01-31','Mr B','Applied Physics-2'),
 (75,'1255656','Golam Hossain','Spring 2019-2020(Ph)','Present','2021-01-31','Mr B','Applied Physics-2'),
 (76,'1256084','Gazi Rezvekhar Zaman','Spring 2019-2020(Ph)','Present','2021-01-31','Mr B','Applied Physics-2'),
 (77,'1256317','Md. Mizanur Rahman ','Spring 2019-2020(Ph)','Absent','2021-01-31','Mr B','Applied Physics-2'),
 (78,'1255304','Mezbaur Rahman','Spring 2019-2020(ch)','Present','2021-01-31','Mr A','Stereo Chemistry'),
 (79,'1256466','Maria Jannat','Spring 2019-2020(ch)','Present','2021-01-31','Mr A','Stereo Chemistry'),
 (80,'1255425','Safayet Zahid','Spring 2019-2020(ch)','Present','2021-01-31','Mr A','Stereo Chemistry'),
 (81,'1255960','Sumaiya Ferdouse Swarna','Spring 2019-2020(ch)','Present','2021-01-31','Mr A','Stereo Chemistry'),
 (82,'1255830','Ahsun Habib','Spring 2019-2020(ch)','Absent','2021-01-31','Mr A','Stereo Chemistry'),
 (83,'1255656','Golam Hossain','Spring 2019-2020(ch)','Absent','2021-01-31','Mr A','Stereo Chemistry');
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;


--
-- Definition of table `book`
--

DROP TABLE IF EXISTS `book`;
CREATE TABLE `book` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookCode` varchar(100) DEFAULT NULL,
  `bookName` varchar(100) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `edition` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `book`
--

/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` (`id`,`bookCode`,`bookName`,`author`,`genre`,`publisher`,`quantity`,`edition`,`price`) VALUES 
 (1,'1','Harry Potter and the Philosopher\'s Stone','J. K. Rowling','Novel','J. K. Rowling','5','Second','1500'),
 (2,'2','Harry Potter and the Chamber of Secrets','J. K. Rowling','Novel','J. K. Rowling','2','First','1600'),
 (3,'3','Intro to Java Programming, Comprehensive Version','Y. Daniel Liang','Programming','Y. Daniel Liang','5','10th Edition','1000');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;


--
-- Definition of table `bookrequest`
--

DROP TABLE IF EXISTS `bookrequest`;
CREATE TABLE `bookrequest` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `bookCode` varchar(45) DEFAULT NULL,
  `bookName` varchar(155) DEFAULT NULL,
  `author` varchar(45) DEFAULT NULL,
  `genre` varchar(45) DEFAULT NULL,
  `publisher` varchar(45) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `edition` varchar(45) DEFAULT NULL,
  `price` varchar(45) DEFAULT NULL,
  `sid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `status` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookrequest`
--

/*!40000 ALTER TABLE `bookrequest` DISABLE KEYS */;
INSERT INTO `bookrequest` (`id`,`bookCode`,`bookName`,`author`,`genre`,`publisher`,`quantity`,`edition`,`price`,`sid`,`name`,`email`,`phone`,`address`,`status`) VALUES 
 (1,'1','Harry Potter and the Philosopher\'s Stone','J. K. Rowling','Novel','J. K. Rowling','5','Second','1500','1255304','Mezbaur Rahman','sany500@gmail.com','01731206771','Mezbaur Rahman','Approved'),
 (2,'3','Intro to Java Programming, Comprehensive Version','Y. Daniel Liang','Programming','Y. Daniel Liang','5','10th Edition','1000','1256466','Maria Jannat','maria500@gmail.com','017356968654','Maria Jannat','Approved'),
 (3,'3','Intro to Java Programming, Comprehensive Version','Y. Daniel Liang','Programming','Y. Daniel Liang','5','10th Edition','1000','1255304','Mezbaur Rahman','sany500@gmail.com','01731206771','Mezbaur Rahman','Approved');
/*!40000 ALTER TABLE `bookrequest` ENABLE KEYS */;


--
-- Definition of table `course`
--

DROP TABLE IF EXISTS `course`;
CREATE TABLE `course` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `courseCode` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `deptCode` varchar(45) DEFAULT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  `semesterCode` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` (`id`,`courseCode`,`courseName`,`deptCode`,`deptName`,`uniCode`,`uniName`,`semesterCode`,`semesterName`) VALUES 
 (6,'127','Stereo Chemistry','102','Chemistry','1001','East-West University','1060','Spring 2019-2020(ch)'),
 (7,'128','Thermodynamics Chemistry','102','Chemistry','1001','East-West University','1060','Spring 2019-2020(ch)'),
 (8,'131','Physics-1','104','Physics','1001','East-West University','1070','Spring 2019-2020(Ph)'),
 (9,'132','Applied Physics-2','104','Physics','1001','East-West University','1070','Spring 2019-2020(Ph)'),
 (10,'125','Separation Technique','102','Chemistry','1001','East-West University','1060','Spring 2019-2020(ch)'),
 (11,'112','Fluid Dynamics','103','Mathmetics','1001','East-West University','1050','Spring 2019-2020(M)'),
 (12,'113','Fundamental Of Mathmetics','103','Mathmetics','1001','East-West University','1050','Spring 2019-2020(M)');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;


--
-- Definition of table `department`
--

DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `deptCode` varchar(45) DEFAULT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` (`id`,`deptCode`,`deptName`,`uniCode`,`uniName`) VALUES 
 (2,'102','Chemistry','1001','East-West University'),
 (3,'103','Mathmetics','1001','East-West University'),
 (4,'104','Physics','1001','East-West University');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;


--
-- Definition of table `faculty`
--

DROP TABLE IF EXISTS `faculty`;
CREATE TABLE `faculty` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `fid` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `bloodGroup` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

/*!40000 ALTER TABLE `faculty` DISABLE KEYS */;
INSERT INTO `faculty` (`id`,`fid`,`name`,`email`,`phone`,`address`,`designation`,`dob`,`religion`,`bloodGroup`,`gender`) VALUES 
 (6,'110','Mr A','mra@gmail.com','017356968654','Rajshahi','Assistant Professor','1982-01-26','Islam','A+','Male'),
 (7,'111','Mr B','tahsincou@yahoo.com','017356968654','Mirpur','Professor','1972-05-30','Islam','O+','Male'),
 (8,'112','Ms E','tahsincou@yahoo.com','017356968654','Rajshahi','Lecturer','1977-01-18','Islam','A+','Female'),
 (9,'113','Mr D','resourcecin@gmail.com','017356968654','Kafrul','Assistant Professor','1973-05-30','Islam','A+','Male');
/*!40000 ALTER TABLE `faculty` ENABLE KEYS */;


--
-- Definition of table `marks`
--

DROP TABLE IF EXISTS `marks`;
CREATE TABLE `marks` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rangeFrom` int(10) unsigned DEFAULT NULL,
  `rangeTo` int(10) unsigned DEFAULT NULL,
  `cgpa` double DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `marks`
--

/*!40000 ALTER TABLE `marks` DISABLE KEYS */;
INSERT INTO `marks` (`id`,`rangeFrom`,`rangeTo`,`cgpa`,`grade`) VALUES 
 (1,41,49,2.25,'D'),
 (2,50,59,2.5,'C');
/*!40000 ALTER TABLE `marks` ENABLE KEYS */;


--
-- Definition of table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE `notice` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `privilege` varchar(45) DEFAULT NULL,
  `noticeHeader` varchar(45) DEFAULT NULL,
  `noticeBody` varchar(250) DEFAULT NULL,
  `noticeDate` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `notice`
--

/*!40000 ALTER TABLE `notice` DISABLE KEYS */;
INSERT INTO `notice` (`id`,`privilege`,`noticeHeader`,`noticeBody`,`noticeDate`) VALUES 
 (1,'Student','Holyday Notice','21 /01/2021 will be class off.','2021-01-17'),
 (2,'Student','Festival Notice','3 Days off for Eid ','2021-01-18'),
 (3,'Student','Festival Notice','3 Days off for Eid ','2021-01-18'),
 (4,'Faculty','Holyday Notice for Faculty','Tommorrow Will be off but office will open from 10.00 am to 12.00pm','2021-01-25'),
 (5,'All','Attention All Students And Teacher','Sent to All','2021-01-26'),
 (6,'Student','drgfvfdg','hgfthfgh','2021-12-31');
/*!40000 ALTER TABLE `notice` ENABLE KEYS */;


--
-- Definition of table `payment`
--

DROP TABLE IF EXISTS `payment`;
CREATE TABLE `payment` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `studentName` varchar(45) DEFAULT NULL,
  `studentId` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  `paymentMethod` varchar(45) DEFAULT NULL,
  `mobileNo` varchar(45) DEFAULT NULL,
  `trId` varchar(45) DEFAULT NULL,
  `paymentDate` varchar(45) DEFAULT NULL,
  `tutionFee` int(10) unsigned DEFAULT NULL,
  `specialFee` int(10) unsigned DEFAULT NULL,
  `facilitiesFee` int(10) unsigned DEFAULT NULL,
  `studentIdFee` int(10) unsigned DEFAULT NULL,
  `libraryFee` int(10) unsigned DEFAULT NULL,
  `technologyFee` int(10) unsigned DEFAULT NULL,
  `registrationFee` int(10) unsigned DEFAULT NULL,
  `housingFee` int(10) unsigned DEFAULT NULL,
  `financialAid` int(10) unsigned DEFAULT NULL,
  `totalFee` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` (`id`,`studentName`,`studentId`,`semesterName`,`paymentMethod`,`mobileNo`,`trId`,`paymentDate`,`tutionFee`,`specialFee`,`facilitiesFee`,`studentIdFee`,`libraryFee`,`technologyFee`,`registrationFee`,`housingFee`,`financialAid`,`totalFee`) VALUES 
 (3,'Rasel','1255327','Spring 2019-2020(M)','bkash','01731206771','656565574779841','2021-01-25',11000,150,650,20,100,170,100,5000,2000,19190),
 (7,'Mezbaur Rahman','1255304','Spring 2019-2020(ch)','rocket','01731206771','35214314314124','2021-01-31',11000,150,650,20,100,170,100,5000,2000,19190);
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;


--
-- Definition of table `result`
--

DROP TABLE IF EXISTS `result`;
CREATE TABLE `result` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` varchar(45) DEFAULT NULL,
  `studentName` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  `courseName` varchar(45) DEFAULT NULL,
  `ct1Marks` double DEFAULT NULL,
  `ct2Marks` double DEFAULT NULL,
  `midtermMarks` double DEFAULT NULL,
  `finalMarks` double DEFAULT NULL,
  `facultyName` varchar(45) DEFAULT NULL,
  `totalMarks` double DEFAULT NULL,
  `cgpa` double DEFAULT NULL,
  `grade` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `result`
--

/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` (`id`,`sid`,`studentName`,`semesterName`,`courseName`,`ct1Marks`,`ct2Marks`,`midtermMarks`,`finalMarks`,`facultyName`,`totalMarks`,`cgpa`,`grade`) VALUES 
 (8,'1255327','Rasel','Spring 2019-2020(M)','Fluid Dynamics',45,35,74,69,'Ashim Kumar Saha',74.2,3.75,'A'),
 (9,'1255304','Mezbaur Rahman','Spring 2019-2020(ch)','Stereo Chemistry',45,32,65,45,'Mr A',58,3,'B'),
 (12,'1256466','Maria Jannat','Spring 2019-2020(ch)','Stereo Chemistry',36,36,65,60,'Mr A',63.4,3.5,'B+'),
 (13,'1255304','Mezbaur Rahman','Spring 2019-2020(ch)','Stereo Chemistry',35,35,65,75,'Mr A',72,3.75,'A'),
 (14,'1256466','Maria Jannat','Spring 2019-2020(ch)','Stereo Chemistry',35,35,65,75,'Mr A',72,3.75,'A');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;


--
-- Definition of table `semester`
--

DROP TABLE IF EXISTS `semester`;
CREATE TABLE `semester` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `semesterCode` varchar(45) DEFAULT NULL,
  `semesterName` varchar(45) DEFAULT NULL,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  `deptCode` varchar(45) DEFAULT NULL,
  `deptName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

/*!40000 ALTER TABLE `semester` DISABLE KEYS */;
INSERT INTO `semester` (`id`,`semesterCode`,`semesterName`,`uniCode`,`uniName`,`deptCode`,`deptName`) VALUES 
 (6,'1060','Spring 2019-2020(ch)','1001','East-West University','102','Chemistry'),
 (7,'1070','Spring 2019-2020(Ph)','1001','East-West University','104','Physics'),
 (8,'1050','Spring 2019-2020(M)','1001','East-West University','103','Mathmetics');
/*!40000 ALTER TABLE `semester` ENABLE KEYS */;


--
-- Definition of table `semesterfee`
--

DROP TABLE IF EXISTS `semesterfee`;
CREATE TABLE `semesterfee` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `tutionFee` int(10) unsigned DEFAULT NULL,
  `specialFee` int(10) unsigned DEFAULT NULL,
  `facilitiesFee` int(10) unsigned DEFAULT NULL,
  `studentIdFee` int(10) unsigned DEFAULT NULL,
  `libraryFee` int(10) unsigned DEFAULT NULL,
  `technologyFee` int(10) unsigned DEFAULT NULL,
  `registrationFee` int(10) unsigned DEFAULT NULL,
  `housingFee` int(10) unsigned DEFAULT NULL,
  `financialAid` int(10) unsigned DEFAULT NULL,
  `totalFee` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semesterfee`
--

/*!40000 ALTER TABLE `semesterfee` DISABLE KEYS */;
INSERT INTO `semesterfee` (`id`,`tutionFee`,`specialFee`,`facilitiesFee`,`studentIdFee`,`libraryFee`,`technologyFee`,`registrationFee`,`housingFee`,`financialAid`,`totalFee`) VALUES 
 (1,11000,150,650,20,100,170,100,5000,2000,19190);
/*!40000 ALTER TABLE `semesterfee` ENABLE KEYS */;


--
-- Definition of table `student`
--

DROP TABLE IF EXISTS `student`;
CREATE TABLE `student` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `sid` int(11) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `fName` varchar(45) DEFAULT NULL,
  `mName` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `religion` varchar(45) DEFAULT NULL,
  `bloodGroup` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` (`id`,`sid`,`name`,`email`,`phone`,`address`,`fName`,`mName`,`dob`,`religion`,`bloodGroup`,`gender`) VALUES 
 (21,1255304,'Mezbaur Rahman','sany500@gmail.com','01731206771','Faridpur,Dhaka','Md. Feroz Khandakar','Mst. Merina Begum','1993-12-20','Islam','O+','Male'),
 (22,1256466,'Maria Jannat','maria500@gmail.com','017356968654','Mirpur,Dhaka','Mr. A','Ms. B','1993-01-30','Islam','A+','Female'),
 (23,1255425,'Safayet Zahid','safayet@gmail.com','017356968658','Noakhali','Mr. A','Ms. B','1993-01-30','Islam','B+','Male'),
 (24,1255629,'Khairuzzaman Milton','milton@gmail.com','017356968654','Satkhira, Khulna','Mr D','Ms E','1993-05-04','Islam','O-','Male'),
 (25,1256317,'Md. Mizanur Rahman ','mijan@gmail.com','017356968654','Mirpur, Dhaka','Mr D','Ms E','1993-06-30','Islam','AB+','Male'),
 (26,1256084,'Gazi Rezvekhar Zaman','rezve@gmail.com','017356968654','Ibrahimpur, Dhaka','Mr D','Ms E','1993-01-30','Islam','AB-','Male'),
 (27,1255960,'Sumaiya Ferdouse Swarna','swarna@gmail.com','017356968654','Madaripur, Dhaka','Mr D','Ms E','1993-01-28','Islam','O+','Female'),
 (28,1254267,'Romana Afroze','romana@gmail.com','017356968654','Comilla','Mr D','Ms E','1992-05-04','Islam','A+','Female'),
 (29,1255656,'Golam Hossain','golam@gmail.com','017356968654','Rajshahi','Mr D','Ms E','1991-01-22','Islam','AB+','Male'),
 (30,1255830,'Ahsun Habib','habib@gmail.com','017356968654','Rajshahi','Mr D','Ms E','2021-01-04','Islam','B+','Male'),
 (31,1256738,'Ahmadul Bari','bari@gmail.com','017356968654','Savar, Dhaka','Mr D','Ms E','1991-05-28','Islam','O+','Male');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;


--
-- Definition of table `university`
--

DROP TABLE IF EXISTS `university`;
CREATE TABLE `university` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `uniCode` varchar(45) DEFAULT NULL,
  `uniName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `university`
--

/*!40000 ALTER TABLE `university` DISABLE KEYS */;
INSERT INTO `university` (`id`,`uniCode`,`uniName`) VALUES 
 (31,'1001','East-West University');
/*!40000 ALTER TABLE `university` ENABLE KEYS */;


--
-- Definition of table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `userId` varchar(45) DEFAULT NULL,
  `userName` varchar(45) DEFAULT NULL,
  `userEmail` varchar(45) DEFAULT NULL,
  `userPhone` varchar(45) DEFAULT NULL,
  `userPassword` varchar(45) DEFAULT NULL,
  `userRole` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` (`id`,`userId`,`userName`,`userEmail`,`userPhone`,`userPassword`,`userRole`,`address`,`dob`,`gender`) VALUES 
 (6,'1255304','Mezbaur Rahman','sany500@gmail.com','01731206771','1255304','Student','Faridpur,Dhaka','1993-12-20','Male'),
 (7,'1256466','Maria Jannat','maria500@gmail.com','017356968654','1256466','Student','Mirpur,Dhaka','1993-01-30','Female'),
 (8,'1255425','Safayet Zahid','safayet@gmail.com','017356968658','1255425','Student','Noakhali','1993-01-30','Male'),
 (9,'1255629','Khairuzzaman Milton','milton@gmail.com','017356968654','1255629','Student','Satkhira, Khulna','1993-05-04','Male'),
 (10,'1256317','Md. Mizanur Rahman ','mijan@gmail.com','017356968654','1256317','Student','Mirpur, Dhaka','1993-06-30','Male'),
 (11,'1256084','Gazi Rezvekhar Zaman','rezve@gmail.com','017356968654','1256084','Student','Ibrahimpur, Dhaka','1993-01-30','Male'),
 (12,'1255960','Sumaiya Ferdouse Swarna','swarna@gmail.com','017356968654','1255960','Student','Madaripur, Dhaka','1993-01-28','Female'),
 (13,'1254267','Romana Afroze','romana@gmail.com','017356968654','1254267','Student','Comilla','1992-05-04','Female'),
 (14,'1255656','Golam Hossain','golam@gmail.com','017356968654','1255656','Student','Rajshahi','1991-01-22','Male'),
 (15,'1255830','Ahsun Habib','habib@gmail.com','017356968654','1255830','Student','Rajshahi','2021-01-04','Male'),
 (16,'1256738','Ahmadul Bari','bari@gmail.com','017356968654','1256738','Student','Savar, Dhaka','1991-05-28','Male'),
 (17,'110','Mr A','mra@gmail.com','017356968654','110','Faculty','Rajshahi','1982-01-26','Male'),
 (18,'111','Mr B','tahsincou@yahoo.com','017356968654','111','Faculty','Mirpur','1972-05-30','Male'),
 (19,'112','Ms E','tahsincou@yahoo.com','017356968654','112','Faculty','Rajshahi','1977-01-18','Female'),
 (20,'113','Mr D','resourcecin@gmail.com','017356968654','113','Faculty','Kafrul','1973-05-30','Male');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;


--
-- Definition of table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
CREATE TABLE `user_roles` (
  `user_role_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`user_role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_roles`
--

/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` (`user_role_id`,`username`,`role`) VALUES 
 (1,'admin','ROLE_ADMIN'),
 (7,'1255304','ROLE_ADMIN'),
 (8,'1256466','ROLE_ADMIN'),
 (9,'1255425','ROLE_ADMIN'),
 (10,'1255629','ROLE_ADMIN'),
 (11,'1256317','ROLE_ADMIN'),
 (12,'1256084','ROLE_ADMIN'),
 (13,'1255960','ROLE_ADMIN'),
 (14,'1254267','ROLE_ADMIN'),
 (15,'1255656','ROLE_ADMIN'),
 (16,'1255830','ROLE_ADMIN'),
 (17,'1256738','ROLE_ADMIN'),
 (18,'110','ROLE_ADMIN'),
 (19,'111','ROLE_ADMIN'),
 (20,'112','ROLE_ADMIN'),
 (21,'113','ROLE_ADMIN');
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;


--
-- Definition of table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `active` tinyint(3) unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`,`username`,`password`,`active`) VALUES 
 (1,'admin','admin',1),
 (7,'1255304','1255304',1),
 (8,'1256466','1256466',1),
 (9,'1255425','1255425',1),
 (10,'1255629','1255629',1),
 (11,'1256317','1256317',1),
 (12,'1256084','1256084',1),
 (13,'1255960','1255960',1),
 (14,'1254267','1254267',1),
 (15,'1255656','1255656',1),
 (16,'1255830','1255830',1),
 (17,'1256738','1256738',1),
 (18,'110','110',1),
 (19,'111','111',1),
 (20,'112','112',1),
 (21,'113','113',1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
