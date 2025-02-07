-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 23, 2024 at 08:40 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `financialdatabase`
--

-- --------------------------------------------------------

--
-- Table structure for table `admindb`
--

CREATE TABLE `admindb` (
  `id` int(11) NOT NULL,
  `adminid` varchar(100) NOT NULL,
  `adminpassword` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admindb`
--

INSERT INTO `admindb` (`id`, `adminid`, `adminpassword`) VALUES
(1, 'admin@financialproject.com', 'admin@108');

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

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
(25, 'Can add member', 7, 'add_member'),
(26, 'Can change member', 7, 'change_member'),
(27, 'Can delete member', 7, 'delete_member'),
(28, 'Can view member', 7, 'view_member'),
(29, 'Can add edit member', 8, 'add_editmember'),
(30, 'Can change edit member', 8, 'change_editmember'),
(31, 'Can delete edit member', 8, 'delete_editmember'),
(32, 'Can view edit member', 8, 'view_editmember'),
(33, 'Can add transactions', 9, 'add_transactions'),
(34, 'Can change transactions', 9, 'change_transactions'),
(35, 'Can delete transactions', 9, 'delete_transactions'),
(36, 'Can view transactions', 9, 'view_transactions'),
(37, 'Can add payments', 10, 'add_payments'),
(38, 'Can change payments', 10, 'change_payments'),
(39, 'Can delete payments', 10, 'delete_payments'),
(40, 'Can view payments', 10, 'view_payments'),
(41, 'Can add admin user', 11, 'add_adminuser'),
(42, 'Can change admin user', 11, 'change_adminuser'),
(43, 'Can delete admin user', 11, 'delete_adminuser'),
(44, 'Can view admin user', 11, 'view_adminuser');

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(11, 'demo', 'adminuser'),
(8, 'demo', 'editmember'),
(7, 'demo', 'member'),
(10, 'demo', 'payments'),
(9, 'demo', 'transactions'),
(6, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2023-11-28 09:56:48.917417'),
(2, 'auth', '0001_initial', '2023-11-28 09:56:49.797348'),
(3, 'admin', '0001_initial', '2023-11-28 09:56:49.990570'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-28 09:56:49.998570'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-28 09:56:50.007785'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-28 09:56:50.118961'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-28 09:56:50.189003'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-28 09:56:50.213905'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-28 09:56:50.222987'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-28 09:56:50.293273'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-28 09:56:50.297230'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-28 09:56:50.305232'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-28 09:56:50.335266'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-28 09:56:50.360520'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-28 09:56:50.394318'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-28 09:56:50.407688'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-28 09:56:50.438804'),
(18, 'demo', '0001_initial', '2023-11-28 10:02:19.770906'),
(19, 'sessions', '0001_initial', '2023-11-28 10:02:19.822688'),
(20, 'demo', '0002_alter_member_city', '2023-11-28 10:56:17.982924');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0mk9b4mxr4bb95klafepa0ggh72nfzf6', 'e30:1rE6at:PXYFtMUU0qKFOHOhBlP-XLkNNRyNz9Gte0VTicgucio', '2023-12-29 11:43:03.279319'),
('1lnrookcm5geujpftp61m98yx9yyjczc', 'e30:1rFphz:4FnGcM1Sc8ebNRoTJhh_AZGzKOpSCfcC5q4WYku8nD0', '2024-01-03 06:05:31.450124'),
('99v5qicbfcp0i23lav0e3qwdghilbjn0', 'e30:1rE72g:YrPMjNKUqD1TDi-AP0whFxhTdRiAFRVfr9AlhF_l6sg', '2023-12-29 12:11:46.309325'),
('ha981j4wb60w0lxc9hpvfw3iy9wmhrtl', 'e30:1rFpYp:25Yfxl7Q_cbr23tme2WqYsrgyDZqkUA-lajLT_WUHAM', '2024-01-03 05:56:03.340570'),
('hlk55k2u9dwcdlrlfb1ifuuggp12zazj', 'e30:1rE74D:jPZHbku7Yi1ztyKY_grqxSDkqlh36JoQHdZzIuU8Wds', '2023-12-29 12:13:21.214347'),
('hlrui2lmxhj8agzc0andm2nvxz60ou9e', 'eyJhZG1pbmlkIjoiYWRtaW5AZmluYW5jaWFscHJvamVjdC5jb20iLCJhZG1pbmxvZ2dlZF9pbiI6dHJ1ZX0:1rLeDn:XZpGbnO_glke2CcaA5npMqH4kGHC76A2eyEBmt3Jelw', '2024-01-19 07:02:23.080310'),
('i8pdjme6hsy5zlfte4o6xjmvqxvk4dlv', 'e30:1r7wUG:jpUm7ZmLGmnecHgl3hoibMdVYtzHC5OTMExuIpLyrjI', '2023-12-12 11:42:44.187842'),
('oqkxo2k01yawz60u33003qx72l42va89', 'e30:1rE6GJ:yJ6MCOrmI3heuBGOHUNUAjk7F2t0QABoI2PmsrK9PmM', '2023-12-29 11:21:47.574654'),
('qdjej60hvtavgqyqzja2pygg6dc55o99', 'e30:1rFpTD:dfDVfq80qMCFBXlqxrSuF3dAuqVSdV32DlTXzAUfJgI', '2024-01-03 05:50:15.836102'),
('rqoci65jiv1acvz1z6qolfn4ji0a9ob8', 'e30:1rFpU2:rFqpYyfl_PnUOpybuZpXUnKA80tI1UWHMG9IgwLlWSA', '2024-01-03 05:51:06.373185'),
('thwznmi3qlhvb5624g99l7kly4anuq60', 'e30:1rFpb7:C0ySyeBiQ0Xo3JK0w40FemHLbDcdeoCSPx3EZNfh07Y', '2024-01-03 05:58:25.340580');

-- --------------------------------------------------------

--
-- Table structure for table `membersprofile`
--

CREATE TABLE `membersprofile` (
  `id` bigint(20) NOT NULL,
  `memberid` varchar(100) NOT NULL,
  `membername` varchar(100) NOT NULL,
  `address` longtext NOT NULL,
  `photo` varchar(100) NOT NULL,
  `description` longtext NOT NULL,
  `contactnumber` varchar(51) NOT NULL,
  `contactnumber2` varchar(51) NOT NULL,
  `city` varchar(100) NOT NULL,
  `joiningdate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `membersprofile`
--

INSERT INTO `membersprofile` (`id`, `memberid`, `membername`, `address`, `photo`, `description`, `contactnumber`, `contactnumber2`, `city`, `joiningdate`) VALUES
(28, 'FINHWASI', 'Gunavarthini', '78, Gandhiji Road', '', 'Working in IT Company', '123123123', '123123123123', 'Chennai', '2023-11-01'),
(33, 'FINCHJUE', 'Dishalini', '721,Mandapam-Pamban Road', 'lionsclub_XhQXHma.png', 'Working in IT Company.', '80131231233', '7423423423', 'Chennai', '2023-11-09'),
(35, 'FINN27PZ', 'Koodalarasan', '95,Kamarajar Nagar', 'lionsclub_C11K6is.png', 'Working in IT Company with Saiful Islam and Muthu kumar.', '7598450865', '9442757427', 'Chennai', '2023-11-06'),
(38, 'FIN3NF0T', 'Drisya', '101,Bus_Stand Opposite', '', 'Working in IT Company', '9765431012', '807654321', 'Chennai', '2023-11-04'),
(39, 'FINGL6UJ', 'Bharathy', '87, Kovil Street Opposite', 'hobbies_LqKoN5X.png', 'Working as HR in IT Company.', '7890654321', '8097654321', 'Chennai', '2023-11-01'),
(40, 'FIN7VV2X', 'Subha Nandhini', '105, ECR Rameswaram-Ramnad Road', '', 'Working as Team Leader in IT Company', '7890654321', '9087654123', 'Chennai', '2023-11-04'),
(53, 'FINC9DDM', 'Saiful Islam', '91, Best Bakery Opposite', 'vendor_9XUXaqu.png', 'Working in IT Company', '9087654321', '7890654321', 'Chennai', '2023-12-15'),
(59, 'FINO9BRW', 'Kumaresan', '07,Sardar Patel Street', 'rmm.png', 'Unknown Person', '98765432', '7890654321', 'Chennai', '2023-11-27'),
(62, 'FINFKLV0', 'Robert Active', 'fdsfdsf', 'K.jpg', 'dfdf', '4324', '43343', 'Rameswaram', '2023-12-08');

-- --------------------------------------------------------

--
-- Table structure for table `paymentstable`
--

CREATE TABLE `paymentstable` (
  `id` int(11) NOT NULL,
  `memberidwithname` varchar(100) NOT NULL,
  `paymentid` varchar(108) NOT NULL,
  `amount` int(100) NOT NULL,
  `basisamounttopay` int(100) NOT NULL,
  `balanceamounttopay` int(100) NOT NULL,
  `basisamounttopayable` int(100) NOT NULL,
  `currentperiod` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `transactiondate` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `paymentstable`
--

INSERT INTO `paymentstable` (`id`, `memberidwithname`, `paymentid`, `amount`, `basisamounttopay`, `balanceamounttopay`, `basisamounttopayable`, `currentperiod`, `description`, `transactiondate`) VALUES
(26, 'FINC9DDM-Saiful Islam', 'PAYXSY8A', 100000, 10000, 100000, 10000, 1, 'Saiful Islam initiaited Transactions', '2023-12-1'),
(27, 'FINC9DDM-Saiful Islam', 'PAY2OJC2', 100000, 10000, 90000, 10000, 2, 'Saiful Islam payed first installment', '2023-12-2'),
(28, 'FINC9DDM-Saiful Islam', 'PAYSOC95', 100000, 10000, 80000, 10000, 3, 'Saiful Islam payed Second Installment', '2023-12-3'),
(29, 'FINC9DDM-Saiful Islam', 'PAYN03OH', 100000, 10000, 70000, 10000, 4, 'Saiful Islam paid 3nd Installment', '2023-12-4'),
(30, 'FINC9DDM-Saiful Islam', 'PAY6TE2K', 100000, 10000, 60000, 10000, 5, 'Saiful Islam paid fourth Installment', '2023-12-5'),
(31, 'FINC9DDM-Saiful Islam', 'PAY6ZCE0', 100000, 10000, 50000, 10000, 6, 'Saiful Islam paid Fifth Installment', '2023-12-6'),
(32, 'FINC9DDM-Saiful Islam', 'PAYK8QSU', 100000, 10000, 40000, 10000, 7, 'Saiful Islam paid 6th Installment', '2023-12-7'),
(33, 'FINC9DDM-Saiful Islam', 'PAY1S19A', 100000, 10000, 30000, 10000, 8, 'Saiful Islam paid seventh Installment', '2023-12-8'),
(34, 'FINC9DDM-Saiful Islam', 'PAYQMSQH', 100000, 10000, 20000, 10000, 9, 'Saiful Islam paid Eighth Installment', '2023-12-9'),
(35, 'FINC9DDM-Saiful Islam', 'PAYZOA4Q', 100000, 10000, 10000, 10000, 10, 'Saiful Islam paying Ninth Installment', '2023-12-10'),
(36, 'FINC9DDM-Saiful Islam', 'PAYMKK1R', 100000, 10000, 0, 10000, 11, 'Saiful Islam paid Last Installment', '2023-12-11'),
(61, 'FIN3NF0T-Drisya', 'PAYHSOB1', 10000, 100, 10000, 100, 1, 'Driysa started Transaction ', '2023-12-05'),
(62, 'FIN3NF0T-Drisya', 'PAY28U65', 10000, 100, 9900, 100, 2, 'Drisya paid First Installment', '2023-12-07'),
(63, 'FIN3NF0T-Drisya', 'PAY63GWS', 10000, 100, 9800, 100, 3, 'Drisya Paid Rs.100 for Second Installment', '2023-12-08'),
(73, 'FINN27PZ-Koodalarasan', 'PAYTJHTB', 100000, 1000, 100000, 1000, 1, 'Koodalarasan Started Transactions', '2023-12-09'),
(74, 'FINN27PZ-Koodalarasan', 'PAY8UY97', 100000, 1000, 99000, 1000, 2, 'First Installment', '2023-12-10'),
(75, 'FINN27PZ-Koodalarasan', 'PAYHFQ8G', 100000, 1000, 98000, 1000, 3, 'Second Installment', '2023-12-11'),
(76, 'FINN27PZ-Koodalarasan', 'PAY1ZWOH', 100000, 1000, 97500, 500, 4, 'Third Transaction payed with Rs. 500', '2023-12-12'),
(79, 'FINN27PZ-Koodalarasan', 'PAYN2QQT', 100000, 1000, 96000, 1500, 5, 'Fourth Payment paying Rs.1500', '2023-12-13'),
(80, 'FINN27PZ-Koodalarasan', 'PAYAMBJW', 100000, 1000, 95000, 1000, 6, 'Fifth payment', '2023-12-14');

-- --------------------------------------------------------

--
-- Table structure for table `transactionstable`
--

CREATE TABLE `transactionstable` (
  `id` int(11) NOT NULL,
  `memberidwithname` varchar(100) NOT NULL,
  `paymentid` varchar(52) NOT NULL,
  `amount` int(100) NOT NULL,
  `noofperiods` int(11) NOT NULL,
  `paymentdurationtype` varchar(43) NOT NULL,
  `basisamounttopay` int(100) NOT NULL,
  `balanceamounttopay` int(100) NOT NULL,
  `basisamounttopayable` int(100) NOT NULL,
  `currentperiod` int(11) NOT NULL,
  `description` longtext NOT NULL,
  `transactiondate` varchar(110) NOT NULL,
  `status` varchar(52) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactionstable`
--

INSERT INTO `transactionstable` (`id`, `memberidwithname`, `paymentid`, `amount`, `noofperiods`, `paymentdurationtype`, `basisamounttopay`, `balanceamounttopay`, `basisamounttopayable`, `currentperiod`, `description`, `transactiondate`, `status`) VALUES
(28, 'FINC9DDM-Saiful Islam', 'PAYXSY8A', 100000, 10, 'Days', 10000, 0, 10000, 11, 'Saiful Islam initiaised Transactions', '2023-12-1', 'Payments Completed'),
(35, 'FIN3NF0T-Drisya', 'PAYHSOB1', 10000, 100, 'Days', 100, 9800, 100, 3, 'Driysa started Transaction ', '2023-12-05', 'Payment Ongoing'),
(42, 'FINN27PZ-Koodalarasan', 'PAYTJHTB', 100000, 100, 'Days', 1000, 95000, 1000, 6, 'Koodalarasan Started Transactions', '2023-12-09', 'Payment Ongoing');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admindb`
--
ALTER TABLE `admindb`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

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
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`);

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
-- Indexes for table `membersprofile`
--
ALTER TABLE `membersprofile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymentstable`
--
ALTER TABLE `paymentstable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionstable`
--
ALTER TABLE `transactionstable`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admindb`
--
ALTER TABLE `admindb`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `membersprofile`
--
ALTER TABLE `membersprofile`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `paymentstable`
--
ALTER TABLE `paymentstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `transactionstable`
--
ALTER TABLE `transactionstable`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
