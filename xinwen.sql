# Host: localhost  (Version: 5.5.15)
# Date: 2015-05-11 22:23:57
# Generator: MySQL-Front 5.2  (Build 4.53)

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE */;
/*!40101 SET SQL_MODE='STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES */;
/*!40103 SET SQL_NOTES='ON' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;

USE `xinwen`;

#
# Source for table "manager"
#

DROP TABLE IF EXISTS `manager`;
CREATE TABLE `manager` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `pass` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "manager"
#

/*!40000 ALTER TABLE `manager` DISABLE KEYS */;
INSERT INTO `manager` VALUES (1,'admin','1234');
/*!40000 ALTER TABLE `manager` ENABLE KEYS */;

#
# Source for table "mokuai"
#

DROP TABLE IF EXISTS `mokuai`;
CREATE TABLE `mokuai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "mokuai"
#

/*!40000 ALTER TABLE `mokuai` DISABLE KEYS */;
INSERT INTO `mokuai` VALUES (1,'军事'),(2,'校园'),(3,'生活');
/*!40000 ALTER TABLE `mokuai` ENABLE KEYS */;

#
# Source for table "pinglun"
#

DROP TABLE IF EXISTS `pinglun`;
CREATE TABLE `pinglun` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `time` varchar(255) DEFAULT NULL,
  `msg` varchar(255) DEFAULT NULL,
  `xid` varchar(55) DEFAULT NULL,
  `uname` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;

#
# Data for table "pinglun"
#

/*!40000 ALTER TABLE `pinglun` DISABLE KEYS */;
INSERT INTO `pinglun` VALUES (1,'2015-05-08 14:05:22',' 还行吧',NULL,NULL),(2,'2015-05-08 15:05:959','恩呢被',NULL,NULL),(3,'2015-05-08 16:05:823','门面',NULL,NULL),(4,'2015-05-08 16:05:748','嗯呢',NULL,NULL),(5,'2015-05-11 21:05:397','啦咯啦咯啦咯了','2','123'),(6,'2015-05-11 21:05:90','恶魔城','2','123'),(7,'2015-05-11 21:05:854','墨迹我了','2','123'),(8,'2015-05-11 21:05:971',' 又','3','123'),(9,'2015-05-11 21:05:852','门里','2','555'),(10,'2015-05-11 21:05:153','我看还行','2','555'),(11,'2015-05-11 21:05:734','真不错','2','5555');
/*!40000 ALTER TABLE `pinglun` ENABLE KEYS */;

#
# Source for table "user"
#

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(55) DEFAULT NULL,
  `pass` varchar(55) DEFAULT NULL,
  `nickname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

#
# Data for table "user"
#

/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'123','123','123'),(2,'1234','123','小林子'),(3,'9668','86','我的'),(4,'555','123','门里'),(5,'5555','555','小孩子');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;

#
# Source for table "xinwen"
#

DROP TABLE IF EXISTS `xinwen`;
CREATE TABLE `xinwen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) DEFAULT NULL,
  `img` varchar(255) DEFAULT NULL,
  `msg` text,
  `time` varchar(255) DEFAULT NULL,
  `tag` varchar(255) DEFAULT NULL,
  `bz` int(11) DEFAULT '0',
  `mname` varchar(55) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

#
# Data for table "xinwen"
#

/*!40000 ALTER TABLE `xinwen` DISABLE KEYS */;
INSERT INTO `xinwen` VALUES (2,'收拾收拾','photo1.png','实施手术室','2015-05-11 15:31:37',NULL,0,'军事'),(3,'收拾收拾事实上','photo2.png','实施收拾收拾','2015-05-11 15:33:22',NULL,0,'军事');
/*!40000 ALTER TABLE `xinwen` ENABLE KEYS */;

/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
