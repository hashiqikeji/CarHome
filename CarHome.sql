/*
SQLyog  v12.2.6 (64 bit)
MySQL - 5.5.57 : Database - carhome
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`carhome` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `carhome`;

/*Table structure for table `car_category` */

DROP TABLE IF EXISTS `car_category`;

CREATE TABLE `car_category` (
  `category_id` int(20) NOT NULL AUTO_INCREMENT,
  `brand` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

/*Data for the table `car_category` */

insert  into `car_category`(`category_id`,`brand`) values 
(1,'大众'),
(2,'丰田'),
(3,'本田'),
(4,'宝马'),
(5,'别克'),
(6,'奔驰'),
(7,'奥迪'),
(8,'马自达');

/*Table structure for table `car_info` */

DROP TABLE IF EXISTS `car_info`;

CREATE TABLE `car_info` (
  `car_id` varchar(255) NOT NULL COMMENT '汽车编号',
  `brand` varchar(255) DEFAULT NULL COMMENT '品牌',
  `car_age` double(4,1) DEFAULT NULL COMMENT '车龄',
  `car_damage` varchar(255) DEFAULT NULL COMMENT '车辆损耗程度（越低越接近新车）',
  `iseager` varchar(255) DEFAULT '是' COMMENT '是否急于出售',
  `price` double(10,2) DEFAULT '10.00' COMMENT '价格',
  `address` varchar(255) DEFAULT '广州' COMMENT '详细验车地址',
  `islocked` varchar(255) DEFAULT 'n' COMMENT '是否已被人预约',
  `is_new` varchar(10) DEFAULT '0' COMMENT '是否新车',
  `car_state` varchar(10) DEFAULT '0' COMMENT '汽车状态',
  `uid` varchar(255) DEFAULT NULL,
  `car_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '上架时间',
  PRIMARY KEY (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_info` */

insert  into `car_info`(`car_id`,`brand`,`car_age`,`car_damage`,`iseager`,`price`,`address`,`islocked`,`is_new`,`car_state`,`uid`,`car_time`) values 
('00001','大众',1.0,'10%','是',8.00,'广州','n','0','0','p','2018-05-24 23:51:01'),
('00002','大众',1.0,'10%','是',7.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00003','大众',1.0,'10%','否',12.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00004','大众',2.0,'10%','否',5.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00005','大众',0.0,'0','否',9.00,'广州','n','1','3','c','2018-05-24 23:57:22'),
('00006','大众',0.0,'0','是',13.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00007','大众',0.0,'0','是',20.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00008','大众',0.0,'0','是',8.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00009','丰田',2.0,'10%','是',7.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00010','丰田',2.0,'10%','是',8.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00011','丰田',2.0,'10%','是',12.00,'广州','n','0','2','p','2018-05-24 23:57:22'),
('00012','丰田',2.0,'10%','是',11.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00013','丰田',0.0,'0','是',13.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00014','丰田',0.0,'0','是',15.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00015','丰田',0.0,'0','是',9.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00016','丰田',0.0,'0','是',8.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00017','本田',3.0,'10%','是',7.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00018','本田',3.0,'10%','是',9.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00019','本田',3.0,'10%','是',12.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00020','本田',3.0,'10%','是',11.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00021','本田',0.0,'0','是',13.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00022','本田',0.0,'0','是',18.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00023','本田',0.0,'0','是',21.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00024','本田',0.0,'0','是',9.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00025','宝马',3.0,'10%','是',9.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00026','宝马',3.0,'10%','是',8.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00027','宝马',3.0,'10%','是',11.00,'广州','n','0','2','p','2018-05-24 23:57:22'),
('00028','宝马',3.0,'10%','是',13.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00029','宝马',0.0,'0','是',22.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00030','宝马',0.0,'0','是',32.00,'广州','n','1','3','c','2018-05-24 23:57:22'),
('00031','宝马',0.0,'0','是',15.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00032','宝马',0.0,'0','是',40.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00033','别克',2.0,'10%','是',8.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00034','别克',2.0,'10%','是',9.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00035','别克',2.0,'10%','是',11.00,'广州','n','0','2','p','2018-05-24 23:57:22'),
('00036','别克',2.0,'10%','是',8.90,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00037','别克',0.0,'0','是',15.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00038','别克',0.0,'0','是',16.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00039','别克',0.0,'0','是',21.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00040','别克',0.0,'0','是',32.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00041','奔驰',3.0,'20%','是',20.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00042','奔驰',3.0,'20%','是',24.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00043','奔驰',3.0,'20%','是',32.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00044','奔驰',3.0,'20%','是',9.90,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00045','奔驰',0.0,'0','是',30.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00046','奔驰',0.0,'0','是',28.00,'广州','n','1','3','c','2018-05-24 23:57:22'),
('00047','奔驰',0.0,'0','是',36.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00048','奔驰',0.0,'0','是',42.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00049','gtr战神',0.0,'0','是',380.00,'广州','n','1','1',NULL,'2018-05-31 21:47:53'),
('00050','布加迪',0.0,'0','是',560.00,'广州','n','1','1',NULL,'2018-05-24 23:57:22'),
('00052','迈凯伦奔驰',0.0,'0','是',260.00,'广州','n','1','1',NULL,'2018-05-24 23:57:22'),
('00053','蔚来EP9',0.0,'0','是',188.00,'广州','n','1','1',NULL,'2018-05-24 23:57:22'),
('00057','奥迪',2.0,'20%','是',9.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00058','奥迪',2.0,'20%','是',8.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00059','奥迪',2.0,'20%','是',12.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00060','奥迪',2.0,'20%','是',21.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00061','奥迪',0.0,'0','是',32.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00062','奥迪',0.0,'0','是',5.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00063','奥迪',0.0,'0','是',18.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00064','奥迪',0.0,'0','是',45.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00065','马自达',2.0,'10%','是',8.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00066','马自达',2.0,'10%','是',9.00,'广州','n','0','2','p','2018-05-24 23:57:22'),
('00067','马自达',2.0,'10%','是',12.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00068','马自达',2.0,'10%','是',14.00,'广州','n','0','0','p','2018-05-24 23:57:22'),
('00069','马自达',0.0,'0','是',23.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00070','马自达',0.0,'0','是',34.00,'广州','n','1','3','c','2018-05-24 23:57:22'),
('00071','马自达',0.0,'0','是',15.00,'广州','n','1','0','c','2018-05-24 23:57:22'),
('00072','马自达',0.0,'0','是',9.80,'广州','n','1','0','c','2018-05-24 23:57:22');

/*Table structure for table `car_newhot` */

DROP TABLE IF EXISTS `car_newhot`;

CREATE TABLE `car_newhot` (
  `car_hotid` varchar(255) NOT NULL,
  `car_id` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `price` double(10,2) DEFAULT NULL,
  PRIMARY KEY (`car_hotid`),
  KEY `car_id` (`car_id`),
  CONSTRAINT `car_newhot_ibfk_1` FOREIGN KEY (`car_id`) REFERENCES `car_info` (`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_newhot` */

insert  into `car_newhot`(`car_hotid`,`car_id`,`brand`,`price`) values 
('00051',NULL,NULL,NULL),
('00052',NULL,NULL,NULL),
('00053',NULL,NULL,NULL),
('00054',NULL,NULL,NULL);

/*Table structure for table `car_order` */

DROP TABLE IF EXISTS `car_order`;

CREATE TABLE `car_order` (
  `order_id` varchar(255) NOT NULL COMMENT '订单编号',
  `car_id` varchar(255) NOT NULL COMMENT '汽车编号',
  `baseinfo` varchar(255) DEFAULT NULL COMMENT '汽车基本信息',
  `car_price` double(5,2) NOT NULL COMMENT '汽车售价',
  `deposit` double(6,2) NOT NULL COMMENT '定金',
  `seller_id` varchar(255) DEFAULT NULL,
  `address` varchar(255) NOT NULL COMMENT '验车地址',
  `buyer_id` varchar(255) NOT NULL COMMENT '买家id',
  `order_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '订单发布时间',
  `order_status` varchar(255) NOT NULL DEFAULT '未确认',
  PRIMARY KEY (`order_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `car_order` */

insert  into `car_order`(`order_id`,`car_id`,`baseinfo`,`car_price`,`deposit`,`seller_id`,`address`,`buyer_id`,`order_time`,`order_status`) values 
('30676','00001',NULL,8.00,0.80,'p','广州','37867','2018-05-20 15:32:45','未确认'),
('56119','00002',NULL,7.00,0.70,'p','广州','37867','2018-05-20 15:46:14','未确认'),
('59506','00018',NULL,10.00,1.00,'p','广州','37867','2018-05-20 15:46:22','未确认');

/*Table structure for table `discuss` */

DROP TABLE IF EXISTS `discuss`;

CREATE TABLE `discuss` (
  `dis_id` int(10) NOT NULL AUTO_INCREMENT,
  `writing` varchar(500) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  `dis_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `uid` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`dis_id`),
  KEY `diss_key` (`uid`),
  CONSTRAINT `diss_key` FOREIGN KEY (`uid`) REFERENCES `user` (`uid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

/*Data for the table `discuss` */

insert  into `discuss`(`dis_id`,`writing`,`title`,`pic`,`dis_time`,`uid`) values 
(1,'新入手本车，谈谈感受，上周刚买二手ct，里程46000英里。今天跑一个270英里长途，两个人，全程高速，一半开空调。油耗表现为72.52MPG，百公里3.9升。','雷克萨斯用车体验','img/11.jpg','2018-05-28 21:40:46','37867'),
(2,' 选的阿特兹这个车其实还是经过深思熟虑的，当时买车的时候，在中型轿车里面选了时间，其实老婆更全suv，感觉suv更大气，但是suv的价格自己喜欢的都实在是太贵了，比较喜欢福特的锐界，但是办来也要将30万块钱了，还是低配车型，高配车型得30多万，完全超出自己的预算，而且后期的油耗也耗不起，所以说直也没有入手。','入手马自达','img/car_pic/71.jpg','2018-05-28 23:04:28','37867'),
(3,'从购车到现在好几个月了，提车的时候发了个帖，之后就在也没有发过帖子 过了年也没有上过汽车之家了，今天写个我的经验。（文字能力般，大家将就下，写了大概1个半小时，斑竹给个精华吧。。）','本田思域提车小记','img/car_pic/22.jpg','2018-05-28 23:04:33','37867'),
(4,'测试文本','测试标题','img/car_pic/apic14052.jpg','2018-05-30 20:59:19','37867'),
(5,'测试内容2','测试标题2','img/car_pic/test.jpg','2018-05-30 19:37:18','37867'),
(6,'测试标题3','测试标题3','img/car_pic/562058fb37cfb.jpg','2018-05-30 19:41:06','37867');

/*Table structure for table `fav` */

DROP TABLE IF EXISTS `fav`;

CREATE TABLE `fav` (
  `uid` varchar(255) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  PRIMARY KEY (`uid`,`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `fav` */

insert  into `fav`(`uid`,`car_id`) values 
('12345','10568'),
('32832','20308'),
('32832','20805'),
('32832','22529'),
('32832','23186'),
('32832','23189'),
('37867','18'),
('37867','2');

/*Table structure for table `history_order` */

DROP TABLE IF EXISTS `history_order`;

CREATE TABLE `history_order` (
  `history_id` varchar(255) NOT NULL,
  `buyer_id` varchar(255) NOT NULL,
  `car_id` varchar(255) NOT NULL,
  `seller_id` varchar(255) NOT NULL,
  PRIMARY KEY (`history_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `history_order` */

/*Table structure for table `pic` */

DROP TABLE IF EXISTS `pic`;

CREATE TABLE `pic` (
  `pic_id` varchar(255) NOT NULL COMMENT '图片id',
  `pic_url` varchar(255) NOT NULL COMMENT '图片链接',
  `car_id` varchar(255) NOT NULL COMMENT '汽车id',
  PRIMARY KEY (`pic_id`,`car_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `pic` */

insert  into `pic`(`pic_id`,`pic_url`,`car_id`) values 
('00001','img/car_pic/1.jpg','00001'),
('00002','img/car_pic/2.jpg','00002'),
('00003','img/car_pic/3.jpg','00003'),
('00004','img/car_pic/4.jpg','00004'),
('00005','img/car_pic/5.jpg','00005'),
('00006','img/car_pic/6.jpg','00006'),
('00007','img/car_pic/7.jpg','00007'),
('00008','img/car_pic/8.jpg','00008'),
('00009','img/car_pic/9.jpg','00009'),
('00010','img/car_pic/10.jpg','00010'),
('00011','img/car_pic/11.jpg','00011'),
('00012','img/car_pic/12.jpg','00012'),
('00013','img/car_pic/13.jpg','00013'),
('00014','img/car_pic/14.jpg','00014'),
('00015','img/car_pic/15.jpg','00015'),
('00016','img/car_pic/16.jpg','00016'),
('00017','img/car_pic/17.jpg','00017'),
('00018','img/car_pic/18.jpg','00018'),
('00019','img/car_pic/19.jpg','00019'),
('00020','img/car_pic/20.jpg','00020'),
('00021','img/car_pic/21.jpg','00021'),
('00022','img/car_pic/22.jpg','00022'),
('00023','img/car_pic/23.jpg','00023'),
('00024','img/car_pic/24.jpg','00024'),
('00025','img/car_pic/25.jpg','00025'),
('00026','img/car_pic/26.jpg','00026'),
('00027','img/car_pic/27.jpg','00027'),
('00028','img/car_pic/28.jpg','00028'),
('00029','img/car_pic/29.jpg','00029'),
('00030','img/car_pic/30.jpg','00030'),
('00031','img/car_pic/31.jpg','00031'),
('00032','img/car_pic/32.jpg','00032'),
('00033','img/car_pic/33.jpg','00033'),
('00034','img/car_pic/34.jpg','00034'),
('00035','img/car_pic/35.jpg','00035'),
('00036','img/car_pic/36.jpg','00036'),
('00037','img/car_pic/37.jpg','00037'),
('00038','img/car_pic/38.jpg','00038'),
('00039','img/car_pic/39.jpg','00039'),
('00040','img/car_pic/40.jpg','00040'),
('00041','img/car_pic/41.jpg','00041'),
('00042','img/car_pic/42.jpg','00042'),
('00043','img/car_pic/43.jpg','00043'),
('00044','img/car_pic/44.jpg','00044'),
('00045','img/car_pic/45.jpg','00045'),
('00046','img/car_pic/46.jpg','00046'),
('00047','img/car_pic/47.jpg','00047'),
('00048','img/car_pic/48.jpg','00048'),
('00049','img/car_pic/49.jpg','00049'),
('00050','img/car_pic/50.jpg','00050'),
('00052','img/car_pic/52.jpg','00052'),
('00053','img/car_pic/53.jpg','00053'),
('00057','img/car_pic/57.jpg','00057'),
('00058','img/car_pic/58.jpg','00058'),
('00059','img/car_pic/59.jpg','00059'),
('00060','img/car_pic/60.jpg','00060'),
('00061','img/car_pic/61.jpg','00061'),
('00062','img/car_pic/62.jpg','00062'),
('00063','img/car_pic/63.jpg','00063'),
('00064','img/car_pic/64.jpg','00064'),
('00065','img/car_pic/65.jpg','00065'),
('00066','img/car_pic/66.jpg','00066'),
('00067','img/car_pic/67.jpg','00067'),
('00068','img/car_pic/68.jpg','00068'),
('00069','img/car_pic/69.jpg','00069'),
('00070','img/car_pic/70.jpg','00070'),
('00071','img/car_pic/71.jpg','00071'),
('00072','img/car_pic/72.jpg','00072'),
('34536','/img/car_pic/37220cat.jpg','37220'),
('36397','/img/car_pic/41835apic15385.jpg','41835'),
('39525','/img/car_pic/52707标志.jpeg','52707'),
('41493','/img/car_pic/51056test.jpg','51056'),
('48362','/img/car_pic/39128IMG_3575.JPG','39128'),
('52363','/img/car_pic/36835IMG_3575.JPG','36835');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `uid` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL COMMENT '用户名  用户的唯一标识',
  `upassword` varchar(255) NOT NULL COMMENT '用户的登录密码',
  `uname` varchar(255) DEFAULT NULL COMMENT '用户的真实姓名',
  `uage` int(255) DEFAULT NULL COMMENT '用户年龄，选填',
  `usex` varchar(255) DEFAULT NULL COMMENT '用户性别，选填',
  `uemail` varchar(255) NOT NULL COMMENT '用户电子邮箱，必填，验证',
  `uphone` varchar(255) DEFAULT NULL COMMENT '用户联系方式，必填，与买家（卖家）交流的渠道',
  `uregistertime` datetime DEFAULT NULL COMMENT '注册（指填写完信息）的时间',
  `ustatus` tinyint(4) DEFAULT NULL COMMENT '激活状态',
  `uvalidatecode` varchar(255) DEFAULT NULL COMMENT '激活码',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `uemail` (`uemail`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `user` */

insert  into `user`(`uid`,`username`,`upassword`,`uname`,`uage`,`usex`,`uemail`,`uphone`,`uregistertime`,`ustatus`,`uvalidatecode`) values 
('12345','AA','e10adc3949ba59abbe56e057f20f883e','张三',41,'男','3434343434@qq.com','15528018201','2017-07-19 14:39:16',1,'2045e11029fdc24a48beff8fd2217d9a'),
('32504','','d41d8cd98f00b204e9800998ecf8427e',NULL,NULL,NULL,'',NULL,'2018-05-30 22:12:21',0,'d41d8cd98f00b204e9800998ecf8427e'),
('37867','bbb123','003d81296cbed643579b24d1cf6c907c','bbb123',27,'男','10086@qq.com','1008','2018-05-18 23:11:58',1,'69cbac3c0cf7ecc0448eee3b88899df8');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
