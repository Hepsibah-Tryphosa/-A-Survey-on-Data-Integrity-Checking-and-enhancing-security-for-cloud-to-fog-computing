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

/*Data for the table `download` */

insert into `download` values 
(1,'1','Meghana','1','java.txt','2020-12-30 11:25:26'),
(2,'1','Meghana','1','java.txt','2020-12-30 11:25:33');

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

/*Data for the table `filerequest` */

insert into `filerequest` values 
(1,'1','java.txt','1','Meghana','1','Arumalla','2020-12-29 14:59:38.0','entrepreneur','entrepreneur','entrepreneur','meghana.datapoint@gmail.com','sended');

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

/*Data for the table `fileupload` */

insert into `fileupload` values 
(1,'java.txt','GWHRIvzXlR0SF+RSNw7lF2l99r+on4zQteKJmx/D0zKW8KLiEX/slktW7ULwb4dpmFX3+2LLzrj/\r\nXrLZskoyV71dAXKJ/m68eFwP34/pyTF/wM36OhjGTlKN8ZiTC+3uUoGEvbDfBozkaDGuqOIgC5zl\r\nagMwQPkwHnG71gJZPywxEbG3zyvWGUAoJ1Ju8PBSpMpHnFgRY/mkDi2bHJyJ34WTG5akAqJIPhPb\r\nbkIi//hx+/yUCsyhxO0WaeZG2D9QLUjNVa3pQA2bmxTsX3A120ntbr+KBtYKsyK2I/CCqws=','Arumalla','2020-12-29 14:59:38','zzNPvTWWjR3Q4kjQtqhHqw==','AW4X1i1LdgAVezgnLMKy9WrlmE8K9oub9bfkzmwFm139e/Y24uCZ/Q==','1','java is a programming language','entrepreneur');

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

/*Data for the table `oreg` */

insert into `oreg` values 
(1,'Arumalla','123','meghana.datapoint@gmail.com','Female','2020-12-04','9678451236','AP','India','waiting','AW4X1i1LdgAVezgnLMKy9WrlmE8K9oub9bfkzmwFm139e/Y24uCZ/Q==','Waiting'),
(2,'','','','-1','','','','','Give Request','Waiting','Waiting');

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

/*Data for the table `revocation` */

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

/*Data for the table `ureg` */

insert into `ureg` values 
(1,'Meghana','123','meghana.datapoint@gmail.com','Female','2020-12-02','9632587412','AP','India','Granted','TdG0BdDSiElRCDj3qYFtXRvx9OQmSTI4Uhwnb7898o0t/bx03IoW3gox8QsF+KAl','entrepreneur','entrepreneur','UID7262');
