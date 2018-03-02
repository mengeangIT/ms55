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

 Date: 02/03/2018 17:22:52
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
-- Records of pages
-- ----------------------------
INSERT INTO `pages` VALUES (1, 'about_us', 'About Us', 'About us', 'About us', '<p>Sabay Digital Corporation is the&nbsp;<strong>leading digital media and entertainment group in Cambodia</strong>.</p>\r\n\r\n<p>Our diverse brands share a common mission:&nbsp;<strong>help our customers get the most out of the online revolution</strong>. With cutting-edge services, engaging content and leading online properties, we want Sabay (meaning &ldquo;Happiness&rdquo;) to always be associated with&nbsp;<strong>awesomeness</strong>.</p>\r\n\r\n<p>We strive to&nbsp;<strong>innovate</strong>&nbsp;in everything we do: online and mobile gaming, movies, infrastructure, content platforms and more. We are proud to have in our portfolio Sabay News, the most visited Khmer website.</p>\r\n\r\n<p>Cambodia is an exciting country with a dynamic youth community eager to play an active role in the digital era. Sabay Digital Corporation (formerly known as CIDC Information Technology) was formed in 2007 to help meet this demand, with new services and products including online content and mobile entertainment.&nbsp;Sabay is a forward thinking pioneer and has been the first to introduce online gaming, unified SMS content and original online entertainment (news, movies, music and TV) in the Kingdom of Wonder.</p>\r\n\r\n<p>Our vision is to&nbsp;be a source of inspiration for the youth of Cambodia in their pursuit of happiness and our mission is to make every interaction with Sabay an awesome experience.</p>', NULL, NULL, NULL, NULL);
INSERT INTO `pages` VALUES (2, 'about_us', 'Contact', 'contact', 'contact', '<p>Sabay Digital Corporation is the&nbsp;<strong>leading digital media and entertainment group in Cambodia</strong>.</p>\r\n\r\n<p>Our diverse brands share a common mission:&nbsp;<strong>help our customers get the most out of the online revolution</strong>. With cutting-edge services, engaging content and leading online properties, we want Sabay (meaning &ldquo;Happiness&rdquo;) to always be associated with&nbsp;<strong>awesomeness</strong>.</p>\r\n\r\n<p>We strive to&nbsp;<strong>innovate</strong>&nbsp;in everything we do: online and mobile gaming, movies, infrastructure, content platforms and more. We are proud to have in our portfolio Sabay News, the most visited Khmer website.</p>\r\n\r\n<p>&nbsp;</p>', NULL, NULL, NULL, NULL);
INSERT INTO `pages` VALUES (3, 'services', 'Policy', 'Policy', 'Policy', '<p>We collect information to provide better services to all of our users &ndash; from figuring out basic stuff like which language you speak, to more complex things like which&nbsp;<a href=\"https://www.google.com/policies/privacy/example/ads-youll-find-most-useful.html\">ads you&rsquo;ll find most useful</a>,&nbsp;<a href=\"https://www.google.com/policies/privacy/example/the-people-who-matter-most.html\">the people who matter most to you online</a>, or which YouTube videos you might like.</p>\r\n\r\n<p>We collect information in the following ways:</p>\r\n\r\n<ul>\r\n<li>\r\n<p>Information you give us.&nbsp;For example, many of our services require you to sign up for a Google Account. When you do, we&rsquo;ll ask for&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-personal-info\">personal information</a>, like your name, email address, telephone number or&nbsp;<a href=\"https://www.google.com/policies/privacy/example/credit-card.html\">credit card</a>&nbsp;to store with your account. If you want to take full advantage of the sharing features we offer, we might also ask you to create a publicly visible&nbsp;<a href=\"https://support.google.com/accounts/answer/112783?hl=en\">Google Profile</a>, which may include your name and photo.</p>\r\n</li>\r\n<li>\r\n<p>Information we get from your use of our services.&nbsp;We&nbsp;<a href=\"https://www.google.com/policies/privacy/example/collect-information.html\">collect information</a>&nbsp;about the services that you use and how you use them, like when you watch a video on YouTube, visit a website that uses our advertising services, or&nbsp;<a href=\"https://www.google.com/policies/privacy/example/view-and-interact-with-our-ads.html\">view and interact with our ads</a>&nbsp;and content. This information includes:</p>\r\n\r\n<ul>\r\n<li>\r\n<p><a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-device\">Device information</a></p>\r\n\r\n<p>We collect&nbsp;<a href=\"https://www.google.com/policies/privacy/example/device-specific-information.html\">device-specific information</a>&nbsp;(such as your hardware model, operating system version,&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-unique-device-id\">unique device identifiers</a>, and mobile network information including phone number). Google may associate your&nbsp;<a href=\"https://www.google.com/policies/privacy/example/device-identifiers.html\">device identifiers</a>&nbsp;or&nbsp;<a href=\"https://www.google.com/policies/privacy/example/phone-number.html\">phone number</a>&nbsp;with your Google Account.</p>\r\n</li>\r\n<li>\r\n<p>Log information</p>\r\n\r\n<p>When you use our services or view content provided by Google, we automatically collect and store certain information in&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-server-logs\">server logs</a>. This includes:</p>\r\n\r\n<ul>\r\n<li>details of how you used our service, such as your search queries.</li>\r\n<li>telephony log information like your phone number, calling-party number, forwarding numbers, time and date of calls, duration of calls, SMS routing information and types of calls.</li>\r\n<li><a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-ip\">Internet protocol address</a>.</li>\r\n<li>device event information such as crashes, system activity, hardware settings, browser type, browser language, the date and time of your request and referral URL.</li>\r\n<li>cookies that may uniquely identify your browser or your Google Account.</li>\r\n</ul>\r\n</li>\r\n<li>\r\n<p>Location information</p>\r\n\r\n<p>When you use Google services, we&nbsp;<a href=\"https://www.google.com/policies/privacy/example/may-collect-and-process-information.html\">may collect and process information about your actual location</a>. We use various technologies to determine location, including IP address, GPS,&nbsp;<a href=\"https://www.google.com/policies/privacy/example/sensors.html\">and other sensors</a>&nbsp;that may, for example, provide Google with information on nearby devices,&nbsp;<a href=\"https://www.google.com/policies/privacy/example/wifi-access-points-and-cell-towers.html\">Wi-Fi access points and cell towers</a>.</p>\r\n</li>\r\n<li>\r\n<p>Unique application numbers</p>\r\n\r\n<p>Certain services include a unique application number. This number and information about your installation (for example, the operating system type and application version number) may be sent to Google when you install or uninstall that service or when that service periodically contacts our servers, such as for automatic updates.</p>\r\n</li>\r\n<li>\r\n<p>Local storage</p>\r\n\r\n<p>We may collect and store information (including personal information) locally on your device using mechanisms such as&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-browser-storage\">browser web storage</a>&nbsp;(including HTML&nbsp;5) and&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-application-data-cache\">application data caches</a>.</p>\r\n</li>\r\n<li>\r\n<p>Cookies and similar technologies</p>\r\n\r\n<p>We&nbsp;<a href=\"https://www.google.com/policies/privacy/example/our-partners.html\">and our partners</a>&nbsp;use various technologies to collect and store information when you visit a Google service, and this may include using&nbsp;<a href=\"https://www.google.com/policies/privacy/key-terms/#toc-terms-cookie\">cookies or similar technologies</a>&nbsp;to identify your browser or device. We also use these technologies to collect and store information when you interact with services we offer to our partners, such as&nbsp;<a href=\"https://www.google.com/policies/privacy/example/advertising-services.html\">advertising services</a>&nbsp;or Google features that may appear on other sites. Our Google Analytics product helps businesses and site owners analyze the traffic to their websites and apps. When used in conjunction with our advertising services, such as those using the DoubleClick cookie, Google Analytics information is&nbsp;<a href=\"https://www.google.com/policies/privacy/example/linked-with-information-about-visits-to-multiple-sites.html\">linked, by the Google Analytics customer or by Google, using Google technology, with information about visits to multiple sites</a>.</p>\r\n</li>\r\n</ul>\r\n</li>\r\n</ul>\r\n\r\n<p>Information we collect when you are signed in to Google, in addition to information we obtain about you from partners, may be associated with your Google Account. When information is associated with your Google Account, we treat it as personal information. For more information about how you can access, manage or delete information that is associated with your Google Account, visit the&nbsp;<a href=\"https://www.google.com/policies/privacy/#infochoices\">Transparency and choice</a>&nbsp;section of this policy.</p>\r\n\r\n<div style=\"float:right\"><a href=\"https://www.google.com/policies/privacy/#content\">Back to top</a></div>\r\n\r\n<h2>How we use information we collect</h2>', '{\"meta_title\":\"Policy\",\"meta_description\":\"Policy\",\"meta_keywords\":\"Policy\"}', NULL, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of settings
-- ----------------------------
INSERT INTO `settings` VALUES (1, 'map-home-picture', '', NULL, NULL, '', 0, NULL, NULL);
INSERT INTO `settings` VALUES (2, 'video-home-iframe-src', '', NULL, NULL, '', 0, NULL, NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_card_categories
-- ----------------------------
INSERT INTO `tbl_card_categories` VALUES (1, 'aa', 'a', 'administrator', 'ACTIVE', '2018-02-26 09:15:04', '2018-02-26 09:15:04', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_cards
-- ----------------------------
INSERT INTO `tbl_cards` VALUES (1, 1, 'aaa', 'aa', 'uploads/images/products/65343_1519637007_2371.png', '<p>aaa</p>', 'administrator', 'ACTIVE', '2018-02-26 09:23:27', '2018-02-26 09:23:27', NULL);

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tbl_postjobs
-- ----------------------------
INSERT INTO `tbl_postjobs` VALUES (1, 1, '<p>aaa</p>', 'administrator', 'ACTIVE', '2018-02-26 07:17:49', '2018-02-26 07:17:49', NULL, '2018-02-08');
INSERT INTO `tbl_postjobs` VALUES (2, 1, '<p>b</p>', 'administrator', 'ACTIVE', '2018-02-26 07:19:58', '2018-02-26 07:19:58', NULL, '2018-02-26');

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Compact;

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
