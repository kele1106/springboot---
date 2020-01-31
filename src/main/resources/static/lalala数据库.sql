/*
SQLyog Enterprise v12.09 (64 bit)
MySQL - 5.5.28 : Database - lalala
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`lalala` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `lalala`;

/*Table structure for table `books` */

DROP TABLE IF EXISTS `books`;

CREATE TABLE `books` (
  `bookid` int(11) NOT NULL AUTO_INCREMENT,
  `bookName` varchar(20) NOT NULL,
  `bookAuthor` varchar(20) NOT NULL,
  `bookPublic` varchar(20) NOT NULL,
  `bookPage` int(20) NOT NULL,
  `bookPrice` double NOT NULL,
  `createDate` date NOT NULL,
  PRIMARY KEY (`bookid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `books` */

insert  into `books`(`bookid`,`bookName`,`bookAuthor`,`bookPublic`,`bookPage`,`bookPrice`,`createDate`) values (1,'书名1','作者1','出版社1',12,23.9,'2019-06-04'),(2,'书名2','作者2','出版社2',23,23.67,'2019-05-07'),(3,'书名3','作者3','出版社3',45,45.98,'2019-06-03'),(4,'作者4','作者4','出版社4',12,34.34,'2019-06-04'),(5,'作者5','作者5','出版社5',23,12.12,'2019-06-04');

/*Table structure for table `chang` */

DROP TABLE IF EXISTS `chang`;

CREATE TABLE `chang` (
  `no1` int(11) NOT NULL,
  `xinghao` varchar(20) NOT NULL,
  `money` double DEFAULT NULL,
  `date1` date DEFAULT NULL,
  PRIMARY KEY (`no1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `chang` */

insert  into `chang`(`no1`,`xinghao`,`money`,`date1`) values (1,'cdma-1',650.78,'2019-05-06'),(2,'cdma-2',2356.23,'2019-05-14'),(3,'cdma-2',2200.76,'2019-05-01');

/*Table structure for table `classes` */

DROP TABLE IF EXISTS `classes`;

CREATE TABLE `classes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `classes` */

insert  into `classes`(`id`,`name`) values (1,'一班'),(2,'二班'),(3,'三班'),(4,'四班');

/*Table structure for table `department` */

DROP TABLE IF EXISTS `department`;

CREATE TABLE `department` (
  `deptid` int(11) NOT NULL AUTO_INCREMENT,
  `deptname` varchar(20) NOT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `department` */

insert  into `department`(`deptid`,`deptname`) values (1,'住院部'),(2,'门诊部'),(3,'药剂部'),(4,'行政部');

/*Table structure for table `order` */

DROP TABLE IF EXISTS `order`;

CREATE TABLE `order` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `productId` int(11) DEFAULT NULL,
  `cost` int(11) DEFAULT NULL,
  `orderDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `order` */

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` bigint(11) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `classId` bigint(11) NOT NULL,
  `photo` varchar(200) DEFAULT NULL,
  `date1` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`age`,`gender`,`telephone`,`email`,`classId`,`photo`,`date1`) values (1,'派大星',12,'男','121212','121234',1,'dbjba','2019-05-01 00:00:00'),(2,'海绵宝宝',12,'男','121234','454545',1,'qert','2019-06-28 00:00:00'),(3,'章鱼哥',12,'男','454545','232323',2,'qtre','2019-06-28 00:00:00'),(4,'蟹老板',20,'男','454545','565656',3,'qwer','2019-06-06 00:00:00'),(5,'痞老板',23,'男','56565','45334',3,'qwet','2019-06-29 00:00:00');

/*Table structure for table `userinfo` */

DROP TABLE IF EXISTS `userinfo`;

CREATE TABLE `userinfo` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `userAccount` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `deptId` int(11) NOT NULL,
  `createDate` date NOT NULL,
  `delFlag` int(11) NOT NULL,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `userinfo` */

insert  into `userinfo`(`userid`,`userAccount`,`password`,`email`,`deptId`,`createDate`,`delFlag`) values (1,'test01','123456','1212@qq.com',1,'2019-09-10',0),(2,'test02','123456','1212@qq.com',2,'2019-09-10',1),(3,'test03','123456','1212@qq.com',3,'2019-09-12',0),(4,'test04','123456','1212@qq.com',4,'2019-09-06',1),(5,'test05','123456','1212@qq.com',2,'2019-09-04',1),(6,'test00','12','1319355989@qq.com',1,'2019-09-22',0);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
