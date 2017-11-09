/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100116
 Source Host           : localhost:3306
 Source Schema         : spa

 Target Server Type    : MySQL
 Target Server Version : 100116
 File Encoding         : 65001

 Date: 09/11/2017 22:56:54
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 9 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO `migrations` VALUES (3, '2017_11_07_132129_create_posts_table', 1);
INSERT INTO `migrations` VALUES (4, '2016_06_01_000001_create_oauth_auth_codes_table', 2);
INSERT INTO `migrations` VALUES (5, '2016_06_01_000002_create_oauth_access_tokens_table', 2);
INSERT INTO `migrations` VALUES (6, '2016_06_01_000003_create_oauth_refresh_tokens_table', 2);
INSERT INTO `migrations` VALUES (7, '2016_06_01_000004_create_oauth_clients_table', 2);
INSERT INTO `migrations` VALUES (8, '2016_06_01_000005_create_oauth_personal_access_clients_table', 2);

-- ----------------------------
-- Table structure for oauth_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_access_tokens`;
CREATE TABLE `oauth_access_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  `expires_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_access_tokens_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_auth_codes
-- ----------------------------
DROP TABLE IF EXISTS `oauth_auth_codes`;
CREATE TABLE `oauth_auth_codes`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_clients`;
CREATE TABLE `oauth_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `redirect` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_clients_user_id_index`(`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_personal_access_clients
-- ----------------------------
DROP TABLE IF EXISTS `oauth_personal_access_clients`;
CREATE TABLE `oauth_personal_access_clients`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_personal_access_clients_client_id_index`(`client_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for oauth_refresh_tokens
-- ----------------------------
DROP TABLE IF EXISTS `oauth_refresh_tokens`;
CREATE TABLE `oauth_refresh_tokens`  (
  `id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `oauth_refresh_tokens_access_token_id_index`(`access_token_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets`  (
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  INDEX `password_resets_email_index`(`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Table structure for posts
-- ----------------------------
DROP TABLE IF EXISTS `posts`;
CREATE TABLE `posts`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `body` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 56 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of posts
-- ----------------------------
INSERT INTO `posts` VALUES (1, 'Voluptatem quaerat cum incidunt aut sed.', 'Nihil molestiae nulla enim ea distinctio at. Perferendis sit sunt magni ad aut veritatis. Consequatur veritatis pariatur ad autem consequatur odio. Architecto consequatur non velit.', 2, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (2, 'Accusantium fugiat cum recusandae non enim omnis.', 'Iure eius quia neque eveniet voluptate possimus. Fugiat fuga ratione voluptatem voluptatem et ea. Omnis repudiandae sed voluptates qui et non.', 3, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (3, 'Qui laudantium ipsum omnis qui ut rerum.', 'Voluptas omnis quos ut vel. Sequi expedita autem perspiciatis delectus voluptate et. Iste nulla omnis cum vero ut molestiae non. Quidem delectus voluptates cum alias. Enim aut ut accusamus et dolorum et voluptatum.', 4, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (4, 'Et veritatis expedita voluptatem id quos qui eum.', 'Alias ut eligendi voluptatibus quod sed laboriosam. Possimus enim consequuntur ea vel. Est alias in id placeat consequuntur dolorem numquam. Et pariatur et odio maiores quis.', 5, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (5, 'Voluptas et et dolore facilis corporis.', 'Culpa nesciunt facere voluptas porro. Animi impedit sapiente sapiente porro. Est omnis adipisci soluta quia debitis quod itaque. Accusamus debitis eligendi eveniet id.', 6, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (6, 'Asperiores totam doloribus soluta.', 'Dignissimos expedita tempora voluptatem omnis voluptas cum qui. Fugit totam blanditiis veritatis odio enim totam. Ducimus nam quia dignissimos. Et eum ut vel provident.', 7, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (7, 'Qui omnis numquam sit optio quos eligendi.', 'Quae numquam autem fugit quia. Temporibus quas voluptas cupiditate autem. Doloremque quo sapiente et quam quia mollitia temporibus.', 8, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (8, 'Ut totam dolorum nam expedita ipsam.', 'Modi dolores aut ex. Laudantium dolores vel culpa beatae delectus earum ut. Et similique dolore labore et ipsum et dolorem.', 9, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (9, 'Suscipit eaque id animi et laudantium enim.', 'Amet consequatur inventore eligendi suscipit. Ducimus inventore ex sit numquam officiis sapiente. Alias distinctio est optio voluptatibus nihil.', 10, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (10, 'Harum praesentium impedit blanditiis nemo nobis deserunt quam.', 'Omnis sit rerum rerum dolorem hic. Atque repudiandae blanditiis sed quas similique. Rem aspernatur esse eos suscipit eum sunt suscipit. Autem et saepe quam dicta odit ea voluptas.', 11, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (11, 'Nihil nihil non sed deserunt autem.', 'Ut cupiditate eos eligendi. Magni est quo perferendis voluptatem expedita fugiat quo. Laborum suscipit suscipit minus laboriosam qui dolor recusandae. Quidem optio quo vel autem placeat quis ut.', 12, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (12, 'Sint placeat quis et quibusdam.', 'Dolorem et debitis ut architecto quos ducimus. Sapiente sed animi ut dolore tempora. A facilis ipsa optio recusandae. In rerum qui iusto commodi.', 13, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (13, 'Aperiam optio qui hic aspernatur voluptate soluta autem.', 'In sed voluptatem ducimus est laborum et aut sunt. Enim praesentium quidem nulla. Corrupti quod culpa beatae ipsum ab unde.', 14, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (14, 'Illo qui atque dolorum sed hic.', 'Totam saepe ipsum reprehenderit cumque enim. Illo ea omnis magnam quos corrupti. Sit hic laboriosam unde cum.', 15, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (15, 'Aut quisquam ullam placeat omnis nulla doloribus.', 'Non soluta tenetur laborum quia. Consequatur quia voluptatum sed impedit aliquam nisi vitae. Et quos aspernatur animi iure doloremque.', 16, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (16, 'Voluptatibus nemo cupiditate dicta nobis.', 'Cum dolor nulla recusandae quam commodi velit itaque id. At provident et eius autem. Dolorum voluptates qui id odio harum perspiciatis nihil. Et sequi nulla molestiae.', 17, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (17, 'Voluptatibus reprehenderit sint quis.', 'Nulla excepturi ut molestias fugiat. Deserunt exercitationem omnis et eaque eveniet et.', 18, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (18, 'Dolorum atque voluptate temporibus sapiente ut.', 'Omnis ex quisquam omnis vitae aliquam temporibus. Nihil quod quos cumque id neque. Molestiae esse officiis voluptatem exercitationem sequi culpa aspernatur. Provident quod est sunt aut cumque doloremque non aut.', 19, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (19, 'Quia totam autem veniam magni non quae at nulla.', 'Necessitatibus dolor consequatur dolorem. Ut impedit quia voluptatem exercitationem perferendis est. Quam unde est aliquid molestiae tenetur sit doloribus.', 20, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (20, 'Eos sed animi architecto corrupti perspiciatis error.', 'Doloremque molestiae tempore non sed in aut eum. Debitis quia fugit natus nisi necessitatibus quis. Eligendi enim eaque dolores rerum.', 21, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (21, 'Ratione consectetur voluptatem rerum maiores molestiae.', 'Perferendis neque quia impedit cupiditate facere repellendus occaecati. Nam et possimus maxime cum commodi voluptatem pariatur. Debitis accusantium quidem esse voluptatem eius.', 22, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (22, 'Aspernatur numquam veniam alias velit sint qui.', 'Molestiae alias voluptates ab et tenetur. Asperiores possimus omnis cupiditate. Praesentium ex ut asperiores hic ad quis qui rerum. Voluptates sit consectetur distinctio sequi quasi sint corrupti.', 23, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (23, 'Sapiente qui velit nihil corporis.', 'Hic molestias quibusdam dicta nesciunt occaecati fugit officiis. Consequatur sed maiores deleniti at. Et voluptas enim harum magnam nobis beatae nam.', 24, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (24, 'Repellat perferendis explicabo voluptatem nesciunt minus hic omnis soluta.', 'Ut possimus consequuntur odit recusandae excepturi omnis eius. Cumque quia aut voluptatum quasi possimus quis sit. Rerum ut libero voluptas inventore esse nihil ut. Suscipit fugiat nemo ex eaque doloribus voluptatem nihil.', 25, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (25, 'Voluptatem eligendi beatae nostrum labore libero.', 'Voluptas ut omnis aut pariatur qui rerum dicta cupiditate. Consequatur sapiente odit quis voluptatem in aperiam. Illum explicabo fuga quasi repellat iure beatae occaecati.', 26, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (26, 'Eos eligendi porro ea dicta molestiae optio qui.', 'Sapiente deserunt non reprehenderit sunt quae. Ad quos omnis ex accusantium dicta molestias. Officia fugit praesentium et molestiae perferendis molestias.', 27, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (27, 'Et saepe quod excepturi ea voluptatem.', 'Rerum est voluptate recusandae assumenda repellat neque iusto. Eligendi nisi id dolores tempora eveniet quaerat est. Reprehenderit quidem aliquam non atque eligendi laborum. Quo mollitia dignissimos assumenda accusantium eveniet.', 28, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (28, 'Qui dolor aperiam ut odio qui est ex omnis.', 'Voluptas ut quia doloribus excepturi sit incidunt. Facere ullam doloremque quia. Fuga fuga aut accusantium hic aut sed.', 29, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (29, 'Culpa voluptatem enim quos quis in.', 'Et dolor adipisci tempore molestiae. Eos vel ipsa nihil qui natus. Rerum officiis quis voluptas nemo sed et. Unde reiciendis minus deleniti officiis in eos occaecati.', 30, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (30, 'Exercitationem ea non accusamus laborum.', 'Nisi sit omnis quaerat autem eaque. Sint similique maxime dignissimos nihil.', 31, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (31, 'Quae aliquam nostrum optio autem quam.', 'Temporibus aspernatur eos eos sapiente accusamus consequatur. Labore non est quia maiores aut. Doloremque tempore est atque ducimus aspernatur.', 32, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (32, 'Aut id nihil voluptas vel.', 'Eaque illum tempore ea. Sapiente qui odit dolores recusandae. Eaque qui quos sint.', 33, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (33, 'Animi fugiat ut qui aut itaque molestiae nisi.', 'Ratione ut est a dolores et. Omnis et ut aut aliquid sint est facilis. Voluptas commodi architecto esse quaerat. Cupiditate dolorem quis quis nam non quidem.', 34, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (34, 'Sit libero praesentium explicabo debitis dicta soluta.', 'Nisi qui et modi velit et beatae. Itaque voluptas nobis autem labore eveniet aut et quis. Necessitatibus expedita eum illo non veritatis. Omnis et nemo sit molestias id id.', 35, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (35, 'Voluptatibus dolor enim itaque aperiam laboriosam quia est.', 'Error consectetur et autem quae a sit et magnam. Consequatur non libero ut sit nisi ut et. Rerum voluptatem rerum earum.', 36, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (36, 'Dolores voluptatem similique consequatur quos adipisci hic.', 'Est quos corporis quia saepe et dolores. Non aliquid sed blanditiis dolor fugiat.', 37, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (37, 'Velit architecto rerum et est et minima.', 'Molestiae sit labore perspiciatis error ut. Dolorem rerum non illo laudantium quis accusantium libero. Fuga ex qui dolorum non.', 38, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (38, 'Repellendus nostrum rem voluptas qui odio.', 'Non quo explicabo debitis minima consectetur itaque et. Consequatur qui blanditiis possimus accusantium exercitationem reprehenderit. Quam odio libero magni doloribus exercitationem quaerat. Quae dolorem qui facere labore illo aut iusto.', 39, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (39, 'Eius esse et impedit sunt minus natus.', 'Nemo earum qui minima numquam odit. Deserunt in rerum veniam non deleniti qui necessitatibus voluptas. Eum eum ea provident.', 40, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (40, 'Quos cupiditate illo reprehenderit.', 'Iure illum nisi non ea vel et commodi aspernatur. Odit officia debitis sint ipsam. Tempora et et eius quo dolores assumenda necessitatibus. Quaerat et modi aut atque enim doloremque iure. Sunt est qui aut maxime.', 41, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (41, 'Et aut voluptatem atque ut.', 'Dicta labore voluptatem assumenda id non. Velit neque ut ad est facilis. Facere similique veniam accusantium quis rerum qui temporibus.', 42, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (42, 'Hic error voluptate itaque ut numquam.', 'Enim repellendus eaque id harum temporibus similique earum. Enim et laudantium sequi et. Veritatis inventore iste et at. Et officia omnis atque omnis.', 43, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (43, 'Iusto et eum perspiciatis quam perferendis amet perspiciatis.', 'Sed ut quia error nulla est repellendus. Optio aperiam fuga praesentium dolores. Velit ipsa voluptatem cupiditate totam.', 44, '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `posts` VALUES (44, 'Quo ad rerum ut modi.', 'Dolor aliquam consequatur autem temporibus. Modi voluptatem facilis quia non sunt sunt harum. Vel inventore minus asperiores ratione veritatis molestiae officia. Explicabo in quia suscipit.', 45, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (45, 'Velit provident cum enim enim incidunt.', 'Omnis fuga unde eum temporibus. Quis odio nihil dolorum soluta sit nihil ut voluptas. Vel et delectus nulla reprehenderit.', 46, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (46, 'Maiores consequatur quisquam dolores nobis sit.', 'Voluptatem vel ea enim facere suscipit odit qui. Dignissimos blanditiis id asperiores quos aut numquam fugiat. Tenetur id cupiditate velit voluptate veniam autem. Ad modi est ipsam voluptas vero ex deserunt.', 47, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (47, 'Non et dolor quibusdam cumque eius ut omnis.', 'Omnis ea iste ex. Reprehenderit animi voluptatem delectus et ad vitae. Sit quibusdam omnis sed qui. Quia ea occaecati qui repellendus.', 48, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (48, 'Qui voluptatem consequuntur nostrum exercitationem.', 'Deserunt dicta ut inventore voluptatibus. Dolorum expedita et qui eos accusamus. Quia non possimus ad aperiam dolores maxime. Libero eligendi cupiditate illum reiciendis autem fugit.', 49, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (49, 'Harum enim veniam accusamus dolor ipsa et est.', 'Placeat consectetur voluptas amet et ipsa recusandae. Quo porro in facilis qui. Reprehenderit vel et neque. Repellendus aut ut sed facere enim sit reiciendis.', 50, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (50, 'At velit dignissimos delectus ipsa consequatur alias reiciendis.', 'Dignissimos similique eveniet quos expedita qui non. Ut accusantium assumenda animi. Doloremque repellendus quas est aut culpa. Consequatur libero harum voluptatem doloremque est est voluptates voluptatem.', 51, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (51, 'Et quod ut nam voluptatum nostrum quam.', 'Nihil harum quia aspernatur est voluptatem voluptatem. Vel culpa ut porro. Enim omnis quia vel id.', 52, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (52, 'Nulla esse dolore autem fugit quidem inventore tempore quia.', 'Totam quo doloribus quia quibusdam error veniam illum voluptatum. In sit nobis enim maiores et sit et. Ea ut odio magnam dolorum doloribus sed. Odio velit quis sint natus.', 53, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (53, 'Repellendus aut temporibus sint itaque aperiam.', 'Quae qui est accusantium dolor. Explicabo mollitia sit aut rerum magnam qui nemo omnis. Neque omnis est non ut et. Sunt voluptatem dolorum pariatur asperiores velit asperiores blanditiis.', 54, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (54, 'Quaerat sit sequi ducimus veniam itaque quaerat.', 'Magni aut quia laboriosam optio asperiores. Rerum ut neque nesciunt natus eum nobis. Ea dicta in omnis maxime voluptatibus illo. Illum doloremque suscipit autem qui molestiae sequi.', 55, '2017-11-07 13:45:41', '2017-11-07 13:45:41');
INSERT INTO `posts` VALUES (55, 'Doloribus et iusto corporis et et.', 'Minus odit qui quam consequatur molestias rerum cupiditate magnam. Quidem minus sapiente sed aliquam nam delectus. Voluptatum impedit voluptas similique ad occaecati. Labore ullam voluptatem adipisci at earum itaque.', 56, '2017-11-07 13:45:41', '2017-11-07 13:45:41');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp(0) DEFAULT NULL,
  `updated_at` timestamp(0) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 59 CHARACTER SET = utf8 COLLATE = utf8_unicode_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'Alycia Kshlerin', 'santos.waters@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'ar44vCkaf7', '2017-11-07 13:45:05', '2017-11-07 13:45:05');
INSERT INTO `users` VALUES (2, 'Corbin Koch DDS', 'toni70@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '6mjfDi3pVa', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (3, 'Mr. Keagan Kohler', 'jammie.gorczany@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'fj1tyOscN8', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (4, 'Vena Kuhlman', 'adrian95@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'wbvq5qigBq', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (5, 'Alfredo Brekke', 'jayson43@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'hxkILZmtef', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (6, 'Rubie Little', 'gibson.arnold@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'YN5KQaV47N', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (7, 'Wendell Schuppe', 'klein.keven@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '17npDjANWG', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (8, 'Margot Harber', 'dickens.elvis@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'E19JQX3uAV', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (9, 'Otha Macejkovic DVM', 'weston.mraz@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'INK79aopil', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (10, 'Mrs. Trinity Feeney DVM', 'marcelino.sporer@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'uSKcDycOQ7', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (11, 'Kane Hilll', 'jklein@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '79idK3weZU', '2017-11-07 13:45:38', '2017-11-07 13:45:38');
INSERT INTO `users` VALUES (12, 'Dr. Andres Barrows Jr.', 'grayce20@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '8iy5zyY89G', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (13, 'Myriam Nitzsche', 'melissa31@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '4rUDy07PRo', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (14, 'Tyler Stracke', 'bayer.keon@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '4QkbqHjnXt', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (15, 'Mrs. Emelie Bednar MD', 'stracke.wellington@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'HqFxo3Mbkg', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (16, 'Jaydon Cartwright', 'tavares88@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'yBSU1t5qz3', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (17, 'Prof. Jacklyn Miller', 'witting.leif@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'XYm7lHykFT', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (18, 'Prof. Billie Denesik', 'mohamed25@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'WN7iAsUSS7', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (19, 'Maynard Greenholt', 'troob@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '1deSxlP9Jo', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (20, 'Dr. Chance Ortiz MD', 'victoria67@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'zkQa3shEVE', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (21, 'Angelica Gerlach', 'carlotta94@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'OihZ7QG4Pk', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (22, 'Carmen Maggio DVM', 'ortiz.naomi@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '7ZBLrcVDan', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (23, 'Mr. Gerald Douglas', 'nelda02@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '86puVgMJgx', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (24, 'Dr. Jonas Crist', 'herman.grayce@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'O5BNcFw08j', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (25, 'Keith Johns', 'xgutmann@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'dGDAPJ7iVh', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (26, 'Mr. Ewald Macejkovic IV', 'wisoky.mercedes@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '2litnIAZey', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (27, 'Quinten Hermann Sr.', 'nakia08@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'uws2Iq8lku', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (28, 'Dr. Shania Wuckert PhD', 'sporer.scot@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'TGIytyanbH', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (29, 'Miguel Medhurst', 'antonetta97@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'mZln74nfoH', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (30, 'Ashtyn Schuster', 'daija.dubuque@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'T5CYuNoi4w', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (31, 'Ewell Swift', 'sawayn.jude@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '3fQqme57w1', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (32, 'Dr. Gay Fisher DDS', 'tgoldner@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'M5qLEaBjrE', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (33, 'Dr. Melba Harber DVM', 'roscoe04@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'GvweXDXeeQ', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (34, 'Katharina Lang', 'boyer.april@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'tXX7V4MxhS', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (35, 'Kian Casper', 'mosciski.baylee@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'dBDFxMfkEX', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (36, 'Anne Price IV', 'lincoln.stiedemann@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'asNV25TDgM', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (37, 'Garrick Bins', 'jett98@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'f2Bq4p0xFw', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (38, 'Prof. Grayson Thiel', 'mclaughlin.rollin@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'lroEqRsnvE', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (39, 'Mr. Mac Emard MD', 'jhilll@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'RjAkldUezZ', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (40, 'Caterina Greenfelder', 'ida.tromp@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, '9gYyqUwxe1', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (41, 'Camila Kunze', 'jerel44@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'Zfzo5MSBe1', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (42, 'Gabriella Baumbach MD', 'kstracke@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'gZX8A4atEr', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (43, 'Ms. Rowena Brown Sr.', 'minerva.sipes@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'SNO1LmE2mD', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (44, 'Jena DuBuque', 'ogreen@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'B9L1GqruRU', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (45, 'Mr. Jamal Metz', 'demond51@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'PTw1EAeMM5', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (46, 'Ms. Zoey Brown', 'ygottlieb@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'XdeFCQgVOo', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (47, 'Hal Tillman', 'ada.mueller@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'n1N9mZpznU', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (48, 'Mr. Devon Crooks', 'kristy56@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'c2BbKlluX1', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (49, 'Mariela Gislason', 'ztoy@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'miILNIUKlC', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (50, 'Hillary Ortiz Jr.', 'nigel.yost@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'IWkaT6hzJ0', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (51, 'Adan Johnston', 'christiansen.deonte@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'mwj8wqDyZP', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (52, 'Prof. Arch Casper', 'jkub@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'XdX02CI8Mz', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (53, 'Justine Little', 'mayer.destiny@example.org', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'RcJ2ZOIhCl', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (54, 'Paris Konopelski', 'mayra50@example.com', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'vtrv9utuO6', '2017-11-07 13:45:39', '2017-11-07 13:45:39');
INSERT INTO `users` VALUES (55, 'Elody Bahringer', 'fred29@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 's6yeDBBPyF', '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `users` VALUES (56, 'Gideon Kulas', 'leonard.erdman@example.net', '$2y$10$QQBF0UwbziBXWu5iyiESrOxjHaQf1Fnfc7VLUM0EaYpVknJhUiORC', 0, 'IyWycrronp', '2017-11-07 13:45:40', '2017-11-07 13:45:40');
INSERT INTO `users` VALUES (58, '陈小龙', '13480731740@qq.com', '$2y$10$B7w7sHoqVGs8wg/dPRykPe76ldlrxGRdAU1I.nC5ysd.5Dxhg0ddC', 0, NULL, '2017-11-09 13:05:28', '2017-11-09 13:05:28');

SET FOREIGN_KEY_CHECKS = 1;
