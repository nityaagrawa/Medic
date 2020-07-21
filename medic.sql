/*
SQLyog - Free MySQL GUI v5.17
Host - 5.5.27 : Database - medic
*********************************************************************
Server version : 5.5.27
*/

SET NAMES utf8;

SET SQL_MODE='';

create database if not exists `medic`;

USE `medic`;

SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO';

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `cust_no` decimal(10,0) DEFAULT NULL,
  `city` varchar(20) DEFAULT NULL,
  `state` varchar(20) DEFAULT NULL,
  `locality` varchar(20) DEFAULT NULL,
  `pincode` decimal(10,0) DEFAULT NULL,
  `flat_no` int(11) DEFAULT NULL,
  `landmark` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `address` */

insert into `address` (`cust_no`,`city`,`state`,`locality`,`pincode`,`flat_no`,`landmark`) values ('8875490693','kota','rajasthan','basant vihar','324007',45,'blood bank');
insert into `address` (`cust_no`,`city`,`state`,`locality`,`pincode`,`flat_no`,`landmark`) values ('9001891089','kota','rajasthan','dadbari','324009',67,'v mart');
insert into `address` (`cust_no`,`city`,`state`,`locality`,`pincode`,`flat_no`,`landmark`) values ('8875490534','kota','rajasthan','jawahar nagar','324009',67,'punjabi mess');

/*Table structure for table `ayurveda_t` */

DROP TABLE IF EXISTS `ayurveda_t`;

CREATE TABLE `ayurveda_t` (
  `product_id` varchar(10) DEFAULT NULL,
  `product_name` varchar(20) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `product_mrp` int(11) DEFAULT NULL,
  `discount` int(11) DEFAULT NULL,
  `prod_image` blob
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ayurveda_t` */

insert into `ayurveda_t` (`product_id`,`product_name`,`description`,`product_mrp`,`discount`,`prod_image`) values ('0123','chyavanprash','live healthy',200,10,NULL);

/*Table structure for table `customer` */

DROP TABLE IF EXISTS `customer`;

CREATE TABLE `customer` (
  `cust_name` varchar(20) DEFAULT NULL,
  `cust_no` varchar(10) DEFAULT NULL,
  `cust_id` varchar(25) DEFAULT NULL,
  `cust_pass` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `customer` */

insert into `customer` (`cust_name`,`cust_no`,`cust_id`,`cust_pass`) values ('nitya','8875490693','1234','asdfghj');
insert into `customer` (`cust_name`,`cust_no`,`cust_id`,`cust_pass`) values ('hariks','9001891058','6789','qwerery');
insert into `customer` (`cust_name`,`cust_no`,`cust_id`,`cust_pass`) values ('aliva ','9001891060','3890','lkkjfdc');
insert into `customer` (`cust_name`,`cust_no`,`cust_id`,`cust_pass`) values ('visha','9876543210','visha@gmail.com','qwerty');

/*Table structure for table `doctor` */

DROP TABLE IF EXISTS `doctor`;

CREATE TABLE `doctor` (
  `d_name` varchar(20) DEFAULT NULL,
  `d_id` int(4) DEFAULT NULL,
  `d_spec` varchar(20) DEFAULT NULL,
  `d_morn` varchar(20) DEFAULT NULL,
  `d_after` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `doctor` */

insert into `doctor` (`d_name`,`d_id`,`d_spec`,`d_morn`,`d_after`) values ('Teja',4563,'cardiologist','10-1','4-8');
insert into `doctor` (`d_name`,`d_id`,`d_spec`,`d_morn`,`d_after`) values ('kartik',987,'ophthalmologist','9-12','2-6');
insert into `doctor` (`d_name`,`d_id`,`d_spec`,`d_morn`,`d_after`) values ('Shankar',2987,'ENT specialist','9-1','4-7');

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
