/*
 Navicat Premium Data Transfer

 Source Server         : mysql
 Source Server Type    : MySQL
 Source Server Version : 100130
 Source Host           : localhost:3306
 Source Schema         : ms55

 Target Server Type    : MySQL
 Target Server Version : 100130
 File Encoding         : 65001

 Date: 03/03/2018 17:11:51
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for customers
-- ----------------------------
DROP TABLE IF EXISTS `customers`;
CREATE TABLE `customers`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `customers_phone_unique`(`phone`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for languages
-- ----------------------------
DROP TABLE IF EXISTS `languages`;
CREATE TABLE `languages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `en` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `km` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 29 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2015_08_04_131614_create_settings_table', 1);
INSERT INTO `migrations` VALUES (4, '2018_01_16_155454_create_customers_table', 1);
INSERT INTO `migrations` VALUES (5, '2018_01_17_045117_create_sessions_table', 1);
INSERT INTO `migrations` VALUES (6, '2018_02_16_075234_create_tbl_products_table', 1);
INSERT INTO `migrations` VALUES (7, '2018_02_16_075252_create_tbl_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2018_02_16_075306_create_tbl_types_table', 1);
INSERT INTO `migrations` VALUES (9, '2018_02_19_031046_create_tbl_card_categories_table', 1);
INSERT INTO `migrations` VALUES (10, '2018_02_19_031058_create_tbl_cards_table', 1);
INSERT INTO `migrations` VALUES (11, '2018_02_20_030437_create_tbl_positions_table', 2);
INSERT INTO `migrations` VALUES (12, '2018_02_20_030456_create_tbl_promotions_table', 2);
INSERT INTO `migrations` VALUES (13, '2018_02_20_030522_create_tbl_postjobs_table', 2);
INSERT INTO `migrations` VALUES (14, '2018_02_20_030640_create_tbl_contacts_table', 2);
INSERT INTO `migrations` VALUES (15, '2018_02_20_030726_create_tbl_applyjobs_table', 2);
INSERT INTO `migrations` VALUES (16, '2018_02_20_044329_create_tbl_email_exclusives_table', 2);
INSERT INTO `migrations` VALUES (17, '2018_02_20_044354_create_tbl_feedbacks_table', 2);
INSERT INTO `migrations` VALUES (18, '2018_02_20_044531_create_tbl_languages_table', 2);
INSERT INTO `migrations` VALUES (19, '2018_02_20_044558_create_tbl_orders_table', 2);
INSERT INTO `migrations` VALUES (20, '2018_02_20_045225_create_tbl_order_details_table', 2);
INSERT INTO `migrations` VALUES (21, '2018_02_20_045405_create_tbl_tables_table', 2);
INSERT INTO `migrations` VALUES (22, '2018_02_24_032413_create_permissions_table', 3);
INSERT INTO `migrations` VALUES (23, '2018_02_24_033057_create_roles_table', 3);
INSERT INTO `migrations` VALUES (24, '2018_02_24_033117_create_role_user_table', 3);
INSERT INTO `migrations` VALUES (25, '2018_02_24_033153_create_permission_role_table', 3);
INSERT INTO `migrations` VALUES (26, '2018_02_24_033234_create_languages_table', 3);
INSERT INTO `migrations` VALUES (27, '2016_05_25_121918_create_pages_table', 4);
INSERT INTO `migrations` VALUES (28, '2017_04_10_195926_change_extras_to_longtext', 4);

-- ----------------------------
-- Table structure for pages
-- ----------------------------
DROP TABLE IF EXISTS `pages`;
CREATE TABLE `pages`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `template` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `extras` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permission_role
-- ----------------------------
DROP TABLE IF EXISTS `permission_role`;
CREATE TABLE `permission_role`  (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for permissions
-- ----------------------------
DROP TABLE IF EXISTS `permissions`;
CREATE TABLE `permissions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `permissions_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for role_user
-- ----------------------------
DROP TABLE IF EXISTS `role_user`;
CREATE TABLE `role_user`  (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `roles_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for sessions
-- ----------------------------
DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions`  (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NULL DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `payload` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE INDEX `sessions_id_unique`(`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for settings
-- ----------------------------
DROP TABLE IF EXISTS `settings`;
CREATE TABLE `settings`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `field` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 7 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'map-home-picture', 'map-home-picture', 'Map Home', 'uploads/home/66011_1490326832.png', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"browse\"}', 0, NULL, '2018-03-03 06:49:20');
INSERT INTO `settings` VALUES (2, 'video-home-iframe-src', 'video-home-iframe-src', 'Video Home', 'https://www.youtube.com/embed/qZfNDz_-H38?enablejsapi=1', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 0, NULL, NULL);
INSERT INTO `settings` VALUES (3, 'company-name', 'company-name', 'Company Name', 'Master Suki Soup', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 0, NULL, NULL);
INSERT INTO `settings` VALUES (4, 'address', 'address', 'Address', 'No.680, St 271, Phnom Penh', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"text\"}', 0, NULL, NULL);
INSERT INTO `settings` VALUES (5, 'about-us', 'about-us', 'About US', '<p>The craft of cooking and creating has been around much longer than that. But did you know that the very first evidence for the consumption of Soup dates back to 6,000 B.C., and that was said to have been made of hippopotamus. Well it&#39;s unbelievable but it&#39;s true. Anyway are you looking for a new food experience? Are you ready for a &quot;Cambodia&quot; experience? If you answered yes to any of these two questions, Master Suki Soup with &quot;hot pot&quot; food concept is just the thing for you! We believe that soup is something more than food to fill our belies with. We are trying out best to provide to our customers very special taste and exclusive experience.</p>', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"ckeditor\"}', 0, NULL, '2018-03-03 07:04:53');
INSERT INTO `settings` VALUES (6, 'career', 'career', 'Career', '<p>We had been focusing on developing our personnel ability to make sure that the quality. Besides salary and coverage fringe benefits, Master Suki Soup Restaurant also supports all of our personnel to have a happy life. Working to strengthen sustainable living and cultivating the mind in service.</p>', '{\"name\":\"value\",\"label\":\"Value\",\"type\":\"ckeditor\"}', 0, NULL, '2018-03-03 07:37:56');

-- ----------------------------
-- Table structure for tbl_applyjobs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_applyjobs`;
CREATE TABLE `tbl_applyjobs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NULL DEFAULT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `salary` double NULL DEFAULT 0,
  `start_work` datetime(0) NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `resume` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `national_id` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `tbl_applyjobs_email_unique`(`email`) USING BTREE,
  INDEX `tbl_applyjobs_position_id_index`(`position_id`) USING BTREE,
  INDEX `tbl_applyjobs_name_index`(`name`) USING BTREE,
  INDEX `tbl_applyjobs_phone_index`(`phone`) USING BTREE,
  INDEX `tbl_applyjobs_resume_index`(`resume`) USING BTREE,
  INDEX `tbl_applyjobs_national_id_index`(`national_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_applyjobs
-- ----------------------------
INSERT INTO `tbl_applyjobs` VALUES (1, 1, 'aa', 1, '2018-02-26 15:38:48', '', NULL, NULL, NULL, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for tbl_card_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_card_categories`;
CREATE TABLE `tbl_card_categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_cat_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_cat_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_card_categories_card_cat_des_en_index`(`card_cat_des_en`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_card_categories
-- ----------------------------
INSERT INTO `tbl_card_categories` VALUES (1, 'aa', 'a', 'administrator', 'ACTIVE', '2018-02-26 09:15:04', '2018-02-26 09:15:04', NULL);
INSERT INTO `tbl_card_categories` VALUES (2, 'bbb', 'bb', 'administrator', 'ACTIVE', '2018-03-03 05:04:06', '2018-03-03 05:04:06', NULL);

-- ----------------------------
-- Table structure for tbl_cards
-- ----------------------------
DROP TABLE IF EXISTS `tbl_cards`;
CREATE TABLE `tbl_cards`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `card_cate` int(11) NULL DEFAULT NULL,
  `card_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `card_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_cards_card_cate_index`(`card_cate`) USING BTREE,
  INDEX `tbl_cards_card_des_en_index`(`card_des_en`) USING BTREE,
  INDEX `tbl_cards_card_des_kh_index`(`card_des_kh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_cards
-- ----------------------------
INSERT INTO `tbl_cards` VALUES (1, 1, 'aaa', 'aa', 'uploads/images/cards/64837_1520052643_4238.png', '<p>aaa</p>', 'administrator', 'ACTIVE', '2018-02-26 09:23:27', '2018-03-03 04:50:43', NULL);
INSERT INTO `tbl_cards` VALUES (2, 2, 'bb', 'bbb', 'uploads/images/cards/89201_1520059279_3093.png', '<p>bbb</p>', 'administrator', 'ACTIVE', '2018-03-03 06:41:19', '2018-03-03 06:41:19', NULL);

-- ----------------------------
-- Table structure for tbl_categories
-- ----------------------------
DROP TABLE IF EXISTS `tbl_categories`;
CREATE TABLE `tbl_categories`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cat_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `cat_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_categories_cat_des_en_index`(`cat_des_en`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_categories
-- ----------------------------
INSERT INTO `tbl_categories` VALUES (1, 'vegetable_and_mushroom', 'vegetable_and_mushroom', 'uploads/images/categories/45903_1520065980_1183.png', 'administrator', 'ACTIVE', '2018-03-03 08:30:04', '2018-03-03 10:09:51', NULL);
INSERT INTO `tbl_categories` VALUES (2, 'bb', 'bbb', 'uploads/images/categories/68445_1520066008_4855.png', 'administrator', 'ACTIVE', '2018-03-03 08:33:28', '2018-03-03 08:33:28', NULL);

-- ----------------------------
-- Table structure for tbl_contacts
-- ----------------------------
DROP TABLE IF EXISTS `tbl_contacts`;
CREATE TABLE `tbl_contacts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL,
  `subject` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_contacts_name_index`(`name`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_email_exclusives
-- ----------------------------
DROP TABLE IF EXISTS `tbl_email_exclusives`;
CREATE TABLE `tbl_email_exclusives`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_feedbacks
-- ----------------------------
DROP TABLE IF EXISTS `tbl_feedbacks`;
CREATE TABLE `tbl_feedbacks`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_order_details
-- ----------------------------
DROP TABLE IF EXISTS `tbl_order_details`;
CREATE TABLE `tbl_order_details`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_orders
-- ----------------------------
DROP TABLE IF EXISTS `tbl_orders`;
CREATE TABLE `tbl_orders`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_positions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_positions`;
CREATE TABLE `tbl_positions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `position_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_positions_position_des_en_index`(`position_des_en`) USING BTREE,
  INDEX `tbl_positions_position_des_kh_index`(`position_des_kh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_positions
-- ----------------------------
INSERT INTO `tbl_positions` VALUES (1, 'Manager', 'អ្នកគ្រប់គ្រង', 'administrator', 'ACTIVE', '2018-02-26 06:16:48', '2018-02-26 06:16:48', NULL);

-- ----------------------------
-- Table structure for tbl_postjobs
-- ----------------------------
DROP TABLE IF EXISTS `tbl_postjobs`;
CREATE TABLE `tbl_postjobs`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `position_id` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  `post_date` date NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_postjobs_position_id_index`(`position_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_postjobs
-- ----------------------------
INSERT INTO `tbl_postjobs` VALUES (1, 1, '<p>aaaaa</p>', 'administrator', 'ACTIVE', '2018-02-26 07:17:49', '2018-03-03 02:57:04', NULL, '2018-02-08');
INSERT INTO `tbl_postjobs` VALUES (2, 1, '<p>bbbbb</p>', 'administrator', 'ACTIVE', '2018-02-26 07:19:58', '2018-03-03 02:56:58', NULL, '2018-02-26');
INSERT INTO `tbl_postjobs` VALUES (3, 1, '<p>cccc</p>', 'administrator', 'ACTIVE', '2018-03-03 02:53:13', '2018-03-03 02:56:50', NULL, '2018-03-03');

-- ----------------------------
-- Table structure for tbl_products
-- ----------------------------
DROP TABLE IF EXISTS `tbl_products`;
CREATE TABLE `tbl_products`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `pro_cate` int(11) NULL DEFAULT NULL,
  `pro_type` int(11) NULL DEFAULT NULL,
  `pro_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pro_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pro_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `qty` int(11) NULL DEFAULT NULL,
  `price` double NULL DEFAULT NULL,
  `kalory` float(10, 0) NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `pro_promotion` enum('INACTIVE','ACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'INACTIVE',
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_products_pro_cate_index`(`pro_cate`) USING BTREE,
  INDEX `tbl_products_pro_type_index`(`pro_type`) USING BTREE,
  INDEX `tbl_products_pro_code_index`(`pro_code`) USING BTREE,
  INDEX `tbl_products_pro_des_en_index`(`pro_des_en`) USING BTREE,
  INDEX `tbl_products_pro_des_kh_index`(`pro_des_kh`) USING BTREE,
  INDEX `tbl_products_qty_index`(`qty`) USING BTREE,
  INDEX `tbl_products_price_index`(`price`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_products
-- ----------------------------
INSERT INTO `tbl_products` VALUES (1, 1, 1, '11', 'vegetable_and_mushroom', 'vegetable_and_mushroom', 'uploads/images/products/94679_1520068844_1108.png', 1, 11, 222, 'aaa', 'INACTIVE', 'administrator', 'ACTIVE', '2018-03-03 09:20:44', '2018-03-03 10:09:29', NULL);
INSERT INTO `tbl_products` VALUES (2, 2, 2, '22', 'vegetable_and_mushroom', 'vegetable_and_mushroom', 'uploads/images/products/66314_1520068864_3507.png', 22, 22, 222, 'aa', 'INACTIVE', 'administrator', 'ACTIVE', '2018-03-03 09:21:04', '2018-03-03 10:08:57', NULL);

-- ----------------------------
-- Table structure for tbl_promotions
-- ----------------------------
DROP TABLE IF EXISTS `tbl_promotions`;
CREATE TABLE `tbl_promotions`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `promotion_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `promotion_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `start_date` datetime(0) NULL DEFAULT NULL,
  `last_date` datetime(0) NULL DEFAULT NULL,
  `image` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_promotions_promotion_des_en_index`(`promotion_des_en`) USING BTREE,
  INDEX `tbl_promotions_promotion_des_kh_index`(`promotion_des_kh`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_promotions
-- ----------------------------
INSERT INTO `tbl_promotions` VALUES (1, 'aa', 'aa', '2018-03-02 00:00:00', '2018-03-02 00:00:00', 'uploads/images/promotions/11285_1519981190_3096.png', '<p>aaa</p>', 'administrator', 'ACTIVE', '2018-03-02 08:59:50', '2018-03-02 08:59:50', NULL);

-- ----------------------------
-- Table structure for tbl_tables
-- ----------------------------
DROP TABLE IF EXISTS `tbl_tables`;
CREATE TABLE `tbl_tables`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for tbl_types
-- ----------------------------
DROP TABLE IF EXISTS `tbl_types`;
CREATE TABLE `tbl_types`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `t_des_en` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `t_des_kh` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `in_putter` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `status` enum('ACTIVE','INACTIVE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'ACTIVE',
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  `deleted_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `tbl_types_t_des_en_index`(`t_des_en`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_types
-- ----------------------------
INSERT INTO `tbl_types` VALUES (1, 'drink', 'drink', 'administrator', 'ACTIVE', '2018-03-03 08:59:46', '2018-03-03 08:59:46', NULL);
INSERT INTO `tbl_types` VALUES (2, 'food', 'food', 'administrator', 'ACTIVE', '2018-03-03 08:59:54', '2018-03-03 08:59:54', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp(0) NULL DEFAULT NULL,
  `updated_at` timestamp(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'administrator', 'administrator@gmail.com', '$2y$10$nQyxMgQNtl9ebbd6sf5LxuETsE7TV15a8n8L6B0wIiEj9f6eCxGQW', NULL, '2018-02-21 09:25:18', '2018-02-21 09:25:18');

SET FOREIGN_KEY_CHECKS = 1;
