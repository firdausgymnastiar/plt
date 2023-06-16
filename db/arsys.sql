/*
 Navicat Premium Data Transfer

 Source Server         : ArSysLocal
 Source Server Type    : MariaDB
 Source Server Version : 100904
 Source Host           : localhost:3306
 Source Schema         : symposa

 Target Server Type    : MariaDB
 Target Server Version : 100904
 File Encoding         : 65001

 Date: 16/02/2023 10:23:32
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for arsys_department
-- ----------------------------
DROP TABLE IF EXISTS `arsys_department`;
CREATE TABLE `arsys_department` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `faculty_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_department
-- ----------------------------
BEGIN;
INSERT INTO `arsys_department` VALUES (1, NULL, 'DPTE', 'Departemen Pendidikan Teknik Elektro', NULL, 1, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_faculty
-- ----------------------------
DROP TABLE IF EXISTS `arsys_faculty`;
CREATE TABLE `arsys_faculty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_faculty
-- ----------------------------
BEGIN;
INSERT INTO `arsys_faculty` VALUES (1, NULL, 'FPTK', 'Fakultas Pendidikan Teknologi dan Kejuruan', NULL, '2022-12-06 12:42:25', '2022-12-06 12:42:27');
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff`;
CREATE TABLE `arsys_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `sso` varchar(20) DEFAULT NULL,
  `code` char(3) DEFAULT NULL,
  `univ_code` char(4) DEFAULT NULL,
  `employee_id` char(20) DEFAULT NULL,
  `old_employee_id` char(20) DEFAULT NULL,
  `front_title` varchar(15) DEFAULT NULL,
  `rear_title` varchar(20) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `status_id` int(1) DEFAULT NULL,
  `position_id` int(11) DEFAULT NULL,
  `structure_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `phone` varchar(12) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff
-- ----------------------------
BEGIN;
INSERT INTO `arsys_staff` VALUES (1, 247, '132084280', 'BMY', '1846', '196301091994022001', NULL, 'Prof. Dr. Hj.', 'M.Si', 'Budi', 1, 1, NULL, NULL, 'Mulyanti', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:13:56');
INSERT INTO `arsys_staff` VALUES (2, 112, '132231598', 'AGF', '2055', '197211131999031001', NULL, 'Prof. Dr.', 'S.Pd. M.Si', 'Ade Gafar', 1, 1, NULL, NULL, 'Abdullah', 1, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:02');
INSERT INTO `arsys_staff` VALUES (3, 1, '197608272009121001', 'DDW', '2934', '197608272009121001', NULL, NULL, 'Ph.D', 'Didin', 1, 4, NULL, NULL, 'Wahyudin', 1, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:06');
INSERT INTO `arsys_staff` VALUES (4, 146, '132306520', 'INK', '2338', '197709082003121002', NULL, NULL, 'Ph.D', 'Iwan', 1, 2, NULL, NULL, 'Kustiawan', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:13');
INSERT INTO `arsys_staff` VALUES (5, 8, '198006232008121002', 'DNK', '2654', '198006232008121002', NULL, NULL, 'Ph.D', 'Dandhi', 3, 3, NULL, NULL, 'Kuswardhana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:16');
INSERT INTO `arsys_staff` VALUES (6, 113, '131614193', 'DLH', '2409', '196106041986031001', NULL, 'Dr. H.', 'MT.', 'Dadang Lukman', 1, 3, NULL, NULL, 'Hakim', 2, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:21');
INSERT INTO `arsys_staff` VALUES (7, 245, '130935683', 'SMT', '0541', '195507051981031005', NULL, 'Prof. Dr.', 'MSIE.', 'Sumarto', 1, 1, NULL, NULL, '', NULL, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:23');
INSERT INTO `arsys_staff` VALUES (8, 6, '195512041981031002', 'BCH', '0539', '195512042981031002', NULL, 'Prof. Dr. H.', 'MSIE.', 'Bachtiar', 3, 1, NULL, NULL, 'Hasan', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:26');
INSERT INTO `arsys_staff` VALUES (9, 210, '131975871', 'ELM', '1751', '196404171992021001', NULL, 'Dr.', 'M.Si.', 'Elih', 1, 2, NULL, NULL, 'Mulyana', 2, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:30');
INSERT INTO `arsys_staff` VALUES (10, 138, '131473889', 'YYS', '0766', '195708051985031003', NULL, 'Drs.', 'ST., M.Pd.', 'Yoyo', 2, 2, NULL, NULL, 'Somantri', 1, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:14:38');
INSERT INTO `arsys_staff` VALUES (11, 9, '132296778', 'MMS', '2203', '197201192001121001', NULL, 'Dr.', 'S.Pd. MT.', 'Maman', 1, 3, NULL, NULL, 'Somantri', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:00');
INSERT INTO `arsys_staff` VALUES (12, 203, '132299062', 'SSE', '2202', '197311222001122002', NULL, 'Dr.', 'S.Pd. MT.', 'Siscka', 1, 3, NULL, NULL, 'Elvyanti', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:04');
INSERT INTO `arsys_staff` VALUES (13, 7, '132137918', 'ARJ', '2108', '196406071995122001', NULL, 'Ir.', 'MT.', 'Arjuni Budi', 1, 3, NULL, NULL, 'Pantjawati', 3, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:12');
INSERT INTO `arsys_staff` VALUES (14, 193, '132296306', 'ERH', '2407', '197605272001121002', NULL, 'Dr.', 'S.Pd. MT.', 'Erik', 1, 3, NULL, NULL, 'Haritman', 1, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:14');
INSERT INTO `arsys_staff` VALUES (15, 185, '197208262005011001', 'AHS', '2410', '197208262005011001', NULL, NULL, 'MT.', 'Agus Heri Setya', 1, 3, NULL, NULL, 'Budi', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:17');
INSERT INTO `arsys_staff` VALUES (16, 184, '132297303', 'HSB', '2408', '197407162001121003', NULL, 'Dr.', 'MT.', 'Hasbullah', 1, 2, NULL, NULL, '', NULL, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:19');
INSERT INTO `arsys_staff` VALUES (17, 162, '132046213', 'YDM', '1766', '196307271993021001', NULL, 'Dr. H.', 'MT.', 'Yadi', 1, 2, NULL, NULL, 'Mulyadi', 2, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:21');
INSERT INTO `arsys_staff` VALUES (18, 140, '131930255', 'TSM', '1748', '196410071991011001', NULL, 'Dr.', 'MT.', 'Tasma ', 1, 2, NULL, NULL, 'Sucita', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:22');
INSERT INTO `arsys_staff` VALUES (19, 144, '130809446', 'MKH', '0535', '195311101980021001', NULL, 'Prof. Dr. H.', 'M.Pd.', 'Mukhidin', 1, 1, NULL, NULL, '', NULL, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:24');
INSERT INTO `arsys_staff` VALUES (20, 214, '131634849', 'TSR', '1038', '196311211986032002', NULL, 'Dr.', 'M.Pd', 'Tuti', 1, 2, NULL, NULL, 'Suartini', 3, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:27');
INSERT INTO `arsys_staff` VALUES (21, 259, '131627871', 'IWR', '1036', '195802141986031002', NULL, 'Dr.', 'ST. M.Pd.', 'I Wayan', 1, 2, NULL, NULL, 'Ratnata', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:29');
INSERT INTO `arsys_staff` VALUES (22, 81, '132163105', 'WAS', '2107', '197008081997021001', NULL, NULL, 'MT.', 'Wasimudin Surya', 1, 3, NULL, NULL, 'Saputra', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:34');
INSERT INTO `arsys_staff` VALUES (23, 141, '198204282009121006', 'TMH', '2745', '198204282009121006', NULL, '', 'MT.', 'Tommi', 1, 3, NULL, NULL, 'Hariyadi', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:38');
INSERT INTO `arsys_staff` VALUES (24, 150, '131647624', 'BTM', '1235', '196103091986101001', NULL, 'Dr. H.', 'MSIE.', 'Bambang ', 1, 2, NULL, NULL, 'Trisno', 2, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:40');
INSERT INTO `arsys_staff` VALUES (25, 166, '131471355', 'JKR', '0767', '195912311985031022', NULL, 'Dr.', 'M.Sc.', 'Jaja', 1, 1, NULL, NULL, 'Kustija', 1, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:42');
INSERT INTO `arsys_staff` VALUES (26, 2, '132314538', 'AIP', '2355', '197004162005011016', NULL, 'Dr.', 'MT.', 'Aip', 1, 3, NULL, NULL, 'Saripudin', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:45');
INSERT INTO `arsys_staff` VALUES (27, 137, '130896534', 'EAJ', '0755', '195508261981011001', NULL, 'Prof. Dr.', 'M.Pd. MT.', 'Enjang A.', 1, 1, NULL, NULL, 'Juanda', 3, 2, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:47');
INSERT INTO `arsys_staff` VALUES (28, 224, '132086621', 'WWP', '1848', '196710261994031001', NULL, 'Drs.', 'S.Pd. M.Si.', 'Wawan', 1, 3, NULL, NULL, 'Purnama', 3, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:15:52');
INSERT INTO `arsys_staff` VALUES (29, NULL, NULL, 'SLH', NULL, NULL, NULL, NULL, 'MT.', 'Sri Lestari', 1, NULL, NULL, NULL, 'Harja', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:16');
INSERT INTO `arsys_staff` VALUES (30, NULL, NULL, 'TTG', '0746', NULL, NULL, 'Drs.', 'M.Pd.', 'Tjetje', 2, NULL, NULL, NULL, 'Gunawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:18');
INSERT INTO `arsys_staff` VALUES (31, NULL, NULL, 'ADN', NULL, NULL, NULL, NULL, 'S.Pd.', '', 1, NULL, NULL, NULL, 'Nurhidayatulloh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:34');
INSERT INTO `arsys_staff` VALUES (32, NULL, NULL, 'HRW', NULL, '197903022005011003', NULL, NULL, 'ST.', NULL, 1, NULL, NULL, NULL, 'Hermawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:40');
INSERT INTO `arsys_staff` VALUES (33, NULL, NULL, 'IMF', NULL, '199101182015041001', NULL, NULL, 'S.Pd.', 'Iman', 1, NULL, NULL, NULL, 'Fushilat', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:41');
INSERT INTO `arsys_staff` VALUES (34, NULL, NULL, 'ARR', NULL, '198214072005011002', NULL, NULL, 'ST.', 'Asep Ahmad Ruri', 1, NULL, NULL, NULL, 'Irwanto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:42');
INSERT INTO `arsys_staff` VALUES (35, NULL, NULL, 'AMH', '2412', '197807162006042004', NULL, 'Dr.', 'M.Si.', 'Ai', 1, NULL, NULL, NULL, 'Mahmudatussa’adah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:46');
INSERT INTO `arsys_staff` VALUES (36, NULL, NULL, 'MSR', '2094', NULL, NULL, 'Prof. Dr.', NULL, 'Masriam', 1, NULL, NULL, NULL, 'Bukit', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:08:47');
INSERT INTO `arsys_staff` VALUES (37, NULL, NULL, 'NRL', '-', '-', NULL, NULL, 'S.Si., M.Si', 'Nurlaila', 1, NULL, NULL, NULL, 'Ramdhani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:01');
INSERT INTO `arsys_staff` VALUES (38, NULL, NULL, 'AJI', '-', '-', NULL, NULL, 'ST', 'Aji', NULL, NULL, NULL, NULL, 'Setiaji', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2021-03-22 09:34:26');
INSERT INTO `arsys_staff` VALUES (39, NULL, NULL, 'HLD', NULL, NULL, NULL, NULL, 'S.Pd., M.Pd.', 'Hilda', NULL, NULL, NULL, NULL, 'Khusnul Kharimah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2021-03-22 09:34:26');
INSERT INTO `arsys_staff` VALUES (40, NULL, NULL, 'EXT', NULL, NULL, NULL, NULL, NULL, 'External', NULL, NULL, NULL, NULL, 'Supervisor', NULL, NULL, NULL, NULL, '2021-03-22 09:34:26', '2021-03-22 09:34:26');
INSERT INTO `arsys_staff` VALUES (41, 246, '920200419881019101', 'REP', '3186', '920200419881019101', NULL, '', 'S.Pd., M.Sc., Ph.D.', 'Roer', 1, NULL, NULL, NULL, 'Eka Pawinanto', 3, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:08');
INSERT INTO `arsys_staff` VALUES (42, 244, '920200419921028101', 'MAR', '3178', '920200419921028101', NULL, NULL, 'S.Pd., MT.', 'Muhammad ', 1, NULL, NULL, NULL, 'Adli Rizqullah', 1, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:09');
INSERT INTO `arsys_staff` VALUES (43, 269, '920200419910418101', 'RPR', '3172', '920200419910418101', NULL, NULL, 'S.Pd., MT.', 'Resa', 1, NULL, NULL, NULL, 'Pramudita', 1, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:10');
INSERT INTO `arsys_staff` VALUES (44, 11, '920200419930905101', 'NFA', '3179', '920200419930905101', NULL, NULL, 'S.Pd., MT.', 'Nurul', 1, NULL, NULL, NULL, 'Fahmi', 3, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:11');
INSERT INTO `arsys_staff` VALUES (45, 142, '920200419960203201', 'STA', '3183', '920200419960203201', NULL, NULL, 'ST., MT., ', 'Silmi', 1, NULL, NULL, NULL, 'Ath Thahirah Al Azhi', 2, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:12');
INSERT INTO `arsys_staff` VALUES (46, 270, '920200419890407201', 'MAQ', '3204', '920200419890407201', NULL, NULL, 'S.Si., MT.', 'Mariya', 1, NULL, NULL, NULL, 'Al Qibtiya', 2, 3, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:14');
INSERT INTO `arsys_staff` VALUES (47, NULL, NULL, 'NPA', NULL, NULL, NULL, NULL, 'S.Pd., MT.', 'Neris', 1, NULL, NULL, NULL, 'Peri Ardiansyah', NULL, 1, NULL, NULL, '2021-03-22 09:34:26', '2022-12-10 09:09:15');
INSERT INTO `arsys_staff` VALUES (48, 9318, '132320795', 'SRP', '2683', '197503182006041001', NULL, 'Dr.', 'S.Pd., MT.', 'Saripudin', 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, '2022-08-06 09:24:28', '2022-12-10 09:09:44');
INSERT INTO `arsys_staff` VALUES (52, NULL, NULL, 'DWD', '9000', NULL, NULL, 'Prof.', 'MT., Ph.D.', 'Didin', NULL, 1, 8, NULL, 'Wahyudin', 1, 1, '089636978110', 'deewahyu@upi.edu', '2022-12-14 10:17:32', '2022-12-14 10:17:32');
INSERT INTO `arsys_staff` VALUES (53, NULL, NULL, 'DWD', '9000', '197608272009121004', NULL, 'Prof.', 'MT., Ph.D.', 'Didin', NULL, 1, 8, NULL, 'Wahyudin', 1, 1, '089636978110', 'deewahyu@upi.edu', '2022-12-14 10:19:28', '2022-12-14 10:19:28');
INSERT INTO `arsys_staff` VALUES (54, NULL, NULL, 'DWD', '9000', '197608272009121009', NULL, 'Prof.', 'MT., Ph.D.', 'Didin', NULL, 1, 8, NULL, 'Wahyudin', 1, 1, '089636978110', 'deewahyu@upi.edu', '2022-12-14 10:21:54', '2022-12-14 10:21:54');
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff_position
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff_position`;
CREATE TABLE `arsys_staff_position` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff_position
-- ----------------------------
BEGIN;
INSERT INTO `arsys_staff_position` VALUES (1, 'GB', 'GB', 'Guru Besar', 'Professor', '2022-12-10 08:52:24', '2022-12-10 08:52:27');
INSERT INTO `arsys_staff_position` VALUES (2, 'LK', 'LK', 'Lektor Kepala', 'Associate Professor ', '2022-12-10 08:52:29', '2022-12-10 08:52:31');
INSERT INTO `arsys_staff_position` VALUES (3, 'LE', 'L', 'Lektor', 'Assistant Professor', '2022-12-10 08:52:34', '2022-12-10 08:52:36');
INSERT INTO `arsys_staff_position` VALUES (4, 'AA', 'AA', 'Asisten Ahli', 'Instructure', '2022-12-10 08:52:39', '2022-12-10 08:52:41');
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff_role
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff_role`;
CREATE TABLE `arsys_staff_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff_role
-- ----------------------------
BEGIN;
INSERT INTO `arsys_staff_role` VALUES (1, 'PRE', 'PRE', 'Rektor', 'President', '2022-12-14 10:09:48', '2022-12-14 10:09:50');
INSERT INTO `arsys_staff_role` VALUES (2, 'DEA', 'DEA', 'Dekan', 'Dean', '2022-12-14 10:09:55', '2022-12-14 10:09:57');
INSERT INTO `arsys_staff_role` VALUES (3, 'VD1', 'VD1', 'Wakil Dekan Bidang Akademik', 'Vice dean of Academic Affar', '2022-12-14 10:10:44', '2022-12-14 10:10:46');
INSERT INTO `arsys_staff_role` VALUES (4, 'VD2', 'VD2', 'Wakil Dekan Bidang Sumber Daya dan Keuangan', 'Vice Dean of Resource and Finacial Affair', '2022-12-14 10:12:56', '2022-12-14 10:12:57');
INSERT INTO `arsys_staff_role` VALUES (5, 'VD3', 'VD3', 'Wakil Dekan Bidang Kemahasiswaan ', 'Vice Dean of Student Affarir', '2022-12-14 10:13:40', '2022-12-14 10:13:42');
INSERT INTO `arsys_staff_role` VALUES (6, 'DEP', 'DEP', 'Ketua Departemen', 'Head of Departmen', '2022-12-14 10:15:28', '2022-12-14 10:15:30');
INSERT INTO `arsys_staff_role` VALUES (7, 'SDE', 'SDE', 'Sekretaris Departemen', 'Secretary of Department', '2022-12-14 10:15:58', '2022-12-14 10:16:00');
INSERT INTO `arsys_staff_role` VALUES (8, 'PRO', 'PRO', 'Ketua Program Study', 'Head of Study Program', '2022-12-14 10:16:30', '2022-12-14 10:16:32');
INSERT INTO `arsys_staff_role` VALUES (9, 'SPR', 'SPR', 'Sekretaris Program Study', 'Secretary of Study Program', '2022-12-14 10:17:16', '2022-12-14 10:17:17');
INSERT INTO `arsys_staff_role` VALUES (10, 'SPC', 'SPC', 'Ketua Kelompok Keilmuan', 'Coordinator of Specialization ', '2022-12-14 10:18:06', '2022-12-14 10:18:08');
INSERT INTO `arsys_staff_role` VALUES (11, 'LAB', 'LAB', 'Ketua Lab', 'Coordinator of Laboratory', '2022-12-14 10:19:18', '2022-12-14 10:19:20');
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff_role_pivot
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff_role_pivot`;
CREATE TABLE `arsys_staff_role_pivot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(5) DEFAULT NULL,
  `staff_role_id` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff_role_pivot
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff_status
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff_status`;
CREATE TABLE `arsys_staff_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff_status
-- ----------------------------
BEGIN;
INSERT INTO `arsys_staff_status` VALUES (1, 'ACT', 'Aktif', 'Active', '2022-12-10 09:06:14', '2022-12-10 09:06:15');
INSERT INTO `arsys_staff_status` VALUES (2, 'RET', 'Purnabakti', 'Retired', '2022-12-10 09:06:30', '2022-12-10 09:06:32');
INSERT INTO `arsys_staff_status` VALUES (3, 'DEC', 'Almarhum', 'Deceased', '2022-12-10 09:07:03', '2022-12-10 09:07:05');
COMMIT;

-- ----------------------------
-- Table structure for arsys_staff_structure
-- ----------------------------
DROP TABLE IF EXISTS `arsys_staff_structure`;
CREATE TABLE `arsys_staff_structure` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `position_id` int(11) DEFAULT NULL,
  `structure` varchar(20) DEFAULT NULL,
  `classification` varchar(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_staff_structure
-- ----------------------------
BEGIN;
INSERT INTO `arsys_staff_structure` VALUES (1, 4, 'Penata Muda', 'III/A', '2022-12-10 08:55:15', '2022-12-10 08:55:17');
INSERT INTO `arsys_staff_structure` VALUES (2, 4, 'Penata Muda Tk. I', 'III/B', '2022-12-10 08:55:35', '2022-12-10 08:55:37');
INSERT INTO `arsys_staff_structure` VALUES (3, 3, 'Penata', 'III/C', '2022-12-10 08:55:51', '2022-12-10 08:55:53');
INSERT INTO `arsys_staff_structure` VALUES (4, 3, 'Penata Tk.I', 'III/D', '2022-12-10 08:56:07', '2022-12-10 08:56:09');
INSERT INTO `arsys_staff_structure` VALUES (5, 2, 'Pembina', 'IV/A', '2022-12-10 08:56:23', '2022-12-10 08:56:25');
INSERT INTO `arsys_staff_structure` VALUES (6, 2, 'Pembina Tk. I', 'IV/B', '2022-12-10 08:56:49', '2022-12-10 08:56:51');
INSERT INTO `arsys_staff_structure` VALUES (7, 2, 'Pembina Utama Muda', 'IV/C', '2022-12-10 08:57:04', '2022-12-10 08:57:06');
INSERT INTO `arsys_staff_structure` VALUES (8, 1, 'Pembina Utama Madya', 'IV/D', '2022-12-10 08:57:20', '2022-12-10 08:57:22');
INSERT INTO `arsys_staff_structure` VALUES (9, 1, 'Pembina Utama', 'IV/E', '2022-12-10 08:57:56', '2022-12-10 08:57:58');
COMMIT;

-- ----------------------------
-- Table structure for arsys_student
-- ----------------------------
DROP TABLE IF EXISTS `arsys_student`;
CREATE TABLE `arsys_student` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `program_id` int(11) DEFAULT NULL,
  `specialization_id` int(11) DEFAULT NULL,
  `supervisor_id` int(11) DEFAULT NULL,
  `student_id` char(11) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `gpa` char(4) DEFAULT NULL,
  `status` char(15) DEFAULT NULL,
  `phone` char(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=725 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_student
-- ----------------------------
BEGIN;
INSERT INTO `arsys_student` VALUES (1, NULL, 2, 2, 6, '1503510', 's1503510', 'Ibnu Malik', 'Al Hamas', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (2, NULL, 2, 2, 17, '1204127', 's1204127', 'Muhammad Fitra', 'Ilhami', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (3, NULL, 1, 1, 19, '1204283', 's1204283', 'wisnu', 'sukma wardana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (4, NULL, 1, 1, 28, '1204926', 's1204926', 'moh', 'zulfikar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (5, NULL, 1, 1, 18, '1203590', 's1203590', 'Allan', 'Anugraha Maharbid', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (6, NULL, 2, 2, 6, '1500400', 's1500400', 'Alfin', 'Agusman Noor', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (7, NULL, 1, 3, 19, '1200589', 's1200589', 'Hary', 'Dwyan Fitriana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (8, NULL, 1, 1, 18, '1203604', 's1203604', 'Olsa', 'Givana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (9, NULL, 2, 2, 6, '1504316', 's1504316', 'Rizal Daffa', 'Noer Sidik', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (10, NULL, 2, 2, 23, '1504873', 's1504873', 'Trisina', 'Simanjuntak', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (11, NULL, 1, 2, 18, '1200356', 's1200356', 'Ayu', 'Rakhmawati', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (12, NULL, 2, 3, 23, '1505550', 's1505550', 'Ahmad Raihan', 'Abdurrahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (13, NULL, 2, 3, 6, '1500550', 's1500550', 'Yudha', 'Hardiansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (14, NULL, 2, 2, 23, '1200342', 's1200342', 'Satrio', 'Budi Prasetyo', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (15, NULL, 1, 2, 19, '1204044', 's1204044', 'Emil', 'Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (16, NULL, 1, 2, 18, '1203169', 's1203169', 'Zaenal', 'Mutaqin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (17, NULL, 1, 3, 12, '1206255', 's1206255', 'OKKY', 'OKTA', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (18, NULL, 1, 3, 19, '1200500', 's1200500', 'teguh', 'hermayadi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (19, NULL, 2, 2, 23, '1506365', 's1506365', 'Ivan', 'Hadian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (20, NULL, 2, 2, 6, '1500818', 's1500818', 'Dimas', 'Ariwibowo', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (21, NULL, 2, 2, 6, '1504381', 's1504381', 'Muhammad', 'Fiqri Affan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (22, NULL, 2, 2, 23, '1506367', 's1506367', 'Rizka', 'Adhiswara', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (23, 241, 2, 3, 6, '1501224', 's1501224', 'Farid', 'Miftah Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-06-27 13:48:22');
INSERT INTO `arsys_student` VALUES (24, NULL, 2, 3, 23, '1506032', 's1506032', 'Nadya', 'Richna Fitri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (25, NULL, 2, 2, 6, '1503711', 's1503711', 'Deri Rio', 'Heryanto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (26, NULL, 2, 3, 23, '1506366', 's1506366', 'Julian Serly', 'Ayu', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (27, NULL, 2, 2, 6, '1500538', 's1500538', 'ilza fauzan', 'ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (28, NULL, 2, 2, 6, '1500972', 's1500972', 'Irvan', 'Virgian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (29, NULL, 1, 2, 15, '1301883', 's1301883', 'Febrian Aditya', 'Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (30, NULL, 2, 2, 2, '1403769', 's1403769', 'Fachrizal', 'Alfa Z.', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (31, NULL, 1, 2, 12, '1206035', 's1206035', 'syahroni', 'anwar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (32, NULL, 1, 2, 19, '1200727', 's1200727', 'Moh Hafiezh', 'Annur', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (33, NULL, 2, 2, 6, '1504417', 's1504417', 'Khansa Ratri', 'Haniya', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (34, NULL, 2, 2, 17, '1204286', 's1204286', 'M Fachmi', 'Fachthurahman H', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (35, NULL, 1, 3, 12, '1205950', 's1205950', 'Abdur rahman', 'Arraafi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (36, NULL, 1, 1, 15, '1503467', 's1503467', 'Muhammad Husni', 'Muttaqin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (37, NULL, 2, 2, 23, '1505307', 's1505307', 'Wahyu', 'Alfarobbi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (38, NULL, 2, 2, 6, '1501358', 's1501358', 'Ruly', 'Nuraliman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (39, NULL, 1, 2, 19, '1204019', 's1204019', 'Risyad Basyir', 'Ibrahim', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (40, NULL, 1, 1, 10, '1400275', 's1400275', 'Chindy', 'Berliannanda', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (41, NULL, 1, 3, 18, '1203616', 's1203616', 'Asro', 'Laila', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (42, NULL, 2, 2, 6, '1500812', 's1500812', 'Faqih', 'Fakhruddin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (43, NULL, 1, 3, 18, '1200728', 's1200728', 'Asep', 'Syahbudi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (44, NULL, 1, 1, 9, '1501831', 's1501831', 'Muhammad Isa', 'Rahmani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (45, NULL, 1, 1, 13, '1301473', 's1301473', 'Firsya', 'Habibi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (46, NULL, 1, 2, 10, '1400047', 's1400047', 'Irfan', 'Nuroni', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (47, NULL, 2, 2, 6, '1501933', 's1501933', 'Agung Yuda', 'Sulaksana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (48, NULL, 1, 3, 17, '1304095', 's1304095', 'M. Asep', 'Kurnia', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (49, NULL, 1, 2, 18, '1504586', 's1504586', 'M. Habibul', 'Fallah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (50, 9319, 2, 3, 15, '1501088', 's1501088', 'Putri Ayu', 'Kencana', NULL, NULL, NULL, 'putrikncn@student.upi.edu', '2021-03-22 09:34:50', '2022-08-10 18:47:56');
INSERT INTO `arsys_student` VALUES (51, NULL, 1, 1, 20, '1506923', 's1506923', 'Cici Puspita', 'Dewi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (52, NULL, 1, 3, 20, '1506342', 's1506342', 'Rini', 'Lestriani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (53, NULL, 1, 3, 11, '1500051', 's1500051', 'Silma', 'Kamilah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (54, NULL, 2, 2, 25, '1302080', 's1302080', 'Arif', 'Muhammad Shidiq', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (55, NULL, 1, 3, 9, '1501987', 's1501987', 'Nurul', 'Annisa Septiani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (56, NULL, 1, 1, 18, '1506337', 's1506337', 'Muhamad Iqbal', 'Hambali', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (57, NULL, 1, 2, 9, '1501403', 's1501403', 'Chandra', 'Maulidya', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (58, NULL, 1, 3, 9, '1500591', 's1500591', 'Shita', 'Herfiah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (59, NULL, 1, 3, 20, '1506917', 's1506917', 'Dadan', 'Darmawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (60, NULL, 1, 1, 15, '1504210', 's1504210', 'Aditya Taufanbayu', 'Nugraha', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (61, NULL, 1, 3, 15, '1503449', 's1503449', 'Novia', 'Karostiani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (62, NULL, 1, 2, 28, '1203972', 's1203972', 'Sigit', 'Nuryana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (63, NULL, 2, 3, 23, '1504696', 's1504696', 'Regita', 'Nurmalita Yuniar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (64, NULL, 1, 3, 20, '1506776', 's1506776', 'Hilda', 'Yusri Fila Salazar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (65, NULL, 1, 3, 9, '1501317', 's1501317', 'Inggrid Fadilah', 'Akhmad', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (66, NULL, 1, 3, 15, '1503764', 's1503764', 'Fikri', 'Arif Wicaksana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (67, NULL, 1, 1, 17, '1304081', 's1304081', 'Nur', 'Fajar Sarwati Edi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (68, NULL, 1, 3, 19, '1204109', 's1204109', 'Rizan', 'Syaifur Rahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (69, NULL, 1, 2, 20, '1506341', 's1506341', 'Nur', 'Syifa', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (70, NULL, 1, 3, 15, '1503975', 's1503975', 'Dina', 'Rusyda Khoirini', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (71, NULL, 1, 2, 28, '1204923', 's1204923', 'Rendi', 'Mochamad Taofik', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (72, NULL, 1, 2, 20, '1507133', 's1507133', 'Ruly', 'Abdul Rasyid', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (73, NULL, 2, 2, 23, '1504794', 's1504794', 'Mohammad Giri', 'Firmansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (74, NULL, 1, 2, 18, '1505889', 's1505889', 'Rafie', 'Ridwan Arrasyid', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (75, NULL, 2, 2, 23, '1505146', 's1505146', 'Muhammad Hendra', 'Permana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (76, NULL, 1, 1, 25, '1500121', 's1500121', 'Fandi Ahmad', 'Sugiantoro', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (77, NULL, 1, 2, 9, '1501072', 's1501072', 'Cindy', 'Dwi Lestari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (78, NULL, 1, 1, 18, '1504674', 's1504674', 'Haaniyah', 'Yarnida', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (79, NULL, 1, 1, 10, '1501809', 's1501809', 'Andre', 'Yosnavy', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (80, NULL, 1, 2, 18, '1504623', 's1504623', 'Cical Indra', 'Himawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (81, NULL, 1, 1, 15, '1503967', 's1503967', 'Sri Puji', 'Lestari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (82, NULL, 1, 1, 13, '1304927', 's1304927', 'Adhitya', 'Sufarinto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (83, NULL, 1, 1, 18, '150568', 's150568', 'Uni', 'Parwati', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (84, NULL, 1, 1, 9, '1502030', 's1502030', 'Sony', 'Hermawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (85, 226, 1, 1, 20, '1506338', 's1506338', 'Muhamad Luthfi', 'Amrullah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-06-11 19:43:59');
INSERT INTO `arsys_student` VALUES (86, 808, 1, 1, 3, '1603747', 's1603747', 'Teguh', 'Pratama Nugraha', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-08-31 20:13:36');
INSERT INTO `arsys_student` VALUES (87, NULL, 1, 1, 11, '1500504', 's1500504', 'Riky', 'Hidayat', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (88, NULL, 1, 1, 15, '1304072', 's1304072', 'Riyadhi', 'Abdurrahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (89, NULL, 1, 2, 17, '1501656', 's1501656', 'Sri', 'Wardana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (90, NULL, 1, 2, 9, '1501272', 's1501272', 'M. Hasbi', 'Ash Shiddiq', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (91, NULL, 1, 2, 24, '1501848', 's1501848', 'Ridwan', 'Ahmad Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (92, NULL, 1, 2, 18, '1506336', 's1506336', 'Fhegiana', 'Damayanty Juniar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:50', '2021-03-22 09:34:50');
INSERT INTO `arsys_student` VALUES (93, NULL, 1, 1, 11, '1500329', 's1500329', 'Dede Rizki', 'Abdillah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (94, NULL, 1, 2, 15, '1503904', 's1503904', 'Dendi', 'Rukmana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (95, NULL, 1, 2, 11, '1500429', 's1500429', 'Fahmi', 'Azhar Santosa', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (96, NULL, 1, 2, 17, '1507138', 's1507138', 'Shinta', 'Wahyu Yuliningtyas', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (97, NULL, 1, 2, 15, '1503446', 's1503446', 'Taufik', 'Ismail', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (98, 36, 1, 2, 21, '1403121', 's1403121', 'Irna', 'Wahyuningsih', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 20:44:31');
INSERT INTO `arsys_student` VALUES (99, 61, 1, 1, 9, '1500819', 's1500819', 'Mirza', 'Maulana Sugiri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-23 02:05:15');
INSERT INTO `arsys_student` VALUES (100, NULL, 1, 2, 11, '1505329', 's1505329', 'Julia', 'Nurrizkiani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (101, NULL, 1, 1, 9, '1501937', 's1501937', 'Aam', 'Wahyudin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (102, NULL, 1, 3, 28, '1507107', 's1507107', 'Dejan', 'Yusup Faishal', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (103, NULL, 1, 1, 20, '1507140', 's1507140', 'Sri', 'Rahayu Ningsih', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (104, NULL, 1, 2, 18, '1505763', 's1505763', 'Zikrul', 'Rifki', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (105, 62, 1, 1, 1, '1405712', 's1405712', 'Nopran', 'Tri Aditya', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-23 03:25:26');
INSERT INTO `arsys_student` VALUES (106, 101, 1, 1, 10, '1403243', 's1403243', 'Solla', 'Nahari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-25 12:51:17');
INSERT INTO `arsys_student` VALUES (107, NULL, 1, 2, 15, '1301997', 's1301997', 'Dina', 'Rahmatika', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (108, 233, 1, 1, 14, '1304887', 's1304887', 'Muhammad', 'Renaldy', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-21 16:54:16');
INSERT INTO `arsys_student` VALUES (109, NULL, 1, 1, 10, '1401970', 's1401970', 'Dicky', 'Mardiansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (110, NULL, 1, 1, 18, '1504967', 's1504967', 'Irfan Maulana', 'Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (111, NULL, 1, 3, 18, '1504845', 's1504845', 'Irfan', 'Septian Suherman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (112, NULL, 2, 2, 26, '1401662', 's1401662', 'Rizki Zakaria', 'Faturochman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (113, NULL, 2, 2, 22, '1307189', 's1307189', 'Ismail', 'Sholeh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (114, NULL, 2, 2, 1, '1506969', 's1506969', 'Reida', 'Putra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (115, NULL, 1, 1, 10, '1400666', 's1400666', 'Teguh', 'Nugraha', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (116, NULL, 1, 2, 9, '1501726', 's1501726', 'Muhammad', 'Fathurrachman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (117, NULL, 2, 2, 26, '1401410', 's1401410', 'Rizaldy', 'Kurniawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (118, NULL, 1, 2, 10, '1401029', 's1401029', 'Reffky', 'Pratama', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (119, NULL, 1, 1, 15, '1503561', 's1503561', 'Renaldi', 'Pratama', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (120, NULL, 1, 1, 9, '1501362', 's1501362', 'David Irman', 'Sam Putra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (121, NULL, 1, 1, 20, '1405131', 's1405131', 'Ridwan', 'Firdaus', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (122, NULL, 1, 2, 11, '1500171', 's1500171', 'Hafid', 'Fadilah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (123, NULL, 2, 2, 25, '1301686', 's1301686', 'Gema', 'Ardhyana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (124, NULL, 1, 2, 20, '1506780', 's1506780', 'Evan', 'Manurung', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (125, NULL, 1, 3, 19, '1204412', 's1204412', 'Ihsan', 'Ahmad Fadillah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (126, NULL, 2, 2, 17, '1404347', 's1404347', 'Rahman', 'Aziz', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (127, NULL, 2, 2, 22, '1305640', 's1305640', 'Ahmad', 'Muthi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (128, NULL, 2, 2, 17, '1204134', 's1204134', 'Muhammad', 'Arif', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (129, NULL, 1, 3, 19, '1505698', 's1505698', 'Adryan Jaka', 'Lelana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (130, NULL, 1, 2, 28, '1204910', 's1204910', 'Yogi', 'Yogaswara', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (131, NULL, 2, 2, 26, '1403380', 's1403380', 'Andra', 'Yovinda', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (132, NULL, 1, 2, 16, '1305901', 's1305901', 'Cipta Cristian', 'Woren', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (133, NULL, 1, 1, 5, '1602314', 's1602314', 'Iva', 'Rachmawati', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (134, 182, 1, 1, 5, '1600986', 's1600986', 'Khaesa Ananda', 'Putri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-27 13:06:45');
INSERT INTO `arsys_student` VALUES (135, NULL, 1, 1, 15, '1503874', 's1503874', 'Aulyanisa', 'Novatiara', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (136, NULL, 1, 1, 5, '1606292', 's1606292', 'Hendra', 'Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (137, 154, 1, 1, 14, '1605878', 's1605878', 'Fajri', 'Kemal Zaeny', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-11 19:13:39');
INSERT INTO `arsys_student` VALUES (138, 130, 1, 2, 1, '1606508', 's1606508', 'Mahesa', 'Rivaldi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-05 11:04:35');
INSERT INTO `arsys_student` VALUES (139, NULL, 1, 1, 3, '1603957', 's1603957', 'Ghina Nadifah', 'Amani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (140, NULL, 1, 3, 27, '1505737', 's1505737', 'Muhammad Rizki', 'Dwi Putra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (141, 240, 1, 3, 8, '1607629', 's1607629', 'Slamet Tita', 'Sumarti', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-26 09:24:50');
INSERT INTO `arsys_student` VALUES (142, NULL, 2, 2, 6, '1500233', 's1500233', 'Muhammad Nur', 'Tastaftyan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (143, NULL, 1, 1, 24, '1600417', 's1600417', 'Rizki Dwi', 'Purnomo', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (144, NULL, 1, 1, 27, '1601874', 's1601874', 'Muhammad Ilham', 'Fauzan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (145, NULL, 1, 2, 18, '1505886', 's1505886', 'Niken', 'Tri Artha Mevia Putri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (146, 136, 2, 2, 16, '1601121', 's1601121', 'Rifqi', 'Taufiqurrahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-06 18:25:13');
INSERT INTO `arsys_student` VALUES (147, NULL, 1, 1, 3, '1606388', 's1606388', 'Hendra', 'Rangga Fahreza', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (148, NULL, 1, 2, 11, '1602146', 's1602146', 'Muhammad Rashif', 'Farhan Asyir Shadiq', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (149, NULL, 2, 2, 6, '1502063', 's1502063', 'Anggi Restu', 'Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (150, NULL, 2, 2, 25, '1302017', 's1302017', 'Rizqi', 'Adri Fauzan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (151, NULL, 1, 3, 27, '1604974', 's1604974', 'Nedya', 'Ulfah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (152, NULL, 1, 1, 27, '1602157', 's1602157', 'Lea', 'Naufal', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (153, 253, 1, 2, 24, '1600046', 's1600046', 'Aji', 'Wahyu Nugraha', NULL, NULL, '089669966924', 'ajiiwahyu9b344@gmail.com', '2021-03-22 09:34:51', '2021-07-29 18:10:19');
INSERT INTO `arsys_student` VALUES (154, NULL, 1, 3, 24, '1603886', 's1603886', 'Falah', 'Khairullah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (155, NULL, 1, 2, 8, '1605762', 's1605762', 'Robby', 'Fauzan Jaelani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (156, 26, 1, 1, 25, '1705661', 's1705661', 'Noval', 'Dwi Jayanto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 16:43:05');
INSERT INTO `arsys_student` VALUES (157, NULL, 1, 1, 8, '1605527', 's1605527', 'Muhamad Rafi', 'Anggara', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (158, NULL, 1, 2, 11, '1500554', 's1500554', 'Novita', 'Sarih', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (159, 129, 1, 3, 27, '1601183', 's1601183', 'Indah', 'Melania', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-03 21:34:45');
INSERT INTO `arsys_student` VALUES (160, NULL, 1, 2, 27, '1601420', 's1601420', 'Siti Nunung', 'Nuraeni', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (161, 218, 1, 1, 15, '1504582', 's1504582', 'Maulidya Ajeng', 'Yulvia Wibowo', NULL, NULL, '087875112171', 'ajengmaul@student.upi.edu', '2021-03-22 09:34:51', '2021-06-10 07:10:03');
INSERT INTO `arsys_student` VALUES (162, NULL, 1, 3, 27, '1601897', 's1601897', 'Ayu', 'Azizah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (163, 14, 1, 1, 8, '1606251', 's1606251', 'Rizki', 'Rachmat Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 15:48:56');
INSERT INTO `arsys_student` VALUES (164, NULL, 1, 1, 24, '1601051', 's1601051', 'Hilmy', 'Zaky', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (165, 934, 1, 2, 24, '1601016', 's1601016', 'Hilmi', 'Hamdani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-09-17 13:33:59');
INSERT INTO `arsys_student` VALUES (166, NULL, 1, 2, 24, '1600103', 's1600103', 'Ripan', '', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (167, NULL, 1, 1, 18, '1203168', 's1203168', 'Ari', 'Kusdinar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (168, NULL, 1, 3, 27, '1601218', 's1601218', 'Fidyah Niqo', 'Sabri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (169, 145, 1, 2, 25, '1701824', 's1701824', 'Lutfi', 'Akbar Pratama', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-08 09:11:18');
INSERT INTO `arsys_student` VALUES (170, 107, 1, 2, 24, '1603612', 's1603612', 'Mughni', 'Ardhianto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-27 09:33:44');
INSERT INTO `arsys_student` VALUES (171, NULL, 1, 3, 15, '1604423', 's1604423', 'Yaumil', 'Maghfira', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (172, NULL, 1, 3, 17, '1304233', 's1304233', 'Furqon', 'Arfian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (173, 204, 1, 2, 1, '1607011', 's1607011', 'Bayu Ihsan', 'Nugroho', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-05-25 19:28:16');
INSERT INTO `arsys_student` VALUES (174, NULL, 1, 2, 24, '1600846', 's1600846', 'Eka', 'Putri Fitriani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (175, 38, 1, 2, 27, '1602348', 's1602348', 'Mochamad Harland', 'Pradana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 21:22:16');
INSERT INTO `arsys_student` VALUES (176, 42, 1, 1, 27, '1602028', 's1602028', 'Taufik Achmad', 'Ginanjar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 21:27:05');
INSERT INTO `arsys_student` VALUES (177, 225, 1, 1, 10, '1605490', 's1605490', 'Richard', 'Sambera Sagala', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-11 11:29:37');
INSERT INTO `arsys_student` VALUES (178, 67, 1, 1, 5, '1607578', 's1607578', 'Andrian', 'Andrian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-23 09:06:15');
INSERT INTO `arsys_student` VALUES (179, 49, 2, 2, 6, '1602124', 's1602124', 'Al Hafiz Zhafran', 'Ismail', NULL, NULL, '081999962509', 'alhafizzhafran26@gmail.com', '2021-03-22 09:34:51', '2021-07-11 22:44:49');
INSERT INTO `arsys_student` VALUES (180, 122, 1, 3, 26, '1607666', 's1607666', 'Nurmala', 'Sari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-01 05:26:10');
INSERT INTO `arsys_student` VALUES (181, NULL, 1, 3, 1, '1606984', 's1606984', 'Andi Disbuhadi', 'Mattupuang', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (182, NULL, 1, 2, 24, '1602342', 's1602342', 'Ai', 'Asiah Nuraeni', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (183, NULL, 1, 2, 24, '1600363', 's1600363', 'Alvin', 'Renaldi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (184, NULL, 1, 2, 9, '1501311', 's1501311', 'Adli', 'Robbiansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (185, NULL, 1, 2, 24, '1600924', 's1600924', 'Muhamad', 'Rajib', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (186, NULL, 1, 1, 20, '1405961', 's1405961', 'Uuf', 'Muttaqin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (187, 8356, 1, 2, 8, '1607637', 's1607637', 'Junjunan', 'Faturochman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2022-07-31 02:06:19');
INSERT INTO `arsys_student` VALUES (188, NULL, 2, 3, 3, '1600825', 's1600825', 'Dimas', 'Ramadhan Amrulloh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (189, NULL, 1, 3, 8, '1608212', 's1608212', 'Ilham', 'Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (190, NULL, 1, 2, 9, '1500665', 's1500665', 'Mochamad', 'Arief Hidayah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (191, 104, 1, 2, 11, '1500179', 's1500179', 'Arvin', 'Maulana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-26 10:01:53');
INSERT INTO `arsys_student` VALUES (192, NULL, 1, 3, 24, '1600585', 's1600585', 'Ridho', 'Muhammad Fikri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (193, 16, 1, 1, 2, '1607654', 's1607654', 'Abdul', 'Hanif', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 15:53:26');
INSERT INTO `arsys_student` VALUES (194, NULL, 1, 2, 22, '1606233', 's1606233', 'Muhammad Aulia', 'Rachman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (195, 197, 1, 2, 11, '1606041', 's1606041', 'Naufal', 'Taufiqurrahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-05-21 14:59:16');
INSERT INTO `arsys_student` VALUES (196, NULL, 1, 2, 24, '1601109', 's1601109', 'Triska', 'Junita', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (197, NULL, 1, 3, 1, '1607523', 's1607523', 'Ardhia', 'Regita', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (198, NULL, 2, 1, 2, '1809691', 's1809691', 'Didin', 'Wahyudin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (199, NULL, 1, 1, 9, '1500923', 's1500923', 'Zulfikar', 'Pamungkas', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (200, 215, 1, 1, 24, '1605487', 's1605487', 'Haekal', 'Audi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-05 14:32:54');
INSERT INTO `arsys_student` VALUES (201, 217, 1, 1, 11, '1500284', 's1500284', 'Irdham', 'Kusuma', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-10 06:39:13');
INSERT INTO `arsys_student` VALUES (202, 20, 1, 1, 13, '1301733', 's1301733', 'Bagus', 'Baskara', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 16:29:31');
INSERT INTO `arsys_student` VALUES (203, NULL, 1, 1, 25, '1608203', 's1608203', 'Muhamad', 'Zein Revolusi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (204, 106, 1, 1, 10, '1401016', 's1401016', 'Risti Eka', 'Caputri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-26 19:05:13');
INSERT INTO `arsys_student` VALUES (205, NULL, 1, 2, 8, '1606221', 's1606221', 'Ilham', 'Gema Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (206, 262, 1, 1, 14, '1601682', 's1601682', 'Bayu Erlangga Gerhana', 'Putra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-08-04 21:12:12');
INSERT INTO `arsys_student` VALUES (207, NULL, 1, 1, 25, '1607148', 's1607148', 'Tomi', 'Winata', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (208, 198, 1, 2, 24, '1606053', 's1606053', 'Yazid', 'Arrafi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-05-21 14:59:31');
INSERT INTO `arsys_student` VALUES (209, 39, 1, 1, 1, '1607158', 's1607158', 'Monica', 'Umarni', NULL, NULL, '085794691876', 'monicaumarni@student.upi.edu', '2021-03-22 09:34:51', '2021-04-03 20:23:18');
INSERT INTO `arsys_student` VALUES (210, NULL, 1, 1, 1, '1606382', 's1606382', 'Nurul', 'Hasanah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (211, NULL, 1, 1, 27, '1604079', 's1604079', 'Kobie', 'Aulia', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (212, NULL, 1, 2, 8, '1607638', 's1607638', 'Sukma Dwijaya', 'Madawangi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (213, 964, 2, 3, 3, '1604526', 's1604526', 'Najmi Najib Nasrulloh', 'Kurniadi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-11-10 08:59:05');
INSERT INTO `arsys_student` VALUES (214, 34, 1, 2, 24, '1600149', 's1600149', 'Arif', 'Wahyu Mariyandika', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 19:21:26');
INSERT INTO `arsys_student` VALUES (215, 29, 1, 1, 5, '1606300', 's1606300', 'Devara', 'Rayhansyah Chairul', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 16:54:56');
INSERT INTO `arsys_student` VALUES (216, NULL, 1, 1, 5, '1604109', 's1604109', 'Adam Surya', 'Sutikno', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (217, NULL, 1, 3, 13, '1607636', 's1607636', 'Imas', 'Devina Fatonah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (218, NULL, 2, 2, 16, '1601112', 's1601112', 'Kukuh Putra', 'Prambodo', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (219, 161, 1, 1, 3, '1604461', 's1604461', 'Laras', 'Dian Maharani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-16 10:19:06');
INSERT INTO `arsys_student` VALUES (220, NULL, 1, 2, 24, '1603746', 's1603746', 'Azhar', 'Adhiyatso', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (221, 95, 1, 3, 1, '1606660', 's1606660', 'Deni Nurdin', 'Rahayu', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-24 22:09:29');
INSERT INTO `arsys_student` VALUES (222, NULL, 1, 1, 18, '1608128', 's1608128', 'Anne', 'Rahmasari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (223, 84, 1, 1, 1, '1608208', 's1608208', 'Wahid Fathoni', 'Sagita', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-24 09:41:06');
INSERT INTO `arsys_student` VALUES (224, NULL, 2, 2, 16, '1605528', 's1605528', 'Efraimy Ruth', 'Sinaga', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (225, 27, 1, 1, 27, '1601375', 's1601375', 'Aditya', 'Mahendra', NULL, NULL, '085722093717', 'mahendraaditya@student.upi.edu', '2021-03-22 09:34:51', '2021-03-27 08:59:45');
INSERT INTO `arsys_student` VALUES (226, NULL, 1, 1, 10, '1606032', 's1606032', 'Pandhu', 'Reksa', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (227, 132, 1, 1, 1, '1606464', 's1606464', 'Mochamad', 'Rizal Bachtiar', NULL, NULL, '085891294398', 'Rizalbachtiar06@student.upi.edu', '2021-03-22 09:34:51', '2021-04-05 22:16:20');
INSERT INTO `arsys_student` VALUES (228, 961, 2, 3, 3, '1606352', 's1606352', 'Rizkia Fahmi Noviansyah', 'Imanudin', NULL, NULL, '082213199693', 'rfnoviansyah@gmail.com', '2021-03-22 09:34:51', '2022-01-18 11:24:36');
INSERT INTO `arsys_student` VALUES (229, NULL, 2, 2, 17, '1604450', 's1604450', 'In', 'Mustagisin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (230, 75, 2, 2, 16, '1607496', 's1607496', 'Henry Prima', 'Martinus', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-23 14:40:23');
INSERT INTO `arsys_student` VALUES (231, 87, 2, 2, 16, '1604937', 's1604937', 'Rizki', 'Mochamad Fauzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-24 13:19:07');
INSERT INTO `arsys_student` VALUES (232, NULL, 1, 1, 15, '1503978', 's1503978', 'Imania', 'Yuniar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (233, 1017, 1, 1, 26, '1607676', 's1607676', 'Eris', 'Rifaldi', NULL, NULL, '085659920242', 'eris111213@student.upi.edu', '2021-03-22 09:34:51', '2022-02-12 08:41:25');
INSERT INTO `arsys_student` VALUES (234, 175, 2, 2, 16, '1607331', 's1607331', 'Devi Ivana', 'Athaliana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-22 12:19:58');
INSERT INTO `arsys_student` VALUES (235, NULL, 2, 2, 2, '1607081', 's1607081', 'Dwiky', 'Anugrah Heningputra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (236, NULL, 2, 2, 16, '1601008', 's1601008', 'Egin', 'Rahmat Ginanjar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (237, 186, 1, 1, 17, '1304138', 's1304138', 'Mohamad Syamsul', 'Maarif', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-04-28 08:07:24');
INSERT INTO `arsys_student` VALUES (238, 229, 1, 3, 1, '1606462', 's1606462', 'Muhamad', 'Riyadi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-06-16 19:40:59');
INSERT INTO `arsys_student` VALUES (239, 208, 2, 3, 23, '1606976', 's1606976', 'Haris', 'Arsyad', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-05-27 20:45:56');
INSERT INTO `arsys_student` VALUES (240, NULL, 2, 3, 3, '1600818', 's1600818', 'Alvin Rakhmat', 'Wirakusumah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:51', '2021-03-22 09:34:51');
INSERT INTO `arsys_student` VALUES (241, NULL, 2, 3, 3, '1602329', 's1602329', 'Rian', 'Arta Prahesa', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (242, 94, 1, 1, 10, '1403141', 's1403141', 'Asri', 'Gania', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-24 21:55:38');
INSERT INTO `arsys_student` VALUES (243, NULL, 1, 3, 16, '1306721', 's1306721', 'Wahyu', 'Mahardhika', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (244, NULL, 2, 3, 23, '1504849', 's1504849', 'Boaz', '....', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (245, NULL, 2, 2, 16, '1600658', 's1600658', 'Ghina Shofi', 'Nur Aisyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (246, 47, 2, 2, NULL, '1601864', 's1601864', 'Yuliani', '', NULL, NULL, '085732450813', 'yuliani_@student.upi.edu', '2021-03-22 09:34:52', '2021-08-15 10:35:00');
INSERT INTO `arsys_student` VALUES (247, NULL, 2, 3, 4, '1601676', 's1601676', 'Dante Eka', 'Seviliana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (248, 169, 2, 2, 2, '1601538', 's1601538', 'Muhammad Firyal', 'Firdaus', NULL, NULL, '082126879511', 'firyalfirdaus@student.upi.edu', '2021-03-22 09:34:52', '2022-01-25 22:28:15');
INSERT INTO `arsys_student` VALUES (249, 353, 2, 3, 3, '1607118', 's1607118', 'Syaiful', 'Widyatmiko', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-08-19 18:20:22');
INSERT INTO `arsys_student` VALUES (250, NULL, 2, 2, 16, '1607582', 's1607582', 'Galdin', 'Akbar Salihan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (251, NULL, 1, 1, 13, '1300991', 's1300991', 'Nety', 'Fitriani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (252, 249, 2, 2, 16, '1601010', 's1601010', 'Anisa', 'Inggar Asti Yudianto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-07-19 20:35:46');
INSERT INTO `arsys_student` VALUES (253, 69, 2, 3, 3, '1604508', 's1604508', 'Wildan', 'Khoirul Amri', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-23 10:39:52');
INSERT INTO `arsys_student` VALUES (254, NULL, 2, 3, 3, '1606411', 's1606411', 'Abdul Fadhil Al', 'Mudzaki', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (255, 37, 1, 1, 13, '1307440', 's1307440', 'Khoirun', 'Nisa', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 20:51:07');
INSERT INTO `arsys_student` VALUES (256, NULL, 1, 1, 15, '1303435', 's1303435', 'Alexander', 'Ucok Yudanto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (257, NULL, 1, 1, 17, '1305639', 's1305639', 'Mohammad', 'Fitra Permadi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (258, NULL, 2, 2, 16, '1606195', 's1606195', 'Ilham', 'Ramadhani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (259, 238, 1, 2, 24, '1603853', 's1603853', 'Gani', 'Gunawan', NULL, NULL, '087737071730', 'ganigunawan19@student.upi.edu', '2021-03-22 09:34:52', '2021-06-24 23:45:12');
INSERT INTO `arsys_student` VALUES (260, NULL, 1, 1, 1, '1608132', 's1608132', 'Riyan', 'Mardiansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (261, NULL, 1, 2, 24, '1600511', 's1600511', 'Muhamad', 'Sampurna', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (262, NULL, 2, 2, 16, '1603417', 's1603417', 'Haryo Iri', 'Satrio Wicaksono', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (263, NULL, 1, 1, 27, '1602070', 's1602070', 'Kusnadi', 'Rusnawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (264, 127, 2, 2, 16, '1601412', 's1601412', 'Sylvia', 'Khadijah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-01 13:40:24');
INSERT INTO `arsys_student` VALUES (265, NULL, 2, 2, 16, '1605911', 's1605911', 'Rosena', 'Shintabella', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (266, NULL, 2, 2, 16, '1601296', 's1601296', 'Dias Hegar', 'Pinanggih', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (267, NULL, 1, 1, 2, '180969', 's180969', 'Wahyu', 'Didin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (268, NULL, 2, 2, 22, '1307624', 's1307624', 'Amirul', 'Ma\'ruf', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (269, NULL, 2, 2, 25, '1302098', 's1302098', 'Fauzan', 'Anshori Natasasmita', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (270, NULL, 2, 3, 15, '1607633', 's1607633', 'Ridwan', 'Amshari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (271, NULL, 2, 2, 25, '1301663', 's1301663', 'Nur Muhammad', 'Abdul Hafizh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (272, 109, 2, 2, 26, '1401476', 's1401476', 'Achmad', 'Noviandi Saepulloh', NULL, NULL, '085722336451', 'achmad41195@student.upi.edu', '2021-03-22 09:34:52', '2021-08-08 19:35:39');
INSERT INTO `arsys_student` VALUES (273, 114, 1, 2, 27, '1605054', 's1605054', 'Muhammad Robbi', 'Awaludin', NULL, NULL, '089696591401', 'robbiawaludin23@student.upi.edu', '2021-03-22 09:34:52', '2021-12-03 09:47:02');
INSERT INTO `arsys_student` VALUES (274, 178, 2, 2, 24, '1501291', 's1501291', 'Adi Sapta Hidayatullah', 'Suryaman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-24 15:16:06');
INSERT INTO `arsys_student` VALUES (275, 63, 2, 2, 18, '1604056', 's1604056', 'Rudiyana', 'Rudiyana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-23 05:27:04');
INSERT INTO `arsys_student` VALUES (276, 947, 2, 2, 2, '1605206', 's1605206', 'Anggin Nisrina', 'Ulayya', NULL, NULL, '081220077378', 'angginnu@student.upi.edu', '2021-03-22 09:34:52', '2021-10-27 14:34:51');
INSERT INTO `arsys_student` VALUES (277, 76, 2, 3, 22, '1703006', 's1703006', 'Arief', 'Khairi Irawan', NULL, NULL, '083822089228', 'arief.khairy4@upi.edu', '2021-03-22 09:34:52', '2021-07-30 09:19:43');
INSERT INTO `arsys_student` VALUES (278, 3, 1, 1, 3, '1703770', 's1703770', 'Asep Saepul', 'Rohman', NULL, NULL, '+6282119042347', 'asepsaepulrohman@upi.edu', '2021-03-22 09:34:52', '2021-03-22 09:46:23');
INSERT INTO `arsys_student` VALUES (279, 108, 1, 1, 2, '1700904', 's1700904', 'Andre', 'Yogaswara Herlambang', NULL, NULL, '+621290558376', 'herlambangandre14@gmail.com', '2021-03-22 09:34:52', '2021-03-27 19:02:37');
INSERT INTO `arsys_student` VALUES (280, 164, 1, 1, 5, '1701067', 's1701067', 'Raffi', 'Erba', NULL, NULL, '081221734652', 'erbaraffi20@upi.edu', '2021-03-22 09:34:52', '2021-04-17 18:57:23');
INSERT INTO `arsys_student` VALUES (281, 881, 1, 1, 5, '1806602', 's1806602', 'Syahidah', 'Muthi\'ah', NULL, NULL, NULL, 'syahidahmuthiah@upi.edu', '2021-03-22 09:34:52', '2022-07-17 01:42:44');
INSERT INTO `arsys_student` VALUES (282, 160, 1, 1, 2, '1703819', 's1703819', 'Syifa Fajar', 'Qolbi', NULL, NULL, '081214922118', 'qolbisyifa026@gmail.com', '2021-03-22 09:34:52', '2021-10-26 15:03:35');
INSERT INTO `arsys_student` VALUES (283, 90, 1, 2, 27, '1604468', 's1604468', 'Roni Ruslan', 'Abdul Gani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-24 20:57:05');
INSERT INTO `arsys_student` VALUES (284, 66, 1, 1, 3, '1704531', 's1704531', 'Siska', 'Anggraeni', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-23 08:16:07');
INSERT INTO `arsys_student` VALUES (285, 4, 1, 1, 5, '1703846', 's1703846', 'Satria Ihsan', 'Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:38:14');
INSERT INTO `arsys_student` VALUES (286, 124, 1, 1, 5, '1702673', 's1702673', 'Nizar', 'Noer Insan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-01 11:00:20');
INSERT INTO `arsys_student` VALUES (287, 174, 1, 1, 5, '1700941', 's1700941', 'Hilal', 'Ismail', NULL, NULL, '081292615733', 'hilalisma64@upi.edu', '2021-03-22 09:34:52', '2021-04-22 10:05:19');
INSERT INTO `arsys_student` VALUES (288, 205, 1, 2, 8, '1606109', 's1606109', 'Kevin', 'Ankurien', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-25 19:43:07');
INSERT INTO `arsys_student` VALUES (289, NULL, 2, 2, 25, '1301558', 's1301558', 'Anthony', 'Jayanto Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (290, 45, 1, 1, 5, '1702825', 's1702825', 'Sidiq Andika', 'Maulana', NULL, NULL, '083829657044', 'Sidiqandika@upi.edu ', '2021-03-22 09:34:52', '2021-03-26 15:08:12');
INSERT INTO `arsys_student` VALUES (291, 89, 1, 3, 5, '1705150', 's1705150', 'Gina', 'Purnama', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-24 18:10:56');
INSERT INTO `arsys_student` VALUES (292, 17, 1, 3, 25, '1702184', 's1702184', 'Revytanova', 'Candra Ningrum', NULL, NULL, '085722343819', 'revytanovacn@upi.edu', '2021-03-22 09:34:52', '2021-03-22 20:04:38');
INSERT INTO `arsys_student` VALUES (293, 21, 1, 3, 25, '1700542', 's1700542', 'Tari', 'Pramanik', NULL, NULL, '087848429777', 'taripramanik@upi.edu', '2021-03-22 09:34:52', '2021-03-22 20:02:00');
INSERT INTO `arsys_student` VALUES (294, 201, 1, 3, 5, '1705686', 's1705686', 'Dandy', 'Indrawan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-24 10:15:14');
INSERT INTO `arsys_student` VALUES (295, 126, 2, 2, 16, '1602143', 's1602143', 'Muhammad', 'Fariz', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-01 13:38:06');
INSERT INTO `arsys_student` VALUES (296, 22, 1, 3, 5, '1702881', 's1702881', 'Dinda', 'Aprilia Syolikhayanti', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 16:32:58');
INSERT INTO `arsys_student` VALUES (297, 223, 1, 3, 5, '1705629', 's1705629', 'Fredy', 'Sidabutar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-06-11 10:29:24');
INSERT INTO `arsys_student` VALUES (298, 15, 1, 1, 5, '1702563', 's1702563', 'Ariawan Akbar', 'Nugraha', NULL, NULL, '087823596900', 'akbar.ariawan25@upi.edu', '2021-03-22 09:34:52', '2021-03-22 15:51:29');
INSERT INTO `arsys_student` VALUES (299, 202, 1, 3, 5, '1703538', 's1703538', 'Hanifa', 'Nurul Aulia', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-25 11:10:15');
INSERT INTO `arsys_student` VALUES (300, 134, 1, 3, 5, '1705327', 's1705327', 'Riadh', 'Alfy', NULL, NULL, '089674876817', 'alfyriadh@upi.edu', '2021-03-22 09:34:52', '2021-04-06 13:45:52');
INSERT INTO `arsys_student` VALUES (301, 190, 1, 3, 5, '1703228', 's1703228', 'Rd. Siti Sekar', 'Azzahra', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-01 07:10:52');
INSERT INTO `arsys_student` VALUES (302, 143, 1, 3, 3, '1704745', 's1704745', 'Muhammad Arif', 'Budiman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-07 21:45:10');
INSERT INTO `arsys_student` VALUES (303, 24, 2, 2, 22, '1705656', 's1705656', 'Wahyudin', 'Lago', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 16:33:56');
INSERT INTO `arsys_student` VALUES (304, 105, 1, 1, 10, '1704818', 's1704818', 'Reni', 'Oktadianingsih', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-26 16:50:20');
INSERT INTO `arsys_student` VALUES (305, 157, 1, 3, 5, '1702732', 's1702732', 'Damaris Novianti', 'Gracia Sinurat', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-12 14:37:23');
INSERT INTO `arsys_student` VALUES (306, 46, 1, 3, 25, '1700100', 's1700100', 'Muhammad Hadi', 'Dermawan', NULL, NULL, '085956078832', 'dermawanhadi@upi.edu', '2021-03-22 09:34:52', '2021-09-20 11:05:17');
INSERT INTO `arsys_student` VALUES (307, 93, 2, 3, 4, '1700673', 's1700673', 'M. Aryo', 'Wijaya', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-24 21:31:27');
INSERT INTO `arsys_student` VALUES (308, 32, 2, 2, 16, '1601096', 's1601096', 'Samsul', 'Huda', NULL, NULL, '+6285321222865', 'samsulhuda@student.upi.edu', '2021-03-22 09:34:52', '2021-07-19 03:05:10');
INSERT INTO `arsys_student` VALUES (309, 82, 1, 2, 5, '1705121', 's1705121', 'Mohammad Hanif', 'Shobirin', NULL, NULL, '081224899301', 'hanifshobirin@upi.edu', '2021-03-22 09:34:52', '2021-03-24 08:11:17');
INSERT INTO `arsys_student` VALUES (310, 65, 1, 2, 3, '1704764', 's1704764', 'Johari', 'Butarbutar', NULL, NULL, '087839677671', 'johaributarbutar281098@gmail.com', '2021-03-22 09:34:52', '2021-03-23 08:30:31');
INSERT INTO `arsys_student` VALUES (311, 962, 1, 2, 16, '1705475', 's1705475', 'Dimas', 'Firmansyah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-11-05 21:55:01');
INSERT INTO `arsys_student` VALUES (312, 43, 1, 1, 5, '1702764', 's1702764', 'Shinta', 'Nurlena', NULL, NULL, '085722748074', 'shintanurlena@upi.edu', '2021-03-22 09:34:52', '2021-03-22 21:32:09');
INSERT INTO `arsys_student` VALUES (313, 163, 1, 1, 5, '1705131', 's1705131', 'Sonia', 'Wahyuni', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-17 13:48:00');
INSERT INTO `arsys_student` VALUES (314, NULL, 1, 3, 16, '1305869', 's1305869', 'Egi', 'Baihaqi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-22 09:34:52');
INSERT INTO `arsys_student` VALUES (315, 116, 1, 3, 5, '1705673', 's1705673', 'Aditya', 'Sebastian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-30 11:09:14');
INSERT INTO `arsys_student` VALUES (316, 98, 1, 1, 5, '1703961', 's1703961', 'Wilda Asifa', 'Salsabila', NULL, NULL, '082118444119', 'salsabilawilda@upi.edu', '2021-03-22 09:34:52', '2021-03-25 12:52:00');
INSERT INTO `arsys_student` VALUES (317, 117, 1, 1, 2, '1705156', 's1705156', 'Rengga', 'Fahrudin', NULL, NULL, '0895341221678', 'renggafahrudin17@upi.edu', '2021-03-22 09:34:52', '2022-03-07 04:43:37');
INSERT INTO `arsys_student` VALUES (318, 99, 1, 1, 31, '1705696', 's1705696', 'Harisa', 'Rahmah', NULL, NULL, '085659615186', 'harisarahmah12@upi.edu', '2021-03-22 09:34:52', '2022-01-25 07:17:52');
INSERT INTO `arsys_student` VALUES (319, 100, 1, 1, 1, '1702157', 's1702157', 'Nurul', 'Fatimah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-25 12:47:28');
INSERT INTO `arsys_student` VALUES (320, 199, 1, 1, 25, '1703700', 's1703700', 'Sapitri', 'Hermawati', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-23 12:15:51');
INSERT INTO `arsys_student` VALUES (321, 194, 1, 3, 13, '1705701', 's1705701', 'Nurul', 'Mustika', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-19 08:15:26');
INSERT INTO `arsys_student` VALUES (322, 88, 2, 2, 16, '1603500', 's1603500', 'Tantan', 'Parera', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-24 15:45:30');
INSERT INTO `arsys_student` VALUES (323, 227, 1, 2, 11, '1500052', 's1500052', 'Althof', 'Illahiyah Suryadi', NULL, NULL, '0895703076279', 'althof24@student.upi.edu', '2021-03-22 09:34:52', '2021-06-14 18:36:52');
INSERT INTO `arsys_student` VALUES (324, 123, 1, 1, 5, '1701017', 's1701017', 'Vena Febrina', 'Rizky Fadillah', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-01 10:33:16');
INSERT INTO `arsys_student` VALUES (325, 180, 1, 2, 25, '1702379', 's1702379', 'Sita Dwi', 'Indah Nuryani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-27 12:45:31');
INSERT INTO `arsys_student` VALUES (326, 181, 1, 2, 3, '1704717', 's1704717', 'Ahmad Rizki', 'Mauladani', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-27 13:02:52');
INSERT INTO `arsys_student` VALUES (327, 149, 1, 1, 5, '1700835', 's1700835', 'Jejen', 'Jaenal Aripin', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-09 15:51:12');
INSERT INTO `arsys_student` VALUES (328, 156, 1, 2, 27, '1601713', 's1601713', 'Muhammad Ikmal', 'Farid', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-12 12:20:48');
INSERT INTO `arsys_student` VALUES (329, 125, 1, 2, 3, '1704428', 's1704428', 'Elfira Rifa', 'Salim', NULL, NULL, '081281055690', 'elfirasalim@gmail.com', '2021-03-22 09:34:52', '2021-04-15 08:06:08');
INSERT INTO `arsys_student` VALUES (330, 211, 1, 3, 5, '1705113', 's1705113', 'Maraya', 'Nurul', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-29 15:34:44');
INSERT INTO `arsys_student` VALUES (331, 1016, 1, 2, 5, '1705631', 's1705631', 'Dede', 'Abdul Rahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2022-02-08 16:57:58');
INSERT INTO `arsys_student` VALUES (332, 231, 1, 2, 5, '1701201', 's1701201', 'Muhammad Mauluddin', 'Al Ghifary Suryana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-06-20 14:21:07');
INSERT INTO `arsys_student` VALUES (333, 151, 1, 1, 5, '1705339', 's1705339', 'Salsabila', 'Asrofa', NULL, NULL, '085846950250', 'salsabilaasrofa@upi.edu', '2021-03-22 09:34:52', '2021-04-16 10:33:17');
INSERT INTO `arsys_student` VALUES (334, 74, 1, 2, 11, '1606128', 's1606128', 'Amri', 'Nugraha', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-03-23 14:09:41');
INSERT INTO `arsys_student` VALUES (335, 19, 1, 2, 25, '1702068', 's1702068', 'Rahadatul', 'Aisyi', NULL, NULL, '081338736434', 'rahadatul.aisyi@upi.edu', '2021-03-22 09:34:52', '2021-04-20 10:08:01');
INSERT INTO `arsys_student` VALUES (336, 148, 2, 2, 22, '1705628', 's1705628', 'Dendy', 'Arrizky', NULL, NULL, '081214443854', 'dendyarrizky8@upi.edu', '2021-03-22 09:34:52', '2021-04-09 11:56:28');
INSERT INTO `arsys_student` VALUES (337, 12, 2, 2, 4, '1701090', 's1701090', 'Almira', 'Hery Setiorini', NULL, NULL, '082214199866', 'almirahsetiorini@upi.edu', '2021-03-22 09:34:52', '2021-03-28 18:01:18');
INSERT INTO `arsys_student` VALUES (338, 232, 1, 2, 11, '1407289', 's1407289', 'Deni', 'Susanto', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-06-20 18:42:06');
INSERT INTO `arsys_student` VALUES (339, 189, 1, 2, 25, '1700292', 's1700292', 'Seno Adji Wahyu', 'Prabowo', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-30 14:19:30');
INSERT INTO `arsys_student` VALUES (340, 153, 1, 2, 22, '1700305', 's1700305', 'Sarah Fakhira', 'Fajriatanti', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-10 14:49:37');
INSERT INTO `arsys_student` VALUES (341, 168, 1, 2, 21, '1701049', 's1701049', 'Ghea', 'Nurmawati', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-20 16:14:28');
INSERT INTO `arsys_student` VALUES (342, 191, 1, 2, NULL, '1702551', 's1702551', 'Annisa Nikmatuz', 'Zulva', NULL, NULL, NULL, 'nikmatuzzulva@upi.edu', '2021-03-22 09:34:52', '2021-08-17 19:58:33');
INSERT INTO `arsys_student` VALUES (343, 78, 2, 2, 4, '1700898', 's1700898', 'Nabila Andara', 'Dwitasari', NULL, NULL, '089671479267', 'nabilandara@upi.edu', '2021-03-22 09:34:52', '2021-03-23 17:43:47');
INSERT INTO `arsys_student` VALUES (344, 845, 1, 2, 8, '1700522', 's1700522', 'Dzaidan', 'Hibatulloh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-08-31 20:58:50');
INSERT INTO `arsys_student` VALUES (345, 209, 1, 3, 3, '1705517', 's1705517', 'Muhamad', 'Yunus', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-05-27 22:22:39');
INSERT INTO `arsys_student` VALUES (346, 155, 1, 2, 5, '1705133', 's1705133', 'Oktavian', 'Pratama', NULL, NULL, '081314814088', 'oktavianpra777@upi.edu', '2021-03-22 09:34:52', '2021-04-23 13:28:38');
INSERT INTO `arsys_student` VALUES (347, 167, 1, 2, 22, '1701724', 's1701724', 'Muhammad', 'Bagas Alfaridzi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-20 08:42:26');
INSERT INTO `arsys_student` VALUES (348, 183, 1, 2, 22, '1707879', 's1707879', 'Abdul', 'Hafizh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:52', '2021-04-27 13:28:02');
INSERT INTO `arsys_student` VALUES (349, 239, 1, 3, 25, '1700208', 's1700208', 'Giffary', 'Fathurohman', NULL, NULL, '085559020249', 'giffaryfathurohman@upi.edu ', '2021-03-22 09:34:52', '2022-01-19 15:03:50');
INSERT INTO `arsys_student` VALUES (350, 13, 2, 3, 3, '1604282', 's1604282', 'Alvina Dio', 'Permana', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 15:48:22');
INSERT INTO `arsys_student` VALUES (351, 188, 1, 2, 48, '1701959', 's1701959', 'Tony', 'Rifadi', NULL, NULL, '082118915591', '29.tonyrifadi.9e@gmail.com', '2021-03-22 09:34:53', '2022-01-24 21:45:38');
INSERT INTO `arsys_student` VALUES (352, 102, 1, 1, 3, '1704753', 's1704753', 'Geronimo', 'Karseno', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-25 13:05:57');
INSERT INTO `arsys_student` VALUES (353, 51, 2, 2, 16, '1705449', 's1705449', 'Nanda Hadi', 'Seftian', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 22:05:56');
INSERT INTO `arsys_student` VALUES (354, 35, 2, 2, 4, '1701144', 's1701144', 'Firsa', 'Haritama', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 19:33:11');
INSERT INTO `arsys_student` VALUES (355, 954, 1, 2, 17, '1700286', 's1700286', 'Naufal Akmal', 'Mufid', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-10-15 15:10:57');
INSERT INTO `arsys_student` VALUES (356, 219, 1, 2, 25, '1700506', 's1700506', 'Muhammad Saefull', 'Gaffar', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-06-10 10:39:15');
INSERT INTO `arsys_student` VALUES (357, 18, 2, 2, 4, '1701353', 's1701353', 'Haris Dwi', 'Septianto', NULL, NULL, '085156146535', 'harisdwi18@upi.edu', '2021-03-22 09:34:53', '2021-03-23 20:10:17');
INSERT INTO `arsys_student` VALUES (358, 64, 1, 1, 5, '1700799', 's1700799', 'Mellyani', 'Nurhabibah Gustary', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-23 08:06:28');
INSERT INTO `arsys_student` VALUES (359, 97, 1, 1, 2, '1704585', 's1704585', 'akmal', 'firdaus', NULL, NULL, '085718810802', 'firdaus.akmal@upi.edu', '2021-03-22 09:34:53', '2022-10-12 05:34:25');
INSERT INTO `arsys_student` VALUES (360, 935, 1, 2, 15, '1700381', 's1700381', 'Lubyi', 'Priyadi', NULL, NULL, '087848738764', 'lubyipriyadi@upi.edu', '2021-03-22 09:34:53', '2021-12-20 15:17:27');
INSERT INTO `arsys_student` VALUES (361, 929, 2, 2, 16, '1606443', 's1606443', 'Mohamad', 'Azhar Lazuardi Pradita', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-09-06 21:17:18');
INSERT INTO `arsys_student` VALUES (362, 23, 2, 2, 22, '1703715', 's1703715', 'Dicky', 'Rustandi', NULL, NULL, '089616288620', 'dickrust30@upi.edu', '2021-03-22 09:34:53', '2021-03-26 15:34:21');
INSERT INTO `arsys_student` VALUES (363, 50, 2, 2, 28, '1704473', 's1704473', 'Wanda', 'Azizah', NULL, NULL, '081395791484', 'wandazizah@upi.edu', '2021-03-22 09:34:53', '2021-03-22 22:20:13');
INSERT INTO `arsys_student` VALUES (364, 207, 1, 3, 5, '1703428', 's1703428', 'Risky', 'Yusri Amelia', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-05-25 22:04:46');
INSERT INTO `arsys_student` VALUES (365, 96, 2, 3, 22, '1704999', 's1704999', 'Difa', 'Sabrina', NULL, NULL, '081287127878', 'dfsabrina@upi.edu', '2021-03-22 09:34:53', '2021-06-22 21:31:51');
INSERT INTO `arsys_student` VALUES (366, 86, 2, 2, 20, '1708086', 's1708086', 'Liana', 'Eka  Putra', NULL, NULL, '082211957618', 'lianaekaputra@upi.edu', '2021-03-22 09:34:53', '2021-03-24 13:10:42');
INSERT INTO `arsys_student` VALUES (367, 44, 2, 2, 28, '1704347', 's1704347', 'Indriyani', 'Dwi Azhari', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 21:29:20');
INSERT INTO `arsys_student` VALUES (368, 73, 2, 2, 11, '1704970', 's1704970', 'M. Rizky', 'Ramadhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-23 13:34:58');
INSERT INTO `arsys_student` VALUES (369, 68, 2, 2, 20, '1708119', 's1708119', 'Annisa Ratna', 'Dewi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-23 10:08:47');
INSERT INTO `arsys_student` VALUES (370, 53, 2, 2, 11, '1704817', 's1704817', 'Nur', 'Aliyah', NULL, NULL, '082115661690', 'nuraliyahh@upi.edu', '2021-03-22 09:34:53', '2021-03-26 22:00:21');
INSERT INTO `arsys_student` VALUES (371, 5748, 2, 3, 3, '1605388', 's1605388', 'Muhamad', 'Aditiya', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2022-06-28 08:04:00');
INSERT INTO `arsys_student` VALUES (372, 57, 2, 2, 11, '1704633', 's1704633', 'Zakharia Chandra', 'Hutabarat', NULL, NULL, '08986863870', 'zakhariach26@upi.edu', '2021-03-22 09:34:53', '2021-03-22 22:30:36');
INSERT INTO `arsys_student` VALUES (373, 33, 2, 2, 11, '1704658', 's1704658', 'Faizal', 'Ramadhan Sundara', NULL, NULL, '082320597518', 'faizalramadhansundara@upi.edu', '2021-03-22 09:34:53', '2021-03-23 09:45:47');
INSERT INTO `arsys_student` VALUES (374, 55, 2, 2, 20, '1708063', 's1708063', 'Akram', 'Nurfauzi Malik', NULL, NULL, '087741382685', 'akramnurfauzim@upi.edu', '2021-03-22 09:34:53', '2021-03-24 09:29:49');
INSERT INTO `arsys_student` VALUES (375, 83, 2, 2, 11, '1704527', 's1704527', 'Ifan Andi', 'Wijayadi', NULL, NULL, '+62895338588570', 'ifandiii@upi.edu', '2021-03-22 09:34:53', '2021-04-20 13:40:29');
INSERT INTO `arsys_student` VALUES (376, 195, 2, 2, 9, '1704672', 's1704672', 'Dheansa Adiguna', 'Rahman', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-05-19 12:48:32');
INSERT INTO `arsys_student` VALUES (377, 131, 2, 2, 4, '1702585', 's1702585', 'Muhammad', 'Farhan', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-04-05 13:57:48');
INSERT INTO `arsys_student` VALUES (378, 52, 2, 2, 20, '1708056', 's1708056', 'Adnan', 'Nugraha', NULL, NULL, '081321173697', 'adnannugraha@upi.edu', '2021-03-22 09:34:53', '2021-03-24 09:20:24');
INSERT INTO `arsys_student` VALUES (379, 60, 2, 2, 28, '1704375', 's1704375', 'Rifqi', 'Al Hadi', NULL, NULL, '085159493922', 'rifqialhadi@upi.edu', '2021-03-22 09:34:53', '2021-03-23 00:57:28');
INSERT INTO `arsys_student` VALUES (380, 41, 2, 2, 22, '1705646', 's1705646', 'Rismayanti', '', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 21:26:17');
INSERT INTO `arsys_student` VALUES (381, 54, 2, 2, 11, '1704900', 's1704900', 'Riana', 'Sukma Dewi', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-22 22:16:08');
INSERT INTO `arsys_student` VALUES (382, 187, 2, 2, 22, '1703696', 's1703696', 'Angga Jaya', 'Mochammad', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-04-28 13:05:31');
INSERT INTO `arsys_student` VALUES (383, 933, 2, 2, 4, '1700729', 's1700729', 'Asep', 'Muhamad Arief Gunawan', NULL, NULL, '081221447452', 'aseparief55@gmail.com', '2021-03-22 09:34:53', '2021-09-24 11:16:15');
INSERT INTO `arsys_student` VALUES (384, 25, 2, 2, 4, '1701651', 's1701651', 'Ibnu', 'Hanifah Alem', NULL, NULL, '08818200889', 'alemibnu@upi.edu', '2021-03-22 09:34:53', '2021-05-28 15:35:57');
INSERT INTO `arsys_student` VALUES (385, 85, 2, 2, 16, '1705037', 's1705037', 'Muhammad', 'Rafii', NULL, NULL, '085703029641', 'm.r4fii_99@upi.edu', '2021-03-22 09:34:53', '2021-03-24 10:34:49');
INSERT INTO `arsys_student` VALUES (386, 264, 2, 2, 26, '1704790', 's1704790', 'Ondi Frans', 'Butarbutar', NULL, NULL, '082213190990', 'ondifransbutarbutar@upi.edu', '2021-03-22 09:34:53', '2022-05-09 07:07:01');
INSERT INTO `arsys_student` VALUES (387, 80, 2, 2, 22, '1707886', 's1707886', 'Sri Devi', 'Cantika', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-03-23 20:10:33');
INSERT INTO `arsys_student` VALUES (388, 56, 2, 2, 16, '1705254', 's1705254', 'Annisa', 'Nurjannah', NULL, NULL, '089669337956', '', '2021-03-22 09:34:53', '2021-03-22 22:30:12');
INSERT INTO `arsys_student` VALUES (389, 77, 2, 2, 22, '1705243', 's1705243', 'San san', 'Sanaulloh AR', NULL, NULL, '087822462999', 'sanaulloh98@upi.edu', '2021-03-22 09:34:53', '2021-07-22 17:37:19');
INSERT INTO `arsys_student` VALUES (390, 48, 2, 2, 4, '1701987', 's1701987', 'Hasna', 'Sausan', NULL, NULL, '085624931678', 'hasnsausan@upi.edu', '2021-03-22 09:34:53', '2022-06-17 09:03:31');
INSERT INTO `arsys_student` VALUES (391, 152, 2, 2, 4, '1700652', 's1700652', 'Silmi Fadilah', 'Almunawaroh', NULL, NULL, NULL, NULL, '2021-03-22 09:34:53', '2021-04-09 21:33:55');
INSERT INTO `arsys_student` VALUES (392, 10, 2, 3, 22, '1704258', 's1704258', 'Hersyanda Putra', 'Adi', NULL, NULL, '+6289657465573', 'yandaa_rlm@upi.edu', '2021-03-22 09:34:53', '2021-03-22 14:46:32');
INSERT INTO `arsys_student` VALUES (393, 28, 2, 3, 26, '1700432', 's1700432', 'Dena', 'Aulia', NULL, NULL, '083871751681', 'denaaulia@upi.edu', '2021-03-22 16:50:00', '2021-03-22 16:50:00');
INSERT INTO `arsys_student` VALUES (394, 40, 2, 2, 28, '1700859', 's1700859', 'Nurfachri', 'Salehudin', NULL, NULL, '0821-9905-3203', 'nurfachris1@gmail.com', '2021-03-22 21:30:44', '2021-04-23 20:02:09');
INSERT INTO `arsys_student` VALUES (395, 58, 2, 2, 7, '1705100', 's1705100', 'Nando', 'Yogasmana', NULL, NULL, '089603921546', 'nando.yogass@upi.edu', '2021-03-22 22:46:02', '2021-03-22 22:46:02');
INSERT INTO `arsys_student` VALUES (396, 59, 2, 2, 24, '1700924', 's1700924', 'Mochammad Luky', 'Ramadhan', NULL, NULL, '081398316175', 'lukyramadhan@upi.edu', '2021-03-22 23:00:07', '2021-04-27 19:31:50');
INSERT INTO `arsys_student` VALUES (397, 71, 2, 2, 20, '1708085', 's1708085', 'Rouli', 'Gitamarta Munthe', NULL, NULL, '081286578971', 'rouligitamarta@gmail.com', '2021-03-23 12:03:23', '2021-08-29 16:36:49');
INSERT INTO `arsys_student` VALUES (398, 72, 2, 2, 4, '1700923', 's1700923', 'Hilman ', 'Gymnastiar', NULL, NULL, '088222139683', 'hilmangym13@gmail.com', '2021-03-23 12:04:49', '2021-03-23 12:04:49');
INSERT INTO `arsys_student` VALUES (399, 92, 2, 3, 4, '1701089', 's1701089', 'Shaquille', 'Abdul Jabbar', NULL, NULL, '+6285155173335', 'jbr.abdul@upi.edu', '2021-03-24 21:30:54', '2021-07-15 12:13:06');
INSERT INTO `arsys_student` VALUES (400, 79, 2, 3, 3, '1700864', 's1700864', 'Irfan', 'Abdurrazaq Supriatna', NULL, NULL, '085956225811', 'irfan555@upi.edu', '2021-03-25 05:08:02', '2021-03-25 05:08:02');
INSERT INTO `arsys_student` VALUES (401, 103, 2, 2, 16, '1606299', 's1606299', 'Bagus', 'Ilham Khoir', NULL, NULL, '087887033208', 'Bagusilham74@student.upi.edu', '2021-03-26 08:36:52', '2021-03-26 08:36:52');
INSERT INTO `arsys_student` VALUES (402, 115, 1, 2, 3, '1704281', 's1704281', 'Adinda Fadia', 'Safira', NULL, NULL, '081297598178', 'adindafasa@upi.edu', '2021-03-30 10:57:48', '2021-03-30 11:02:16');
INSERT INTO `arsys_student` VALUES (403, 118, 2, 2, 48, '1708052', 's1708052', 'Carolina Patrycia', 'Maryana', NULL, NULL, '089605048983', 'carolinapatryciam@upi.edu', '2021-03-30 15:44:07', '2022-08-26 05:48:35');
INSERT INTO `arsys_student` VALUES (404, 119, 2, 2, 20, '1708059', 's1708059', 'Asep hamdan', 'Junaedi', NULL, NULL, '087708308298', 'hamdanjunaedi98@gmail.com', '2021-03-30 15:53:04', '2021-03-30 15:56:15');
INSERT INTO `arsys_student` VALUES (405, 128, 2, 2, 2, '1705227', 's1705227', 'Andi ', 'Nur Aziz', NULL, NULL, '0895636857600', 'andijulex@upi.edu', '2021-04-03 20:12:40', '2022-01-06 16:49:15');
INSERT INTO `arsys_student` VALUES (406, 133, 2, 3, 15, '1702640', 's1702640', 'Dicky', 'Mochammad Sidiek', NULL, NULL, '+628886023324', 'd060600@upi.edu', '2021-04-06 12:28:48', '2022-06-14 06:13:10');
INSERT INTO `arsys_student` VALUES (407, 147, 2, 2, NULL, '1701565', 's1701565', 'Muhammad Alfharobby', 'Wijaya', NULL, NULL, '081242051275', 'alfharobby@upi.edu', '2021-04-09 12:33:42', '2021-11-06 20:44:27');
INSERT INTO `arsys_student` VALUES (408, 158, 2, 2, 26, '1401078', 's1401078', 'Verio', 'Derwansyah', NULL, NULL, '082143114193', 'veriodrwnsyh@gmail.com', '2021-04-12 22:38:00', '2021-04-12 22:38:00');
INSERT INTO `arsys_student` VALUES (409, 165, 1, 2, 3, '1704451', 's1704451', 'Muhammad Faishal', 'Erbakan', NULL, NULL, '081286973445', 'faishalerbakan@upi.edu', '2021-04-20 11:59:39', '2021-04-20 11:59:39');
INSERT INTO `arsys_student` VALUES (410, 171, 2, 2, 48, '1704406', 's1704406', 'indra cahya', 'Sumirat', NULL, NULL, '082118094773', 'indracahyasumirat4@gmail.com', '2021-04-22 01:47:29', '2022-08-05 03:44:29');
INSERT INTO `arsys_student` VALUES (411, 70, 2, 2, 4, '1701316', 's1701316', 'Mohammad Murod Naufal Syafiq ', 'Sukandar', NULL, NULL, '081222906573', 'naufalss19@upi.edu', '2021-04-22 03:47:07', '2021-04-22 15:16:46');
INSERT INTO `arsys_student` VALUES (412, 173, 1, 1, 5, '1704845', 's1704845', 'Agass Agiama', 'Putra', NULL, NULL, '083895214495', 'agass.ap030@upi.edu', '2021-04-22 09:30:56', '2021-04-22 09:36:38');
INSERT INTO `arsys_student` VALUES (413, 172, 1, 1, 5, '1705312', 's1705312', 'Adam', 'Badruzaman', NULL, NULL, '085862893908', 'adambadruzaman@upi.edu', '2021-04-22 09:40:30', '2021-04-22 09:43:04');
INSERT INTO `arsys_student` VALUES (414, 177, 2, 2, 21, '1708112', 's1708112', 'Hilda', 'Noviana', NULL, NULL, '087832731244', 'Hilda.noviana@upi.edu', '2021-04-23 07:34:28', '2021-04-23 07:34:28');
INSERT INTO `arsys_student` VALUES (415, 179, 2, 3, 22, '1703691', 's1703691', 'Deni', 'Nugraha', NULL, NULL, '081394993375', 'deninugraha@upi.edu', '2021-04-26 14:43:23', '2021-04-26 14:43:23');
INSERT INTO `arsys_student` VALUES (416, 192, 2, 3, 22, '1705249', 's1705249', 'Muhamad Hilman', 'Fauzi', NULL, NULL, '081357375989', 'imenfauzi28@gmail.com', '2021-05-19 11:09:17', '2021-05-19 18:54:24');
INSERT INTO `arsys_student` VALUES (417, 196, 1, 2, 3, '1705693', 's1705693', 'Nursoleh', 'Guntara', NULL, NULL, '08975722349', 'guntara69@upi.edu', '2021-05-20 18:19:27', '2021-05-20 18:21:36');
INSERT INTO `arsys_student` VALUES (418, 30, 2, 2, 4, '1700912', 's1700912', 'Rizka Fitriadi', 'Januar', NULL, NULL, '089504238280', 'rizkajanuar@upi.edu', '2021-05-25 21:14:51', '2021-05-25 21:14:51');
INSERT INTO `arsys_student` VALUES (419, 176, 2, 2, 26, '1401430', 's1401430', 'Novan', 'Melandy Suryadiva', NULL, NULL, '087827611738', 'nmelandy@student.upi.edu', '2021-05-29 11:22:27', '2021-05-29 11:24:58');
INSERT INTO `arsys_student` VALUES (420, 212, 2, 2, 24, '1705135', 's1705135', 'Muhammad Hasanul', 'Fikri', NULL, NULL, '0813-8163-5601', 'hasanulis@upi.edu', '2021-05-31 13:54:48', '2021-05-31 13:56:32');
INSERT INTO `arsys_student` VALUES (421, 213, 2, 2, 22, '1703016', 's1703016', 'Teuku Faisal Ibrahim', 'Faisal Ibrahim', NULL, NULL, '082114077724', 'faisalibrahim8080@gmail.com', '2021-05-31 15:12:28', '2021-05-31 15:13:11');
INSERT INTO `arsys_student` VALUES (422, 139, 2, 2, 22, '1704659', 's1704659', 'Muhammad Fahri', 'Hermawan', NULL, NULL, '081517106078', 'fahrihermawan88@gmail.com', '2021-05-31 18:59:46', '2021-05-31 18:59:46');
INSERT INTO `arsys_student` VALUES (423, 216, 1, 2, 5, '1700760', 's1700760', 'Ahmad Sahrul ', 'Kamal', NULL, NULL, '0895365231309', 'ahmadsahrulkamal@upi.edu', '2021-06-09 11:20:36', '2021-06-09 14:13:16');
INSERT INTO `arsys_student` VALUES (424, 221, 1, 2, 5, '1701025', 's1701025', 'Afif ', 'Lukmansyah', NULL, NULL, '082298278860', 'Afiflukmansyah58@gmail.com', '2021-06-10 13:24:10', '2021-06-10 13:24:48');
INSERT INTO `arsys_student` VALUES (425, 159, 2, 2, 11, '1704797', 's1704797', 'Ilham', 'Sangaji', NULL, NULL, '089666883318', 'ilhamsangaji16@upi.edu', '2021-06-11 16:57:38', '2021-06-11 18:26:40');
INSERT INTO `arsys_student` VALUES (426, 222, 1, 2, 3, '1704405', 's1704405', 'Alfi', 'Syahrin', NULL, NULL, '082272809824', 'alfi.apin@upi.edu', '2021-06-13 12:43:57', '2021-06-13 12:43:57');
INSERT INTO `arsys_student` VALUES (427, 135, 2, 3, 4, '1702855', 's1702855', 'Hudan', 'Muhammad Muntashir ', NULL, NULL, '082216074361', 'hudanmuhmun@gmail.com', '2021-06-14 19:55:39', '2021-06-14 19:55:39');
INSERT INTO `arsys_student` VALUES (428, 230, 1, 2, 5, '1705397', 's1705397', 'Adji', 'Mulyo', NULL, NULL, '089660315482', 'adjimulyo@upi.edu', '2021-06-20 11:38:37', '2021-06-20 11:39:17');
INSERT INTO `arsys_student` VALUES (429, 234, 2, 3, 4, '1701739', 's1701739', 'Rd Saifan Fachri ', 'Azharan', NULL, NULL, '+6281312442307', 'rdsaifan@gmail.com', '2021-06-22 21:24:44', '2021-06-22 21:27:47');
INSERT INTO `arsys_student` VALUES (430, 236, 1, 2, 18, '1705533', 's1705533', 'Jonathan', 'Christian', NULL, NULL, '082215341445', 'jonathanpanja@upi.edu', '2021-06-23 19:06:41', '2021-06-23 19:07:44');
INSERT INTO `arsys_student` VALUES (431, 110, 2, 2, 4, '1700588', 's1700588', 'Ayu Siti', 'Salsabila', NULL, NULL, '081220781879', 'salsabilaayu29@upi.edu', '2021-06-23 21:29:14', '2021-06-24 13:55:52');
INSERT INTO `arsys_student` VALUES (432, 235, 2, 2, 22, '1704603', 's1704603', 'Ifthar Riza ', 'Muzakki', NULL, NULL, '082260758475', 'ifthariza123@upi.edu', '2021-06-24 15:06:23', '2021-06-24 15:07:21');
INSERT INTO `arsys_student` VALUES (433, 200, 2, 2, 8, '1703965', 's1703965', 'Salomo', 'Arief', NULL, NULL, '088802357684', 'salomoarief10@upi.edu', '2021-06-28 10:39:47', '2021-06-28 12:35:40');
INSERT INTO `arsys_student` VALUES (434, 242, 2, 3, 4, '1701523', 's1701523', 'Tessa', 'Lugiani Ramadhanty', NULL, NULL, '085222863866', 'tessalugianir@upi.edu', '2021-07-01 10:29:19', '2021-12-17 20:46:16');
INSERT INTO `arsys_student` VALUES (435, 170, 2, 2, 28, '1704313', 's1704313', 'Azhar', 'Mochammad Ansor', NULL, NULL, '0895610457555', 'azharel54@upi.edu', '2021-07-09 07:26:36', '2021-07-09 07:26:36');
INSERT INTO `arsys_student` VALUES (436, 243, 2, 2, 16, '1701487', 's1701487', 'Muhammad dzaky ', 'Shiddik pahresi', NULL, NULL, '082117400870', 'mdzakysp@gmail.com', '2021-07-14 11:40:55', '2021-07-14 11:40:55');
INSERT INTO `arsys_student` VALUES (437, 111, 2, 2, 15, '1703543', 's1703543', 'Josua Kevin Anderson', 'Saragih', NULL, NULL, '082117565019', 'josuakevinas2@upi.edu', '2021-08-02 16:27:18', '2021-08-02 16:27:18');
INSERT INTO `arsys_student` VALUES (438, 206, 2, 2, 31, '1705390', 's1705390', 'MUHAMMAD', 'AMMAR FADHYL', NULL, NULL, '085871182298', 'ammar.fadil21@gmail.com', '2021-08-10 17:13:18', '2021-08-17 18:43:26');
INSERT INTO `arsys_student` VALUES (439, 268, 2, 2, 26, '1704414', 's1704414', 'Muhammad Rizki', 'Gumelar', NULL, NULL, '087832001731', 'mrizkigumelar@gmail.com', '2021-08-13 14:45:51', '2021-10-15 09:37:08');
INSERT INTO `arsys_student` VALUES (440, 377, 1, 3, 31, '1800259', 's1800259', 'Yanda Mochamad ', 'Hasbial', NULL, NULL, '089604019577', 'yandaamh06@upi.edu', '2021-08-24 15:24:42', '2021-11-17 12:54:56');
INSERT INTO `arsys_student` VALUES (441, 405, 2, 2, 2, '2000268', 's2000268', 'Dadan Hamdalah', 'Kahfi', NULL, NULL, '08886384549', 'dadanhamdalah@upi.edu', '2021-08-29 20:52:48', '2021-08-29 20:55:35');
INSERT INTO `arsys_student` VALUES (442, 421, 2, 2, 26, '2000064', 's2000064', 'Ikhsan', 'Viantoro', NULL, NULL, '081312589798', 'ikhsanviantoro@upi.edu', '2021-08-29 21:10:25', '2021-08-29 21:10:25');
INSERT INTO `arsys_student` VALUES (443, 443, 2, 3, 26, '2000916', 's2000916', 'Selin', 'Permata', NULL, NULL, '082118471168', 'Selin@upi.edu', '2021-08-29 21:15:44', '2021-08-29 21:16:54');
INSERT INTO `arsys_student` VALUES (444, 429, 2, 1, 26, '2001610', 's2001610', 'Reza', 'Fauzan', NULL, NULL, '085156468549', 'rezafauzan@upi.edu', '2021-08-29 21:27:57', '2022-02-01 13:39:16');
INSERT INTO `arsys_student` VALUES (445, 432, 2, 2, 2, '2003035', 's2003035', 'Akbar Abdul', 'Rozak', NULL, NULL, '082121457045', 'akbar@upi.edu', '2021-08-29 21:35:01', '2021-08-29 21:35:01');
INSERT INTO `arsys_student` VALUES (446, 554, 1, 1, 2, '1801389', 's1801389', 'Fahmi', 'Jabbar', NULL, NULL, '6285871763101', 'fahmijabbar@upi.edu', '2021-09-13 14:57:45', '2021-09-13 14:57:45');
INSERT INTO `arsys_student` VALUES (447, 925, 1, 1, 2, '1804014', 's1804014', 'Egi', 'Saputra', NULL, NULL, '081901233418', 'egisaputra@upi.edu', '2021-09-13 15:14:51', '2021-09-13 15:16:01');
INSERT INTO `arsys_student` VALUES (448, 932, 2, 2, 26, '1700285', 's1700285', 'ilham', 'yohanda', NULL, NULL, '082217339267', 'ilhamyohanda001@gmail.com', '2021-09-14 13:02:23', '2021-09-14 13:02:23');
INSERT INTO `arsys_student` VALUES (449, 561, 1, 1, 2, '1801204', 's1801204', 'Anis', 'Khoirun Nisa', NULL, NULL, '089525902669', 'aniskhoirunnisa@upi.edu', '2021-09-17 08:10:12', '2022-12-05 03:09:07');
INSERT INTO `arsys_student` VALUES (450, 380, 1, 1, 2, '1806068', 's1806068', 'Ibrohim', '', NULL, NULL, '089620999620', 'ibrohim@upi.edu', '2021-09-19 16:38:20', '2022-08-16 02:32:49');
INSERT INTO `arsys_student` VALUES (451, 588, 1, 1, 2, '1805690', 's1805690', 'Fahmi', 'Huwaidi', NULL, NULL, '+6289601680660', 'fahmihuwaidi12@upi.edu', '2021-09-19 20:07:12', '2022-08-05 02:52:16');
INSERT INTO `arsys_student` VALUES (452, 560, 1, 1, 2, '1806612', 's1806612', 'Bella Az Zahra', 'Krisnoputri', NULL, NULL, '087822030113', 'bellazahraputri@upi.edu', '2021-09-20 12:43:39', '2021-10-02 08:15:03');
INSERT INTO `arsys_student` VALUES (453, 558, 1, 1, 2, '1804408', 's1804408', 'Agung', 'Purnama Banyu', NULL, NULL, '082127263253', 'apb@upi.edu', '2021-09-20 13:35:41', '2021-09-20 13:36:21');
INSERT INTO `arsys_student` VALUES (454, 557, 1, 1, 2, '1800292', 's1800292', 'Arman Manda', 'Fauzan', NULL, NULL, '+6281280839492', 'armanmandafauzan@upi.edu', '2021-09-20 13:36:20', '2021-09-20 13:36:20');
INSERT INTO `arsys_student` VALUES (455, 266, 2, 2, 31, '1708061', 's1708061', 'Irfan', 'Satiya Pradana', NULL, NULL, '081394419664', 'irfansatiyap@upi.edu', '2021-09-22 14:38:24', '2021-10-15 07:57:40');
INSERT INTO `arsys_student` VALUES (456, 248, 2, 2, 31, '1708064', 's1708064', 'Moch Ikbal', 'Nugraha', NULL, NULL, '0852-1599-6272', 'ibong@upi.edu', '2021-09-23 18:11:17', '2022-05-21 06:17:54');
INSERT INTO `arsys_student` VALUES (457, 937, 2, 2, 2, '1501307', 's1501307', 'Muhammad Ali', 'Al Faridzy', NULL, NULL, '08997769796', 'ali150697@gmail.com', '2021-09-24 09:42:59', '2021-09-24 09:43:44');
INSERT INTO `arsys_student` VALUES (458, 938, 2, 2, 2, '1602121', 's1602121', 'Rizky', 'Lukman Hakim', NULL, NULL, '085794412477', 'radenrizkylh@gmail.com', '2021-09-24 18:06:25', '2022-07-30 11:13:57');
INSERT INTO `arsys_student` VALUES (459, 638, 2, 2, 31, '1602106', 's1602106', 'Septian', 'Mulyadarma', NULL, NULL, '08111047499', 'septianmd@student.upi.edu', '2021-09-24 18:31:01', '2021-09-24 18:31:01');
INSERT INTO `arsys_student` VALUES (460, 261, 2, 2, 2, '1602101', 's1602101', 'Moch. Faisal', 'Bahri', NULL, NULL, '081389579642', 'faisalbahrimoch@gmail.com', '2021-09-27 11:52:52', '2022-08-04 06:59:09');
INSERT INTO `arsys_student` VALUES (461, 940, 1, 2, 31, '1607655', 's1607655', 'Reza', 'Aditiana', NULL, NULL, '089616962755', 'rezaaditiana@student.upi.edu', '2021-09-28 10:27:05', '2021-09-28 10:27:48');
INSERT INTO `arsys_student` VALUES (462, 281, 2, 2, 26, '1807741', 's1807741', 'Deafrida Oxaura ', 'Albana', NULL, NULL, '081384806266', 'deafridaoxaura@upi.edu', '2021-09-28 11:30:38', '2021-09-28 11:30:38');
INSERT INTO `arsys_student` VALUES (463, 355, 2, 2, 26, '1804298', 's1804298', 'Nanda', 'Fauziah', NULL, NULL, '081283925658', 'nanzifauziah@gmail.com', '2021-09-28 11:34:37', '2021-09-28 11:34:37');
INSERT INTO `arsys_student` VALUES (464, 903, 1, 1, 2, '1801080', 's1801080', 'Nurfaridha', 'Ariyani', NULL, NULL, '0852 1029 2913', 'nurfaridhaariyani@gmail.com', '2021-09-30 21:11:04', '2021-09-30 21:12:34');
INSERT INTO `arsys_student` VALUES (465, 254, 1, 1, 2, '1800081', 's1800081', 'Nada', 'Sadidah', NULL, NULL, '089666089659', 'nadasadidah@upi.edu', '2021-10-01 08:10:22', '2021-10-01 08:10:22');
INSERT INTO `arsys_student` VALUES (466, 742, 1, 1, 2, '1801520', 's1801520', 'Jely Siti', 'Nurhodijah', NULL, NULL, '081223858732', 'jelysn@upi.edu', '2021-10-01 23:07:11', '2021-10-01 23:07:32');
INSERT INTO `arsys_student` VALUES (467, 381, 1, 2, 15, '1804536', 's1804536', 'Mukhamad Ayes', 'Umam', NULL, NULL, '085161386379', 'ayes_umam@upi.edu', '2021-10-02 09:05:30', '2022-08-08 06:14:52');
INSERT INTO `arsys_student` VALUES (468, 805, 1, 2, 2, '1805044', 's1805044', 'Deden', 'Emil Salam', NULL, NULL, '08886212929', 'dedenemil02@upi.edu', '2021-10-02 09:45:19', '2021-10-02 09:45:19');
INSERT INTO `arsys_student` VALUES (469, 941, 1, 2, 2, '1804481', 's1804481', 'Muhamad Nur', 'Fadilah', NULL, NULL, '083130542625', 'mnurfadilah12345@upi.edu', '2021-10-02 09:46:49', '2022-07-13 07:34:51');
INSERT INTO `arsys_student` VALUES (470, 714, 1, 2, 15, '1807130', 's1807130', 'Hansa Rafilah', 'Khairunnisa', NULL, NULL, '085797738248', 'hansarafilah@upi.edu', '2021-10-02 09:48:06', '2021-10-02 09:48:06');
INSERT INTO `arsys_student` VALUES (471, 807, 1, 2, 2, '1807461', 's1807461', 'FITRI RUSTIKA ', 'MAHARANI', NULL, NULL, '085159983794', 'fytriustika@upi.edu', '2021-10-02 11:57:45', '2021-10-02 11:59:25');
INSERT INTO `arsys_student` VALUES (472, 837, 1, 2, 2, '1801085', 's1801085', 'Muhammad Alif', 'Akmaluddin', NULL, NULL, '089635166614', 'muhammadalifakmal@upi.edu', '2021-10-02 12:22:09', '2021-10-02 12:22:09');
INSERT INTO `arsys_student` VALUES (473, 374, 1, 2, 2, '1806685', 's1806685', 'Viery', 'Wiguna Ridwansyah', NULL, NULL, '085927793028', 'vierywiguna@upi.edu', '2021-10-02 22:27:14', '2022-06-30 22:03:08');
INSERT INTO `arsys_student` VALUES (474, 757, 1, 2, 2, '1804016', 's1804016', 'Rachmalia Dwi', 'Latifah', NULL, NULL, '085860303108', 'rachmaliadwi@upi.edu', '2021-10-03 11:19:46', '2021-10-07 10:21:31');
INSERT INTO `arsys_student` VALUES (475, 255, 1, 2, 2, '1807197', 's1807197', 'Lugiyana', '', NULL, NULL, '082120641150', 'lugiyana90@upi.edu', '2021-10-03 15:03:11', '2022-07-18 09:48:30');
INSERT INTO `arsys_student` VALUES (476, 258, 1, 2, 2, '1800387', 's1800387', 'Taufik ', 'Ramdhani', NULL, NULL, '081387878046', 'taufikdhani20@gmail.com', '2021-10-03 15:35:58', '2021-10-03 15:37:56');
INSERT INTO `arsys_student` VALUES (477, 257, 1, 2, 2, '1807520', 's1807520', 'NASYID AGHITS ', 'SUMARNA', NULL, NULL, '083820410189', 'nasyidaghits07@upi.edu', '2021-10-03 18:49:53', '2021-10-03 18:49:53');
INSERT INTO `arsys_student` VALUES (478, 600, 1, 1, 48, '1804691', 's1804691', 'Deri', 'Darmawan', NULL, NULL, '+6289630935277', 'deri.darmawan31@upi.edu', '2021-10-03 22:17:58', '2022-01-11 20:37:55');
INSERT INTO `arsys_student` VALUES (479, 615, 1, 1, 2, '1802286', 's1802286', 'Dani', 'Heryanto', NULL, NULL, '082316370566', 'daniheryanto@upi.edu', '2021-10-04 05:11:34', '2021-10-04 05:11:34');
INSERT INTO `arsys_student` VALUES (480, 862, 1, 2, 26, '1807736', 's1807736', 'Firda', 'Khairunnisa', NULL, NULL, '0895346947671', 'firdakhairunnisa@upi.edu', '2021-10-04 11:25:57', '2021-10-04 11:25:57');
INSERT INTO `arsys_student` VALUES (481, 943, 1, 2, 48, '1808090', 's1808090', 'Mohammad Rahadian', 'Gumelar', NULL, NULL, '085721473435', 'mrahadiangumelar@upi.edu', '2021-10-04 17:38:16', '2022-02-18 13:53:43');
INSERT INTO `arsys_student` VALUES (482, 559, 1, 1, 2, '1805053', 's1805053', 'Andi Iza Abelya Farhani', 'Sofyan', NULL, NULL, '+62895333767340', 'andizabelya@upi.edu', '2021-10-04 19:58:33', '2021-10-04 20:00:09');
INSERT INTO `arsys_student` VALUES (483, 678, 1, 1, 2, '1800601', 's1800601', 'Fikri', 'Nashrullah', NULL, NULL, '0895372777177', 'nashrullahfikri@upi.edu', '2021-10-04 20:44:55', '2021-10-04 20:44:55');
INSERT INTO `arsys_student` VALUES (484, 609, 1, 1, 31, '1800556', 's1800556', 'Gempita Sari ', 'Oetomo', NULL, NULL, '085714053378', 'gempita03@gmail.com', '2021-10-04 20:47:09', '2021-10-04 20:47:09');
INSERT INTO `arsys_student` VALUES (485, 302, 2, 3, 26, '1801366', 's1801366', 'Muhammad Irfan', 'Ghifari', NULL, NULL, '085722005675', 'mirfan.ghifari@upi.edu', '2021-10-05 14:19:24', '2021-10-05 14:19:24');
INSERT INTO `arsys_student` VALUES (486, 942, 1, 1, 31, '1804380', 's1804380', 'Difa Hana ', 'Nurhasanah', NULL, NULL, '081223174079', 'difahanan@upi.edu', '2021-10-05 16:11:07', '2021-10-05 16:13:45');
INSERT INTO `arsys_student` VALUES (487, 803, 1, 2, 2, '1804542', 's1804542', 'Winson', 'Geraldo', NULL, NULL, '081223716037', 'winsongeraldo@gmail.com', '2021-10-05 19:47:54', '2021-10-05 19:47:54');
INSERT INTO `arsys_student` VALUES (488, 570, 1, 1, 2, '1804386', 's1804386', 'Rifki', 'Zaelani', NULL, NULL, '081224802505', 'rifki.zaelani08@upi.edu', '2021-10-05 22:55:46', '2021-10-05 22:55:46');
INSERT INTO `arsys_student` VALUES (489, 598, 1, 1, 2, '1806473', 's1806473', 'Mukhammad Fajrin ', 'Falakhi', NULL, NULL, '081312271216', 'fajrin.falakhi24@upi.edu', '2021-10-06 22:38:33', '2021-10-06 22:39:03');
INSERT INTO `arsys_student` VALUES (490, 376, 1, 1, 2, '1804321', 's1804321', 'Lintang', '-', NULL, NULL, '081214685803', 'lintangwiduri8@gmail.com', '2021-10-07 08:45:32', '2021-10-07 08:45:32');
INSERT INTO `arsys_student` VALUES (491, 379, 1, 2, 2, '1801197', 's1801197', 'Candra', 'Wiradika', NULL, NULL, '081214158442', '29candra@upi.edu', '2021-10-07 10:28:49', '2022-07-16 02:40:46');
INSERT INTO `arsys_student` VALUES (492, 946, 1, 2, 2, '1802397', 's1802397', 'Asep', 'Setia Mulyana', NULL, NULL, '08989352789', 'asepsetiamulyana99@gmail.com', '2021-10-07 11:31:52', '2022-08-03 01:36:20');
INSERT INTO `arsys_student` VALUES (493, 260, 1, 2, 26, '1807125', 's1807125', 'Isna Rizka', 'Amaliah', NULL, NULL, '081291477354', 'isna.rizkaamaliah@upi.edu', '2021-10-07 13:06:32', '2021-10-07 13:06:32');
INSERT INTO `arsys_student` VALUES (494, 931, 2, 2, 2, '1701770', 's1701770', 'Rizki', 'Sundara', NULL, NULL, '087727723220', 'rizkisundara@upi.edu', '2021-10-07 14:56:52', '2021-10-07 14:58:29');
INSERT INTO `arsys_student` VALUES (495, 827, 1, 1, 2, '1808288', 's1808288', 'Amelia', 'Alawiyah', NULL, NULL, '085659578914', 'ameliaalawiyah@upi.edu', '2021-10-07 17:50:17', '2021-10-07 17:54:43');
INSERT INTO `arsys_student` VALUES (496, 378, 1, 1, 15, '1802202', 's1802202', 'Wisnu', 'Alamsyah', NULL, NULL, '085722307714', 'Wisnu1602@upi.edu', '2021-10-07 19:04:34', '2021-10-07 19:05:51');
INSERT INTO `arsys_student` VALUES (497, 876, 1, 1, 31, '1800910', 's1800910', 'Claudia', 'Lorenza', NULL, NULL, '081517149525', 'claudialorenza@upi.edu', '2021-10-07 19:24:34', '2021-10-07 19:27:57');
INSERT INTO `arsys_student` VALUES (498, 593, 1, 1, 2, '1806762', 's1806762', 'Diastuti', 'Nurmalasari', NULL, NULL, '089695041086', 'diasnurma25@gmail.com', '2021-10-08 10:10:17', '2021-10-08 10:20:57');
INSERT INTO `arsys_student` VALUES (499, 948, 1, 2, 26, '1808386', 's1808386', ' Marshela', 'Riyani Putri', NULL, NULL, '081214585809', 'marshelarp12@upi.edu', '2021-10-08 10:24:56', '2021-10-08 10:26:32');
INSERT INTO `arsys_student` VALUES (500, 859, 1, 1, 2, '1807347', 's1807347', 'Rizki Latif', 'Hidayat', NULL, NULL, '085316773115', 'rizki.latif.hidayat@upi.edu', '2021-10-08 16:30:41', '2021-10-16 08:28:58');
INSERT INTO `arsys_student` VALUES (501, 373, 1, 2, 2, '1807482', 's1807482', 'Marhab', 'Musaid', NULL, NULL, '085794179357', 'marhapketoprak@upi.edu', '2021-10-09 15:19:14', '2022-08-01 07:33:13');
INSERT INTO `arsys_student` VALUES (502, 371, 1, 2, 2, '1808350', 's1808350', 'Achmad Ramdani', 'Herwan', NULL, NULL, '082214574216', 'achmadrd@upi.edu', '2021-10-10 05:02:28', '2021-10-10 05:02:28');
INSERT INTO `arsys_student` VALUES (503, 720, 1, 3, 15, '1801069', 's1801069', 'Adha', 'Vika Nurlaela', NULL, NULL, '087786484581', 'littleagret23@gmail.com', '2021-10-10 12:30:21', '2021-10-10 12:30:21');
INSERT INTO `arsys_student` VALUES (504, 878, 1, 1, 15, '1804487', 's1804487', 'ubaidillah', '', NULL, NULL, '082240424960', 'ubaitok@upi.edu', '2021-10-10 18:33:39', '2021-10-10 18:35:40');
INSERT INTO `arsys_student` VALUES (505, 930, 2, 2, 26, '1702966', 's1702966', 'Hamim', 'Ali Husni', NULL, NULL, '088222034628', 'hamim@upi.edu', '2021-10-11 15:47:36', '2021-10-11 15:47:36');
INSERT INTO `arsys_student` VALUES (506, 400, 1, 1, 2, '1806970', 's1806970', 'Intan', 'Apriani', NULL, NULL, '087724129874', 'intan14apriani@upi.edu', '2021-10-11 22:09:58', '2021-10-11 22:11:18');
INSERT INTO `arsys_student` VALUES (507, 951, 1, 2, 38, '1808218', 's1808218', 'Triangga ', 'Pramudyo Putra', NULL, NULL, '081322912800', 'trianggapp@gmail.com', '2021-10-12 17:27:45', '2021-10-12 17:27:45');
INSERT INTO `arsys_student` VALUES (508, 936, 1, 2, 38, '1804656', 's1804656', 'Sultan Kevin', 'Tanjilal', NULL, NULL, '082213750397', 'sultanjilal@upi.edu', '2021-10-12 21:11:07', '2021-10-12 21:11:56');
INSERT INTO `arsys_student` VALUES (509, 748, 1, 2, 2, '1805336', 's1805336', 'Gaia Tri', 'Meilawati', NULL, NULL, '087719307685', 'gaiatrm@upi.edu', '2021-10-12 23:15:22', '2021-10-12 23:15:22');
INSERT INTO `arsys_student` VALUES (510, 350, 2, 2, 26, '1704272', 's1704272', 'Lugastyan', 'Havid Pratama', NULL, NULL, '088287366127', 'tyan.lugas@gmail.com', '2021-10-13 07:45:58', '2021-10-13 07:45:58');
INSERT INTO `arsys_student` VALUES (511, 952, 1, 2, 15, '1800466', 's1800466', 'Riva ', 'Rachellia', NULL, NULL, '089628743828', 'rivara@upi.edu', '2021-10-13 19:20:32', '2022-06-12 14:49:19');
INSERT INTO `arsys_student` VALUES (512, 800, 1, 2, 15, '1808363', 's1808363', 'Mikha Christie ', 'Oktavianni', NULL, NULL, '08997718849', 'oktavianni_mikhachristie@upi.edu', '2021-10-14 10:08:24', '2022-06-19 09:14:29');
INSERT INTO `arsys_student` VALUES (513, 944, 1, 2, 2, '1805346', 's1805346', 'Saiful', 'Ikhwan', NULL, NULL, '082261124238', 'saifulikhwan1805346@upi.edu', '2021-10-14 21:30:45', '2021-10-14 21:30:45');
INSERT INTO `arsys_student` VALUES (514, 953, 1, 2, 2, '1807948', 's1807948', 'Billy', 'Maulana', NULL, NULL, '089659084699', '1807948@upi.edu', '2021-10-15 00:40:05', '2022-06-22 07:40:42');
INSERT INTO `arsys_student` VALUES (515, 891, 1, 2, 2, '1808207', 's1808207', 'NAUFAL ', 'HILMYANTO', NULL, NULL, '082122202901', 'nhilmyanto@upi.edu', '2021-10-15 03:32:33', '2021-10-15 03:33:05');
INSERT INTO `arsys_student` VALUES (516, 774, 1, 3, 26, '1806553', 's1806553', 'Muhammad Syufyan', 'Nur Ilhami', NULL, NULL, '082217033236', 'msyufyan16@upi.edu', '2021-10-15 09:22:17', '2021-10-15 09:22:17');
INSERT INTO `arsys_student` VALUES (517, 771, 1, 3, 15, '1800869', 's1800869', 'Sekar', 'Kinanti Nugraheni', NULL, NULL, '+6281553228774', 'sekarkinan@upi.edu', '2021-10-15 15:03:31', '2021-10-15 15:04:20');
INSERT INTO `arsys_student` VALUES (518, 762, 1, 2, 38, '1806028', 's1806028', 'Panji', 'Rusmawan', NULL, NULL, '081222891283', 'panji.26@upi.edu', '2021-10-15 21:48:09', '2021-10-15 21:48:09');
INSERT INTO `arsys_student` VALUES (519, 809, 1, 2, 2, '1801482', 's1801482', 'Muhammad Ilham', 'Januar Al-Fath', NULL, NULL, '08978442226', 'ilhamjanuar@upi.edu', '2021-10-15 22:34:10', '2021-10-15 22:34:10');
INSERT INTO `arsys_student` VALUES (520, 832, 1, 3, 15, '1804660', 's1804660', 'Tanty', 'Mustary', NULL, NULL, '082115494950', 'tantymustary@upi.edu', '2021-10-17 22:57:49', '2022-01-10 18:42:15');
INSERT INTO `arsys_student` VALUES (521, 535, 2, 2, 26, '1806548', 's1806548', 'Yeri Pramadhan', 'Hermanu', NULL, NULL, '085871404641', 'yeripramadhan@upi.edu', '2021-10-18 10:26:20', '2021-10-18 10:27:25');
INSERT INTO `arsys_student` VALUES (522, 707, 1, 3, 15, '1807247', 's1807247', 'Nazhalia Fadhlurrahman', 'Akfisa', NULL, NULL, '081386885138', 'nazhaliafa@upi.edu', '2021-10-18 16:31:08', '2022-07-16 06:45:00');
INSERT INTO `arsys_student` VALUES (523, 375, 1, 3, 2, '1805364', 's1805364', 'Hadi', 'Indrawan', NULL, NULL, '087830000351', 'hadiindrawan157@upi.edu', '2021-10-18 21:24:12', '2021-10-18 21:24:12');
INSERT INTO `arsys_student` VALUES (524, 382, 1, 3, 15, '1802344', 's1802344', 'Risa', 'Permatasari', NULL, NULL, '085222516093', 'risapermatasari@upi.edu', '2021-10-19 06:48:16', '2021-10-19 06:48:16');
INSERT INTO `arsys_student` VALUES (525, 917, 1, 3, 2, '1806151', 's1806151', 'Kiki', 'Muhamad Soleh', NULL, NULL, '081222169287', 'kiki.muhamad.soleh@upi.edu', '2021-10-19 07:20:32', '2021-10-19 08:11:42');
INSERT INTO `arsys_student` VALUES (526, 955, 1, 2, 15, '1806833', 's1806833', 'Heri ', 'Kuswanto', NULL, NULL, '087766632111', 'heri32111@upi.edu', '2021-10-20 12:18:38', '2021-10-20 12:18:38');
INSERT INTO `arsys_student` VALUES (527, 956, 1, 2, 38, '1801514', 's1801514', 'Muhammad ', 'Nufail Hermawandi', NULL, NULL, '081912707915', 'nufailh@upi.edu', '2021-10-22 00:09:49', '2022-07-28 07:19:03');
INSERT INTO `arsys_student` VALUES (528, 957, 2, 3, 15, '1703061', 's1703061', 'Audi Diva', 'Fakhrudin', NULL, NULL, '087824335926', 'audidivaf@gmail.com', '2021-10-25 06:28:12', '2021-10-25 06:29:14');
INSERT INTO `arsys_student` VALUES (529, 958, 1, 2, 15, '1702222', 's1702222', 'TRI', 'SUGIHARTO', NULL, NULL, '0895618745107', 'standheresugiharto7@gmail.com', '2021-10-25 19:52:45', '2021-10-29 17:28:41');
INSERT INTO `arsys_student` VALUES (530, 822, 1, 1, 2, '1806371', 's1806371', 'INTAN SEPTYA', 'ARYANI', NULL, NULL, '085799339331', 'intanseptyaariyani02@upi.edu', '2021-10-26 18:31:34', '2021-10-26 18:32:54');
INSERT INTO `arsys_student` VALUES (531, 372, 1, 2, 31, '1801015', 's1801015', 'Tubagus', 'Lucky Trenggana', NULL, NULL, '083100685684', 'Tubaguslucky15@gmail.com', '2021-10-27 08:14:07', '2021-10-27 08:14:07');
INSERT INTO `arsys_student` VALUES (532, 831, 1, 3, 15, '1801610', 's1801610', 'Raja Pasha Agastya', 'Zukhruf Firdausi Sulaksana', NULL, NULL, '089507358715', 'raja.pasha.azfs@upi.edu', '2021-10-29 11:15:46', '2021-10-29 11:15:46');
INSERT INTO `arsys_student` VALUES (533, 280, 2, 3, 15, '1805565', 's1805565', 'Dwicky', 'Darmawan', NULL, NULL, '08157169971', 'dwickydarmawan22@upi.edu', '2021-10-29 11:16:57', '2021-10-29 11:17:57');
INSERT INTO `arsys_student` VALUES (534, 256, 1, 3, 15, '1804439', 's1804439', 'Rizaldi ', 'Rizqi Asyraf', NULL, NULL, '081382236273', 'rizaldi@upi.edu', '2021-10-29 15:03:20', '2021-10-29 15:03:20');
INSERT INTO `arsys_student` VALUES (535, 960, 1, 3, 15, '1800461', 's1800461', 'Rido', 'Rudiana', NULL, NULL, '089663600024', 'rido@upi.edu', '2021-10-29 22:33:52', '2021-10-29 22:40:12');
INSERT INTO `arsys_student` VALUES (536, 849, 1, 3, 15, '1804283', 's1804283', 'RIZKY MUHAMAD', 'AZIS', NULL, NULL, '082127001703', 'rizkymazis@upi.edu', '2021-11-02 12:18:30', '2021-11-03 08:42:29');
INSERT INTO `arsys_student` VALUES (537, 351, 2, 2, 2, '1804431', 's1804431', 'Teddi', 'Yudiana', NULL, NULL, '082127273335', 'teddiyudiana@upi.edu', '2021-11-03 01:30:19', '2021-11-03 01:32:15');
INSERT INTO `arsys_student` VALUES (538, 743, 2, 2, 2, '1800367', 's1800367', 'Nasywa ', 'Imanuddin', NULL, NULL, '081382980146', 'nasywaimanuddin@upi.edu', '2021-11-03 12:02:22', '2021-11-03 12:02:22');
INSERT INTO `arsys_student` VALUES (539, 949, 1, 3, 26, '1807387', 's1807387', 'Jihad Ahmad ', 'Muta\'ali', NULL, NULL, '085871082842', 'jihadahmad097@upi.edu', '2021-11-03 12:55:07', '2021-11-25 06:05:44');
INSERT INTO `arsys_student` VALUES (540, 626, 2, 3, 26, '1801386', 's1801386', 'Ariq', 'Rizqullah', NULL, NULL, '085155222824', 'ariqrizqullah@upi.edu', '2021-11-03 19:28:35', '2021-11-03 19:28:35');
INSERT INTO `arsys_student` VALUES (541, 963, 2, 2, 2, '1600308', 's1600308', 'ILYAS HABIL', 'AGNIA', NULL, NULL, '085157469866', 'ilyas_habil@student.upi.edu', '2021-11-10 08:07:21', '2021-11-10 08:07:21');
INSERT INTO `arsys_student` VALUES (542, 826, 1, 2, 2, '1806074', 's1806074', 'Akhmad Faiz', 'Idris', NULL, NULL, '08971197118', 'faizieakhmad@upi.edu', '2021-11-10 08:34:16', '2021-11-10 08:35:29');
INSERT INTO `arsys_student` VALUES (543, 661, 2, 2, 48, '1807031', 's1807031', 'MAULANA', 'AFANDI M', NULL, NULL, '081261164035', 'maulanaafandi12@upi.edu', '2021-11-12 18:21:39', '2022-05-25 15:18:41');
INSERT INTO `arsys_student` VALUES (544, 815, 1, 3, 15, '1804534', 's1804534', 'Ary', 'Ardiansyah', NULL, NULL, '087724719882', 'ary@upi.edu', '2021-11-14 13:04:10', '2021-11-14 13:04:10');
INSERT INTO `arsys_student` VALUES (545, 288, 2, 2, 2, '1807323', 's1807323', 'Nafis Wildani', 'Luwiyanto', NULL, NULL, '085798613182', 'nafiswildani3@upi.edu', '2021-11-15 13:31:25', '2021-11-15 13:32:51');
INSERT INTO `arsys_student` VALUES (546, 965, 2, 3, 2, '1705125', 's1705125', 'Edgar', 'Ariel Majied', NULL, NULL, '085863508302', 'edgar@upi.edu', '2021-11-17 15:22:54', '2021-11-17 15:23:41');
INSERT INTO `arsys_student` VALUES (547, 966, 2, 2, 26, '1606796', 's1606796', 'yoghafine', 'agasti', NULL, NULL, '08988975944', 'yoghafine@student.upi.edu', '2021-11-19 20:01:42', '2021-11-19 20:03:23');
INSERT INTO `arsys_student` VALUES (548, 806, 1, 3, 31, '1802022', 's1802022', 'Jihad', 'Akbar', NULL, NULL, '087730264225', 'jakbar2212@upi.edu', '2021-11-25 06:04:05', '2021-11-25 06:04:05');
INSERT INTO `arsys_student` VALUES (549, 284, 2, 2, 26, '1806181', 's1806181', 'Nurdin', '-', NULL, NULL, '085720184653', 'nurdinsukabumi177@gmail.com', '2021-11-25 09:44:54', '2022-08-22 00:46:39');
INSERT INTO `arsys_student` VALUES (550, 286, 2, 2, 2, '1806066', 's1806066', 'Suroto', '-', NULL, NULL, '0895372323028', 'suroto0427@gmail.com', '2021-11-25 10:25:14', '2022-07-20 09:21:10');
INSERT INTO `arsys_student` VALUES (551, 611, 2, 3, 26, '1800636', 's1800636', 'Arfah', 'Athiroh', NULL, NULL, '089690892852', 'arfahathiroh@upi.edu', '2021-11-25 11:26:02', '2021-11-25 11:26:02');
INSERT INTO `arsys_student` VALUES (552, 968, 2, 2, 26, '1704432', 's1704432', 'Farhan', 'Aditya Rizky', NULL, NULL, '089664566343', 'faradirizky@gmail.com', '2021-11-25 11:51:58', '2021-11-25 11:52:48');
INSERT INTO `arsys_student` VALUES (553, 715, 2, 2, 2, '1804585', 's1804585', 'Muhammad', 'Irsyad Maulana', NULL, NULL, '082258457670', 'irsyad_maulana1@upi.edu', '2021-11-25 21:22:37', '2021-11-25 21:23:31');
INSERT INTO `arsys_student` VALUES (554, 829, 2, 2, 26, '1807511', 's1807511', 'Rio', 'Indra Nugraha', NULL, NULL, '089649601993', 'rioindranugraha23@upi.edu', '2021-12-06 21:44:07', '2021-12-06 21:45:31');
INSERT INTO `arsys_student` VALUES (555, 370, 2, 2, 26, '1806884', 's1806884', 'Adjie', 'Pamungkas', NULL, NULL, '089670711191', 'adjiepamungkas@upi.edu', '2021-12-08 17:52:54', '2021-12-08 17:52:54');
INSERT INTO `arsys_student` VALUES (556, 755, 1, 3, 15, '1806257', 's1806257', 'Rifa\'i Aryo ', 'Ananta ', NULL, NULL, '+6287873745650', 'rifai.aryo@upi.edu', '2021-12-16 07:41:21', '2021-12-16 07:42:53');
INSERT INTO `arsys_student` VALUES (557, 969, 2, 2, 2, '1801337', 's1801337', 'Rifqi Fathin', 'Al Farisi', NULL, NULL, '085322072222', 'rifqifathinalfarisi@upi.edu', '2021-12-16 09:51:10', '2022-11-29 23:03:43');
INSERT INTO `arsys_student` VALUES (558, 867, 1, 3, 26, '1806041', 's1806041', 'siti', 'Imas', NULL, NULL, '+62859118375706', 'sitisaazgreat@upi.edu', '2021-12-24 17:11:10', '2021-12-24 17:18:12');
INSERT INTO `arsys_student` VALUES (559, 971, 2, 2, 2, '1805371', 's1805371', 'Moh. Sifaul', 'Janan', NULL, NULL, '085155393876', 'sifauljanan@upi.edu', '2022-01-03 23:36:53', '2022-01-31 14:14:32');
INSERT INTO `arsys_student` VALUES (560, 31, 2, 3, 15, '1703293', 's1703293', 'Muhammad Kamil', 'Ridwan', NULL, NULL, '0823220409242', 'kamilridwan29@gmail.com', '2022-01-10 17:07:25', '2022-01-10 17:07:25');
INSERT INTO `arsys_student` VALUES (561, 975, 2, 2, 48, '1701631', 's1701631', 'Hanif', 'Abdurrafi', NULL, NULL, '085155016167', 'hanifabdurrafi@upi.edu', '2022-01-11 10:54:30', '2022-01-11 10:55:09');
INSERT INTO `arsys_student` VALUES (562, 369, 2, 2, 26, '1804980', 's1804980', 'Reihan', 'Mochammad Nizar', NULL, NULL, '082249317805', 'reihanizar@upi.edu', '2022-01-11 13:34:18', '2022-01-11 13:35:04');
INSERT INTO `arsys_student` VALUES (563, 580, 1, 1, 2, '1805107', 's1805107', 'Tendi', 'Adi Sudrajat', NULL, NULL, '089685745109', 'tendiasudrajat@upi.edu', '2022-01-13 11:59:51', '2022-02-15 13:57:58');
INSERT INTO `arsys_student` VALUES (564, 608, 2, 3, 48, '1800776', 's1800776', 'Adi', 'Ahmad Fauzan', NULL, NULL, '087826727831', 'adi.ahmadf@upi.edu', '2022-01-14 19:28:24', '2022-01-14 19:30:31');
INSERT INTO `arsys_student` VALUES (565, 976, 2, 2, 48, '1505925', 's1505925', 'Fauzan Adimas', 'Dicky', NULL, NULL, '082217278046', 'fauzan.adimas3@student.upi.edu', '2022-01-22 19:18:21', '2022-12-06 04:54:51');
INSERT INTO `arsys_student` VALUES (566, 283, 2, 2, 26, '1804036', 's1804036', 'Muhammad Feby', 'Nurrahman.R', NULL, NULL, '081287011434', 'muhammadfeby21@upi.edu', '2022-01-26 09:52:13', '2022-01-26 09:52:13');
INSERT INTO `arsys_student` VALUES (567, 632, 2, 2, 31, '1801493', 's1801493', 'Yayan ', 'Riyanto', NULL, NULL, '081280550883', 'yayanriyanto@upi.edu', '2022-01-29 14:11:24', '2022-01-29 14:11:24');
INSERT INTO `arsys_student` VALUES (568, 275, 1, 1, 2, '1901354', 's1901354', 'Robby Ikhfa', 'Nulfatwa', NULL, NULL, '089672141498', 'robbyin13@upi.edu', '2022-01-30 15:09:08', '2022-01-30 15:09:08');
INSERT INTO `arsys_student` VALUES (569, 250, 2, 2, 26, '1801017', 's1801017', 'Muhammad Athalla ', 'Xavier ', NULL, NULL, '08993333301', 'muhmdathalla@gmail.com ', '2022-01-31 08:26:59', '2022-05-20 02:06:36');
INSERT INTO `arsys_student` VALUES (570, 285, 2, 3, 26, '1803890', 's1803890', 'Abdullah', 'Irsyaad Syauqii', NULL, NULL, '081802043001', 'sabdullahirsyaad@upi.edu', '2022-01-31 20:20:16', '2022-01-31 20:20:42');
INSERT INTO `arsys_student` VALUES (571, 349, 2, 2, 26, '1808365', 's1808365', 'Gery', 'Adam Simangunsong', NULL, NULL, '081284802323', 'geryadamsimangunsong@upi.edu', '2022-01-31 20:56:05', '2022-08-27 09:12:24');
INSERT INTO `arsys_student` VALUES (572, 905, 1, 1, 48, '2008269', 's2008269', 'Ikhwal', 'Nurdin', NULL, NULL, '085157725836', 'ikhwal13@upi.edu', '2022-02-01 20:04:06', '2022-02-01 20:04:06');
INSERT INTO `arsys_student` VALUES (573, 298, 2, 2, 26, '1805410', 's1805410', 'ARDIEN ', 'MUSYAFFA` WARDHANA', NULL, NULL, '085156032157', 'ardienm@upi.edu', '2022-02-02 15:13:13', '2022-02-02 15:13:54');
INSERT INTO `arsys_student` VALUES (574, 833, 2, 2, 2, '1808120', 's1808120', 'Dimas Arif', 'Nugroho', NULL, NULL, '081386240046', 'dimasarifnugroho1@gmail.com', '2022-02-03 12:43:41', '2022-02-03 12:45:12');
INSERT INTO `arsys_student` VALUES (575, 277, 2, 2, 2, '1805101', 's1805101', 'Sigit', 'Tri Kusuma', NULL, NULL, '088218144812', 'sigittrikusuma@upi.edu', '2022-02-08 11:07:28', '2022-02-08 11:07:46');
INSERT INTO `arsys_student` VALUES (576, 939, 1, 2, 2, '1807421', 's1807421', 'Husni Nurfaizi', 'Setiady', NULL, NULL, '081320162418', '15nhusni@upi.edu', '2022-02-08 21:40:27', '2022-02-08 21:40:27');
INSERT INTO `arsys_student` VALUES (577, 801, 1, 1, 2, '1803908', 's1803908', 'Aldy Nurjaman', 'Riswansyah', NULL, NULL, '08989452805', 'aldynurjamanr@upi.edu', '2022-02-09 15:10:40', '2022-02-11 01:11:04');
INSERT INTO `arsys_student` VALUES (578, 967, 2, 2, 26, '1800118', 's1800118', 'Guruh Maulana', 'Mazid', NULL, NULL, '081322787911', 'guruhmaulana@upi.edu', '2022-02-10 12:38:32', '2022-03-16 04:04:55');
INSERT INTO `arsys_student` VALUES (579, 342, 2, 3, 15, '1804799', 's1804799', 'Alvin', 'Redzasyahdewa', NULL, NULL, '0817224123', 'alvinsyahdewa@gmail.com', '2022-02-11 21:25:06', '2022-02-11 21:25:06');
INSERT INTO `arsys_student` VALUES (580, 855, 2, 2, 2, '1808094', 's1808094', 'ANDHARESTA NUR GIOVANNIE ', 'S', NULL, NULL, '087889581074', 'andharestanrg@upi.edu', '2022-02-14 10:15:38', '2022-02-14 10:15:38');
INSERT INTO `arsys_student` VALUES (581, 846, 2, 2, 2, '1807427', 's1807427', 'Dewi', 'Sartika', NULL, NULL, '089696401693', 'dsartika@upi.edu', '2022-02-14 10:34:07', '2022-02-14 10:34:07');
INSERT INTO `arsys_student` VALUES (582, 278, 2, 2, 2, '1806597', 's1806597', 'LUTHFI', 'DWI AVERIL', NULL, NULL, '082261633258', 'luthfidwiaveril@upi.edu', '2022-02-25 06:11:06', '2022-02-25 06:11:06');
INSERT INTO `arsys_student` VALUES (583, 906, 2, 2, 48, '1807624', 's1807624', 'FAUZUL KARIM', 'DURIYANO', NULL, NULL, '087782917987', 'fauzul.karim@upi.edu', '2022-02-25 14:45:06', '2022-03-09 10:17:08');
INSERT INTO `arsys_student` VALUES (584, 610, 2, 2, 2, '1803936', 's1803936', 'Ibnu Hisyam', 'Mubarak', NULL, NULL, '085155223533', 'ibnuhisyammubarak@upi.edu', '2022-03-01 05:12:39', '2022-03-01 05:12:39');
INSERT INTO `arsys_student` VALUES (585, 276, 2, 2, 2, '1804791', 's1804791', 'Andre Ega', 'Wardani', NULL, NULL, '085155040530', 'andre_ega@upi.edu', '2022-03-01 07:20:29', '2022-06-20 03:34:09');
INSERT INTO `arsys_student` VALUES (586, 664, 2, 2, 2, '1804111', 's1804111', 'Halil Adhi', 'Pradistya', NULL, NULL, '085221590986', 'pradistya@upi.edu', '2022-03-01 07:24:42', '2022-03-01 07:24:42');
INSERT INTO `arsys_student` VALUES (587, 839, 2, 2, 26, '1800431', 's1800431', 'Agung', 'Gumelar', NULL, NULL, '0881022084995', 'agunggumelar22@upi.edu', '2022-03-03 08:58:12', '2022-03-03 08:58:12');
INSERT INTO `arsys_student` VALUES (588, 1019, 2, 3, 15, '1807957', 's1807957', 'Foibe Angelia', 'Doloksaribu', NULL, NULL, '08112197004', 'foibedoloksaribu@upi.edu', '2022-03-04 06:38:56', '2022-03-04 06:38:56');
INSERT INTO `arsys_student` VALUES (589, 1020, 2, 3, 2, '1703984', 's1703984', 'Muhammad Randi', 'Alwi', NULL, NULL, '082261871215', 'mrandialwi@gmail.com', '2022-03-07 03:57:55', '2022-03-07 03:57:55');
INSERT INTO `arsys_student` VALUES (590, 1021, 2, 3, 26, '1806464', 's1806464', 'Navis ', 'Abdullah Farhan', NULL, NULL, '+6282249667839', 'navisaf8@upi.edu', '2022-03-07 07:47:44', '2022-03-07 07:57:16');
INSERT INTO `arsys_student` VALUES (591, 614, 2, 3, 48, '1808070', 's1808070', 'Noval Rezky', 'Firwani', NULL, NULL, '082297040673', 'novalrezkyf@upi.edu', '2022-03-08 06:49:24', '2022-03-08 06:50:28');
INSERT INTO `arsys_student` VALUES (592, 1025, 2, 2, 2, '1705543', 's1705543', 'Muhammad Ardan ', 'Lutfi Ramadhan', NULL, NULL, '089693787599', 'ardanramadhan7@gmail.com', '2022-03-10 12:29:05', '2022-03-10 12:29:05');
INSERT INTO `arsys_student` VALUES (593, 368, 2, 2, 26, '1807456', 's1807456', 'Hefan', 'Yeremia', NULL, NULL, '085921898490', 'hefanyeremia200500@upi.edu', '2022-03-11 17:06:06', '2022-08-05 23:44:35');
INSERT INTO `arsys_student` VALUES (594, 836, 2, 2, 2, '1807871', 's1807871', 'Roni', 'Pasaribu', NULL, NULL, '082252239517', 'ronipasaribu@upi.edu', '2022-03-14 06:49:12', '2022-03-14 06:49:12');
INSERT INTO `arsys_student` VALUES (595, 916, 2, 3, 2, '1702740', 's1702740', 'Kiki', '-', NULL, NULL, '085316175472', 'kikirifki29@upi.edu', '2022-03-15 04:15:35', '2022-11-20 13:48:34');
INSERT INTO `arsys_student` VALUES (596, 606, 2, 3, 48, '1801065', 's1801065', 'Muhammad Azhar ', 'Baiquni ', NULL, NULL, '085659665087', 'mazharb35@upi.edu', '2022-03-19 00:05:55', '2022-03-19 00:05:55');
INSERT INTO `arsys_student` VALUES (597, 864, 2, 2, 15, '1806524', 's1806524', 'Noval', 'Firdausy', NULL, NULL, '082120505740', 'novalfirdausy81@gmail.com', '2022-03-23 07:15:36', '2022-03-23 07:17:47');
INSERT INTO `arsys_student` VALUES (598, 469, 2, 3, 26, '1800126', 's1800126', 'Meisi ', 'Ulandari', NULL, NULL, '082178334154', 'Meisiulandari@upi.edu', '2022-03-30 23:47:39', '2022-03-30 23:49:02');
INSERT INTO `arsys_student` VALUES (599, 730, 2, 3, 31, '1806536', 's1806536', 'Muhamad Agung', 'Gumelar', NULL, NULL, '087872871856', 'muhamadagung007@upi.edu', '2022-04-01 15:44:40', '2022-04-01 15:45:02');
INSERT INTO `arsys_student` VALUES (600, 1024, 2, 3, 15, '1807102', 's1807102', 'Hasna Elvans', 'Nuraisy', NULL, NULL, '085157748715', 'elvanshasna@gmail.com', '2022-04-03 04:23:26', '2022-04-03 04:23:26');
INSERT INTO `arsys_student` VALUES (601, 675, 2, 2, 26, '1501635', 's1501635', 'Mahfud', 'Gali Romdhoni', NULL, NULL, '082317022094', 'mahfudgali@student.upi.edu', '2022-04-12 05:48:07', '2022-11-30 07:15:44');
INSERT INTO `arsys_student` VALUES (602, 354, 2, 3, 15, '1804912', 's1804912', 'Sinta', 'Agustina', NULL, NULL, '081310123074', 'sintaagustina@upi.edu', '2022-04-13 13:49:27', '2022-04-13 13:53:52');
INSERT INTO `arsys_student` VALUES (603, 895, 2, 2, 26, '1804619', 's1804619', 'Muhammad Azra', 'Andika', NULL, NULL, '081809107557', 'azra3rut@upi.edu', '2022-04-14 14:56:33', '2022-04-14 14:56:33');
INSERT INTO `arsys_student` VALUES (604, 865, 2, 2, 2, '1802007', 's1802007', 'Angga', 'Adytya', NULL, NULL, '081214019267', 'anggaadytya@upi.edu', '2022-05-11 03:41:46', '2022-05-11 03:41:46');
INSERT INTO `arsys_student` VALUES (605, 843, 2, 2, 2, '1807679', 's1807679', 'Israj Muhammad', 'Ramdan Hakim', NULL, NULL, '+6285156478446', 'israjhakim@upi.edu', '2022-05-25 01:45:28', '2022-06-27 09:07:46');
INSERT INTO `arsys_student` VALUES (606, 549, 2, 2, 26, '1800710', 's1800710', 'Milzam ', 'Hindami Fauzan', NULL, NULL, '085322953662', 'milzamhindami@upi.edu', '2022-05-27 08:43:09', '2022-07-16 06:51:51');
INSERT INTO `arsys_student` VALUES (607, 950, 2, 3, 26, '1805629', 's1805629', 'Taqiyuddin Yazid', 'Zaidan', NULL, NULL, '0895342921677', 'yazidzaidan@upi.edu', '2022-05-28 05:17:18', '2022-11-14 09:36:52');
INSERT INTO `arsys_student` VALUES (608, 860, 1, 3, 31, '1900424', 's1900424', 'Jahril Nur', 'Fauzan', NULL, NULL, '089652363613', 'jahrilnurfauzan@upi.edu', '2022-05-29 23:23:57', '2022-05-29 23:23:57');
INSERT INTO `arsys_student` VALUES (609, 851, 2, 2, 2, '1807250', 's1807250', 'Muhammad Alwi', 'Stalist Hidayat', NULL, NULL, '081903385969', 'm.alwistalist@upi.edu', '2022-05-31 16:17:37', '2022-05-31 16:17:37');
INSERT INTO `arsys_student` VALUES (610, 452, 2, 2, 2, '1803859', 's1803859', 'Tia Amanda', 'Fitriyani', NULL, NULL, '089652290110', 'tia_amanda@upi.edu', '2022-06-06 05:28:44', '2022-06-06 05:29:46');
INSERT INTO `arsys_student` VALUES (611, 869, 2, 2, 2, '1808071', 's1808071', 'MUHAMMAD', 'ADITYA NUGRAHA', NULL, NULL, '089666150575', 'Muhammad.Aditya.Nugraha@upi.edu', '2022-06-07 09:39:35', '2022-06-07 09:39:35');
INSERT INTO `arsys_student` VALUES (612, 544, 2, 3, 26, '1804115', 's1804115', 'EKA CAICILIYA', 'PUTRI', NULL, NULL, '085722118576', 'ekacaiciliya99@upi.edu', '2022-06-08 02:34:36', '2022-06-08 02:34:36');
INSERT INTO `arsys_student` VALUES (613, 858, 2, 2, 15, '1808109', 's1808109', 'Rifqi Hanif', 'Naufal', NULL, NULL, '089657059595', 'rifqihanifnaufal10@upi.edu', '2022-06-15 15:18:53', '2022-06-15 15:18:53');
INSERT INTO `arsys_student` VALUES (614, 890, 2, 2, 26, '1807044', 's1807044', 'Muhammad', 'Hilfi Fathullah', NULL, NULL, '082112699045', 'elfalzar123hilfi@gmail.com', '2022-06-16 09:41:11', '2022-06-16 09:41:11');
INSERT INTO `arsys_student` VALUES (615, 877, 2, 2, 2, '1807785', 's1807785', 'Chaafidh', 'Dzulfiqor Yusri', NULL, NULL, '082112439583', 'chaafidh@upi.edu', '2022-06-29 06:45:17', '2022-06-29 06:46:33');
INSERT INTO `arsys_student` VALUES (616, 888, 2, 2, 2, '1807633', 's1807633', 'Gilang Kencana', 'Yustisia', NULL, NULL, '0895800061247', 'gilangkencana@upi.edu', '2022-06-29 12:28:46', '2022-06-29 12:28:46');
INSERT INTO `arsys_student` VALUES (617, 902, 2, 2, 2, '1808460', 's1808460', 'Fallih', 'Nurhaqqy', NULL, NULL, '089653444552', 'fallihnurhaqqy@gmail.com', '2022-06-30 02:22:43', '2022-06-30 02:22:43');
INSERT INTO `arsys_student` VALUES (618, 640, 2, 3, 15, '1803704', 's1803704', 'Habil', 'Maulana Yusuf', NULL, NULL, '081223711799', 'habilmaulanayusuf@upi.edu', '2022-06-30 03:48:00', '2022-06-30 03:48:00');
INSERT INTO `arsys_student` VALUES (619, 303, 1, 1, 2, '1908601', 's1908601', 'Rendy', 'Adiyana Budiman', NULL, NULL, '081210765510', 'rendyadiyanabudiman@upi.edu', '2022-08-03 13:25:32', '2022-08-03 13:25:32');
INSERT INTO `arsys_student` VALUES (620, 645, 1, 1, 48, '1909306', 's1909306', 'Hilman', 'Permana', NULL, NULL, '085155369588', 'imen@upi.edu', '2022-08-03 13:28:03', '2022-08-03 13:28:03');
INSERT INTO `arsys_student` VALUES (621, 279, 1, 1, 48, '1901360', 's1901360', 'TIKA', 'LESTARI', NULL, NULL, '0881023643607', 'tikalestari@upi.edu', '2022-08-03 13:30:35', '2022-08-03 13:33:49');
INSERT INTO `arsys_student` VALUES (622, 650, 1, 1, 2, '1909772', 's1909772', 'Reza', 'Muhammad Zulfiqri', NULL, NULL, '089648171225', 'Muhammadrezza14@upi.edu', '2022-08-03 13:31:13', '2022-08-03 13:33:31');
INSERT INTO `arsys_student` VALUES (623, 341, 1, 1, 2, '1905118', 's1905118', 'Tommy Anggara Putra', 'Simanjuntak', NULL, NULL, '085218051983', 'stommyanggara@upi.edu', '2022-08-03 13:32:59', '2022-10-11 09:31:44');
INSERT INTO `arsys_student` VALUES (624, 644, 1, 1, 48, '1909549', 's1909549', 'Muhammad Assadillah ', 'Pangestu', NULL, NULL, '08111121773', 'assadillahp@upi.edu', '2022-08-03 13:37:43', '2022-08-03 13:43:28');
INSERT INTO `arsys_student` VALUES (625, 677, 1, 1, 2, '1908664', 's1908664', 'Egi Ferdi', 'Hasannudin', NULL, NULL, '082296397803', 'egiferdi21@upi.edu', '2022-08-03 13:38:47', '2022-08-20 06:02:06');
INSERT INTO `arsys_student` VALUES (626, 879, 1, 1, 48, '1908252', 's1908252', 'Mochammad Deden', 'Nuriyana', NULL, NULL, '085890087978', 'dendikhamman@upi.edu', '2022-08-03 13:41:20', '2022-08-03 13:41:20');
INSERT INTO `arsys_student` VALUES (627, 769, 1, 1, 48, '1908223', 's1908223', 'Rantika', 'Kristianingsi', NULL, NULL, '085156694154', 'rantikakristianingsi08@upi.edu', '2022-08-04 00:43:59', '2022-08-04 00:43:59');
INSERT INTO `arsys_student` VALUES (628, 383, 1, 1, 2, '1903521', 's1903521', 'Videlva', 'Aracelly Hartanto', NULL, NULL, '085210594638', 'videlvaah38@upi.edu', '2022-08-04 02:32:41', '2022-08-04 02:32:41');
INSERT INTO `arsys_student` VALUES (629, 338, 1, 1, 48, '1906139', 's1906139', 'BELLA', 'TRI JULIANA', NULL, NULL, '085722519310', 'bellatrijuliana@upi.edu', '2022-08-04 09:02:16', '2022-08-04 09:03:00');
INSERT INTO `arsys_student` VALUES (630, 359, 1, 1, 2, '1900044', 's1900044', 'Diky', 'Muhammad Rizki', NULL, NULL, '089655703571', 'dikymrizki@upi.edu', '2022-08-05 00:57:06', '2022-08-05 00:57:06');
INSERT INTO `arsys_student` VALUES (631, 273, 1, 1, 2, '1902199', 's1902199', 'Didin', 'Hardian', NULL, NULL, '08997004660', 'didin.hardian@upi.edu', '2022-08-05 02:13:48', '2022-08-05 02:13:48');
INSERT INTO `arsys_student` VALUES (632, 761, 1, 3, 48, '1909846', 's1909846', 'Marcella', 'Febriyanti', NULL, NULL, '085523728373', 'marcellafebriyanti@upi.edu', '2022-08-05 04:23:40', '2022-08-05 04:23:40');
INSERT INTO `arsys_student` VALUES (633, 702, 1, 1, 2, '1904403', 's1904403', 'Zaky Rachmanda', 'Pratama', NULL, NULL, '089601442056', 'rachmanda23@upi.edu', '2022-08-05 12:31:53', '2022-08-05 12:33:20');
INSERT INTO `arsys_student` VALUES (634, 9320, 2, 2, 2, '1807978', 's1807978', 'Indera', 'Alam', NULL, NULL, '081395303768', 'indera.alam@upi.edu', '2022-08-10 23:13:23', '2022-08-11 01:51:17');
INSERT INTO `arsys_student` VALUES (635, 289, 2, 3, 26, '1801624', 's1801624', 'Asep', 'sugiharto', NULL, NULL, '081221193539', 'asepsugiharto1@upi.edu', '2022-08-14 11:55:23', '2022-08-14 11:56:39');
INSERT INTO `arsys_student` VALUES (636, 863, 1, 1, 2, '1900255', 's1900255', 'Wili', 'Williana', NULL, NULL, '085722778007', 'wiliwilliana06@upi.edu', '2022-08-16 02:09:00', '2022-08-16 02:09:00');
INSERT INTO `arsys_student` VALUES (637, 683, 1, 1, 2, '1908440', 's1908440', 'yusuf', 'ibnu sidhiq', NULL, NULL, '081387798327', 'yusufibnusidhiq@upi.edu', '2022-08-19 06:49:37', '2022-08-19 06:49:37');
INSERT INTO `arsys_student` VALUES (638, 812, 1, 1, 2, '1904132', 's1904132', 'July Ariyaman', 'Waruwu', NULL, NULL, '082273218646', 'julywaruwu@upi.edu', '2022-08-20 15:53:15', '2022-08-20 15:53:15');
INSERT INTO `arsys_student` VALUES (639, 657, 1, 1, 2, '1905708', 's1905708', 'Muhamad Fariski ', 'Gustiandani', NULL, NULL, '085861967464', 'fariskigustiadani83@upi.edu', '2022-08-20 17:03:34', '2022-08-20 17:03:34');
INSERT INTO `arsys_student` VALUES (640, 724, 1, 1, 48, '1903567', 's1903567', 'Dhafin Naufal', 'Ramadhan', NULL, NULL, '087822276868', 'dhafinnr@upi.edu', '2022-08-21 08:10:09', '2022-08-21 08:10:09');
INSERT INTO `arsys_student` VALUES (641, 620, 1, 1, 26, '2009247', 's2009247', 'Irgi', 'Surya ', NULL, NULL, '085759023579', 'irgi.surya@upi.edu', '2022-08-21 17:24:16', '2022-08-22 01:43:16');
INSERT INTO `arsys_student` VALUES (642, 810, 1, 1, 26, '2001691', 's2001691', 'DIKI', 'FAHRIZAL', NULL, NULL, '+6282127274547', 'diki15@upi.edu', '2022-08-22 03:49:31', '2022-08-22 03:51:00');
INSERT INTO `arsys_student` VALUES (643, 120, 1, 3, 26, '1900582', 's1900582', 'Bagja', 'Hendiansyah', NULL, NULL, '081292072443', 'bagja.hendiansyah24@gmail.com', '2022-08-26 23:51:40', '2022-11-20 14:05:49');
INSERT INTO `arsys_student` VALUES (644, 340, 2, 2, 2, '1903003', 's1903003', 'Joseph Christoper', '.h', NULL, NULL, '+62881220904035', 'harianja212001@gmail.com', '2022-09-04 13:50:05', '2022-09-04 13:51:08');
INSERT INTO `arsys_student` VALUES (645, 658, 1, 1, 48, '1908540', 's1908540', 'Restu Febry', 'Budyansah', NULL, NULL, '089644193137', 'restufebry9@upi.edu', '2022-09-07 07:08:02', '2022-09-07 07:08:02');
INSERT INTO `arsys_student` VALUES (646, 676, 2, 3, 26, '1800227', 's1800227', 'Irfan', 'Maulana', NULL, NULL, '083195810632', 'irfanmaulana17@upi.edu', '2022-09-15 06:57:16', '2022-09-15 06:57:16');
INSERT INTO `arsys_student` VALUES (647, 295, 1, 2, 2, '1900881', 's1900881', 'Viony Purnama', 'Juniar', NULL, NULL, '089514413831', 'vionypurnama@upi.edu', '2022-09-22 09:42:38', '2022-09-22 09:42:38');
INSERT INTO `arsys_student` VALUES (648, 857, 2, 2, 2, '1807206', 's1807206', 'Faishal', 'Muhammad shiddiq', NULL, NULL, '082126886489', 'Faishalshiddiq99@gmail.com', '2022-09-26 07:01:35', '2022-09-26 07:01:35');
INSERT INTO `arsys_student` VALUES (649, 345, 1, 2, 2, '1909837', 's1909837', 'Fera ', 'Vania', NULL, NULL, '089660372049', 'Feravaniap67@upi.edu', '2022-09-26 09:30:59', '2022-09-26 09:30:59');
INSERT INTO `arsys_student` VALUES (650, 287, 2, 3, 26, '1805130', 's1805130', 'Lumban Toruan', 'Ebin Elbentor', NULL, NULL, '081289214176', 'lumbantoruanebin@gmail.com', '2022-09-26 14:08:33', '2022-09-26 14:08:33');
INSERT INTO `arsys_student` VALUES (651, 760, 1, 2, 48, '1909822', 's1909822', 'Zahra', 'Aini', NULL, NULL, '081572475795', 'zahraaini@upi.edu', '2022-09-28 05:39:47', '2022-09-28 05:39:47');
INSERT INTO `arsys_student` VALUES (652, 296, 2, 3, 26, '1807210', 's1807210', 'Ariq', 'Nurmansyah', NULL, NULL, '082115731965', 'ariqnurmansyah1@gmail.com', '2022-09-29 09:33:43', '2022-10-04 23:07:31');
INSERT INTO `arsys_student` VALUES (653, 318, 1, 2, 48, '1903088', 's1903088', 'Muhamad Fikri', 'Zalfa Fadillah', NULL, NULL, '089519437534', 'muhfikrizf@upi.edu', '2022-09-30 01:38:19', '2022-10-04 02:09:37');
INSERT INTO `arsys_student` VALUES (654, 979, 1, 2, 48, '1902085', 's1902085', 'Abdul', 'Wahab', NULL, NULL, '081909417830', 'wahab@upi.edu', '2022-10-04 02:07:35', '2022-10-04 02:07:35');
INSERT INTO `arsys_student` VALUES (655, 309, 1, 2, 48, '1907626', 's1907626', 'Muhammad Arif', 'Firmansyah', NULL, NULL, '081514680690', 'arif.firmansyah@upi.edu', '2022-10-04 08:05:04', '2022-10-05 01:37:15');
INSERT INTO `arsys_student` VALUES (656, 897, 1, 2, 48, '1901081', 's1901081', 'Hartini', 'Satiawan', NULL, NULL, '085940661855', 'hartinisatiawan@upi.edu', '2022-10-04 17:05:23', '2022-10-04 17:05:23');
INSERT INTO `arsys_student` VALUES (657, 363, 2, 3, 26, '1807170', 's1807170', 'Amalia Widya ', 'Ayuningtiyas', NULL, NULL, '08980046506', 'amaliawa@upi.edu', '2022-10-05 01:57:38', '2022-11-23 00:30:44');
INSERT INTO `arsys_student` VALUES (658, 326, 1, 2, 2, '1904661', 's1904661', 'Irgi', 'Rahmadian', NULL, NULL, '0895613958623', 'irgirahmadian11@upi.edu', '2022-10-05 10:02:41', '2022-10-05 10:02:41');
INSERT INTO `arsys_student` VALUES (659, 293, 1, 2, 48, '1901493', 's1901493', 'Fladya Devina', 'Putri', NULL, NULL, '08112380601', 'fladyadev01@upi.edu', '2022-10-05 10:20:41', '2022-10-05 10:21:36');
INSERT INTO `arsys_student` VALUES (660, 315, 1, 2, 48, '1903242', 's1903242', 'Surya ', 'Wijaya', NULL, NULL, '085961941293', 'suryaw@upi.edu', '2022-10-05 11:15:44', '2022-10-05 11:15:44');
INSERT INTO `arsys_student` VALUES (661, 706, 1, 2, 48, '1908267', 's1908267', 'Aldiansyah', 'Nur Fauzi Pratama', NULL, NULL, '089671655444', 'aldiansyahnurfp@upi.edu', '2022-10-05 11:23:58', '2022-10-05 11:26:28');
INSERT INTO `arsys_student` VALUES (662, 314, 1, 2, 48, '1903271', 's1903271', 'Fatin', 'Fahimah', NULL, NULL, '085776417822', 'fatinfahimah@upi.edu', '2022-10-05 12:00:28', '2022-10-05 12:00:28');
INSERT INTO `arsys_student` VALUES (663, 339, 1, 2, 48, '1902921', 's1902921', 'Anisah', '-', NULL, NULL, '0895415435540', 'anisah.2921@upi.edu', '2022-10-05 13:12:45', '2022-10-05 13:12:45');
INSERT INTO `arsys_student` VALUES (664, 671, 1, 2, 48, '1901188', 's1901188', 'Ripa', 'Sintiawati', NULL, NULL, '085157522782', 'ripasintiawati@upi.edu', '2022-10-05 13:29:45', '2022-10-05 13:29:45');
INSERT INTO `arsys_student` VALUES (665, 357, 1, 2, 48, '1903885', 's1903885', 'Tri', 'Herdyanto', NULL, NULL, '085603835424', 'triherdyanto@upi.edu', '2022-10-05 15:40:02', '2022-10-05 15:42:50');
INSERT INTO `arsys_student` VALUES (666, 642, 1, 2, 48, '1906302', 's1906302', 'Ilham', 'Nastiar', NULL, NULL, '085956727144', 'ilhamnastiar@upi.edu', '2022-10-05 15:49:00', '2022-10-05 15:49:00');
INSERT INTO `arsys_student` VALUES (667, 666, 1, 2, 48, '1909966', 's1909966', 'TAUFAN FEBRIAN', 'SAIFULLOH', NULL, NULL, '085161092622', 'febrian.taufan09@upi.edu', '2022-10-05 15:51:39', '2022-10-05 15:51:39');
INSERT INTO `arsys_student` VALUES (668, 310, 1, 2, 48, '1908365', 's1908365', 'Muhammad Ikhsan', 'Nur Zam-zam', NULL, NULL, '08981841599', 'ikhsanzamzam22@upi.edu', '2022-10-05 15:53:44', '2022-10-05 15:53:44');
INSERT INTO `arsys_student` VALUES (669, 304, 1, 2, 2, '1904070', 's1904070', 'ICHA SINTIYANI', 'SUWANDI', NULL, NULL, '085795764589', 'ichasintiyanisuwandi@upi.edu', '2022-10-06 02:48:26', '2022-10-06 02:48:26');
INSERT INTO `arsys_student` VALUES (670, 324, 1, 2, 48, '1901922', 's1901922', 'Wahyu', 'Hermawan', NULL, NULL, '082118838274', 'wahyuhermawan@upi.edu', '2022-10-06 03:43:02', '2022-10-06 03:44:22');
INSERT INTO `arsys_student` VALUES (671, 343, 1, 2, 2, '1902221', 's1902221', 'Nurulita ', 'Insani Komarudin', NULL, NULL, '085723080514', 'nurulita_insani@upi.edu', '2022-10-06 04:02:17', '2022-10-06 04:02:17');
INSERT INTO `arsys_student` VALUES (672, 323, 1, 2, 48, '1903107', 's1903107', 'Fahmi Januar', 'Firdaus', NULL, NULL, '0881023433526', 'fahmijanuar@upi.edu', '2022-10-06 14:26:27', '2022-10-06 14:28:54');
INSERT INTO `arsys_student` VALUES (673, 663, 1, 2, 48, '1903475', 's1903475', 'Muhammad Ryandana', 'Putra', NULL, NULL, '0881023085128', 'ryandana@upi.edu', '2022-10-06 16:54:35', '2022-10-06 16:54:35');
INSERT INTO `arsys_student` VALUES (674, 297, 1, 2, 48, '1900039', 's1900039', 'Dian Wahyudi', 'Andriyanto', NULL, NULL, '0895328765268', 'dianwahyudi.a@upi.edu', '2022-10-06 23:29:44', '2022-10-06 23:30:37');
INSERT INTO `arsys_student` VALUES (675, 820, 1, 2, 48, '1908509', 's1908509', 'Bagus Nursyabani', 'Nugraha', NULL, NULL, '081220394288', 'bagusnursyabani@upi.edu', '2022-10-07 06:10:21', '2022-10-07 06:10:21');
INSERT INTO `arsys_student` VALUES (676, 346, 1, 2, 48, '1906244', 's1906244', 'Irfan', 'Syaeful Rohman', NULL, NULL, '085795709535', 'irfans11@upi.edu', '2022-10-07 07:22:28', '2022-10-07 07:22:28');
INSERT INTO `arsys_student` VALUES (677, 874, 1, 2, 2, '1902299', 's1902299', 'Wawan', 'Aris', NULL, NULL, '085797770262', 'wawanaris@upi.edu', '2022-10-07 07:45:36', '2022-10-07 07:45:36');
INSERT INTO `arsys_student` VALUES (678, 272, 1, 2, 48, '1900020', 's1900020', 'Mohamad Lutfi ', 'Muiz Fadil', NULL, NULL, '089614824577', 'muizfadil2712@upi.edu', '2022-10-07 13:28:55', '2022-10-07 13:28:55');
INSERT INTO `arsys_student` VALUES (679, 334, 1, 2, 2, '1909845', 's1909845', 'ALIA', 'SORAYA NURZAENI', NULL, NULL, '087735349712', '1909845@upi.edu', '2022-10-07 13:39:39', '2022-10-07 13:39:39');
INSERT INTO `arsys_student` VALUES (680, 294, 1, 2, 48, '1902282', 's1902282', 'Neng Maryam', 'Farerina', NULL, NULL, '0895339443044', 'maryamfarerina@upi.edu', '2022-10-10 05:57:34', '2022-10-10 06:39:28');
INSERT INTO `arsys_student` VALUES (681, 986, 1, 2, 2, '1900518', 's1900518', 'Acep', 'Sofyan Supriadi ', NULL, NULL, '081902770066', 'acepsofyan1@upi.edu', '2022-10-10 06:10:35', '2022-10-10 06:11:28');
INSERT INTO `arsys_student` VALUES (682, 577, 1, 2, 48, '1900004', 's1900004', 'Muhammad Rafy', 'Fadhilah', NULL, NULL, '+62895412953268', 'mrafyf@upi.edu', '2022-10-10 06:24:15', '2022-10-10 06:24:15');
INSERT INTO `arsys_student` VALUES (683, 299, 1, 1, 2, '1900983', 's1900983', 'Farhan', 'Ajhari', NULL, NULL, '089694889691', 'farhanajhari@gmail.com', '2022-10-13 20:54:38', '2022-10-13 20:54:38');
INSERT INTO `arsys_student` VALUES (684, 669, 1, 1, 2, '1905609', 's1905609', 'Julian', 'Wahyu Budiyana', NULL, NULL, '08977950815', '666joule@gmail.com', '2022-10-14 08:09:16', '2022-10-14 08:10:40');
INSERT INTO `arsys_student` VALUES (685, 662, 1, 1, 48, '1904749', 's1904749', 'Vegarexa', 'Zulnizar Azizie', NULL, NULL, '082120105851', 'rexavega09@upi.edu', '2022-10-17 00:12:59', '2022-10-17 00:14:40');
INSERT INTO `arsys_student` VALUES (686, 978, 1, 2, 2, '1901760', 's1901760', 'Siti ', 'Suryani ', NULL, NULL, '08887444467', 'sitisuryani29@upi.edu', '2022-10-17 01:37:00', '2022-10-17 01:37:00');
INSERT INTO `arsys_student` VALUES (687, 909, 2, 2, 48, '1900148', 's1900148', 'Rachmania Aisyah', 'Putri', NULL, NULL, '085861819976', 'rachmaniaap@upi.edu', '2022-10-23 12:27:33', '2022-10-23 12:27:33');
INSERT INTO `arsys_student` VALUES (689, 833, NULL, NULL, NULL, '1808120', 's1808120', 'Dimas', 'Arif Nugrohon', NULL, NULL, NULL, NULL, '2022-11-08 22:48:51', '2022-11-08 22:48:51');
INSERT INTO `arsys_student` VALUES (690, 944, NULL, NULL, NULL, '1805346', 's1805346', 'Saiful ', 'Ikhwan', NULL, NULL, NULL, NULL, '2022-11-08 22:50:17', '2022-11-08 22:50:17');
INSERT INTO `arsys_student` VALUES (691, 9389, NULL, NULL, NULL, '1608132', 's1608132', 'Riyan', 'Mardiansyah', NULL, NULL, NULL, NULL, '2022-11-08 22:54:06', '2022-11-08 22:54:06');
INSERT INTO `arsys_student` VALUES (692, 9390, NULL, NULL, NULL, '1806463', 's1806463', 'Muhammad', 'Dilan Arya Nugraha', NULL, NULL, NULL, NULL, '2022-11-08 23:03:48', '2022-11-08 23:03:48');
INSERT INTO `arsys_student` VALUES (693, 9391, 2, 2, 2, '1801412', 's1801412', 'Iqbal', 'Abdillah', NULL, NULL, '08989312253', 'iqbalabdillah.3@upi.edu', '2022-11-09 07:00:13', '2022-11-10 10:06:10');
INSERT INTO `arsys_student` VALUES (694, 853, 2, 2, 2, '1807637', 's1807637', 'Rama', 'Harsantio', NULL, NULL, '081214206465', 'ramaharsantio@upi.edu', '2022-11-16 10:15:49', '2022-11-16 10:17:21');
INSERT INTO `arsys_student` VALUES (695, 766, 1, 2, 2, '1900218', 's1900218', 'Eriza', 'Nurfitria', NULL, NULL, '081211480980', 'erizanurfitria@upi.edu', '2022-11-21 03:07:16', '2022-11-21 03:07:16');
INSERT INTO `arsys_student` VALUES (696, 856, 1, 2, 48, '1908558', 's1908558', 'Farhan', 'Aulia Rahman', NULL, NULL, '08992669887', 'farhanrahman@upi.edu', '2022-11-22 07:40:09', '2022-11-22 07:40:09');
INSERT INTO `arsys_student` VALUES (697, 659, 1, 3, 15, '1903665', 's1903665', 'Yuniar', 'Hidzatunnisa', NULL, NULL, '081395120595', 'yuniarh@upi.edu', '2022-11-22 17:57:37', '2022-11-22 17:57:37');
INSERT INTO `arsys_student` VALUES (698, 656, 1, 2, 2, '1903666', 's1903666', 'Mohamad', 'Rizal', NULL, NULL, '089503851474', 'rizalmohamad@upi.edu', '2022-11-23 14:11:27', '2022-11-23 14:11:27');
INSERT INTO `arsys_student` VALUES (699, 317, 2, 3, 26, '1905532', 's1905532', 'Ridwan Dwi', 'Adani', NULL, NULL, '081211954277', 'ridwandani12@upi.edu', '2022-11-24 07:12:00', '2022-11-24 07:12:00');
INSERT INTO `arsys_student` VALUES (700, 448, 2, 3, 15, '1908016', 's1908016', 'Alif Haykal', 'Fitriawan', NULL, NULL, '083829429572', 'alifhaykal2233@gmail.com', '2022-11-28 03:24:22', '2022-11-28 03:24:22');
INSERT INTO `arsys_student` VALUES (701, 691, 2, 3, 26, '1900569', 's1900569', 'Hafizha Silmi', 'Nur Rahkmi', NULL, NULL, '0895331229632', 'hafizhasilmi@upi.edu', '2022-11-28 03:55:24', '2022-11-28 03:55:24');
INSERT INTO `arsys_student` VALUES (702, 316, 1, 3, 15, '1900686', 's1900686', 'Abdurachman', 'Sudeis', NULL, NULL, '081293582604', 'abdursudeis@upi.edu', '2022-11-29 06:07:45', '2022-11-29 06:09:27');
INSERT INTO `arsys_student` VALUES (703, 9392, 1, 1, 2, '1910158', 's1910158', 'Wang', 'Lijun', NULL, NULL, '085607346264', '1028252132pb@gmail.com', '2022-11-29 22:15:54', '2022-11-30 01:48:12');
INSERT INTO `arsys_student` VALUES (704, 9393, 2, 2, 2, '1505642', 's1505642', 'Muhammad', 'Fadel Ilham Alhapidz', NULL, NULL, '089622377492', 'fadeldalbo99@student.upi.edu', '2022-11-29 22:17:46', '2022-11-30 02:30:56');
INSERT INTO `arsys_student` VALUES (705, 9394, 1, 1, 48, '1904972', 's1904972', 'Muhammad', 'Rahadika Fauzi Akbar', NULL, NULL, '08157067403', 'rahadikafauzi@upi.edu', '2022-11-29 22:18:47', '2022-11-30 11:14:18');
INSERT INTO `arsys_student` VALUES (706, 290, 1, 3, 15, '1901082', 's1901082', 'Hendri', 'Nur Agung', NULL, NULL, '089667897748', 'hendrinuragung12@gmail.com', '2022-12-06 03:27:40', '2022-12-06 03:27:40');
INSERT INTO `arsys_student` VALUES (707, 922, 1, 3, 26, '1900664', 's1900664', 'Muhammad Raihan', 'Anwar', NULL, NULL, '087826750547', 'queenusagi48@upi.edu', '2022-12-06 06:12:17', '2022-12-06 06:13:12');
INSERT INTO `arsys_student` VALUES (724, 1, 2, 4, 1, '180969', '197608272009121001', 'Didin', 'Wahyudin', NULL, NULL, '089636978110', 'deewahyu@upi.edu', '2022-12-08 15:51:22', '2022-12-28 03:06:48');
COMMIT;

-- ----------------------------
-- Table structure for arsys_study_program
-- ----------------------------
DROP TABLE IF EXISTS `arsys_study_program`;
CREATE TABLE `arsys_study_program` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(5) DEFAULT NULL,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `description_eng` varchar(50) DEFAULT NULL,
  `department_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_study_program
-- ----------------------------
BEGIN;
INSERT INTO `arsys_study_program` VALUES (1, 'E0451', 'PTE', 'Pendidikan Teknik Elektro', NULL, 1, '2022-11-17 08:18:26', '2022-11-17 08:18:28');
INSERT INTO `arsys_study_program` VALUES (2, 'E5051', 'TE', 'Teknik Elektro', NULL, 1, '2022-11-17 08:18:33', '2022-11-17 08:18:35');
INSERT INTO `arsys_study_program` VALUES (3, 'E1511', 'PTOIR', 'Pendidikan Teknik Otomasi Industri dan Robotika', NULL, 1, '2022-11-17 08:19:22', '2022-11-17 08:19:24');
INSERT INTO `arsys_study_program` VALUES (4, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Table structure for arsys_study_specialization
-- ----------------------------
DROP TABLE IF EXISTS `arsys_study_specialization`;
CREATE TABLE `arsys_study_specialization` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `abbrev` varchar(5) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_study_specialization
-- ----------------------------
BEGIN;
INSERT INTO `arsys_study_specialization` VALUES (1, 'EI', 'Elektronika Industri', '2022-11-17 08:20:02', '2022-11-17 08:20:04');
INSERT INTO `arsys_study_specialization` VALUES (2, 'TE', 'Tenaga Elektrik', '2022-11-17 08:20:06', '2022-11-17 08:20:09');
INSERT INTO `arsys_study_specialization` VALUES (3, 'EK', 'Telekomunikasi', '2022-11-17 08:20:13', '2022-11-17 08:20:15');
COMMIT;

-- ----------------------------
-- Table structure for arsys_study_specialization_pivot
-- ----------------------------
DROP TABLE IF EXISTS `arsys_study_specialization_pivot`;
CREATE TABLE `arsys_study_specialization_pivot` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `program_id` int(5) DEFAULT NULL,
  `specialization_id` int(5) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of arsys_study_specialization_pivot
-- ----------------------------
BEGIN;
INSERT INTO `arsys_study_specialization_pivot` VALUES (1, 1, 1, '2022-11-17 08:20:51', '2022-11-17 08:20:53');
INSERT INTO `arsys_study_specialization_pivot` VALUES (2, 1, 2, '2022-11-17 08:21:09', '2022-11-17 08:21:11');
INSERT INTO `arsys_study_specialization_pivot` VALUES (3, 1, 3, '2022-11-17 08:21:38', '2022-11-17 08:21:42');
INSERT INTO `arsys_study_specialization_pivot` VALUES (4, 2, 2, '2022-11-17 08:21:52', '2022-11-17 08:21:54');
INSERT INTO `arsys_study_specialization_pivot` VALUES (5, 2, 3, '2022-11-17 08:22:04', '2022-11-17 08:22:06');
COMMIT;

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2019_08_19_000000_create_failed_jobs_table', 1);
INSERT INTO `migrations` VALUES (4, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (5, '2021_11_01_190700_laratrust_setup_tables', 1);
INSERT INTO `migrations` VALUES (6, '2021_11_01_235701_laratrust_setup_teams', 2);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `permission_role_role_id_foreign` (`role_id`),
  CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_role
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permission_user
-- ----------------------------
DROP TABLE IF EXISTS `permission_user`;
CREATE TABLE `permission_user` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  UNIQUE KEY `permission_user_user_id_permission_id_user_type_team_id_unique` (`user_id`,`permission_id`,`user_type`,`team_id`),
  KEY `permission_user_permission_id_foreign` (`permission_id`),
  KEY `permission_user_team_id_foreign` (`team_id`),
  CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `permission_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permission_user
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of permissions
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `role_id` bigint(20) unsigned NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `user_type` varchar(255) NOT NULL,
  `team_id` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `role_user_user_id_role_id_user_type_team_id_unique` (`user_id`,`role_id`,`user_type`,`team_id`),
  KEY `role_user_role_id_foreign` (`role_id`),
  KEY `role_user_team_id_foreign` (`team_id`),
  CONSTRAINT `role_user_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `role_user_team_id_foreign` FOREIGN KEY (`team_id`) REFERENCES `teams` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of role_user
-- ----------------------------
BEGIN;
INSERT INTO `role_user` VALUES (25, 1, 1, 'App\\Models\\User', NULL);
INSERT INTO `role_user` VALUES (17, 2, 3, 'App\\Models\\User', NULL);
INSERT INTO `role_user` VALUES (24, 4, 5, 'App\\Models\\User', NULL);
COMMIT;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_unique` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of roles
-- ----------------------------
BEGIN;
INSERT INTO `roles` VALUES (1, 'admin', 'Administrator', 'System Administrator', '2021-11-02 12:18:59', '2021-11-02 12:18:59');
INSERT INTO `roles` VALUES (2, 'author', 'Author', 'Article author', '2021-11-02 12:20:01', '2021-11-02 12:20:01');
INSERT INTO `roles` VALUES (3, 'committee', 'Committee', 'Conference committee', '2021-11-02 12:36:55', '2021-11-02 12:36:55');
INSERT INTO `roles` VALUES (4, 'reviewer', 'Reviewer', 'Reviewer of ISMEE', '2021-11-08 01:18:46', '2021-11-08 01:18:46');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_config
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_config`;
CREATE TABLE `sympozia_config` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(5) DEFAULT NULL,
  `description` char(50) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of sympozia_config
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_config` VALUES (1, 'FRP', 'Front page', 1, '2021-11-12 09:53:58', '2021-11-12 09:54:01');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_file_type
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_file_type`;
CREATE TABLE `sympozia_file_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` varchar(25) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_file_type
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_file_type` VALUES (1, 'REV', 'Review manuscript', '2021-11-29 08:32:58', '2021-11-29 08:33:01');
INSERT INTO `sympozia_file_type` VALUES (2, 'FUL', 'Full manuscript', '2021-11-29 08:33:20', '2021-11-29 08:33:22');
INSERT INTO `sympozia_file_type` VALUES (3, 'COP', 'Copyright', '2021-11-29 08:33:44', '2021-11-29 08:33:46');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_manuscript
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_manuscript`;
CREATE TABLE `sympozia_manuscript` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `paper_code` varchar(10) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `abstract` text DEFAULT NULL,
  `milestone_id` int(1) DEFAULT NULL,
  `status_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_manuscript
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_manuscript` VALUES (8, 4, 'ISMEE-4-1', 'Test', NULL, NULL, NULL, '2021-11-29 02:06:01', '2021-11-29 02:06:01');
INSERT INTO `sympozia_manuscript` VALUES (9, 4, 'ISMEE-4-2', 'IoT technology', NULL, NULL, NULL, '2021-12-06 07:08:00', '2021-12-06 07:08:00');
INSERT INTO `sympozia_manuscript` VALUES (10, 2, 'ISMEE-2-3', 'Test', NULL, NULL, NULL, '2022-02-14 01:50:53', '2022-02-14 01:50:53');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_manuscript_author
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_manuscript_author`;
CREATE TABLE `sympozia_manuscript_author` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manuscript_id` int(10) DEFAULT NULL,
  `author_id` int(10) DEFAULT NULL,
  `presenter` int(1) DEFAULT NULL,
  `contact` int(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_manuscript_author
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_manuscript_author` VALUES (1, 9, 5, NULL, NULL, '2021-12-13 02:21:21', '2021-12-13 02:21:21');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_manuscript_file
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_manuscript_file`;
CREATE TABLE `sympozia_manuscript_file` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `manuscript_id` int(10) DEFAULT NULL,
  `file_type` int(10) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_manuscript_file
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_manuscript_file` VALUES (1, 8, 1, 'submitedManuscript/ISMEE-4-1-manuscript.pdf', '2021-11-29 02:06:01', '2021-11-29 02:06:01');
INSERT INTO `sympozia_manuscript_file` VALUES (2, 9, 1, 'submitedManuscript/ISMEE-4-2-manuscript.pdf', '2021-12-06 07:08:00', '2021-12-06 07:08:00');
INSERT INTO `sympozia_manuscript_file` VALUES (3, 10, 1, 'submitedManuscript/ISMEE-2-3-manuscript.pdf', '2022-02-14 01:50:53', '2022-02-14 01:50:53');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_manuscript_milestone
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_manuscript_milestone`;
CREATE TABLE `sympozia_manuscript_milestone` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_manuscript_milestone
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_manuscript_milestone` VALUES (1, 'CRE', 'Create', '2021-10-26 22:39:48', '2021-10-26 22:39:51');
INSERT INTO `sympozia_manuscript_milestone` VALUES (2, 'SUB', 'Submitted', '2021-10-26 22:40:19', '2021-10-26 22:40:21');
INSERT INTO `sympozia_manuscript_milestone` VALUES (3, 'REV', 'Review', '2021-10-26 22:40:48', '2021-10-26 22:40:50');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_manuscript_status
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_manuscript_status`;
CREATE TABLE `sympozia_manuscript_status` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(3) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_general_ci;

-- ----------------------------
-- Records of sympozia_manuscript_status
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_manuscript_status` VALUES (1, 'CRE', 'Create', '2021-10-26 22:39:48', '2021-10-26 22:39:51');
INSERT INTO `sympozia_manuscript_status` VALUES (2, 'SUB', 'Submitted', '2021-10-26 22:40:19', '2021-10-26 22:40:21');
INSERT INTO `sympozia_manuscript_status` VALUES (3, 'REV', 'Review', '2021-10-26 22:40:48', '2021-10-26 22:40:50');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_news
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_news`;
CREATE TABLE `sympozia_news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of sympozia_news
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_news` VALUES (10, 'Attendance\'s payment deadline', 'Invoice of attendance\'s payment should be paid on Thursday October 28, 2021', '2021-10-25 01:07:40', '2021-10-25 01:19:52');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_profile
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_profile`;
CREATE TABLE `sympozia_profile` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) DEFAULT NULL,
  `user_code` varchar(10) DEFAULT NULL,
  `title_id` int(11) DEFAULT NULL,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `afiliation` int(11) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone_number` varchar(12) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of sympozia_profile
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_profile` VALUES (1, 4, NULL, NULL, 'Didin', 'Wahyyudin', NULL, NULL, NULL, NULL, NULL, '2021-12-13 09:04:23', '2021-12-13 09:04:23');
INSERT INTO `sympozia_profile` VALUES (2, 3, NULL, NULL, 'Shafwan', 'Azmi', NULL, NULL, NULL, NULL, NULL, '2021-12-13 09:04:37', '2021-12-13 09:04:37');
INSERT INTO `sympozia_profile` VALUES (3, 2, NULL, NULL, 'Syafiq', 'Azmi', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `sympozia_profile` VALUES (5, NULL, NULL, NULL, 'Syifa', NULL, 'syifa@upi.edu', NULL, NULL, NULL, NULL, '2021-12-13 02:21:21', '2021-12-13 02:21:21');
COMMIT;

-- ----------------------------
-- Table structure for sympozia_profile_title
-- ----------------------------
DROP TABLE IF EXISTS `sympozia_profile_title`;
CREATE TABLE `sympozia_profile_title` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(5) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- ----------------------------
-- Records of sympozia_profile_title
-- ----------------------------
BEGIN;
INSERT INTO `sympozia_profile_title` VALUES (1, 'Dr.', '2021-11-03 13:34:08', '2021-11-03 13:34:11');
INSERT INTO `sympozia_profile_title` VALUES (2, 'Mr.', '2021-11-03 13:34:18', '2021-11-03 13:34:20');
INSERT INTO `sympozia_profile_title` VALUES (3, 'Mrs.', '2021-11-03 13:34:28', '2021-11-03 13:34:30');
INSERT INTO `sympozia_profile_title` VALUES (4, 'Ms.', '2021-11-03 13:34:46', '2021-11-03 13:34:48');
INSERT INTO `sympozia_profile_title` VALUES (5, 'Prof.', '2021-11-03 13:34:55', '2021-11-03 13:34:57');
COMMIT;

-- ----------------------------
-- Table structure for teams
-- ----------------------------
DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `teams_name_unique` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of teams
-- ----------------------------
BEGIN;
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `sso` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO `users` VALUES (1, '197608272009121001', 'Didin', 'deewahyu@upi.edu', NULL, '$2y$10$3bqL8aIQW3o9hFBywQyxF.mQyfB.AQceMuBGc.W7XfVNxfHFybFSa', NULL, '2021-11-01 19:15:14', '2021-11-01 19:15:14');
INSERT INTO `users` VALUES (2, NULL, 'Syafiq', 'deewahyu@jaist.ac.jp', NULL, '$2y$10$rp1nkeInaQMJb1vd.lC.u.d.JhJpGnjDJw2zPTrptzDqWr3I3y2gO', NULL, '2021-11-01 20:10:24', '2021-11-01 20:10:24');
INSERT INTO `users` VALUES (3, NULL, 'Shafwan', 'shafwan@jaist.ac.jp', NULL, '$2y$10$xVdqi1Edk12T/BbVaFt5S.136B641xqAsAVMtVqqOHI96uNq6MGDS', 'DZcy9yvdu0nlF5Mcltp0ZUEcyyoTxnvhha9nrCkVDMuK3oMbvSK5JT9r7gdw', '2021-11-02 13:42:26', '2021-11-02 13:42:26');
INSERT INTO `users` VALUES (4, NULL, 'Syafiq', 'syafiq@ee.upi.edu', NULL, '$2y$10$2VGu/adCRoh59EDo3u3ODO8LvgJ134W0/DLvC8WcSGx0jOdTSAXse', NULL, '2021-11-08 01:09:27', '2021-11-08 01:09:27');
INSERT INTO `users` VALUES (5, NULL, 'Shidqi Azmi', 'shidqi@upi.edu', NULL, '$2y$10$214AJ1AM05KdIB1VpYApMu7ZO4FXGo8w9a5jguML8CDpTvU5pIJUu', NULL, '2022-02-21 01:14:19', '2022-02-21 01:14:19');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
