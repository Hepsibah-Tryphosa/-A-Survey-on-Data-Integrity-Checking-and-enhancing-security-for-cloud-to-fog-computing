/*
SQLyog - Free MySQL GUI v5.0
Host - 5.0.16-nt : Database - fogcomputing
*********************************************************************
Server version : 5.0.16-nt
*/


create database if not exists `fogcomputing`;

USE `fogcomputing`;

/*Table structure for table `download` */

DROP TABLE IF EXISTS `download`;

CREATE TABLE `download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `time_` datetime NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `filerequest` */

DROP TABLE IF EXISTS `filerequest`;

CREATE TABLE `filerequest` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `fid` varchar(45) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `time` varchar(45) NOT NULL,
  `faccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy` varchar(45) NOT NULL,
  `uaccesspolicy1` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `fileupload` */

DROP TABLE IF EXISTS `fileupload`;

CREATE TABLE `fileupload` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `filename` varchar(45) NOT NULL,
  `content` longblob NOT NULL,
  `owner` varchar(45) NOT NULL,
  `time` datetime NOT NULL,
  `secret_key` varchar(100) NOT NULL,
  `public_key` varchar(100) NOT NULL,
  `oid` varchar(45) NOT NULL,
  `des` longtext NOT NULL,
  `accesspolicy` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `oreg` */

DROP TABLE IF EXISTS `oreg`;

CREATE TABLE `oreg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL,
  `pass` varchar(45) NOT NULL,
  `mail` varchar(45) NOT NULL,
  `gen` varchar(45) NOT NULL,
  `dob` varchar(45) NOT NULL,
  `contactnumber` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  `country` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  `pkey` varchar(100) NOT NULL,
  `skey` varchar(100) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `revocation` */

DROP TABLE IF EXISTS `revocation`;

CREATE TABLE `revocation` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `oid` varchar(45) NOT NULL,
  `oname` varchar(45) NOT NULL,
  `uid` varchar(45) NOT NULL,
  `uname` varchar(45) NOT NULL,
  `umail` varchar(45) NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Table structure for table `ureg` */

DROP TABLE IF EXISTS `ureg`;

CREATE TABLE `ureg` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `name` varchar(45) NOT NULL default '',
  `pass` varchar(45) NOT NULL default '',
  `mail` varchar(45) NOT NULL default '',
  `gen` varchar(45) NOT NULL default '',
  `dob` varchar(45) NOT NULL default '',
  `contactnumber` varchar(45) NOT NULL default '',
  `state` varchar(45) NOT NULL default '',
  `country` varchar(45) NOT NULL default '',
  `status` varchar(45) NOT NULL,
  `akey` varchar(100) NOT NULL,
  `accessattribute` varchar(45) NOT NULL,
  `accessattribute1` varchar(45) NOT NULL,
  `sk` varchar(45) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
