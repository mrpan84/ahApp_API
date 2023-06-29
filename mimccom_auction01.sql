-- phpMyAdmin SQL Dump
-- version 4.9.11
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 18, 2023 at 08:05 PM
-- Server version: 5.7.23-23
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mimccom_auction01`
--

-- --------------------------------------------------------

--
-- Table structure for table `ahpersonel`
--

CREATE TABLE `ahpersonel` (
  `uid` int(11) NOT NULL,
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
);

--
-- Dumping data for table `ahpersonel`
--

INSERT INTO `ahpersonel` (`uid`, `date_added`) VALUES
(9, '2023-05-02 12:18:04'),
(10, '2023-05-02 12:18:14'),
(11, '2023-05-02 12:18:22'),
(12, '2023-05-02 12:18:30');

-- --------------------------------------------------------

--
-- Table structure for table `auctions`
--

CREATE TABLE `auctions` (
  `auction_id` int(11) NOT NULL,
  `created_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `start_time` datetime NOT NULL,
  `end_time` datetime NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `auction_stock`
--

CREATE TABLE `auction_stock` (
  `auction_stock_id` int(11) NOT NULL,
  `reg_number` int(11) NOT NULL,
  `auction_id` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ;

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
(25, 'Can add ahpersonel', 7, 'add_ahpersonel'),
(26, 'Can change ahpersonel', 7, 'change_ahpersonel'),
(27, 'Can delete ahpersonel', 7, 'delete_ahpersonel'),
(28, 'Can view ahpersonel', 7, 'view_ahpersonel'),
(29, 'Can add buyer', 8, 'add_buyer'),
(30, 'Can change buyer', 8, 'change_buyer'),
(31, 'Can delete buyer', 8, 'delete_buyer'),
(32, 'Can view buyer', 8, 'view_buyer'),
(33, 'Can add farmer', 9, 'add_farmer'),
(34, 'Can change farmer', 9, 'change_farmer'),
(35, 'Can delete farmer', 9, 'delete_farmer'),
(36, 'Can view farmer', 9, 'view_farmer'),
(37, 'Can add grower', 10, 'add_grower'),
(38, 'Can change grower', 10, 'change_grower'),
(39, 'Can delete grower', 10, 'delete_grower'),
(40, 'Can view grower', 10, 'view_grower'),
(41, 'Can add sys admin', 11, 'add_sysadmin'),
(42, 'Can change sys admin', 11, 'change_sysadmin'),
(43, 'Can delete sys admin', 11, 'delete_sysadmin'),
(44, 'Can view sys admin', 11, 'view_sysadmin'),
(45, 'Can add user', 12, 'add_user'),
(46, 'Can change user', 12, 'change_user'),
(47, 'Can delete user', 12, 'delete_user'),
(48, 'Can view user', 12, 'view_user'),
(49, 'Can add auction stock', 13, 'add_auctionstock'),
(50, 'Can change auction stock', 13, 'change_auctionstock'),
(51, 'Can delete auction stock', 13, 'delete_auctionstock'),
(52, 'Can view auction stock', 13, 'view_auctionstock'),
(53, 'Can add auction', 14, 'add_auction'),
(54, 'Can change auction', 14, 'change_auction'),
(55, 'Can delete auction', 14, 'delete_auction'),
(56, 'Can view auction', 14, 'view_auction'),
(57, 'Can add bid', 15, 'add_bid'),
(58, 'Can change bid', 15, 'change_bid'),
(59, 'Can delete bid', 15, 'delete_bid'),
(60, 'Can view bid', 15, 'view_bid'),
(61, 'Can add bale', 16, 'add_bale'),
(62, 'Can change bale', 16, 'change_bale'),
(63, 'Can delete bale', 16, 'delete_bale'),
(64, 'Can view bale', 16, 'view_bale'),
(65, 'Can add consignment', 17, 'add_consignment'),
(66, 'Can change consignment', 17, 'change_consignment'),
(67, 'Can delete consignment', 17, 'delete_consignment'),
(68, 'Can view consignment', 17, 'view_consignment');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ;

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$W5LjwW9WlDzymY9dwstq5r$3j6d0T8GTZGbC28TrrPoTLPoExiOtiSxE0OfPHy3Utc=', '2023-05-21 08:16:29.928768', 1, 'jeremiah', '', '', 'jerlieiv@yahoo.com', 1, 1, '2023-05-02 06:59:02.705234');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `bales`
--

CREATE TABLE `bales` (
  `bale_id` int(11) NOT NULL,
  `reg_number` int(11) NOT NULL,
  `weight` decimal(5,2) NOT NULL,
  `RG` tinyint(1) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `bids`
--

CREATE TABLE `bids` (
  `bid_id` int(11) NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `auction_stoc_id` int(11) NOT NULL,
  `bid_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `amount` decimal(10,2) NOT NULL
) ;

-- --------------------------------------------------------

--
-- Table structure for table `buyers`
--

CREATE TABLE `buyers` (
  `buyer_id` int(11) NOT NULL,
  `registered_on` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `buyers`
--

INSERT INTO `buyers` (`buyer_id`, `registered_on`) VALUES
(4, '2023-05-02 00:00:00'),
(5, '2023-05-02 00:00:00'),
(6, '2023-05-02 00:00:00'),
(7, '2023-05-02 00:00:00'),
(8, '2023-05-02 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `consignments`
--

CREATE TABLE `consignments` (
  `reg_number` int(11) NOT NULL,
  `grower_id` int(11) NOT NULL,
  `consignment_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `quality` text,
  `attempts` int(11) NOT NULL DEFAULT '1'
) ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_unicode_ci,
  `object_repr` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-05-02 07:22:22.503711', '1', 'User object (1)', 1, '[{\"added\": {}}]', 12, 1),
(2, '2023-05-02 07:23:34.230478', '2', 'User object (2)', 1, '[{\"added\": {}}]', 12, 1),
(3, '2023-05-02 07:24:54.336868', '3', 'User object (3)', 1, '[{\"added\": {}}]', 12, 1),
(4, '2023-05-02 07:25:49.137647', '4', 'User object (4)', 1, '[{\"added\": {}}]', 12, 1),
(5, '2023-05-02 07:26:47.955083', '5', 'User object (5)', 1, '[{\"added\": {}}]', 12, 1),
(6, '2023-05-02 11:57:53.447935', '6', 'User object (6)', 1, '[{\"added\": {}}]', 12, 1),
(7, '2023-05-02 11:58:20.979586', '7', 'User object (7)', 1, '[{\"added\": {}}]', 12, 1),
(8, '2023-05-02 12:04:22.056860', '8', 'User object (8)', 1, '[{\"added\": {}}]', 12, 1),
(9, '2023-05-02 12:05:01.214594', '9', 'User object (9)', 1, '[{\"added\": {}}]', 12, 1),
(10, '2023-05-02 12:09:30.911516', '10', 'User object (10)', 1, '[{\"added\": {}}]', 12, 1),
(11, '2023-05-02 12:09:51.970808', '11', 'User object (11)', 1, '[{\"added\": {}}]', 12, 1),
(12, '2023-05-02 12:10:09.991260', '12', 'User object (12)', 1, '[{\"added\": {}}]', 12, 1),
(13, '2023-05-02 12:10:28.941153', '13', 'User object (13)', 1, '[{\"added\": {}}]', 12, 1),
(14, '2023-05-02 12:11:08.685616', '14', 'User object (14)', 1, '[{\"added\": {}}]', 12, 1),
(15, '2023-05-02 12:12:33.960657', '15', 'User object (15)', 1, '[{\"added\": {}}]', 12, 1),
(16, '2023-05-02 12:13:10.081197', '16', 'User object (16)', 1, '[{\"added\": {}}]', 12, 1),
(17, '2023-05-02 12:13:37.798590', '17', 'User object (17)', 1, '[{\"added\": {}}]', 12, 1),
(18, '2023-05-02 12:14:01.790723', '18', 'User object (18)', 1, '[{\"added\": {}}]', 12, 1),
(19, '2023-05-02 12:14:48.664763', '19', 'User object (19)', 1, '[{\"added\": {}}]', 12, 1),
(20, '2023-05-02 12:15:15.716098', '20', 'User object (20)', 1, '[{\"added\": {}}]', 12, 1),
(21, '2023-05-02 12:15:41.044687', '1', 'User object (1)', 2, '[{\"changed\": {\"fields\": [\"Fname\", \"Date joined\"]}}]', 12, 1),
(22, '2023-05-02 12:16:09.070766', '1', 'SysAdmin object (1)', 1, '[{\"added\": {}}]', 11, 1),
(23, '2023-05-02 12:16:22.926815', '2', 'SysAdmin object (2)', 1, '[{\"added\": {}}]', 11, 1),
(24, '2023-05-02 12:16:34.421154', '3', 'SysAdmin object (3)', 1, '[{\"added\": {}}]', 11, 1),
(25, '2023-05-02 12:17:25.037653', '4', 'Buyer object (4)', 1, '[{\"added\": {}}]', 8, 1),
(26, '2023-05-02 12:17:33.772861', '5', 'Buyer object (5)', 1, '[{\"added\": {}}]', 8, 1),
(27, '2023-05-02 12:17:39.105420', '6', 'Buyer object (6)', 1, '[{\"added\": {}}]', 8, 1),
(28, '2023-05-02 12:17:44.986450', '7', 'Buyer object (7)', 1, '[{\"added\": {}}]', 8, 1),
(29, '2023-05-02 12:17:51.126131', '8', 'Buyer object (8)', 1, '[{\"added\": {}}]', 8, 1),
(30, '2023-05-02 12:18:06.713602', '9', 'Ahpersonel object (9)', 1, '[{\"added\": {}}]', 7, 1),
(31, '2023-05-02 12:18:15.352158', '10', 'Ahpersonel object (10)', 1, '[{\"added\": {}}]', 7, 1),
(32, '2023-05-02 12:18:23.703909', '11', 'Ahpersonel object (11)', 1, '[{\"added\": {}}]', 7, 1),
(33, '2023-05-02 12:18:31.361770', '12', 'Ahpersonel object (12)', 1, '[{\"added\": {}}]', 7, 1),
(34, '2023-05-02 12:21:50.416928', '1', 'Grower object (1)', 1, '[{\"added\": {}}]', 10, 1),
(35, '2023-05-02 12:22:06.629887', '2', 'Grower object (2)', 1, '[{\"added\": {}}]', 10, 1),
(36, '2023-05-02 12:22:44.904414', '3', 'Grower object (3)', 1, '[{\"added\": {}}]', 10, 1),
(37, '2023-05-02 12:27:51.430914', '4', 'Grower object (4)', 1, '[{\"added\": {}}]', 10, 1),
(38, '2023-05-02 12:28:18.136207', '5', 'Grower object (5)', 1, '[{\"added\": {}}]', 10, 1),
(39, '2023-05-02 12:28:43.564772', '6', 'Grower object (6)', 1, '[{\"added\": {}}]', 10, 1),
(40, '2023-05-02 12:29:08.197545', '7', 'Grower object (7)', 1, '[{\"added\": {}}]', 10, 1),
(41, '2023-05-02 12:29:31.828516', '8', 'Grower object (8)', 1, '[{\"added\": {}}]', 10, 1),
(42, '2023-05-02 12:30:17.537832', '9', 'Grower object (9)', 1, '[{\"added\": {}}]', 10, 1),
(43, '2023-05-02 12:30:49.456001', '10', 'Grower object (10)', 1, '[{\"added\": {}}]', 10, 1),
(44, '2023-05-02 12:31:14.307253', '11', 'Grower object (11)', 1, '[{\"added\": {}}]', 10, 1),
(45, '2023-05-02 12:33:26.883613', '13', 'Farmer object (13)', 1, '[{\"added\": {}}]', 9, 1),
(46, '2023-05-02 12:33:36.374225', '14', 'Farmer object (14)', 1, '[{\"added\": {}}]', 9, 1),
(47, '2023-05-02 12:33:48.779168', '15', 'Farmer object (15)', 1, '[{\"added\": {}}]', 9, 1),
(48, '2023-05-02 12:34:02.031892', '16', 'Farmer object (16)', 1, '[{\"added\": {}}]', 9, 1),
(49, '2023-05-02 12:34:49.538842', '17', 'Farmer object (17)', 1, '[{\"added\": {}}]', 9, 1),
(50, '2023-05-02 12:35:13.400222', '18', 'Farmer object (18)', 1, '[{\"added\": {}}]', 9, 1),
(51, '2023-05-02 12:35:27.152249', '19', 'Farmer object (19)', 1, '[{\"added\": {}}]', 9, 1),
(52, '2023-05-02 12:35:37.279979', '20', 'Farmer object (20)', 1, '[{\"added\": {}}]', 9, 1);

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ;

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
(7, 'users', 'ahpersonel'),
(8, 'users', 'buyer'),
(9, 'users', 'farmer'),
(10, 'users', 'grower'),
(11, 'users', 'sysadmin'),
(12, 'users', 'user'),
(13, 'auction', 'auctionstock'),
(14, 'auction', 'auction'),
(15, 'auction', 'bid'),
(16, 'stock', 'bale'),
(17, 'stock', 'consignment');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-05-01 20:06:05.698590'),
(2, 'auth', '0001_initial', '2023-05-01 20:06:23.374315'),
(3, 'admin', '0001_initial', '2023-05-01 20:06:28.694327'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-05-01 20:06:28.754598'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-05-01 20:06:28.799332'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-05-01 20:06:30.149227'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-05-01 20:06:31.174812'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-05-01 20:06:32.119316'),
(9, 'auth', '0004_alter_user_username_opts', '2023-05-01 20:06:32.154575'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-05-01 20:06:32.999487'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-05-01 20:06:33.008664'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-05-01 20:06:33.045605'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-05-01 20:06:33.954452'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-05-01 20:06:34.794312'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-05-01 20:06:35.454381'),
(16, 'auth', '0011_update_proxy_permissions', '2023-05-01 20:06:35.564442'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-05-01 20:06:36.724486'),
(18, 'sessions', '0001_initial', '2023-05-01 20:06:37.579562');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('3mzcna3rq0nvw4iu65hercj6bnd1phjc', '.eJxVjDsOwjAQRO_iGlle_0NJnzNYa6-NA8iR4qRC3J1ESgHlzHszbxZwW2vYel7CROzKgF1-u4jpmdsB6IHtPvM0t3WZIj8UftLOx5ny63a6fwcVe93XTspsSGtIFpJ0AkGB2KNSJFCLwViE6FXSkL3JRUK0RTiS0g8qFq_Z5wuqpjaT:1ptk0a:lx2KtJfi5Wyf5iA1LnMJERnvTky7n8ksM1FLwmTUQMU', '2023-05-16 07:01:08.083570'),
('g9br5r1zz2v0j2wgl6y30x4i0fiwf6i5', '.eJxVjDsOwjAQRO_iGlle_0NJnzNYa6-NA8iR4qRC3J1ESgHlzHszbxZwW2vYel7CROzKgF1-u4jpmdsB6IHtPvM0t3WZIj8UftLOx5ny63a6fwcVe93XTspsSGtIFpJ0AkGB2KNSJFCLwViE6FXSkL3JRUK0RTiS0g8qFq_Z5wuqpjaT:1q0eEw:_4DlEzlQFs7kE__FlqCZjfYTWjCjo55-n62wxav7InE', '2023-06-04 08:16:30.043139');

-- --------------------------------------------------------

--
-- Table structure for table `farmers`
--

CREATE TABLE `farmers` (
  `farmer_id` int(11) NOT NULL,
  `date_registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `grower_id` int(11) NOT NULL
) ;

--
-- Dumping data for table `farmers`
--

INSERT INTO `farmers` (`farmer_id`, `date_registered`, `grower_id`) VALUES
(13, '2023-05-02 00:00:00', 1),
(14, '2023-05-02 00:00:00', 2),
(15, '2023-05-02 00:00:00', 3),
(16, '2023-05-02 00:00:00', 4),
(17, '2023-05-02 00:00:00', 5),
(18, '2023-05-02 00:00:00', 6),
(19, '2023-05-02 00:00:00', 7),
(20, '2023-05-02 00:00:00', 8);

-- --------------------------------------------------------

--
-- Table structure for table `grower`
--

CREATE TABLE `grower` (
  `grower_id` int(11) NOT NULL,
  `isClub` tinyint(1) NOT NULL,
  `club_name` varchar(255) DEFAULT NULL,
  `district` varchar(25) NOT NULL,
  `registered` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ;

--
-- Dumping data for table `grower`
--

INSERT INTO `grower` (`grower_id`, `isClub`, `club_name`, `district`, `registered`) VALUES
(1, 1, 'Tikondane', 'Lilongwe', '2023-05-02 12:21:48'),
(2, 0, 'Chikondi', 'kasungu', '2023-05-02 12:22:05'),
(3, 1, 'Chisangalalo', 'Ntchisi', '2023-05-02 12:22:43'),
(4, 1, 'Mponda', 'Lilongwe', '2023-05-02 12:22:43'),
(5, 1, 'Chisepo', 'Kasungu', '2023-05-02 12:28:17'),
(6, 0, 'Nsomba', 'Dedza', '2023-05-02 12:28:42'),
(7, 0, 'Chiphwanya', 'Blantyre', '2023-05-02 12:29:07'),
(8, 0, 'Kachibwila', 'Zomba', '2023-05-02 12:29:30'),
(9, 0, 'Chimwaza', 'Salima', '2023-05-02 12:30:16'),
(10, 0, 'Nthorowa', 'Mzimba', '2023-05-02 12:30:48'),
(11, 0, 'Chitedze', 'Dowa', '2023-05-02 12:31:12');

-- --------------------------------------------------------

--
-- Table structure for table `sys_admin`
--

CREATE TABLE `sys_admin` (
  `uid` int(11) NOT NULL,
  `date_appointed` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `active` tinyint(1) NOT NULL
) ;

--
-- Dumping data for table `sys_admin`
--

INSERT INTO `sys_admin` (`uid`, `date_appointed`, `active`) VALUES
(1, '2023-05-02 12:16:03', 1),
(2, '2023-05-02 12:16:18', 1),
(3, '2023-05-02 12:16:29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `uid` int(11) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `sname` varchar(20) NOT NULL,
  `phone` varchar(13) NOT NULL,
  `date_joined` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `password` varchar(65) NOT NULL
) ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`uid`, `fname`, `sname`, `phone`, `date_joined`, `password`) VALUES
(1, 'Jeremiah', 'Phesele', '0992396006', '2023-05-02 00:00:00', '1234'),
(2, 'Elias', 'Mbulaje', '0999488493', '2023-05-02 00:00:00', '1234'),
(3, 'Precious', 'Makaka', '0881797881', '2023-05-02 00:00:00', '1234'),
(4, 'Hawaji', 'Alide', '0885474439', '2023-05-02 00:00:00', '1234'),
(5, 'Simba', 'Banda', '0880432586', '2023-05-02 00:00:00', '1234'),
(6, 'Ammon', 'Willias', '099239789', '2023-05-02 00:00:00', '1234'),
(7, 'Emmanuel', 'Banda', '0880356310', '2023-05-02 00:00:00', '1234'),
(8, 'Takondwa', 'Kaiya', '088356789', '2023-05-02 00:00:00', '1234'),
(9, 'Cynthia', 'Siffah', '099256789', '2023-05-02 00:00:00', '1234'),
(10, 'Chimwemwe', 'Alide', '0992396000', '2023-05-02 00:00:00', '1234'),
(11, 'Cosmas', 'Phiri', '0999488497', '2023-05-02 00:00:00', '1234'),
(12, 'Sandra', 'Mlewa', '0992396077', '2023-05-02 00:00:00', '1234'),
(13, 'Martha', 'Luwe', '0885474438', '2023-05-02 00:00:00', '1234'),
(14, 'Chifundo', 'chisimba', '0999488478', '2023-05-02 00:00:00', '1234'),
(15, 'Candy', 'Grey', '0881797880', '2023-05-02 00:00:00', '1234'),
(16, 'Thandiwe', 'Makadi', '0999488498', '2023-05-02 00:00:00', '1234'),
(17, 'Buba', 'Kalilombe', '0999488421', '2023-05-02 00:00:00', '1234'),
(18, 'Smart', 'Chadza', '0999488422', '2023-05-02 00:00:00', '1234'),
(19, 'Emily', 'Moffat', '0999488405', '2023-05-02 00:00:00', '1234'),
(20, 'Shedra', 'Simbani', '0992396074', '2023-05-02 00:00:00', '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ahpersonel`
--
ALTER TABLE `ahpersonel`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `auctions`
--
ALTER TABLE `auctions`
  ADD PRIMARY KEY (`auction_id`);

--
-- Indexes for table `auction_stock`
--
ALTER TABLE `auction_stock`
  ADD PRIMARY KEY (`auction_stock_id`),
  ADD UNIQUE KEY `reg_number` (`reg_number`,`auction_id`),
  ADD KEY `auction_id` (`auction_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissions_group_id_b120cbf9` (`group_id`),
  ADD KEY `auth_group_permissions_permission_id_84c5c92e` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  ADD KEY `auth_permission_content_type_id_2f476e4b` (`content_type_id`);

--
-- Indexes for table `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_user_id_6a12ed8b` (`user_id`),
  ADD KEY `auth_user_groups_group_id_97559544` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permissions_user_id_a95ead1b` (`user_id`),
  ADD KEY `auth_user_user_permissions_permission_id_1fbb5f2c` (`permission_id`);

--
-- Indexes for table `bales`
--
ALTER TABLE `bales`
  ADD PRIMARY KEY (`bale_id`),
  ADD KEY `reg_number` (`reg_number`);

--
-- Indexes for table `bids`
--
ALTER TABLE `bids`
  ADD PRIMARY KEY (`buyer_id`,`auction_stoc_id`),
  ADD UNIQUE KEY `bid_id` (`bid_id`),
  ADD KEY `auction_stoc_id` (`auction_stoc_id`);

--
-- Indexes for table `buyers`
--
ALTER TABLE `buyers`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `consignments`
--
ALTER TABLE `consignments`
  ADD PRIMARY KEY (`reg_number`),
  ADD KEY `grower_id` (`grower_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `farmers`
--
ALTER TABLE `farmers`
  ADD PRIMARY KEY (`farmer_id`),
  ADD KEY `grower_id` (`grower_id`);

--
-- Indexes for table `grower`
--
ALTER TABLE `grower`
  ADD PRIMARY KEY (`grower_id`);

--
-- Indexes for table `sys_admin`
--
ALTER TABLE `sys_admin`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`uid`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auctions`
--
ALTER TABLE `auctions`
  MODIFY `auction_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auction_stock`
--
ALTER TABLE `auction_stock`
  MODIFY `auction_stock_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bales`
--
ALTER TABLE `bales`
  MODIFY `bale_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bids`
--
ALTER TABLE `bids`
  MODIFY `bid_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `consignments`
--
ALTER TABLE `consignments`
  MODIFY `reg_number` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `grower`
--
ALTER TABLE `grower`
  MODIFY `grower_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
