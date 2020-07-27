-- --------------------------------------------------------
-- 主机:                           127.0.0.1
-- 服务器版本:                        5.7.26 - MySQL Community Server (GPL)
-- 服务器操作系统:                      Win64
-- HeidiSQL 版本:                  9.4.0.5125
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- 导出 blog 的数据库结构
CREATE DATABASE IF NOT EXISTS `blog` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `blog`;

-- 导出  表 blog.t_blog 结构
CREATE TABLE IF NOT EXISTS `t_blog` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `appreciation` bit(1) NOT NULL,
  `commentabled` bit(1) NOT NULL,
  `content` longtext COLLATE utf8_bin,
  `create_time` datetime DEFAULT NULL,
  `description` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `first_picture` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `flag` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `published` bit(1) NOT NULL,
  `recommend` bit(1) NOT NULL,
  `share_statement` bit(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `views` int(11) DEFAULT NULL,
  `type_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK292449gwg5yf7ocdlmswv9w4j` (`type_id`),
  KEY `FK8ky5rrsxh01nkhctmo7d48p82` (`user_id`),
  CONSTRAINT `FK292449gwg5yf7ocdlmswv9w4j` FOREIGN KEY (`type_id`) REFERENCES `t_type` (`id`),
  CONSTRAINT `FK8ky5rrsxh01nkhctmo7d48p82` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  blog.t_blog 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `t_blog` DISABLE KEYS */;
INSERT INTO `t_blog` (`id`, `appreciation`, `commentabled`, `content`, `create_time`, `description`, `first_picture`, `flag`, `published`, `recommend`, `share_statement`, `title`, `update_time`, `views`, `type_id`, `user_id`) VALUES
	(2, b'0', b'0', 'HTTP协议简介\r\n超文本传输协议（英文：Hyper Text Transfer Protocol，缩写：HTTP）是互联网上应用最为广泛的一种网络协议。设计HTTP最初的目的是为了提供一种发布和接收HTML页面的方法。通过HTTP协议请求的资源由统一资源标识符（Uniform Resource Identifiers，URI）来标识。\r\nHTTP报文是面向文本的，报文中的每一个字段都是一些ASCII码串，各个字段的长度是不确定的。HTTP有两类报文：请求报文和响应报文。\r\nHTTPS（Hypertext Transfer Protocol over Secure Socket Layer）简单讲是HTTP的安全版，在HTTP下加入SSL层。\r\nSSL（Secure Sockets Layer 安全套接层）主要用于Web的安全传输协议，在传输层对网络连接进行加密，保障在Internet上数据传输的安全。\r\nOSI网络模型 TCP/IP协议族\r\nHTTP是一个应用层协议，由请求和响应构成，是一个标准的客户端服务器模型。HTTP是基于TCP/IP的短连接，无状态的协议。HTTP假定其下层协议提供可靠的传输。因此也就是其在TCP/IP协议族使用TCP作为其传输层。\r\nHTTP协议的主要特点可概括如下：\r\n简单：客户向服务器请求服务时，只需传送请求方法和路径。请求方法常用的有GET、POST、PUT。每种方法规定了客户与服务器联系的不同类型。\r\n由于HTTP协议简单，使得HTTP服务器的程序规模小，因而通信速度很快。\r\n 灵活：HTTP允许传输任意类型的数据对象。正在传输的类型由Content-Type加以标记。\r\n 请求-响应模式：客户端每次向服务器发起一个请求时都建立一个连接， 服务器处理完客户端的请求即断开连接。\r\n 无状态：HTTP协议是无状态协议。无状态是指协议对于事务处理没有记忆能力。缺少状态意味着如果后续处理需要前面的信息，则它必须重传，这样可能导致每次连接传送的数据量增大。\r\n建立TCP连接需要三次握手:\r\n　　（1）客户端发送一个带SYN标志的TCP报文到服务器。这是三次握手过程中的报文1。\r\n　　（2） 服务器端回应客户端的，这是三次握手中的第2个报文，这个报文同时带ACK标志和SYN标志。因此它表示对刚才客户端SYN报文的回应；同时又标志SYN给客户端，询问客户端是否准备好进行数据通讯。\r\n　　（3） 客户端必须再次回应服务段一个ACK报文，这是报文段3。\r\n关闭连接需要四次分手:(先关读,再关写)\r\n   (1) TCP客户端发送一个FIN，用来关闭客户到服务器的数据传送（报文段1）。\r\n　　（2） 服务器收到这个FIN，它发回一个ACK，确认序号为收到的序号加1（报文段2）。和SYN一样，一个FIN将占用一个序号。\r\n　　（3） 服务器关闭客户端的连接，发送一个FIN给客户端（报文段3）。\r\n　　（4） 客户段发回ACK报文确认，并将确认序号设置为收到序号加1（报文段4）。\r\nHTTP工作流程\r\nHTTP，是符合C/S模型的，总是Client端来发起请求。\r\n1、客户机（浏览器）主动向服务器（web   server)发出连接请求。 \r\n2、服务器接受连接请求并建立起连接。 (1,2步即我们所熟知的TCP三次握手)\r\n3、客户机通过此连接向服务器发出GET等http命令，(“HTTP请求报文”)。\r\n4、服务器接到命令并根据命令向客户机传送相应的数据，(“HTTP响应报文”)。\r\n5、客户机接收从服务器送过来的数据。\r\n6、服务器发送完数据后，主动关闭此次连接。 （”TCP四次分手“）。\r\n概况起来就是 客户/服务器传输过程可分为四个基本步骤：\r\n  1) 浏览器与服务器建立连接； (TCP三次握手)\r\n  2) 浏览器向服务器请求文档；\r\n  3) 服务器响应浏览器请求；\r\n  4) 断开连接。（”TCP四次分手“）\r\nHTTP协议的URL,URI介绍\r\nHTTP协议中的URL(URL是一种特殊类型的URI（Uniform Resource Identifier），包含了用于查找某个资源的足够的信息)\r\n主要是用于定位服务器端资源的位置。我们来看下它的语法定义：\r\nhttp://host[:port][path]\r\nhttp:// 表示我们要使用HTTP协议；\r\nhost 表示一个可用的域名或IP地址；\r\nport 为可选，表示要请求的端口号，缺省情况下为80\r\npath 为可选，表示要请求的资源所在的路径（也叫URI），缺省情况下为/ ,如果URL中没有给出path，那么当它作为请求URI时，\r\n必须以“/”的形式给出，比如浏览器中输入： www.abc.edu.cn 则浏览器自动换成 www.abc.edu.cn/ .\r\n一个HTTP请求报文由请求行（request line）、请求头部（header）、空行和请求数据4个部分组成。\r\nHTTP响应报文主要由状态行、响应头部、空行以及响应数据组成。', '2020-04-09 21:07:10', '这是我的第一篇博客，欢迎大家观看', '', '', b'1', b'0', b'1', 'http协议理解', '2020-04-14 14:20:55', 4, 18, 1),
	(4, b'0', b'0', '## 二叉树深度优先搜索遍历（递归/非递归[栈]）\r\n递归：\r\n	先序遍历：\r\n```java\r\n public void preOrder(TreeNode root){\r\n       if(root!=null){\r\n           System.out.println(root.val);\r\n           preOrder(root.left);\r\n           preOrder(root.right);\r\n       }\r\n}\r\n```\r\n中序遍历：\r\n```java\r\n public void InOrder(TreeNode root){\r\n       if(root!=null){\r\n           InOrder(root.left);\r\n		    System.out.println(root.val);\r\n           InOrder(root.right);\r\n       }\r\n}\r\n```\r\n后序遍历：\r\n	\r\n```java\r\n public void AfOrder(TreeNode root){\r\n       if(root!=null){       \r\n          	AfOrder(root.left);\r\n         	AfOrder(root.right);\r\n		   System.out.println(root.val);\r\n       }\r\n}\r\n```\r\n后序遍历：\r\n```java\r\npublic void preOrder(TreeNode root){\r\n       if(root!=null){\r\n           System.out.println(root.val);\r\n           preOrder(root.left);\r\n           preOrder(root.right);\r\n       }\r\n    }\r\n```\r\n\r\n## 二叉树广度优先搜索遍历（队列）\r\n```java\r\n    public void breadthOrder(TreeNode root){\r\n        Queue<TreeNode> queue=new LinkedList<TreeNode>();\r\n        queue.offer(root);\r\n        while(!queue.isEmpty()){\r\n            TreeNode cur=queue.poll();\r\n            System.out.println(cur.val);\r\n            if(cur.left!=null)\r\n                queue.offer(cur.left);\r\n            if(cur.right!=mull)\r\n                queue.offer(cur.right);\r\n        }\r\n    }\r\n```', '2020-04-12 02:50:23', '数据结构之二叉树系列', '', '原创', b'0', b'1', b'0', '数据结构之二叉树系列', '2020-04-14 14:21:30', 7, 20, 1);
/*!40000 ALTER TABLE `t_blog` ENABLE KEYS */;

-- 导出  表 blog.t_blog_tags 结构
CREATE TABLE IF NOT EXISTS `t_blog_tags` (
  `blogs_id` bigint(20) NOT NULL,
  `tags_id` bigint(20) NOT NULL,
  KEY `FK5feau0gb4lq47fdb03uboswm8` (`tags_id`),
  KEY `FKh4pacwjwofrugxa9hpwaxg6mr` (`blogs_id`),
  CONSTRAINT `FK5feau0gb4lq47fdb03uboswm8` FOREIGN KEY (`tags_id`) REFERENCES `t_tag` (`id`),
  CONSTRAINT `FKh4pacwjwofrugxa9hpwaxg6mr` FOREIGN KEY (`blogs_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  blog.t_blog_tags 的数据：~2 rows (大约)
/*!40000 ALTER TABLE `t_blog_tags` DISABLE KEYS */;
INSERT INTO `t_blog_tags` (`blogs_id`, `tags_id`) VALUES
	(2, 3),
	(4, 5);
/*!40000 ALTER TABLE `t_blog_tags` ENABLE KEYS */;

-- 导出  表 blog.t_comment 结构
CREATE TABLE IF NOT EXISTS `t_comment` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `admin_comment` bit(1) NOT NULL,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `content` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `blog_id` bigint(20) DEFAULT NULL,
  `parent_comment_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKke3uogd04j4jx316m1p51e05u` (`blog_id`),
  KEY `FK4jj284r3pb7japogvo6h72q95` (`parent_comment_id`),
  CONSTRAINT `FK4jj284r3pb7japogvo6h72q95` FOREIGN KEY (`parent_comment_id`) REFERENCES `t_comment` (`id`),
  CONSTRAINT `FKke3uogd04j4jx316m1p51e05u` FOREIGN KEY (`blog_id`) REFERENCES `t_blog` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  blog.t_comment 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_comment` DISABLE KEYS */;
/*!40000 ALTER TABLE `t_comment` ENABLE KEYS */;

-- 导出  视图 blog.t_tag 结构
-- 创建临时表以解决视图依赖性错误
CREATE TABLE `t_tag` 
) ENGINE=MyISAM;

-- 导出  表 blog.t_type 结构
CREATE TABLE IF NOT EXISTS `t_type` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  blog.t_type 的数据：~3 rows (大约)
/*!40000 ALTER TABLE `t_type` DISABLE KEYS */;
INSERT INTO `t_type` (`id`, `name`) VALUES
	(9, '操作系统'),
	(18, '计算机网络'),
	(19, '数据结构'),
	(20, 'java基础');
/*!40000 ALTER TABLE `t_type` ENABLE KEYS */;

-- 导出  表 blog.t_user 结构
CREATE TABLE IF NOT EXISTS `t_user` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `nickname` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `type` int(11) DEFAULT NULL,
  `update_time` datetime DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- 正在导出表  blog.t_user 的数据：~0 rows (大约)
/*!40000 ALTER TABLE `t_user` DISABLE KEYS */;
INSERT INTO `t_user` (`id`, `avatar`, `create_time`, `email`, `nickname`, `password`, `type`, `update_time`, `username`) VALUES
	(1, '/images/avatar2.png', '2017-10-15 12:36:04', '935044215@qq.com', 'cx', '96e79218965eb72c92a549dd5a330112', 1, '2017-10-15 12:36:23', 'cx');
/*!40000 ALTER TABLE `t_user` ENABLE KEYS */;

-- 导出  视图 blog.t_tag 结构
-- 移除临时表并创建最终视图结构
DROP TABLE IF EXISTS `t_tag`;
;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
