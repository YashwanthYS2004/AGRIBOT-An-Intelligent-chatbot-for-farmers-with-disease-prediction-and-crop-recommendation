-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 28, 2022 at 11:22 AM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farmer_chatbot`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add user', 7, 'add_user'),
(26, 'Can change user', 7, 'change_user'),
(27, 'Can delete user', 7, 'delete_user'),
(28, 'Can view user', 7, 'view_user'),
(29, 'Can add feedback', 8, 'add_feedback'),
(30, 'Can change feedback', 8, 'change_feedback'),
(31, 'Can delete feedback', 8, 'delete_feedback'),
(32, 'Can view feedback', 8, 'view_feedback');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  KEY `auth_user_groups_group_id_97559544` (`group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(2, 'auth', 'permission'),
(3, 'auth', 'group'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'userapp', 'user'),
(8, 'userapp', 'feedback');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-11-24 10:50:30.041264'),
(2, 'auth', '0001_initial', '2022-11-24 10:50:34.302227'),
(3, 'admin', '0001_initial', '2022-11-24 10:50:35.244006'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-11-24 10:50:35.279286'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-11-24 10:50:35.291277'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-11-24 10:50:35.678264'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-11-24 10:50:35.778647'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-11-24 10:50:35.911439'),
(9, 'auth', '0004_alter_user_username_opts', '2022-11-24 10:50:35.936592'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-11-24 10:50:36.091318'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-11-24 10:50:36.099646'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-11-24 10:50:36.117636'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-11-24 10:50:36.278954'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-11-24 10:50:36.425587'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-11-24 10:50:36.577352'),
(16, 'auth', '0011_update_proxy_permissions', '2022-11-24 10:50:36.598521'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-11-24 10:50:36.728210'),
(18, 'sessions', '0001_initial', '2022-11-24 10:50:37.018169'),
(19, 'userapp', '0001_initial', '2022-11-24 10:51:51.535886'),
(20, 'userapp', '0002_alter_user_user_bgimage', '2022-11-24 10:58:52.730013');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('x2y6pjwvxrauivi2fmlfro6ot0uic0nq', 'eyJ1c2VyX2lkIjo1fQ:1ozbpA:aCzBpKy9rhaI3kIZ6HE1nlW_0Y1uXi0ObhGDc8VB_iU', '2022-12-12 10:57:20.066911'),
('edfukl1znyp6byzr6ko41a8tqf72dqtf', 'eyJ1c2VyX2lkIjo0fQ:1oyuSJ:H5jH-A6T3Lt2W9eXynE_LY2chQec97aJ3svyxQ8DfIQ', '2022-12-10 12:38:51.644800');

-- --------------------------------------------------------

--
-- Table structure for table `feedback_details`
--

DROP TABLE IF EXISTS `feedback_details`;
CREATE TABLE IF NOT EXISTS `feedback_details` (
  `feed_id` int(11) NOT NULL AUTO_INCREMENT,
  `feed_desc` longtext NOT NULL,
  `feed_rating` varchar(100) NOT NULL,
  `feedback_sentiment` varchar(50) NOT NULL,
  `feedback_date` datetime(6) NOT NULL,
  `feedback_user_id` int(11) NOT NULL,
  PRIMARY KEY (`feed_id`),
  KEY `feedback_details_feedback_user_id_645303c9` (`feedback_user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback_details`
--

INSERT INTO `feedback_details` (`feed_id`, `feed_desc`, `feed_rating`, `feedback_sentiment`, `feedback_date`, `feedback_user_id`) VALUES
(7, 'excellent website', '4', 'Very Positive', '2022-11-28 08:14:07.914931', 5),
(3, 'some what negative', '1', 'Negative', '2022-11-25 08:46:40.024548', 3),
(4, 'worst website', '0', 'Very Negative', '2022-11-25 08:46:49.553183', 3),
(5, 'neutral', '2', 'Neutral', '2022-11-25 08:46:58.405670', 3),
(6, 'some what positive', '3', 'Positive', '2022-11-25 08:48:49.323881', 3),
(8, 'Adorable Chatbot', '3', 'Very Positive', '2022-11-28 08:14:52.097548', 6),
(9, 'great thoughts but needs improvement in processing', '1', 'Very Positive', '2022-11-28 10:32:44.384784', 9);

-- --------------------------------------------------------

--
-- Table structure for table `user_details`
--

DROP TABLE IF EXISTS `user_details`;
CREATE TABLE IF NOT EXISTS `user_details` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_fullname` varchar(100) NOT NULL,
  `user_username` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_contact` varchar(15) NOT NULL,
  `user_city` varchar(100) NOT NULL,
  `user_state` varchar(100) NOT NULL,
  `user_image` varchar(100) NOT NULL,
  `user_bgimage` varchar(100) NOT NULL,
  `user_status` varchar(50) NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_details`
--

INSERT INTO `user_details` (`user_id`, `user_fullname`, `user_username`, `user_email`, `user_password`, `user_contact`, `user_city`, `user_state`, `user_image`, `user_bgimage`, `user_status`) VALUES
(5, 'Netra', 'Netra_03', 'netra@email.com', '0000', '9618294480', 'Hyderabad', 'Telangana', 'images/user/image_6.jpg', 'images/user/bg.jpg', 'Accepted'),
(4, 'sunny', 'sunny0310', 'sunny@email.com', '0000', '9618294480', 'Hyderabad', 'Telangana', 'images/user/assistant.png', 'images/user/bg.jpg', 'Accepted'),
(3, 'Vardhan', 'vardhan03', 'vardhan@gmail.com', '0000', '9618294480', 'Hyderabad', 'Telangana', 'images/user/person_1.jpg', 'images/user/bg.jpg', 'Accepted'),
(6, 'Mary Jane', 'Mary_4334', 'mary@email.com', '0000', '9618294480', 'Hyderabad', 'Telangana', 'images/user/author.jpg', 'images/user/bg.jpg', 'Accepted'),
(8, 'Shaun', 'shaun', 'shaun@email.com', '0000', '9618294480', 'hyderabad', 'Telangana', 'images/user/person_2.jpg', 'images/user/bg.jpg', 'Pending'),
(9, 'Mark Allen', 'mark', 'fazalsirprojects@gmail.com', 'Mark@123', '9878747854', 'Hyderabad', 'Telangana', 'images/user/person_1_dgYUn1o.jpg', 'images/user/bg.jpg', 'Accepted');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
