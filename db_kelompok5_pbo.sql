-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 28, 2023 at 10:42 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_kelompok5_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `aplikasilayananumkm_menu`
--

CREATE TABLE `aplikasilayananumkm_menu` (
  `id` bigint(20) NOT NULL,
  `nama_menu` varchar(255) NOT NULL,
  `deskripsi` longtext NOT NULL,
  `harga` decimal(10,2) NOT NULL,
  `gambar` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `aplikasilayananumkm_menu`
--

INSERT INTO `aplikasilayananumkm_menu` (`id`, `nama_menu`, `deskripsi`, `harga`, `gambar`) VALUES
(12, 'Roti Bakarta Cokelat', 'Roti bakar cokelat adalah varian roti yang dicelupkan atau dilapisi dengan cokelat, memberikan rasa manis dan gurih pada roti. Biasanya, roti bakar cokelat memiliki lapisan cokelat yang meleleh dan memberikan pengalaman rasa yang memuaskan.', '28000.00', 'img/bakartacoklat_1.jpeg'),
(13, 'Roti Bakarta Green Tea', 'Roti bakar greentea adalah roti yang diolah dengan tambahan bubuk teh hijau, memberikan rasa dan aroma khas teh hijau. Roti ini seringkali memiliki warna hijau yang lembut dan memberikan sentuhan unik dari teh hijau, yang bisa memberikan pengalaman rasa yang segar dan sedikit pahit.', '30000.00', 'img/bakartagreentea_1.jpeg'),
(14, 'Roti Bakarta Keju', 'Roti bakar keju adalah varian roti yang biasanya dicampur atau dilapisi dengan keju, menciptakan kombinasi rasa gurih dan creamy. Keju yang meleleh pada roti bakar memberikan tambahan kelezatan dan membuatnya menjadi pilihan yang populer di kalangan pecinta keju.', '26000.00', 'img/bakartakeju_1.jpeg');

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
(25, 'Can add menu', 7, 'add_menu'),
(26, 'Can change menu', 7, 'change_menu'),
(27, 'Can delete menu', 7, 'delete_menu'),
(28, 'Can view menu', 7, 'view_menu');

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

--
-- Dumping data for table `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(1, 'pbkdf2_sha256$600000$X3MCEoyLjmCiJAFlns9Ml3$G36PTwKW0U4DbdXEWp0f2HesZiCCLhimgggJKMlvyQs=', '2023-11-27 10:57:01.990124', 1, 'admin', '', '', 'ikhwanuluzlahtkj@gmail.com', 1, 1, '2023-11-22 23:45:45.047875');

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

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2023-11-24 01:12:05.630038', '1', 'Roti Bakarta Cokelat', 1, '[{\"added\": {}}]', 7, 1),
(2, '2023-11-24 01:13:21.674472', '2', 'Roti Bakarta Green Tea', 1, '[{\"added\": {}}]', 7, 1),
(3, '2023-11-24 01:13:58.080732', '3', 'Roti Bakarta Keju', 1, '[{\"added\": {}}]', 7, 1),
(4, '2023-11-27 10:30:33.446681', '4', 'Roti', 1, '[{\"added\": {}}]', 7, 1),
(5, '2023-11-27 10:33:38.975969', '5', 'Tes', 1, '[{\"added\": {}}]', 7, 1),
(6, '2023-11-27 10:41:18.704557', '6', 'Roti Lagi', 1, '[{\"added\": {}}]', 7, 1),
(7, '2023-11-27 10:45:36.471407', '7', 'Tes', 1, '[{\"added\": {}}]', 7, 1),
(8, '2023-11-27 10:52:55.358613', '8', 'TES', 1, '[{\"added\": {}}]', 7, 1),
(9, '2023-11-27 10:55:25.988304', '9', 'Tampil', 1, '[{\"added\": {}}]', 7, 1),
(10, '2023-11-27 10:57:27.408183', '10', '((((9999', 1, '[{\"added\": {}}]', 7, 1),
(11, '2023-11-27 11:02:33.960789', '11', 'TES', 1, '[{\"added\": {}}]', 7, 1),
(12, '2023-11-28 21:33:18.870690', '3', 'Roti Bakarta Keju', 3, '', 7, 1),
(13, '2023-11-28 21:33:18.916704', '2', 'Roti Bakarta Green Tea', 3, '', 7, 1),
(14, '2023-11-28 21:33:18.920692', '1', 'Roti Bakarta Cokelat', 3, '', 7, 1),
(15, '2023-11-28 21:39:34.226515', '12', 'Roti Bakarta Cokelat', 1, '[{\"added\": {}}]', 7, 1),
(16, '2023-11-28 21:39:55.064749', '13', 'Roti Bakarta Green Tea', 1, '[{\"added\": {}}]', 7, 1),
(17, '2023-11-28 21:40:14.524618', '14', 'Roti Bakarta Keju', 1, '[{\"added\": {}}]', 7, 1);

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
(7, 'AplikasiLayananUMKM', 'menu'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
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
(1, 'contenttypes', '0001_initial', '2023-11-22 23:42:28.654266'),
(2, 'auth', '0001_initial', '2023-11-22 23:42:29.486274'),
(3, 'admin', '0001_initial', '2023-11-22 23:42:29.835273'),
(4, 'admin', '0002_logentry_remove_auto_add', '2023-11-22 23:42:29.861266'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2023-11-22 23:42:29.888276'),
(6, 'contenttypes', '0002_remove_content_type_name', '2023-11-22 23:42:29.990285'),
(7, 'auth', '0002_alter_permission_name_max_length', '2023-11-22 23:42:30.074281'),
(8, 'auth', '0003_alter_user_email_max_length', '2023-11-22 23:42:30.118265'),
(9, 'auth', '0004_alter_user_username_opts', '2023-11-22 23:42:30.150276'),
(10, 'auth', '0005_alter_user_last_login_null', '2023-11-22 23:42:30.263275'),
(11, 'auth', '0006_require_contenttypes_0002', '2023-11-22 23:42:30.309285'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2023-11-22 23:42:30.402278'),
(13, 'auth', '0008_alter_user_username_max_length', '2023-11-22 23:42:30.481285'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2023-11-22 23:42:30.523279'),
(15, 'auth', '0010_alter_group_name_max_length', '2023-11-22 23:42:30.565265'),
(16, 'auth', '0011_update_proxy_permissions', '2023-11-22 23:42:30.596267'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2023-11-22 23:42:30.643265'),
(18, 'sessions', '0001_initial', '2023-11-22 23:42:30.705283'),
(19, 'AplikasiLayananUMKM', '0001_initial', '2023-11-23 22:14:33.101772'),
(20, 'AplikasiLayananUMKM', '0002_menu_gambar', '2023-11-23 22:14:33.138763'),
(21, 'AplikasiLayananUMKM', '0003_alter_menu_gambar', '2023-11-27 10:44:44.951780'),
(22, 'AplikasiLayananUMKM', '0004_alter_menu_gambar', '2023-11-27 10:54:33.947477');

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
('ssv9msk50sgs0248ovm7fi49zsowrkpj', '.eJxVjDEOAiEURO9CbciHhQUs7T0D-cBHVg0ky25lvLuSbKHNFPPezIt53Lfi906rXxI7M8FOv13A-KA6QLpjvTUeW93WJfCh8IN2fm2JnpfD_Tso2Mt3jaQAEEBaMWVLs1FxhMxKg0JnaNIWgjM2R3LgMOYQpEbh5JTlrCN7fwDKrjdz:1r6HzD:PGgwF7mH--621a7MlzFdj8k1TE14rW1EBxhB5dbyEGo', '2023-12-07 22:15:51.495629'),
('wh99bpn5fdqv8ng6fia3j9kps9taunr6', '.eJxVjDEOAiEURO9CbciHhQUs7T0D-cBHVg0ky25lvLuSbKHNFPPezIt53Lfi906rXxI7M8FOv13A-KA6QLpjvTUeW93WJfCh8IN2fm2JnpfD_Tso2Mt3jaQAEEBaMWVLs1FxhMxKg0JnaNIWgjM2R3LgMOYQpEbh5JTlrCN7fwDKrjdz:1r7ZIU:LVEdLr_3kCxabNhI0u2s9Kzmq0gnDTOOsHtK3LwkIEQ', '2023-12-11 10:57:02.027128');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aplikasilayananumkm_menu`
--
ALTER TABLE `aplikasilayananumkm_menu`
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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aplikasilayananumkm_menu`
--
ALTER TABLE `aplikasilayananumkm_menu`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

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
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

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
