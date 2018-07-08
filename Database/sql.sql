/*
SQLyog Community Edition- MySQL GUI v6.07
Host - 5.5.30 : Database - dynamiccrawler
*********************************************************************
Server version : 5.5.30
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

create database if not exists `dynamiccrawler`;

USE `dynamiccrawler`;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `temp` */

DROP TABLE IF EXISTS `temp`;

CREATE TABLE `temp` (
  `url_` varchar(500) NOT NULL,
  `text_` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`url_`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `temp` */

insert  into `temp`(`url_`,`text_`) values ('beginnersbook.com/java-tutorial-for-beginners-with-examples/',''),('docs.oracle.com/javase/tutorial/',''),('docs.oracle.com/javase/tutorial/index.html','Home Page'),('docs.oracle.com/javase/tutorial/java/index.html',''),('tutorials.jenkov.com/java/index.html',''),('www.guru99.com/java-tutorial.html',''),('www.javatpoint.com/java-tutorial',''),('www.tutorialspoint.com/codingground.htm','Coding Ground'),('www.tutorialspoint.com/java/',''),('www.tutorialspoint.com/java/java_basic_syntax.htm','Basic Syntax'),('www.tutorialspoint.com/java/java_interview_questions.htm','Java Interview Questions'),('www.tutorialspoint.com/java/java_overview.htm','Overview'),('www.tutorialspoint.com/java/java_pdf_version.htm','Java Tutorial in PDF'),('www.tutorialspoint.com/java/java_tutorial.pdf','Java Tutorial'),('www.w3schools.in/java-tutorial/','');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `uid` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `pwd` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `tele` varchar(100) DEFAULT NULL,
  `gen` varchar(10) DEFAULT NULL,
  `zip` varchar(100) DEFAULT NULL,
  `addr` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `users` */

insert  into `users`(`uid`,`name`,`pwd`,`email`,`tele`,`gen`,`zip`,`addr`) values (1,'sajid','sajid','sajid24x7@gmail.com','8121953811','male','500090','siri towers');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
