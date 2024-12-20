/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - xiaoyuanershoujiaoyiwx
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`xiaoyuanershoujiaoyiwx` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `xiaoyuanershoujiaoyiwx`;

/*Table structure for table `address` */

DROP TABLE IF EXISTS `address`;

CREATE TABLE `address` (
  `id` int(20) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `yonghu_id` int(20) NOT NULL COMMENT '创建用户',
  `address_name` varchar(200) NOT NULL COMMENT '收货人 ',
  `address_phone` varchar(200) NOT NULL COMMENT '电话 ',
  `address_dizhi` varchar(200) NOT NULL COMMENT '地址 ',
  `isdefault_types` int(11) NOT NULL COMMENT '是否默认地址 ',
  `insert_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '添加时间',
  `update_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '修改时间',
  `create_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间 show3',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='收货地址';

/*Data for the table `address` */

insert  into `address`(`id`,`yonghu_id`,`address_name`,`address_phone`,`address_dizhi`,`isdefault_types`,`insert_time`,`update_time`,`create_time`) values (1,2,'收货人1','17703786901','地址1',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,3,'收货人2','17703786902','地址2',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,1,'收货人3','17703786903','地址3',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,1,'收货人4','17703786904','地址4',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,2,'收货人5','17703786905','地址5',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,2,'收货人6','17703786906','地址6',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,1,'收货人7','17703786907','地址7',2,'2023-04-01 15:53:26','2023-04-01 16:13:10','2023-04-01 15:53:26'),(8,2,'收货人8','17703786908','地址8',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,1,'收货人9','17703786909','地址9',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,2,'收货人10','17703786910','地址10',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,3,'收货人11','17703786911','地址11',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(12,2,'收货人12','17703786912','地址12',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(13,3,'收货人13','17703786913','地址13',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,2,'收货人14','17703786914','地址14',1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26');

/*Table structure for table `cart` */

DROP TABLE IF EXISTS `cart`;

CREATE TABLE `cart` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '所属用户',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '更新时间',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='购物车';

/*Data for the table `cart` */

insert  into `cart`(`id`,`yonghu_id`,`shangpin_id`,`buy_number`,`create_time`,`update_time`,`insert_time`) values (5,1,14,1,'2023-04-01 16:09:43',NULL,'2023-04-01 16:09:43'),(6,1,13,1,'2023-04-01 16:09:46',NULL,'2023-04-01 16:09:46');

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) DEFAULT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'轮播图1','upload/config1.jpg'),(2,'轮播图2','upload/config2.jpg'),(3,'轮播图3','upload/config3.jpg');

/*Table structure for table `dictionary` */

DROP TABLE IF EXISTS `dictionary`;

CREATE TABLE `dictionary` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `dic_code` varchar(200) DEFAULT NULL COMMENT '字段',
  `dic_name` varchar(200) DEFAULT NULL COMMENT '字段名',
  `code_index` int(11) DEFAULT NULL COMMENT '编码',
  `index_name` varchar(200) DEFAULT NULL COMMENT '编码名字  Search111 ',
  `super_id` int(11) DEFAULT NULL COMMENT '父字段id',
  `beizhu` varchar(200) DEFAULT NULL COMMENT '备注',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COMMENT='字典';

/*Data for the table `dictionary` */

insert  into `dictionary`(`id`,`dic_code`,`dic_name`,`code_index`,`index_name`,`super_id`,`beizhu`,`create_time`) values (38,'shangjia_types','商家类型',1,'商家类型1',NULL,NULL,'2023-04-01 15:53:20'),(39,'shangjia_types','商家类型',2,'商家类型2',NULL,NULL,'2023-04-01 15:53:20'),(40,'shangjia_types','商家类型',3,'商家类型3',NULL,NULL,'2023-04-01 15:53:20'),(41,'shangjia_chat_types','数据类型',1,'问题',NULL,NULL,'2023-04-01 15:53:20'),(42,'shangjia_chat_types','数据类型',2,'回复',NULL,NULL,'2023-04-01 15:53:20'),(43,'zhuangtai_types','状态',1,'未回复',NULL,NULL,'2023-04-01 15:53:20'),(44,'zhuangtai_types','状态',2,'已回复',NULL,NULL,'2023-04-01 15:53:20'),(45,'shangxia_types','上下架',1,'上架',NULL,NULL,'2023-04-01 15:53:20'),(46,'shangxia_types','上下架',2,'下架',NULL,NULL,'2023-04-01 15:53:20'),(47,'shangpin_types','商品类型',1,'商品类型1',NULL,NULL,'2023-04-01 15:53:20'),(48,'shangpin_types','商品类型',2,'商品类型2',NULL,NULL,'2023-04-01 15:53:20'),(49,'shangpin_types','商品类型',3,'商品类型3',NULL,NULL,'2023-04-01 15:53:20'),(50,'shangpin_collection_types','收藏表类型',1,'收藏',NULL,NULL,'2023-04-01 15:53:20'),(51,'shangpin_order_types','订单类型',101,'已支付',NULL,NULL,'2023-04-01 15:53:20'),(52,'shangpin_order_types','订单类型',102,'已退款',NULL,NULL,'2023-04-01 15:53:20'),(53,'shangpin_order_types','订单类型',103,'已发货',NULL,NULL,'2023-04-01 15:53:20'),(54,'shangpin_order_types','订单类型',104,'已收货',NULL,NULL,'2023-04-01 15:53:20'),(55,'shangpin_order_types','订单类型',105,'已评价',NULL,NULL,'2023-04-01 15:53:20'),(56,'shangpin_order_payment_types','订单支付类型',1,'余额',NULL,NULL,'2023-04-01 15:53:20'),(57,'isdefault_types','是否默认地址',1,'否',NULL,NULL,'2023-04-01 15:53:20'),(58,'isdefault_types','是否默认地址',2,'是',NULL,NULL,'2023-04-01 15:53:20'),(59,'news_types','公告类型',1,'公告类型1',NULL,NULL,'2023-04-01 15:53:20'),(60,'news_types','公告类型',2,'公告类型2',NULL,NULL,'2023-04-01 15:53:20'),(61,'sex_types','性别类型',1,'男',NULL,NULL,'2023-04-01 15:53:20'),(62,'sex_types','性别类型',2,'女',NULL,NULL,'2023-04-01 15:53:20'),(63,'forum_state_types','帖子状态',1,'发帖',NULL,NULL,'2023-04-01 15:53:20'),(64,'forum_state_types','帖子状态',2,'回帖',NULL,NULL,'2023-04-01 15:53:20');

/*Table structure for table `forum` */

DROP TABLE IF EXISTS `forum`;

CREATE TABLE `forum` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `forum_name` varchar(200) DEFAULT NULL COMMENT '帖子标题  Search111 ',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `users_id` int(11) DEFAULT NULL COMMENT '管理员',
  `forum_content` longtext COMMENT '发布内容',
  `super_ids` int(11) DEFAULT NULL COMMENT '父id',
  `forum_state_types` int(11) DEFAULT NULL COMMENT '帖子状态',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '发帖时间',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '修改时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show2',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8 COMMENT='论坛';

/*Data for the table `forum` */

insert  into `forum`(`id`,`forum_name`,`yonghu_id`,`shangjia_id`,`users_id`,`forum_content`,`super_ids`,`forum_state_types`,`insert_time`,`update_time`,`create_time`) values (1,'帖子标题1',1,NULL,NULL,'发布内容1',370,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,'帖子标题2',3,NULL,NULL,'发布内容2',169,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,'帖子标题3',3,NULL,NULL,'发布内容3',73,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,'帖子标题4',2,NULL,NULL,'发布内容4',471,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,'帖子标题5',2,NULL,NULL,'发布内容5',497,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,'帖子标题6',3,NULL,NULL,'发布内容6',63,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,'帖子标题7',2,NULL,NULL,'发布内容7',366,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(8,'帖子标题8',2,NULL,NULL,'发布内容8',424,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,'帖子标题9',1,NULL,NULL,'发布内容9',96,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,'帖子标题10',2,NULL,NULL,'发布内容10',312,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,'帖子标题11',2,NULL,NULL,'发布内容11',206,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(12,'帖子标题12',3,NULL,NULL,'发布内容12',420,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(13,'帖子标题13',2,NULL,NULL,'发布内容13',303,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,'帖子标题14',3,NULL,NULL,'发布内容14',392,1,'2023-04-01 15:53:26','2023-04-01 15:53:26','2023-04-01 15:53:26'),(15,NULL,NULL,1,NULL,'11111111',14,2,'2023-04-01 16:06:51',NULL,'2023-04-01 16:06:51'),(16,NULL,NULL,3,NULL,'2222222222',14,2,'2023-04-01 16:07:44',NULL,'2023-04-01 16:07:44'),(17,NULL,NULL,NULL,1,'333333333',14,2,'2023-04-01 16:08:15',NULL,'2023-04-01 16:08:15'),(18,NULL,1,NULL,NULL,'44444444444444',14,2,'2023-04-01 16:12:58',NULL,'2023-04-01 16:12:58');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `news_name` varchar(200) DEFAULT NULL COMMENT '公告标题  Search111 ',
  `news_types` int(11) DEFAULT NULL COMMENT '公告类型  Search111 ',
  `news_photo` varchar(200) DEFAULT NULL COMMENT '公告图片',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '添加时间',
  `news_content` longtext COMMENT '公告详情',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 nameShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='公告信息';

/*Data for the table `news` */

insert  into `news`(`id`,`news_name`,`news_types`,`news_photo`,`insert_time`,`news_content`,`create_time`) values (1,'公告标题1',2,'upload/news1.jpg','2023-04-01 15:53:26','公告详情1','2023-04-01 15:53:26'),(2,'公告标题2',2,'upload/news2.jpg','2023-04-01 15:53:26','公告详情2','2023-04-01 15:53:26'),(3,'公告标题3',1,'upload/news3.jpg','2023-04-01 15:53:26','公告详情3','2023-04-01 15:53:26'),(4,'公告标题4',1,'upload/news4.jpg','2023-04-01 15:53:26','公告详情4','2023-04-01 15:53:26'),(5,'公告标题5',2,'upload/news5.jpg','2023-04-01 15:53:26','公告详情5','2023-04-01 15:53:26'),(6,'公告标题6',1,'upload/news6.jpg','2023-04-01 15:53:26','公告详情6','2023-04-01 15:53:26'),(7,'公告标题7',2,'upload/news7.jpg','2023-04-01 15:53:26','公告详情7','2023-04-01 15:53:26'),(8,'公告标题8',1,'upload/news8.jpg','2023-04-01 15:53:26','公告详情8','2023-04-01 15:53:26'),(9,'公告标题9',2,'upload/news9.jpg','2023-04-01 15:53:26','公告详情9','2023-04-01 15:53:26'),(10,'公告标题10',2,'upload/news10.jpg','2023-04-01 15:53:26','公告详情10','2023-04-01 15:53:26'),(11,'公告标题11',1,'upload/news11.jpg','2023-04-01 15:53:26','公告详情11','2023-04-01 15:53:26'),(12,'公告标题12',2,'upload/news12.jpg','2023-04-01 15:53:26','公告详情12','2023-04-01 15:53:26'),(13,'公告标题13',2,'upload/news13.jpg','2023-04-01 15:53:26','公告详情13','2023-04-01 15:53:26'),(14,'公告标题14',1,'upload/news14.jpg','2023-04-01 15:53:26','公告详情14','2023-04-01 15:53:26');

/*Table structure for table `shangjia` */

DROP TABLE IF EXISTS `shangjia`;

CREATE TABLE `shangjia` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `username` varchar(200) DEFAULT NULL COMMENT '账户 ',
  `password` varchar(200) DEFAULT NULL COMMENT '密码 ',
  `shangjia_name` varchar(200) DEFAULT NULL COMMENT '商家名称 Search111 ',
  `shangjia_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `shangjia_email` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shangjia_photo` varchar(200) DEFAULT NULL COMMENT '营业执照展示 ',
  `shangjia_types` int(11) DEFAULT NULL COMMENT '商家类型',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '现有余额',
  `shangjia_content` longtext COMMENT '商家介绍 ',
  `shangjia_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show1 show2 photoShow ',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商家';

/*Data for the table `shangjia` */

insert  into `shangjia`(`id`,`username`,`password`,`shangjia_name`,`shangjia_phone`,`shangjia_email`,`shangjia_photo`,`shangjia_types`,`new_money`,`shangjia_content`,`shangjia_delete`,`create_time`) values (1,'a1','123456','商家名称1','17703786901','1@qq.com','upload/shangjia1.jpg',2,'746.50','商家介绍1',1,'2023-04-01 15:53:26'),(2,'a2','123456','商家名称2','17703786902','2@qq.com','upload/shangjia2.jpg',1,'925.99','商家介绍2',1,'2023-04-01 15:53:26'),(3,'a3','123456','商家名称3','17703786903','3@qq.com','upload/shangjia3.jpg',2,'643.93','商家介绍3',1,'2023-04-01 15:53:26');

/*Table structure for table `shangjia_chat` */

DROP TABLE IF EXISTS `shangjia_chat`;

CREATE TABLE `shangjia_chat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '提问人',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '回答人',
  `shangjia_chat_issue_text` longtext COMMENT '问题',
  `issue_time` timestamp NULL DEFAULT NULL COMMENT '问题时间',
  `shangjia_chat_reply_text` longtext COMMENT '回复',
  `reply_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `zhuangtai_types` int(255) DEFAULT NULL COMMENT '状态',
  `shangjia_chat_types` int(11) DEFAULT NULL COMMENT '数据类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '提问时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 COMMENT='用户咨询';

/*Data for the table `shangjia_chat` */

insert  into `shangjia_chat`(`id`,`yonghu_id`,`shangjia_id`,`shangjia_chat_issue_text`,`issue_time`,`shangjia_chat_reply_text`,`reply_time`,`zhuangtai_types`,`shangjia_chat_types`,`insert_time`,`create_time`) values (1,2,2,'问题1','2023-04-01 15:53:26','回复1','2023-04-01 15:53:26',2,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,1,2,'问题2','2023-04-01 15:53:26','回复2','2023-04-01 15:53:26',2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,2,1,'问题3','2023-04-01 15:53:26','回复3','2023-04-01 15:53:26',2,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,2,3,'问题4','2023-04-01 15:53:26','回复4','2023-04-01 15:53:26',1,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,2,3,'问题5','2023-04-01 15:53:26','回复5','2023-04-01 15:53:26',1,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,3,1,'问题6','2023-04-01 15:53:26','回复6','2023-04-01 15:53:26',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,1,2,'问题7','2023-04-01 15:53:26','回复7','2023-04-01 15:53:26',1,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(8,1,2,'问题8','2023-04-01 15:53:26','回复8','2023-04-01 15:53:26',2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,1,3,'问题9','2023-04-01 15:53:26','回复9','2023-04-01 15:53:26',2,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,1,1,'问题10','2023-04-01 15:53:26','回复10','2023-04-01 15:53:26',2,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,3,1,'问题11','2023-04-01 15:53:26','回复11','2023-04-01 15:53:26',2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(12,3,2,'问题12','2023-04-01 15:53:26','回复12','2023-04-01 15:53:26',2,2,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(13,2,2,'问题13','2023-04-01 15:53:26','回复13','2023-04-01 15:53:26',2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,2,2,'问题14','2023-04-01 15:53:26','回复14','2023-04-01 15:53:26',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(15,1,3,'1','2023-04-01 16:03:30',NULL,NULL,1,1,'2023-04-01 16:03:30','2023-04-01 16:03:30'),(16,3,1,NULL,NULL,'1111','2023-04-01 16:06:35',NULL,2,'2023-04-01 16:06:35','2023-04-01 16:06:35'),(17,1,3,'询问商家问题11111','2023-04-01 16:12:24',NULL,NULL,1,1,'2023-04-01 16:12:24','2023-04-01 16:12:24');

/*Table structure for table `shangpin` */

DROP TABLE IF EXISTS `shangpin`;

CREATE TABLE `shangpin` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键 ',
  `shangjia_id` int(11) DEFAULT NULL COMMENT '商家',
  `shangpin_name` varchar(200) DEFAULT NULL COMMENT '商品名称  Search111 ',
  `shangpin_uuid_number` varchar(200) DEFAULT NULL COMMENT '商品编号',
  `shangpin_photo` varchar(200) DEFAULT NULL COMMENT '商品照片',
  `shangpin_types` int(11) DEFAULT NULL COMMENT '商品类型 Search111',
  `shangpin_kucun_number` int(11) DEFAULT NULL COMMENT '商品库存',
  `shangpin_old_money` decimal(10,2) DEFAULT NULL COMMENT '商品原价 ',
  `shangpin_new_money` decimal(10,2) DEFAULT NULL COMMENT '现价',
  `shangpin_clicknum` int(11) DEFAULT NULL COMMENT '商品热度',
  `shangpin_content` longtext COMMENT '商品介绍 ',
  `shangxia_types` int(11) DEFAULT NULL COMMENT '是否上架 ',
  `shangpin_delete` int(11) DEFAULT NULL COMMENT '逻辑删除',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '录入时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间  show1 show2 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='商品';

/*Data for the table `shangpin` */

insert  into `shangpin`(`id`,`shangjia_id`,`shangpin_name`,`shangpin_uuid_number`,`shangpin_photo`,`shangpin_types`,`shangpin_kucun_number`,`shangpin_old_money`,`shangpin_new_money`,`shangpin_clicknum`,`shangpin_content`,`shangxia_types`,`shangpin_delete`,`insert_time`,`create_time`) values (1,3,'商品名称1','1680335606351','upload/shangpin1.jpg',2,101,'563.62','341.09',442,'商品介绍1',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,1,'商品名称2','1680335606365','upload/shangpin2.jpg',1,102,'825.18','66.48',246,'商品介绍2',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,2,'商品名称3','1680335606345','upload/shangpin3.jpg',3,103,'870.40','321.00',159,'商品介绍3',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,1,'商品名称4','1680335606332','upload/shangpin4.jpg',3,104,'572.69','363.02',68,'商品介绍4',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,3,'商品名称5','1680335606403','upload/shangpin5.jpg',2,105,'577.41','107.98',129,'商品介绍5',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,2,'商品名称6','1680335606351','upload/shangpin6.jpg',3,106,'595.87','469.16',272,'商品介绍6',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,1,'商品名称7','1680335606339','upload/shangpin7.jpg',2,107,'792.45','241.37',289,'商品介绍7',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(8,2,'商品名称8','1680335606382','upload/shangpin8.jpg',1,108,'879.53','460.29',203,'商品介绍8',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,3,'商品名称9','1680335606372','upload/shangpin9.jpg',1,109,'797.10','15.59',15,'商品介绍9',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,1,'商品名称10','1680335606413','upload/shangpin10.jpg',1,1010,'638.30','102.81',235,'商品介绍10',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,3,'商品名称11','1680335606343','upload/shangpin11.jpg',1,1010,'536.13','81.18',481,'商品介绍11',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(12,1,'商品名称12','1680335606412','upload/shangpin12.jpg',3,1012,'532.80','377.40',317,'商品介绍12',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(13,2,'商品名称13','1680335606316','upload/shangpin13.jpg',2,1013,'715.00','212.07',329,'商品介绍13',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,1,'商品名称14','1680335606365','upload/shangpin14.jpg',1,1014,'831.54','312.13',26,'商品介绍14',1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26');

/*Table structure for table `shangpin_collection` */

DROP TABLE IF EXISTS `shangpin_collection`;

CREATE TABLE `shangpin_collection` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_collection_types` int(11) DEFAULT NULL COMMENT '类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '收藏时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 photoShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品收藏';

/*Data for the table `shangpin_collection` */

insert  into `shangpin_collection`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_collection_types`,`insert_time`,`create_time`) values (1,1,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,2,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,3,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,4,1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,5,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,6,1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,7,1,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(8,8,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,9,2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,10,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,11,2,1,'2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,14,3,1,'2023-04-01 15:53:26','2023-04-01 15:53:26');

/*Table structure for table `shangpin_commentback` */

DROP TABLE IF EXISTS `shangpin_commentback`;

CREATE TABLE `shangpin_commentback` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `shangpin_commentback_text` longtext COMMENT '评价内容',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '评价时间',
  `reply_text` longtext COMMENT '回复内容',
  `update_time` timestamp NULL DEFAULT NULL COMMENT '回复时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8 COMMENT='商品评价';

/*Data for the table `shangpin_commentback` */

insert  into `shangpin_commentback`(`id`,`shangpin_id`,`yonghu_id`,`shangpin_commentback_text`,`insert_time`,`reply_text`,`update_time`,`create_time`) values (1,1,1,'评价内容1','2023-04-01 15:53:26','回复信息1','2023-04-01 15:53:26','2023-04-01 15:53:26'),(2,2,1,'评价内容2','2023-04-01 15:53:26','回复信息2','2023-04-01 15:53:26','2023-04-01 15:53:26'),(3,3,2,'评价内容3','2023-04-01 15:53:26','回复信息3','2023-04-01 15:53:26','2023-04-01 15:53:26'),(4,4,1,'评价内容4','2023-04-01 15:53:26','回复信息4','2023-04-01 15:53:26','2023-04-01 15:53:26'),(5,5,1,'评价内容5','2023-04-01 15:53:26','回复信息5','2023-04-01 15:53:26','2023-04-01 15:53:26'),(6,6,1,'评价内容6','2023-04-01 15:53:26','回复信息6','2023-04-01 15:53:26','2023-04-01 15:53:26'),(7,7,1,'评价内容7','2023-04-01 15:53:26','回复信息7','2023-04-01 15:53:26','2023-04-01 15:53:26'),(8,8,3,'评价内容8','2023-04-01 15:53:26','回复信息8','2023-04-01 15:53:26','2023-04-01 15:53:26'),(9,9,2,'评价内容9','2023-04-01 15:53:26','回复信息9','2023-04-01 15:53:26','2023-04-01 15:53:26'),(10,10,1,'评价内容10','2023-04-01 15:53:26','回复信息10','2023-04-01 15:53:26','2023-04-01 15:53:26'),(11,11,3,'评价内容11','2023-04-01 15:53:26','回复信息11','2023-04-01 15:53:26','2023-04-01 15:53:26'),(12,12,2,'评价内容12','2023-04-01 15:53:26','回复信息12','2023-04-01 15:53:26','2023-04-01 15:53:26'),(13,13,1,'评价内容13','2023-04-01 15:53:26','回复信息13','2023-04-01 15:53:26','2023-04-01 15:53:26'),(14,14,2,'评价内容14','2023-04-01 15:53:26','回复信息14','2023-04-01 15:53:26','2023-04-01 15:53:26');

/*Table structure for table `shangpin_order` */

DROP TABLE IF EXISTS `shangpin_order`;

CREATE TABLE `shangpin_order` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `shangpin_order_uuid_number` varchar(200) DEFAULT NULL COMMENT '订单号 Search111 ',
  `address_id` int(11) DEFAULT NULL COMMENT '收货地址 ',
  `shangpin_id` int(11) DEFAULT NULL COMMENT '商品',
  `yonghu_id` int(11) DEFAULT NULL COMMENT '用户',
  `buy_number` int(11) DEFAULT NULL COMMENT '购买数量',
  `shangpin_order_true_price` decimal(10,2) DEFAULT NULL COMMENT '实付价格',
  `shangpin_order_courier_name` varchar(200) DEFAULT NULL COMMENT '快递公司',
  `shangpin_order_courier_number` varchar(200) DEFAULT NULL COMMENT '订单快递单号',
  `shangpin_order_types` int(11) DEFAULT NULL COMMENT '订单类型 Search111 ',
  `shangpin_order_payment_types` int(11) DEFAULT NULL COMMENT '支付类型',
  `insert_time` timestamp NULL DEFAULT NULL COMMENT '订单创建时间',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间 show3 listShow',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品订单';

/*Data for the table `shangpin_order` */

insert  into `shangpin_order`(`id`,`shangpin_order_uuid_number`,`address_id`,`shangpin_id`,`yonghu_id`,`buy_number`,`shangpin_order_true_price`,`shangpin_order_courier_name`,`shangpin_order_courier_number`,`shangpin_order_types`,`shangpin_order_payment_types`,`insert_time`,`create_time`) values (1,'1680336256635',4,11,1,1,'81.18','JD','123456123',105,1,'2023-04-01 16:04:17','2023-04-01 16:04:17'),(2,'1680336655719',4,14,1,1,'312.13',NULL,NULL,102,1,'2023-04-01 16:10:56','2023-04-01 16:10:56');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

insert  into `token`(`id`,`userid`,`username`,`tablename`,`role`,`token`,`addtime`,`expiratedtime`) values (1,1,'admin','users','管理员','0nev0ysgyqov95kwc4mh8nbhg73kd1gd','2023-04-01 15:58:05','2023-04-01 17:22:24'),(2,1,'a1','yonghu','用户','qcejqsiq24894c46khhz3n964v8cu226','2023-04-01 16:03:13','2023-04-01 17:10:17'),(3,1,'a1','shangjia','商家','20zpezv7ihye3cf85q2ginvagy2e80am','2023-04-01 16:06:26','2023-04-01 17:06:27'),(4,2,'a2','shangjia','商家','2ni9a0ba66ye0a56vtif5qtdlsva0ug5','2023-04-01 16:06:59','2023-04-01 17:07:00'),(5,3,'a3','shangjia','商家','zr342jdfw3vzm2kodxd3ewxu7zjuuu3c','2023-04-01 16:07:11','2023-04-01 17:07:11');

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='管理员';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'admin','admin','管理员','2023-04-01 15:53:20');

/*Table structure for table `yonghu` */

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(200) DEFAULT NULL COMMENT '账户',
  `password` varchar(200) DEFAULT NULL COMMENT '密码',
  `yonghu_name` varchar(200) DEFAULT NULL COMMENT '用户姓名 Search111 ',
  `yonghu_phone` varchar(200) DEFAULT NULL COMMENT '联系方式',
  `yonghu_id_number` varchar(200) DEFAULT NULL COMMENT '身份证号',
  `yonghu_photo` varchar(200) DEFAULT NULL COMMENT '用户头像',
  `sex_types` int(11) DEFAULT NULL COMMENT '性别 Search111',
  `yonghu_email` varchar(200) DEFAULT NULL COMMENT '电子邮箱',
  `new_money` decimal(10,2) DEFAULT NULL COMMENT '余额 ',
  `create_time` timestamp NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='用户';

/*Data for the table `yonghu` */

insert  into `yonghu`(`id`,`username`,`password`,`yonghu_name`,`yonghu_phone`,`yonghu_id_number`,`yonghu_photo`,`sex_types`,`yonghu_email`,`new_money`,`create_time`) values (1,'a1','123456','用户姓名1','17703786901','410224199010102001','upload/yonghu1.jpg',2,'1@qq.com','850.91','2023-04-01 15:53:26'),(2,'a2','123456','用户姓名2','17703786902','410224199010102002','upload/yonghu2.jpg',2,'2@qq.com','374.78','2023-04-01 15:53:26'),(3,'a3','123456','用户姓名3','17703786903','410224199010102003','upload/yonghu3.jpg',2,'3@qq.com','622.16','2023-04-01 15:53:26');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
