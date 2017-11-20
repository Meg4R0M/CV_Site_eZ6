-- MySQL dump 10.13  Distrib 5.5.58, for debian-linux-gnu (x86_64)
--
-- Host: mysql    Database: eZMegCVSite
-- ------------------------------------------------------
-- Server version	5.6.37-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '' + 00 :00'' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = '' NO_AUTO_VALUE_ON_ZERO'' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `ezapprove_items`
--

DROP TABLE IF EXISTS `ezapprove_items`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezapprove_items` (
  `collaboration_id`    INT(11) NOT NULL DEFAULT ''0'',
  `id`                  INT(11) NOT NULL AUTO_INCREMENT,
  `workflow_process_id` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezapprove_items`
--

LOCK TABLES `ezapprove_items` WRITE;
/*!40000 ALTER TABLE `ezapprove_items`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezapprove_items`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbasket`
--

DROP TABLE IF EXISTS `ezbasket`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbasket` (
  `id`                   INT(11)      NOT NULL AUTO_INCREMENT,
  `order_id`             INT(11)      NOT NULL DEFAULT ''0'',
  `productcollection_id` INT(11)      NOT NULL DEFAULT ''0'',
  `session_id`           VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`),
  KEY `ezbasket_session_id` (`session_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbasket`
--

LOCK TABLES `ezbasket` WRITE;
/*!40000 ALTER TABLE `ezbasket`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbasket`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezbinaryfile`
--

DROP TABLE IF EXISTS `ezbinaryfile`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezbinaryfile` (
  `contentobject_attribute_id` INT(11)      NOT NULL DEFAULT ''0'',
  `download_count`             INT(11)      NOT NULL DEFAULT ''0'',
  `filename`                   VARCHAR(255) NOT NULL DEFAULT '''',
  `mime_type`                  VARCHAR(255) NOT NULL DEFAULT '''',
  `original_filename`          VARCHAR(255) NOT NULL DEFAULT '''',
  `version`                    INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`contentobject_attribute_id`, `version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezbinaryfile`
--

LOCK TABLES `ezbinaryfile` WRITE;
/*!40000 ALTER TABLE `ezbinaryfile`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezbinaryfile`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state`
--

DROP TABLE IF EXISTS `ezcobj_state`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state` (
  `default_language_id` BIGINT(20)  NOT NULL DEFAULT ''0'',
  `group_id`            INT(11)     NOT NULL DEFAULT ''0'',
  `id`                  INT(11)     NOT NULL AUTO_INCREMENT,
  `identifier`          VARCHAR(45) NOT NULL DEFAULT '''',
  `language_mask`       BIGINT(20)  NOT NULL DEFAULT ''0'',
  `priority`            INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_identifier` (`group_id`, `identifier`),
  KEY `ezcobj_state_lmask` (`language_mask`),
  KEY `ezcobj_state_priority` (`priority`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state`
--

LOCK TABLES `ezcobj_state` WRITE;
/*!40000 ALTER TABLE `ezcobj_state`
  DISABLE KEYS */;
INSERT INTO `ezcobj_state` VALUES (2, 2, 1, ''not_locked'', 3, 0), (2, 2, 2, ''locked'', 3, 1);
/*!40000 ALTER TABLE `ezcobj_state`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group`
--

DROP TABLE IF EXISTS `ezcobj_state_group`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group` (
  `default_language_id` BIGINT(20)  NOT NULL DEFAULT ''0'',
  `id`                  INT(11)     NOT NULL AUTO_INCREMENT,
  `identifier`          VARCHAR(45) NOT NULL DEFAULT '''',
  `language_mask`       BIGINT(20)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcobj_state_group_identifier` (`identifier`),
  KEY `ezcobj_state_group_lmask` (`language_mask`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group`
--

LOCK TABLES `ezcobj_state_group` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group`
  DISABLE KEYS */;
INSERT INTO `ezcobj_state_group` VALUES (2, 2, ''ez_lock'', 3);
/*!40000 ALTER TABLE `ezcobj_state_group`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_group_language`
--

DROP TABLE IF EXISTS `ezcobj_state_group_language`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_group_language` (
  `contentobject_state_group_id` INT(11)     NOT NULL DEFAULT ''0'',
  `description`                  LONGTEXT    NOT NULL,
  `language_id`                  BIGINT(20)  NOT NULL DEFAULT ''0'',
  `name`                         VARCHAR(45) NOT NULL DEFAULT '''',
  `real_language_id`             BIGINT(20)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`contentobject_state_group_id`, `real_language_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_group_language`
--

LOCK TABLES `ezcobj_state_group_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_group_language`
  DISABLE KEYS */;
INSERT INTO `ezcobj_state_group_language` VALUES (2, '''', 3, ''LOCK'', 2);
/*!40000 ALTER TABLE `ezcobj_state_group_language`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_language`
--

DROP TABLE IF EXISTS `ezcobj_state_language`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_language` (
  `contentobject_state_id` INT(11)     NOT NULL DEFAULT ''0'',
  `description`            LONGTEXT    NOT NULL,
  `language_id`            BIGINT(20)  NOT NULL DEFAULT ''0'',
  `name`                   VARCHAR(45) NOT NULL DEFAULT '''',
  PRIMARY KEY (`contentobject_state_id`, `language_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_language`
--

LOCK TABLES `ezcobj_state_language` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_language`
  DISABLE KEYS */;
INSERT INTO `ezcobj_state_language` VALUES (1, '''', 3, '' NOT locked''), (2, '''', 3, ''Locked'');
/*!40000 ALTER TABLE `ezcobj_state_language`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcobj_state_link`
--

DROP TABLE IF EXISTS `ezcobj_state_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcobj_state_link` (
  `contentobject_id`       INT(11) NOT NULL DEFAULT ''0'',
  `contentobject_state_id` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`contentobject_id`, `contentobject_state_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcobj_state_link`
--

LOCK TABLES `ezcobj_state_link` WRITE;
/*!40000 ALTER TABLE `ezcobj_state_link`
  DISABLE KEYS */;
INSERT INTO `ezcobj_state_link`
VALUES (4, 1), (10, 1), (11, 1), (12, 1), (13, 1), (14, 1), (41, 1), (42, 1), (45, 1), (49, 1), (50, 1), (51, 1),
  (52, 1), (54, 1), (56, 1), (57, 1), (58, 1), (59, 1), (60, 1), (61, 1), (62, 1), (63, 1), (64, 1), (65, 1), (66, 1),
  (67, 1), (68, 1), (69, 1), (70, 1), (71, 1), (72, 1), (73, 1), (74, 1), (75, 1), (76, 1), (77, 1), (78, 1), (79, 1),
  (80, 1), (81, 1), (82, 1), (83, 1), (84, 1), (85, 1), (86, 1), (87, 1), (88, 1), (89, 1), (90, 1), (91, 1), (92, 1),
  (93, 1), (94, 1), (95, 1), (96, 1), (97, 1), (98, 1), (99, 1), (100, 1), (101, 1), (102, 1), (103, 1), (104, 1),
  (105, 1), (106, 1), (107, 1), (108, 1), (109, 1), (110, 1), (111, 1), (112, 1), (113, 1), (114, 1), (115, 1),
  (116, 1), (117, 1), (118, 1), (119, 1), (120, 1), (121, 1), (122, 1), (123, 1), (124, 1), (125, 1), (126, 1),
  (127, 1);
/*!40000 ALTER TABLE `ezcobj_state_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_group`
--

DROP TABLE IF EXISTS `ezcollab_group`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_group` (
  `created`         INT(11)      NOT NULL DEFAULT ''0'',
  `depth`           INT(11)      NOT NULL DEFAULT ''0'',
  `id`              INT(11)      NOT NULL AUTO_INCREMENT,
  `is_open`         INT(11)      NOT NULL DEFAULT ''1'',
  `modified`        INT(11)      NOT NULL DEFAULT ''0'',
  `parent_group_id` INT(11)      NOT NULL DEFAULT ''0'',
  `path_string`     VARCHAR(255) NOT NULL DEFAULT '''',
  `priority`        INT(11)      NOT NULL DEFAULT ''0'',
  `title`           VARCHAR(255) NOT NULL DEFAULT '''',
  `user_id`         INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezcollab_group_depth` (`depth`),
  KEY `ezcollab_group_path` (`path_string`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_group`
--

LOCK TABLES `ezcollab_group` WRITE;
/*!40000 ALTER TABLE `ezcollab_group`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_group`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item`
--

DROP TABLE IF EXISTS `ezcollab_item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item` (
  `created`         INT(11)     NOT NULL DEFAULT ''0'',
  `creator_id`      INT(11)     NOT NULL DEFAULT ''0'',
  `data_float1`     FLOAT       NOT NULL DEFAULT ''0'',
  `data_float2`     FLOAT       NOT NULL DEFAULT ''0'',
  `data_float3`     FLOAT       NOT NULL DEFAULT ''0'',
  `data_int1`       INT(11)     NOT NULL DEFAULT ''0'',
  `data_int2`       INT(11)     NOT NULL DEFAULT ''0'',
  `data_int3`       INT(11)     NOT NULL DEFAULT ''0'',
  `data_text1`      LONGTEXT    NOT NULL,
  `data_text2`      LONGTEXT    NOT NULL,
  `data_text3`      LONGTEXT    NOT NULL,
  `id`              INT(11)     NOT NULL AUTO_INCREMENT,
  `modified`        INT(11)     NOT NULL DEFAULT ''0'',
  `status`          INT(11)     NOT NULL DEFAULT ''1'',
  `type_identifier` VARCHAR(40) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item`
--

LOCK TABLES `ezcollab_item` WRITE;
/*!40000 ALTER TABLE `ezcollab_item`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_group_link`
--

DROP TABLE IF EXISTS `ezcollab_item_group_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_group_link` (
  `collaboration_id` INT(11) NOT NULL DEFAULT ''0'',
  `created`          INT(11) NOT NULL DEFAULT ''0'',
  `group_id`         INT(11) NOT NULL DEFAULT ''0'',
  `is_active`        INT(11) NOT NULL DEFAULT ''1'',
  `is_read`          INT(11) NOT NULL DEFAULT ''0'',
  `last_read`        INT(11) NOT NULL DEFAULT ''0'',
  `modified`         INT(11) NOT NULL DEFAULT ''0'',
  `user_id`          INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`collaboration_id`, `group_id`, `user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_group_link`
--

LOCK TABLES `ezcollab_item_group_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_group_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_group_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_message_link`
--

DROP TABLE IF EXISTS `ezcollab_item_message_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_message_link` (
  `collaboration_id` INT(11) NOT NULL DEFAULT ''0'',
  `created`          INT(11) NOT NULL DEFAULT ''0'',
  `id`               INT(11) NOT NULL AUTO_INCREMENT,
  `message_id`       INT(11) NOT NULL DEFAULT ''0'',
  `message_type`     INT(11) NOT NULL DEFAULT ''0'',
  `modified`         INT(11) NOT NULL DEFAULT ''0'',
  `participant_id`   INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_message_link`
--

LOCK TABLES `ezcollab_item_message_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_message_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_message_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_participant_link`
--

DROP TABLE IF EXISTS `ezcollab_item_participant_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_participant_link` (
  `collaboration_id` INT(11) NOT NULL DEFAULT ''0'',
  `created`          INT(11) NOT NULL DEFAULT ''0'',
  `is_active`        INT(11) NOT NULL DEFAULT ''1'',
  `is_read`          INT(11) NOT NULL DEFAULT ''0'',
  `last_read`        INT(11) NOT NULL DEFAULT ''0'',
  `modified`         INT(11) NOT NULL DEFAULT ''0'',
  `participant_id`   INT(11) NOT NULL DEFAULT ''0'',
  `participant_role` INT(11) NOT NULL DEFAULT ''1'',
  `participant_type` INT(11) NOT NULL DEFAULT ''1'',
  PRIMARY KEY (`collaboration_id`, `participant_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_participant_link`
--

LOCK TABLES `ezcollab_item_participant_link` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_participant_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_participant_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_item_status`
--

DROP TABLE IF EXISTS `ezcollab_item_status`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_item_status` (
  `collaboration_id` INT(11) NOT NULL DEFAULT ''0'',
  `is_active`        INT(11) NOT NULL DEFAULT ''1'',
  `is_read`          INT(11) NOT NULL DEFAULT ''0'',
  `last_read`        INT(11) NOT NULL DEFAULT ''0'',
  `user_id`          INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`collaboration_id`, `user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_item_status`
--

LOCK TABLES `ezcollab_item_status` WRITE;
/*!40000 ALTER TABLE `ezcollab_item_status`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_item_status`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_notification_rule`
--

DROP TABLE IF EXISTS `ezcollab_notification_rule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_notification_rule` (
  `collab_identifier` VARCHAR(255) NOT NULL DEFAULT '''',
  `id`                INT(11)      NOT NULL AUTO_INCREMENT,
  `user_id`           VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_notification_rule`
--

LOCK TABLES `ezcollab_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezcollab_notification_rule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_notification_rule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_profile`
--

DROP TABLE IF EXISTS `ezcollab_profile`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_profile` (
  `created`    INT(11)  NOT NULL DEFAULT ''0'',
  `data_text1` LONGTEXT NOT NULL,
  `id`         INT(11)  NOT NULL AUTO_INCREMENT,
  `main_group` INT(11)  NOT NULL DEFAULT ''0'',
  `modified`   INT(11)  NOT NULL DEFAULT ''0'',
  `user_id`    INT(11)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_profile`
--

LOCK TABLES `ezcollab_profile` WRITE;
/*!40000 ALTER TABLE `ezcollab_profile`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_profile`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcollab_simple_message`
--

DROP TABLE IF EXISTS `ezcollab_simple_message`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcollab_simple_message` (
  `created`      INT(11)     NOT NULL DEFAULT ''0'',
  `creator_id`   INT(11)     NOT NULL DEFAULT ''0'',
  `data_float1`  FLOAT       NOT NULL DEFAULT ''0'',
  `data_float2`  FLOAT       NOT NULL DEFAULT ''0'',
  `data_float3`  FLOAT       NOT NULL DEFAULT ''0'',
  `data_int1`    INT(11)     NOT NULL DEFAULT ''0'',
  `data_int2`    INT(11)     NOT NULL DEFAULT ''0'',
  `data_int3`    INT(11)     NOT NULL DEFAULT ''0'',
  `data_text1`   LONGTEXT    NOT NULL,
  `data_text2`   LONGTEXT    NOT NULL,
  `data_text3`   LONGTEXT    NOT NULL,
  `id`           INT(11)     NOT NULL AUTO_INCREMENT,
  `message_type` VARCHAR(40) NOT NULL DEFAULT '''',
  `modified`     INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcollab_simple_message`
--

LOCK TABLES `ezcollab_simple_message` WRITE;
/*!40000 ALTER TABLE `ezcollab_simple_message`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcollab_simple_message`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment`
--

DROP TABLE IF EXISTS `ezcomment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment` (
  `id`                INT(11)      NOT NULL AUTO_INCREMENT,
  `language_id`       BIGINT(20)   NOT NULL,
  `created`           INT(11)      NOT NULL,
  `modified`          INT(11)      NOT NULL,
  `user_id`           INT(11)      NOT NULL,
  `session_key`       VARCHAR(32)           DEFAULT NULL,
  `ip`                VARCHAR(100) NOT NULL,
  `contentobject_id`  INT(11)      NOT NULL,
  `parent_comment_id` INT(11)      NOT NULL DEFAULT ''0'',
  `name`              VARCHAR(255) NOT NULL,
  `email`             VARCHAR(75)  NOT NULL,
  `url`               VARCHAR(255)          DEFAULT NULL,
  `text`              LONGTEXT     NOT NULL,
  `status`            INT(11)      NOT NULL,
  `title`             VARCHAR(255)          DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key_ip` (`user_id`, `session_key`, `ip`),
  KEY `content_parentcomment` (`contentobject_id`, `language_id`, `parent_comment_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment`
--

LOCK TABLES `ezcomment` WRITE;
/*!40000 ALTER TABLE `ezcomment`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_notification`
--

DROP TABLE IF EXISTS `ezcomment_notification`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_notification` (
  `id`               INT(11)    NOT NULL AUTO_INCREMENT,
  `contentobject_id` INT(11)    NOT NULL,
  `language_id`      BIGINT(20) NOT NULL,
  `send_time`        INT(11)    NOT NULL DEFAULT ''0'',
  `status`           INT(11)    NOT NULL DEFAULT ''1'',
  `comment_id`       INT(11)    NOT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_notification`
--

LOCK TABLES `ezcomment_notification` WRITE;
/*!40000 ALTER TABLE `ezcomment_notification`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_notification`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscriber`
--

DROP TABLE IF EXISTS `ezcomment_subscriber`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscriber` (
  `id`          INT(11)     NOT NULL AUTO_INCREMENT,
  `user_id`     INT(11)     NOT NULL,
  `email`       VARCHAR(50) NOT NULL,
  `enabled`     INT(11)     NOT NULL DEFAULT ''1'',
  `hash_string` VARCHAR(50)          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscriber`
--

LOCK TABLES `ezcomment_subscriber` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscriber`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscriber`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcomment_subscription`
--

DROP TABLE IF EXISTS `ezcomment_subscription`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcomment_subscription` (
  `id`                INT(11)     NOT NULL AUTO_INCREMENT,
  `user_id`           INT(11)     NOT NULL,
  `subscriber_id`     INT(11)     NOT NULL,
  `subscription_type` VARCHAR(30) NOT NULL,
  `content_id`        INT(11)     NOT NULL,
  `language_id`       BIGINT(20)  NOT NULL DEFAULT ''0'',
  `subscription_time` INT(11)     NOT NULL,
  `enabled`           INT(11)     NOT NULL DEFAULT ''1'',
  `hash_string`       VARCHAR(50)          DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcomment_subscription`
--

LOCK TABLES `ezcomment_subscription` WRITE;
/*!40000 ALTER TABLE `ezcomment_subscription`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcomment_subscription`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontent_language`
--

DROP TABLE IF EXISTS `ezcontent_language`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontent_language` (
  `disabled` INT(11)      NOT NULL DEFAULT ''0'',
  `id`       BIGINT(20)   NOT NULL DEFAULT ''0'',
  `locale`   VARCHAR(20)  NOT NULL DEFAULT '''',
  `name`     VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`),
  KEY `ezcontent_language_name` (`name`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontent_language`
--

LOCK TABLES `ezcontent_language` WRITE;
/*!40000 ALTER TABLE `ezcontent_language`
  DISABLE KEYS */;
INSERT INTO `ezcontent_language` VALUES (0, 2, ''eng - GB'', ''English (United Kingdom)'');
/*!40000 ALTER TABLE `ezcontent_language`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowsebookmark`
--

DROP TABLE IF EXISTS `ezcontentbrowsebookmark`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowsebookmark` (
  `id`      INT(11)      NOT NULL AUTO_INCREMENT,
  `name`    VARCHAR(255) NOT NULL DEFAULT '''',
  `node_id` INT(11)      NOT NULL DEFAULT ''0'',
  `user_id` INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowsebookmark_user` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowsebookmark`
--

LOCK TABLES `ezcontentbrowsebookmark` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowsebookmark`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentbrowserecent`
--

DROP TABLE IF EXISTS `ezcontentbrowserecent`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentbrowserecent` (
  `created` INT(11)      NOT NULL DEFAULT ''0'',
  `id`      INT(11)      NOT NULL AUTO_INCREMENT,
  `name`    VARCHAR(255) NOT NULL DEFAULT '''',
  `node_id` INT(11)      NOT NULL DEFAULT ''0'',
  `user_id` INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezcontentbrowserecent_user` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentbrowserecent`
--

LOCK TABLES `ezcontentbrowserecent` WRITE;
/*!40000 ALTER TABLE `ezcontentbrowserecent`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentbrowserecent`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass`
--

DROP TABLE IF EXISTS `ezcontentclass`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass` (
  `always_available`            INT(11)      NOT NULL DEFAULT ''0'',
  `contentobject_name`          VARCHAR(255)          DEFAULT NULL,
  `created`                     INT(11)      NOT NULL DEFAULT ''0'',
  `creator_id`                  INT(11)      NOT NULL DEFAULT ''0'',
  `id`                          INT(11)      NOT NULL AUTO_INCREMENT,
  `identifier`                  VARCHAR(50)  NOT NULL DEFAULT '''',
  `initial_language_id`         BIGINT(20)   NOT NULL DEFAULT ''0'',
  `is_container`                INT(11)      NOT NULL DEFAULT ''0'',
  `language_mask`               BIGINT(20)   NOT NULL DEFAULT ''0'',
  `modified`                    INT(11)      NOT NULL DEFAULT ''0'',
  `modifier_id`                 INT(11)      NOT NULL DEFAULT ''0'',
  `remote_id`                   VARCHAR(100) NOT NULL DEFAULT '''',
  `serialized_description_list` LONGTEXT,
  `serialized_name_list`        LONGTEXT,
  `sort_field`                  INT(11)      NOT NULL DEFAULT ''1'',
  `sort_order`                  INT(11)      NOT NULL DEFAULT ''1'',
  `url_alias_name`              VARCHAR(255)          DEFAULT NULL,
  `version`                     INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `version`),
  KEY `ezcontentclass_version` (`version`),
  KEY `ezcontentclass_identifier` (`identifier`, `version`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 27
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass`
--

LOCK TABLES `ezcontentclass` WRITE;
/*!40000 ALTER TABLE `ezcontentclass`
  DISABLE KEYS */;
INSERT INTO `ezcontentclass` VALUES
  (1, '' < short_name | name > '', 1024392098, 14, 1, ''folder'', 2, 1, 3, 1082454875, 14,
   ''a3d405b81be900468eb153d774f4f0d2'', NULL,
   ''a:2:{s:6:\"eng-GB\";s:6:\"Folder\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<name>'',1024392098,14,3,''user_group'',2,1,3,1048494743,14,''25b4268cdcd01921b808a0d854b877ef'',NULL,''a:2:{s:6:\"eng-GB\";s:10:\"User group\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<first_name> <last_name>'',1024392098,14,4,''user'',2,0,3,1082018364,14,''40faa822edc579b02c25f6bb7beec3ad'',NULL,''a:2:{s:6:\"eng-GB\";s:4:\"User\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<name>'',1031484992,8,5,''image_portfolio'',2,0,2,1511115317,14,''f6df12aa74e36230eb675f364fccd25a'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:9:\"Portfolio\";}'',1,1,'''',0),(1,''<name>'',1052385472,14,12,''file'',2,0,3,1052385669,14,''637d58bfddf164627bdfd265733280a0'',NULL,''a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<name>'',1081858024,14,14,''common_ini_settings'',2,0,3,1081858024,14,''ffedf2e73b1ea0c3e630e42e2db9c900'',NULL,''a:2:{s:6:\"eng-GB\";s:19:\"Common ini settings\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<title>'',1081858045,14,15,''template_look'',2,0,3,1081858045,14,''59b43cd9feaaf0e45ac974fb4bbd3f92'',NULL,''a:2:{s:6:\"eng-GB\";s:13:\"Template look\";s:16:\"always-available\";s:6:\"eng-GB\";}'',1,1,NULL,0),(1,''<title>'',1448625315,14,16,''home_page'',2,1,2,1511090638,14,''b314698c7f550403d7a1a5fa5cabce16'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:9:\"Home page\";}'',2,0,'''',0),(1,''<title>'',1448625483,14,17,''blog'',2,1,2,1448625589,14,''3d64a4063e6588821358e3a0cab12515'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Blog\";}'',2,0,'''',0),(1,''<title>'',1448625613,14,18,''blog_post'',2,0,2,1448625832,14,''85e5fa69c6fd7b3e086a4331c07c13be'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:9:\"Blog post\";}'',2,0,'''',0),(1,''<title>'',1448625859,14,19,''contact_form'',2,0,2,1448626038,14,''ee1bf061169a8058fdd7d82c1f156146'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:12:\"Contact form\";}'',2,0,'''',0),(1,''<title>'',1448626069,14,20,''gallery'',2,1,2,1448626136,14,''e392b7db351c8b927c11d811647efa85'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:7:\"Gallery\";}'',2,0,'''',0),(1,''<presume_name>'',1511093510,14,21,''image_resume'',2,0,2,1511100274,14,''5be5bc70dabc4ea2b00644a3bddea196'',''a:1:{s:6:\"eng-GB\";s:25:\"image for personal resume\";}'',''a:1:{s:6:\"eng-GB\";s:12:\"image_resume\";}'',2,0,'''',0),(1,''<title>'',1511099176,14,22,''resume_gallery'',2,1,2,1511099587,14,''a463558740a8321e4875602a4c1a8aee'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:14:\"Resume_Gallery\";}'',2,0,'''',0),(1,''<name>'',1511109348,14,23,''testimonials'',2,1,2,1511112544,14,''1ecfffd411c43d54ff678249e0f52a3e'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:12:\"Testimonials\";}'',8,0,'''',0),(1,''<name>'',1511109671,14,24,''testimonial'',2,0,2,1511112797,14,''48b61850c5159d5ca60548c6524ba257'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"testimonial\";}'',2,0,'''',0),(1,''<name>'',1511115774,14,25,''certifications'',2,1,2,1511116347,14,''0bf3400dadff8f0353b51d082e616ead'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:14:\"Certifications\";}'',2,0,'''',0),(1,''<name>'',1511116110,14,26,''certification'',2,0,2,1511116265,14,''701577728c7b8cea674e4de2c523fa4b'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:13:\"Certification\";}'',2,0,'''',0);
   /*!40000 ALTER TABLE `ezcontentclass` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_attribute`
--

DROP TABLE IF EXISTS `ezcontentclass_attribute`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_attribute` (
  `can_translate`               INT(11)              DEFAULT ''1'',
  `category`                    VARCHAR(25) NOT NULL DEFAULT '''',
  `contentclass_id`             INT(11)     NOT NULL DEFAULT ''0'',
  `data_float1`                 DOUBLE               DEFAULT NULL,
  `data_float2`                 DOUBLE               DEFAULT NULL,
  `data_float3`                 DOUBLE               DEFAULT NULL,
  `data_float4`                 DOUBLE               DEFAULT NULL,
  `data_int1`                   INT(11)              DEFAULT NULL,
  `data_int2`                   INT(11)              DEFAULT NULL,
  `data_int3`                   INT(11)              DEFAULT NULL,
  `data_int4`                   INT(11)              DEFAULT NULL,
  `data_text1`                  VARCHAR(50)          DEFAULT NULL,
  `data_text2`                  VARCHAR(50)          DEFAULT NULL,
  `data_text3`                  VARCHAR(50)          DEFAULT NULL,
  `data_text4`                  VARCHAR(255)         DEFAULT NULL,
  `data_text5`                  LONGTEXT,
  `data_type_string`            VARCHAR(50) NOT NULL DEFAULT '''',
  `id`                          INT(11)     NOT NULL AUTO_INCREMENT,
  `identifier`                  VARCHAR(50) NOT NULL DEFAULT '''',
  `is_information_collector`    INT(11)     NOT NULL DEFAULT ''0'',
  `is_required`                 INT(11)     NOT NULL DEFAULT ''0'',
  `is_searchable`               INT(11)     NOT NULL DEFAULT ''0'',
  `placement`                   INT(11)     NOT NULL DEFAULT ''0'',
  `serialized_data_text`        LONGTEXT,
  `serialized_description_list` LONGTEXT,
  `serialized_name_list`        LONGTEXT    NOT NULL,
  `version`                     INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `version`),
  KEY `ezcontentclass_attr_ccid` (`contentclass_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 230
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_attribute`
--

LOCK TABLES `ezcontentclass_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_attribute`
  DISABLE KEYS */;
INSERT INTO `ezcontentclass_attribute` VALUES
  (1, ''content'', 1, 0, 0, 0, 0, 255, 0, 0, 0, ''Folder'', '''', '''', '''', '''', ''ezstring'', 4, ''NAME'', 0, 1, 1,
   1, NULL, NULL,
   ''a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',3,0,0,0,0,255,0,0,0,'''','''','''','''',NULL,''ezstring'',6,''name'',0,1,1,1,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',3,0,0,0,0,255,0,0,0,'''','''','''','''',NULL,''ezstring'',7,''description'',0,0,1,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',4,0,0,0,0,255,0,0,0,'''','''','''','''','''',''ezstring'',8,''first_name'',0,1,1,1,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:10:\"First name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',4,0,0,0,0,255,0,0,0,'''','''','''','''','''',''ezstring'',9,''last_name'',0,1,1,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:9:\"Last name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(0,''content'',4,0,0,0,0,0,0,0,0,'''','''','''','''','''',''ezuser'',12,''user_account'',0,1,0,3,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:12:\"User account\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',5,NULL,NULL,NULL,NULL,150,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',116,''name'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'',0),(1,''content'',5,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',117,''caption'',0,0,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:7:\"Caption\";}'',0),(1,''content'',5,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',118,''image'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Image\";}'',0),(1,''content'',1,0,0,0,0,5,0,0,0,'''','''','''','''','''',''ezrichtext'',119,''short_description'',0,0,1,3,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:17:\"Short description\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',12,0,0,0,0,0,0,0,0,''New file'','''','''','''',NULL,''ezstring'',146,''name'',0,1,1,1,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',12,0,0,0,0,10,0,0,0,'''','''','''','''',NULL,''ezrichtext'',147,''description'',0,0,1,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',12,0,0,0,0,0,0,0,0,'''','''','''','''',NULL,''ezbinaryfile'',148,''file'',0,1,0,3,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:4:\"File\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',1,0,0,0,0,100,0,0,0,'''','''','''','''','''',''ezstring'',155,''short_name'',0,0,1,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:10:\"Short name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',1,0,0,0,0,20,0,0,0,'''','''','''','''','''',''ezrichtext'',156,''description'',0,0,1,4,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:11:\"Description\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(0,''content'',1,0,0,0,0,0,0,1,0,'''','''','''','''','''',''ezboolean'',158,''show_children'',0,0,0,5,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:13:\"Show children\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,0,0,0,0,'''','''','''','''','''',''ezstring'',159,''name'',0,0,1,1,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:4:\"Name\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,1,0,0,0,''site.ini'',''SiteSettings'',''IndexPage'','''',''override;user;admin;demo'',''ezinisetting'',160,''indexpage'',0,0,0,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:10:\"Index Page\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,1,0,0,0,''site.ini'',''SiteSettings'',''DefaultPage'','''',''override;user;admin;demo'',''ezinisetting'',161,''defaultpage'',0,0,0,3,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:12:\"Default Page\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''DebugSettings'',''DebugOutput'','''',''override;user;admin;demo'',''ezinisetting'',162,''debugoutput'',0,0,0,4,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:12:\"Debug Output\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''DebugSettings'',''DebugByIP'','''',''override;user;admin;demo'',''ezinisetting'',163,''debugbyip'',0,0,0,5,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:11:\"Debug By IP\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,6,0,0,0,''site.ini'',''DebugSettings'',''DebugIPList'','''',''override;user;admin;demo'',''ezinisetting'',164,''debugiplist'',0,0,0,6,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:13:\"Debug IP List\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''DebugSettings'',''DebugRedirection'','''',''override;user;admin;demo'',''ezinisetting'',165,''debugredirection'',0,0,0,7,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:17:\"Debug Redirection\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''ContentSettings'',''ViewCaching'','''',''override;user;admin;demo'',''ezinisetting'',166,''viewcaching'',0,0,0,8,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:12:\"View Caching\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''TemplateSettings'',''TemplateCache'','''',''override;user;admin;demo'',''ezinisetting'',167,''templatecache'',0,0,0,9,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:14:\"Template Cache\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,2,0,0,0,''site.ini'',''TemplateSettings'',''TemplateCompile'','''',''override;user;admin;demo'',''ezinisetting'',168,''templatecompile'',0,0,0,10,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:16:\"Template Compile\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,6,0,0,0,''image.ini'',''small'',''Filters'','''',''override;user;admin;demo'',''ezinisetting'',169,''imagesmall'',0,0,0,11,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:16:\"Image Small Size\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,6,0,0,0,''image.ini'',''medium'',''Filters'','''',''override;user;admin;demo'',''ezinisetting'',170,''imagemedium'',0,0,0,12,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:17:\"Image Medium Size\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',14,0,0,0,0,6,0,0,0,''image.ini'',''large'',''Filters'','''',''override;user;admin;demo'',''ezinisetting'',171,''imagelarge'',0,0,0,13,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:16:\"Image Large Size\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,1,0,0,0,''site.ini'',''SiteSettings'',''SiteName'','''',''override;user;admin;demo'',''ezinisetting'',172,''title'',0,0,0,1,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:5:\"Title\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,6,0,0,0,''site.ini'',''SiteSettings'',''MetaDataArray'','''',''override;user;admin;demo'',''ezinisetting'',173,''meta_data'',0,0,0,2,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:9:\"Meta data\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,10,0,0,0,'''','''','''','''','''',''ezimage'',174,''image'',0,0,0,3,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,0,0,0,0,''sitestyle'','''','''','''','''',''ezpackage'',175,''sitestyle'',0,0,0,4,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:9:\"Sitestyle\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,0,0,0,0,'''','''','''','''','''',''ezstring'',176,''id'',0,0,1,5,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:2:\"id\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,1,0,0,0,''site.ini'',''MailSettings'',''AdminEmail'','''',''override;user;admin;demo'',''ezinisetting'',177,''email'',0,0,0,6,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:5:\"Email\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',15,0,0,0,0,1,0,0,0,''site.ini'',''SiteSettings'',''SiteURL'','''',''override;user;admin;demo'',''ezinisetting'',178,''siteurl'',0,0,0,7,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:8:\"Site URL\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',4,0,0,0,0,10,0,0,0,'''','''','''','''','''',''eztext'',179,''signature'',0,0,1,4,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:9:\"Signature\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',4,0,0,0,0,10,0,0,0,'''','''','''','''','''',''ezimage'',180,''image'',0,0,0,5,NULL,NULL,''a:2:{s:6:\"eng-GB\";s:5:\"Image\";s:16:\"always-available\";s:6:\"eng-GB\";}'',0),(1,''content'',16,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',181,''title'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(0,''content'',16,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',182,''image'',0,1,0,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Image\";}'',0),(1,''content'',16,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',183,''description'',0,0,1,7,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(1,''content'',17,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',184,''title'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(1,''content'',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',185,''description'',0,0,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(1,''content'',17,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',186,''image'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Image\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',187,''title'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezdatetime'',188,''publication_date'',0,1,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:16:\"Publication date\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezauthor'',189,''author'',0,1,1,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:6:\"Author\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',190,''intro'',0,0,1,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Intro\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',191,''body'',0,1,1,5,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Body\";}'',0),(1,''content'',18,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',192,''image'',0,0,0,6,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Image\";}'',0),(1,''content'',19,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',193,''title'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(1,''content'',19,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',194,''description'',0,0,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(1,''content'',19,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',195,''image'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Image\";}'',0),(1,''content'',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezemail'',196,''email'',0,1,1,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:6:\"E-mail\";}'',0),(1,''content'',19,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezgmaplocation'',197,''location'',0,1,1,5,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:8:\"Location\";}'',0),(1,''content'',20,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',198,''title'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(1,''content'',20,NULL,NULL,NULL,NULL,10,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',199,''description'',0,0,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(0,''content'',16,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',200,''image_skills'',0,1,0,3,''N;'',''a:1:{s:6:\"eng-GB\";s:29:\"image de fond du second block\";}'',''a:1:{s:6:\"eng-GB\";s:12:\"image_skills\";}'',0),(0,''content'',16,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',201,''image_subscribe'',0,1,0,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:15:\"image_subscribe\";}'',0),(0,''content'',16,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',202,''image_testimonials'',0,1,0,5,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:18:\"image_testimonials\";}'',0),(0,''content'',16,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',203,''image_numbers'',0,1,0,6,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:13:\"image_numbers\";}'',0),(1,''content'',21,NULL,NULL,NULL,NULL,0,0,NULL,NULL,''no_name'',NULL,NULL,NULL,NULL,''ezstring'',204,''presume_name'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'',0),(0,''content'',21,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezdate'',205,''presume_date'',0,1,0,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"date\";}'',0),(0,''content'',21,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',206,''presume_image'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"image\";}'',0),(1,''content'',21,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',207,''presume_caption'',0,0,0,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:7:\"caption\";}'',0),(1,''content'',22,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',208,''title'',0,0,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(1,''content'',22,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',209,''description'',0,0,1,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(1,''content'',5,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',210,''image_full'',0,0,0,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:10:\"Image Full\";}'',0),(1,''content'',23,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',211,''name'',0,1,0,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"Title\";}'',0),(0,''content'',24,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',215,''name'',0,1,0,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'',0),(1,''content'',24,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',216,''job_name'',0,0,0,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:8:\"Job Name\";}'',0),(0,''content'',24,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezimage'',218,''image'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:5:\"image\";}'',0),(1,''content'',24,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',219,''testimonial'',0,1,0,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"testimonial\";}'',0),(1,''content'',23,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',220,''description'',0,0,0,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0),(0,''content'',25,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',221,''name'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'',0),(0,''content'',26,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',225,''name'',0,1,1,1,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Name\";}'',0),(0,''content'',26,NULL,NULL,NULL,NULL,0,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezstring'',226,''version'',0,0,0,2,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:7:\"Version\";}'',0),(0,''content'',26,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezurl'',227,''link'',0,1,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Link\";}'',0),(0,''content'',26,NULL,NULL,NULL,NULL,1,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezdate'',228,''date'',0,1,0,4,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:4:\"Date\";}'',0),(1,''content'',25,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,''ezrichtext'',229,''description'',0,0,0,3,''N;'',''a:0:{}'',''a:1:{s:6:\"eng-GB\";s:11:\"Description\";}'',0);
   /*!40000 ALTER TABLE `ezcontentclass_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_classgroup`
--

DROP TABLE IF EXISTS `ezcontentclass_classgroup`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_classgroup` (
  `contentclass_id`      INT(11) NOT NULL DEFAULT ''0'',
  `contentclass_version` INT(11) NOT NULL DEFAULT ''0'',
  `group_id`             INT(11) NOT NULL DEFAULT ''0'',
  `group_name`           VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`contentclass_id`, `contentclass_version`, `group_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_classgroup`
--

LOCK TABLES `ezcontentclass_classgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_classgroup`
  DISABLE KEYS */;
INSERT INTO `ezcontentclass_classgroup`
VALUES (1, 0, 1, ''Content''), (3, 0, 2, ''Users''), (4, 0, 2, ''Users''), (5, 0, 3, ''Media''), (12, 0, 3, ''Media''),
  (14, 0, 4, ''Setup''), (15, 0, 4, ''Setup''), (16, 0, 1, ''Content''), (17, 0, 1, ''Content''),
  (18, 0, 1, ''Content''), (19, 0, 1, ''Content''), (20, 0, 1, ''Content''), (21, 0, 3, ''Media''),
  (22, 0, 1, ''Content''), (23, 0, 1, ''Content''), (24, 0, 3, ''Media''), (25, 0, 1, ''Content''),
  (26, 0, 5, ''Home_Content'');
/*!40000 ALTER TABLE `ezcontentclass_classgroup`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclass_name`
--

DROP TABLE IF EXISTS `ezcontentclass_name`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclass_name` (
  `contentclass_id`      INT(11)      NOT NULL DEFAULT ''0'',
  `contentclass_version` INT(11)      NOT NULL DEFAULT ''0'',
  `language_id`          BIGINT(20)   NOT NULL DEFAULT ''0'',
  `language_locale`      VARCHAR(20)  NOT NULL DEFAULT '''',
  `name`                 VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`contentclass_id`, `contentclass_version`, `language_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclass_name`
--

LOCK TABLES `ezcontentclass_name` WRITE;
/*!40000 ALTER TABLE `ezcontentclass_name`
  DISABLE KEYS */;
INSERT INTO `ezcontentclass_name`
VALUES (1, 0, 3, ''eng - GB'', ''Folder''), (3, 0, 3, ''eng - GB'', ''USER GROUP ''), (4, 0, 3, ''eng - GB'', ''USER''),
  (5, 0, 2, ''eng - GB'', ''Portfolio''), (12, 0, 3, ''eng - GB'', ''FILE''),
  (14, 0, 3, ''eng - GB'', ''Common ini settings''), (15, 0, 3, ''eng - GB'', ''Template look''),
  (16, 0, 2, ''eng - GB'', ''Home PAGE ''), (17, 0, 2, ''eng - GB'', ''Blog''), (18, 0, 2, ''eng - GB'', ''Blog post''),
  (19, 0, 2, ''eng - GB'', ''Contact form''), (20, 0, 2, ''eng - GB'', ''Gallery''),
  (21, 0, 2, ''eng - GB'', ''image_resume''), (22, 0, 2, ''eng - GB'', ''Resume_Gallery''),
  (23, 0, 2, ''eng - GB'', ''Testimonials''), (24, 0, 2, ''eng - GB'', ''testimonial''),
  (25, 0, 2, ''eng - GB'', ''Certifications''), (26, 0, 2, ''eng - GB'', ''Certification'');
/*!40000 ALTER TABLE `ezcontentclass_name`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentclassgroup`
--

DROP TABLE IF EXISTS `ezcontentclassgroup`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentclassgroup` (
  `created`     INT(11) NOT NULL DEFAULT ''0'',
  `creator_id`  INT(11) NOT NULL DEFAULT ''0'',
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `modified`    INT(11) NOT NULL DEFAULT ''0'',
  `modifier_id` INT(11) NOT NULL DEFAULT ''0'',
  `name`        VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentclassgroup`
--

LOCK TABLES `ezcontentclassgroup` WRITE;
/*!40000 ALTER TABLE `ezcontentclassgroup`
  DISABLE KEYS */;
INSERT INTO `ezcontentclassgroup`
VALUES (1031216928, 14, 1, 1033922106, 14, ''Content''), (1031216941, 14, 2, 1033922113, 14, ''Users''),
  (1032009743, 14, 3, 1033922120, 14, ''Media''), (1081858024, 14, 4, 1081858024, 14, ''Setup''),
  (1511116105, 14, 5, 1511116105, 14, ''Home_Content'');
/*!40000 ALTER TABLE `ezcontentclassgroup`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject`
--

DROP TABLE IF EXISTS `ezcontentobject`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject` (
  `contentclass_id`     INT(11)    NOT NULL DEFAULT ''0'',
  `current_version`     INT(11)             DEFAULT NULL,
  `id`                  INT(11)    NOT NULL AUTO_INCREMENT,
  `initial_language_id` BIGINT(20) NOT NULL DEFAULT ''0'',
  `language_mask`       BIGINT(20) NOT NULL DEFAULT ''0'',
  `modified`            INT(11)    NOT NULL DEFAULT ''0'',
  `name`                VARCHAR(255)        DEFAULT NULL,
  `owner_id`            INT(11)    NOT NULL DEFAULT ''0'',
  `published`           INT(11)    NOT NULL DEFAULT ''0'',
  `remote_id`           VARCHAR(100)        DEFAULT NULL,
  `section_id`          INT(11)    NOT NULL DEFAULT ''0'',
  `status`              INT(11)             DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezcontentobject_remote_id` (`remote_id`),
  KEY `ezcontentobject_classid` (`contentclass_id`),
  KEY `ezcontentobject_currentversion` (`current_version`),
  KEY `ezcontentobject_lmask` (`language_mask`),
  KEY `ezcontentobject_owner` (`owner_id`),
  KEY `ezcontentobject_pub` (`published`),
  KEY `ezcontentobject_status` (`status`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 128
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject`
--

LOCK TABLES `ezcontentobject` WRITE;
/*!40000 ALTER TABLE `ezcontentobject`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject`
VALUES (3, 1, 4, 2, 3, 1033917596, ''Users'', 14, 1033917596, ''f5c88a2209584891056f987fd965b0ba'', 2, 1),
  (4, 2, 10, 2, 3, 1072180405, ''Anonymous USER '', 14, 1033920665, ''faaeb9be3bd98ed09f606fc16d144eca'', 2, 1),
  (3, 1, 11, 2, 3, 1033920746, ''Guest accounts'', 14, 1033920746, ''5f7f0bdb3381d6a461d8c29ff53d908f'', 2, 1),
  (3, 1, 12, 2, 3, 1033920775, ''Administrator users'', 14, 1033920775, ''9b47a45624b023b1a76c73b74d704acf'', 2, 1),
  (3, 1, 13, 2, 3, 1033920794, ''Editors'', 14, 1033920794, ''3c160cca19fb135f83bd02d911f04db2'', 2, 1),
  (4, 4, 14, 2, 3, 1511085159, ''Administrator USER '', 14, 1033920830, ''1bb4fe25487f05527efa8bfd394cecc7'', 2, 1),
  (1, 1, 41, 2, 3, 1060695457, ''Media'', 14, 1060695457, ''a6e35cbcb7cd6ae4b691f3eee30cd262'', 3, 1),
  (3, 1, 42, 2, 3, 1072180330, ''Anonymous Users'', 14, 1072180330, ''15b256dbea2ae72418ff5facc999e8f9'', 2, 1),
  (1, 1, 45, 2, 3, 1079684190, ''Setup'', 14, 1079684190, ''241d538ce310074e602f29f49e44e938'', 4, 1),
  (1, 1, 49, 2, 3, 1080220197, ''Images'', 14, 1080220197, ''e7ff633c6b8e0fd3531e74c6e712bead'', 3, 1),
  (1, 1, 50, 2, 3, 1080220220, ''Files'', 14, 1080220220, ''732a5acd01b51a6fe6eab448ad4138a9'', 3, 1),
  (1, 1, 51, 2, 3, 1080220233, ''Multimedia'', 14, 1080220233, ''09082deb98662a104f325aaa8c4933d3'', 3, 1),
  (14, 1, 52, 2, 2, 1082016591, ''Common INI settings'', 14, 1082016591, ''27437f3547db19cf81a33c92578b2c89'', 4, 1),
  (15, 2, 54, 2, 2, 1301062376, ''Plain site'', 14, 1082016652, ''8b8b22fe3c6061ed500fbd2b377b885f'', 5, 1),
  (1, 1, 56, 2, 3, 1103023132, ''Design'', 14, 1103023132, ''08799e609893f7aba22f10cb466d9cc8'', 5, 1),
  (16, 4, 57, 2, 3, 1511090690, ''Home'', 14, 1448648004, ''3823d78e2ec9306fab2e81c937ed6b29'', 1, 1),
  (19, 2, 58, 2, 3, 1448629197, ''Contact Us'', 14, 1448629197, ''c38f24389ad64e2dd43c8c057e4d64de'', 1, 1),
  (20, 4, 59, 2, 3, 1511105778, ''Projects'', 14, 1448627693, ''411b1d5cb865e902e6df47241910d50a'', 1, 1),
  (17, 6, 60, 2, 3, 1448667368, ''Top Stories'', 14, 1448667368, ''0385f9b74351ddbc4d209410508525cf'', 1, 1),
  (5, 2, 61, 2, 3, 1448637386, ''Canal Plus'', 14, 1448637386, ''92d42ae2441edd56632211aec7ac728e'', 1, 2),
  (5, 2, 62, 2, 3, 1448637411, ''Hootsuite'', 14, 1448637411, ''2f665b50df53a08c53d8a57a2fd6a923'', 1, 2),
  (5, 2, 63, 2, 3, 1448637439, ''Royal Canin'', 14, 1448637439, ''23e2ff7ff15fd863fdd7696c69926f6b'', 1, 2),
  (5, 2, 64, 2, 3, 1448637466, ''Mondadori'', 14, 1448637466, ''09f3ecb3ea1c79ddaea1282bb63099e8'', 1, 2),
  (5, 3, 65, 2, 3, 1448637540, ''The Christian Science Monitor'', 14, 1448637540, ''7be3d965faa8daa2cfa6a42de3a69b4d'', 1, 2),
  (5, 2, 66, 2, 3, 1448637571, ''Road & Track, Hearst Magazines'', 14, 1448637571, ''e81d107fdfb8976033e87a37adda53e1'', 1, 2),
  (5, 2, 67, 2, 3, 1448637606, ''Financial Times fDi Intelligence'', 14, 1448637606, ''b265d3976b3c906cb9d02f8b2b97c1c9'', 1, 2),
  (5, 2, 68, 2, 3, 1448637640, ''Dolly Dimples'', 14, 1448637640, ''5dc704449739cc945a0303d9d3e9cde4'', 1, 2),
  (5, 2, 69, 2, 3, 1448637667, ''Swiss TV'', 14, 1448637667, ''4caafe435308888b4a6d3386c44c20f3'', 1, 2),
  (5, 2, 70, 2, 3, 1448637699, ''Elle'', 14, 1448637699, ''67a27c090f47b0b576838f95388f4cb0'', 1, 2),
  (5, 2, 71, 2, 3, 1448637724, ''Tecnotree'', 14, 1448637724, ''b6035d1b4d30557ba56d05a3ae91a42c'', 1, 2),
  (5, 2, 72, 2, 3, 1448637765, ''Harvard Kennedy School'', 14, 1448637765, ''a81c43677ea36c3cf80fba8dd8ad772d'', 1, 2),
  (5, 2, 73, 2, 3, 1448637794, ''Casden'', 14, 1448637794, ''2418615ae048f63a9968cf4b06a58e99'', 1, 2),
  (5, 2, 74, 2, 3, 1448637830, ''European Space Agency'', 14, 1448637830, ''9f2198445d266665f0d465369e7bc2f5'', 1, 2),
  (5, 2, 75, 2, 3, 1448637903, ''Euranet.eu - European Radio Network'', 14, 1448637903, ''075952974b8f40eba170f13eb6f1952e'', 1, 2),
  (5, 2, 76, 2, 3, 1448637935, ''Fruchthof Nagel'', 14, 1448637935, ''ac7954c993c293267e8e782dc9174aa7'', 1, 2),
  (5, 2, 77, 2, 3, 1448637977, ''John Deere'', 14, 1448637977, ''6ff0d08cb580fafab053c7ab28137c05'', 1, 2),
  (5, 2, 78, 2, 3, 1448638009, ''Mazars'', 14, 1448638009, ''4da7da4a792ecc243dd35d3a0d518c28'', 1, 2),
  (5, 2, 79, 2, 3, 1448638042, ''La Nouvelle Republique'', 14, 1448638042, ''db94291f2507d47d8be0bae2e686649e'', 1, 2),
  (5, 2, 80, 2, 3, 1448637169, ''Nuclear SECURITY '', 14, 1448637169, ''c4731e5ea9fbd10d064bd742f7512ea4'', 1, 2),
  (5, 1, 81, 2, 3, 1448637212, ''Shera'', 14, 1448637212, ''26d55b1a95ae4586e9c991dbf274fa02'', 1, 2),
  (5, 1, 82, 2, 3, 1448637257, ''Telekom Business Marketplace, Deutsche Telekom'', 14, 1448637257, ''a1276e127a9489389c012addd2d9fc79'', 1, 2),
  (5, 1, 83, 2, 3, 1448637313, ''Comite Regional du Tourisme de Bretagne'', 14, 1448637313, ''6bcad35b97ad0edd39b6d917a3504b14'', 1, 2),
  (5, 1, 84, 2, 3, 1448637351, ''Vinextase'', 14, 1448637351, ''8c0050800cf6890247793e0d7827c58d'', 1, 2),
  (18, 1, 85, 2, 3, 0, ''Build a Better Performing Site WITH Continuous Optimization'', 14, 0, ''5649d3d74bc68fcc727bf286136f34ef'', 1, 0),
  (18, 7, 86, 2, 3, 1448641214, ''Build a better performing site WITH continuous optimization'', 14, 1448641214, ''73be2a5122ecd6a4a7ad1cef6b0393f1'', 1, 1),
  (18, 8, 87, 2, 3, 1448665353, ''5 things TO consider WHEN making a multi- LANGUAGE site WITH eZ Publish'', 14, 1448665353, ''deecf151a13098c6150948a0fffd6c5e'', 1, 1),
  (18, 5, 88, 2, 3, 1448665102, ''eZ Platform AND eZ Studio coming soon'', 14, 1448665102, ''c8dcab6d4a60f22425a8660140160a38'', 1, 1),
  (20, 1, 89, 2, 3, 1511093263, ''RESUME'', 14, 1511093263, ''a64034c28196273fe2e084e91047fe70'', 1, 2),
  (20, 1, 90, 2, 3, 1511093334, ''Personal RESUME '', 14, 1511093334, ''e219d1bc3c88f6dd3ae29cd2fd299004'', 1, 2),
  (21, 1, 91, 2, 3, 1511093935, '''', 14, 1511093935, ''e57306c0e346c0299dc3ec579aa1162e'', 1, 2),
  (22, 1, 92, 2, 3, 1511099470, ''Personal RESUME '', 14, 1511099470, ''32c84d13669fa1b556dffdd3539e41b0'', 1, 1),
  (21, 1, 93, 2, 3, 1511099677, '''', 14, 1511099677, ''2ccd9d261fe01b699f707b09865362ec'', 1, 2),
  (5, 1, 94, 2, 3, 1511099743,
   ''Journal \"Passe l\''info\"'',14,1511099743,''74c64b9ba21cca45fde5034208288029'',1,2),(21,3,95,2,3,1511101043,''Journal \"Passe l\''info\"'',14,1511100010,''2168dc726e2c0d49b139a3657b11b1a3'',1,1),(21,1,96,2,3,1511103127,''Arkadyss'',14,1511103127,''7bdb220209c63ef326a370686e611db7'',1,1),(21,1,97,2,3,1511103293,''Geek-Avenue'',14,1511103293,''4ab4751975bee74702a9f3524e81133e'',1,1),(21,1,98,2,3,1511103369,''CODA by Simplon'',14,1511103369,''c0e5622e012809a8328d0f10703922f8'',1,1),(21,2,99,2,3,1511103786,''Kaliop'',14,1511103722,''742170924ac9c304bc360626e307076d'',1,1),(5,3,100,2,3,1511106681,''Twicth Stuff'',14,1511105925,''413168c48d705bcd684514c48825c92d'',1,1),(5,2,101,2,3,1511106776,''ISPConfig'',14,1511106468,''20e019c04515ec3c058bcf2b72c4551b'',1,1),(5,2,102,2,3,1511106809,''CodeCademy'',14,1511106535,''e957f35be64bf434e758261d55eff538'',1,1),(5,1,103,2,3,1511106970,''Conky - Ubuntu'',14,1511106970,''0bc8a4f58a65446b93327330d0d1703c'',1,1),(5,1,104,2,3,1511107047,''Personnal Resume'',14,1511107047,''011998171fba2180da01ee2b0ab449bd'',1,1),(5,1,105,2,3,1511107610,''Profesionnal CV Card'',14,1511107610,''f4418c0959d26dba7e7d2c81a6a88eb4'',1,1),(5,2,106,2,3,1511107694,''Torrent Trader'',14,1511107668,''e870e4e63bff6a8cbccdf88db84b2d91'',1,1),(5,1,107,2,3,1511108771,''PeePolls'',14,1511108771,''3a664754f13780a85add051fbe02984e'',1,1),(5,1,108,2,3,1511108858,''Canturla'',14,1511108858,''a094671e47a0521ab68e0ed1c21389dd'',1,1),(23,1,109,2,3,1511110025,''Testimonials'',14,1511110025,''a4d37fbfd36173f87bc46e2a3b66b86a'',1,1),(24,1,110,2,3,1511110111,''Morghadi Patrick'',14,1511110111,''0a985a653ec2b8bfba38789ef920c6c3'',1,2),(24,2,111,2,3,1511113202,''Archilla Sylvain'',14,1511110197,''47450790af72a27a029afe5888c99d01'',1,1),(24,1,112,2,3,1511110430,''Emilie Robert'',14,1511110430,''69843729a66691a9dbaf10f0869908e3'',1,1),(24,1,113,2,3,1511110508,''Samir Ben Sadi'',14,1511110508,''590c6b497918dc907a9d816eb936a30b'',1,1),(24,1,114,2,3,1511113104,''Morghadi Patrick'',14,1511113104,''871eab70aeaa572e8f7d8e812a21d1e6'',1,1),(23,1,115,2,3,1511121766,''Testimonials'',14,1511121766,''b3ec12b627a881c7ca9edc87e318c172'',1,2),(25,1,116,2,3,1511121826,''Certifications'',14,1511121826,''54f1e33562b3a48d2496a4a99bb45dd1'',1,1),(26,1,117,2,3,1511122018,''Git'',14,1511122018,''15386404546112b00ff2f794cc1c712a'',1,1),(26,1,118,2,3,1511122169,''Update'',14,1511122169,''06a84e2fc5a384e673e6b39b2127565b'',1,1),(26,1,119,2,3,1511122275,''WordPress'',14,1511122275,''3334eb1e02258968832e907e5ea16bc5'',1,1),(26,1,120,2,3,1511122370,''CMS'',14,1511122370,''656e886a5a989d435f58ba2b74c28d03'',1,1),(26,1,121,2,3,1511122449,''API REST'',14,1511122449,''5e91409c8b2e05d3ca2d2c8426b6745c'',1,1),(26,1,122,2,3,1511122529,''Bootstrap'',14,1511122529,''93272de5e17b2e134fe7dbaafcaeb326'',1,1),(26,1,123,2,3,1511122595,''jQuery'',14,1511122595,''0f70f9e351ceb2233afa8b4cf7369b7f'',1,1),(26,1,124,2,3,1511122654,''JavaScript'',14,1511122654,''f0d9d5586cc04c52a7515b62a1cf03a8'',1,1),(26,1,125,2,3,1511122726,''HTML CSS'',14,1511122726,''1f24f721a6772fb997e83eb8c0f8cf8a'',1,1),(26,1,126,2,3,1511122797,''PHP'',14,1511122797,''fdbb148e38e87640c9ea5d7ebf04f976'',1,1),(26,1,127,2,3,1511122870,''Symfony'',14,1511122870,''dc534431a3707247511c79f494e929c9'',1,1);
   /*!40000 ALTER TABLE `ezcontentobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_attribute`
--

DROP TABLE IF EXISTS `ezcontentobject_attribute`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_attribute` (
  `attribute_original_id`    INT(11) DEFAULT ''0'',
  `contentclassattribute_id` INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `contentobject_id`         INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `data_float`               DOUBLE DEFAULT NULL,
  `data_int`                 INT(11) DEFAULT NULL,
  `data_text`                LONGTEXT,
  `data_type_string`         VARCHAR(50) DEFAULT '''',
  `id`                       INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 AUTO_INCREMENT,
  `language_code`            VARCHAR(20)  NOT NULL DEFAULT '''',
  `language_id`              BIGINT(20)   NOT NULL DEFAULT ''0'',
  `sort_key_int`             INT(11)      NOT NULL DEFAULT ''0'',
  `sort_key_string`          VARCHAR(255) NOT NULL DEFAULT '''',
  `version`                  INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `version`),
  KEY `ezcontentobject_attribute_co_id_ver_lang_code` (`contentobject_id`, `version`, `language_code`),
  KEY `ezcontentobject_attribute_language_code` (`language_code`),
  KEY `ezcontentobject_classattr_id` (`contentclassattribute_id`),
  KEY `sort_key_int` (`sort_key_int`),
  KEY `sort_key_string` (`sort_key_string`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 467
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_attribute`
--

LOCK TABLES `ezcontentobject_attribute` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_attribute`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject_attribute`
VALUES (0, 7, 4, NULL, NULL, ''Main GROUP '', ''ezstring'', 7, ''eng - GB'', 3, 0, '''', 1),
  (0, 6, 4, NULL, NULL, ''Users'', ''ezstring'', 8, ''eng - GB'', 3, 0, '''', 1),
  (0, 8, 10, 0, 0, ''Anonymous'', ''ezstring'', 19, ''eng - GB'', 3, 0, ''anonymous'', 2),
  (0, 9, 10, 0, 0, ''USER'', ''ezstring'', 20, ''eng - GB'', 3, 0, ''USER'', 2),
  (0, 12, 10, 0, 0, '''', ''ezuser'', 21, ''eng - GB'', 3, 0, '''', 2),
  (0, 6, 11, 0, 0, ''Guest accounts'', ''ezstring'', 22, ''eng - GB'', 3, 0, '''', 1),
  (0, 7, 11, 0, 0, '''', ''ezstring'', 23, ''eng - GB'', 3, 0, '''', 1),
  (0, 6, 12, 0, 0, ''Administrator users'', ''ezstring'', 24, ''eng - GB'', 3, 0, '''', 1),
  (0, 7, 12, 0, 0, '''', ''ezstring'', 25, ''eng - GB'', 3, 0, '''', 1),
  (0, 6, 13, 0, 0, ''Editors'', ''ezstring'', 26, ''eng - GB'', 3, 0, '''', 1),
  (0, 7, 13, 0, 0, '''', ''ezstring'', 27, ''eng - GB'', 3, 0, '''', 1),
  (0, 8, 14, 0, 0, ''Administrator'', ''ezstring'', 28, ''eng - GB'', 3, 0, ''administrator'', 3),
  (0, 8, 14, NULL, NULL, ''Administrator'', ''ezstring'', 28, ''eng - GB'', 3, 0, ''administrator'', 4),
  (0, 9, 14, 0, 0, ''USER'', ''ezstring'', 29, ''eng - GB'', 3, 0, ''USER'', 3),
  (0, 9, 14, NULL, NULL, ''USER'', ''ezstring'', 29, ''eng - GB'', 3, 0, ''USER'', 4),
  (30, 12, 14, 0, 0, '''', ''ezuser'', 30, ''eng - GB'', 3, 0, '''', 3),
  (0, 12, 14, NULL, NULL, NULL, ''ezuser'', 30, ''eng - GB'', 3, 0, '''', 4),
  (0, 4, 41, 0, 0, ''Media'', ''ezstring'', 98, ''eng - GB'', 3, 0, '''', 1), (0, 119, 41, 0, 1045487555,
                                                                               '' < ?XML version = \
                                                                               "1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',99,''eng-GB'',3,0,'''',1),(0,6,42,0,0,''Anonymous Users'',''ezstring'',100,''eng-GB'',3,0,''anonymous users'',1),(0,7,42,0,0,''User group for the anonymous user'',''ezstring'',101,''eng-GB'',3,0,''user group for the anonymous user'',1),(0,155,41,0,0,'''',''ezstring'',103,''eng-GB'',3,0,'''',1),(0,156,41,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',105,''eng-GB'',3,0,'''',1),(0,158,41,0,0,'''',''ezboolean'',109,''eng-GB'',3,0,'''',1),(0,4,45,0,0,''Setup'',''ezstring'',123,''eng-GB'',3,0,''setup'',1),(0,155,45,0,0,'''',''ezstring'',124,''eng-GB'',3,0,'''',1),(0,119,45,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',125,''eng-GB'',3,0,'''',1),(0,156,45,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',126,''eng-GB'',3,0,'''',1),(0,158,45,0,0,'''',''ezboolean'',128,''eng-GB'',3,0,'''',1),(0,4,49,0,0,''Images'',''ezstring'',142,''eng-GB'',3,0,''images'',1),(0,155,49,0,0,'''',''ezstring'',143,''eng-GB'',3,0,'''',1),(0,119,49,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',144,''eng-GB'',3,0,'''',1),(0,156,49,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',145,''eng-GB'',3,0,'''',1),(0,158,49,0,1,'''',''ezboolean'',146,''eng-GB'',3,1,'''',1),(0,4,50,0,0,''Files'',''ezstring'',147,''eng-GB'',3,0,''files'',1),(0,155,50,0,0,'''',''ezstring'',148,''eng-GB'',3,0,'''',1),(0,119,50,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',149,''eng-GB'',3,0,'''',1),(0,156,50,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',150,''eng-GB'',3,0,'''',1),(0,158,50,0,1,'''',''ezboolean'',151,''eng-GB'',3,1,'''',1),(0,4,51,0,0,''Multimedia'',''ezstring'',152,''eng-GB'',3,0,''multimedia'',1),(0,155,51,0,0,'''',''ezstring'',153,''eng-GB'',3,0,'''',1),(0,119,51,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',154,''eng-GB'',3,0,'''',1),(0,156,51,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',155,''eng-GB'',3,0,'''',1),(0,158,51,0,1,'''',''ezboolean'',156,''eng-GB'',3,1,'''',1),(0,159,52,0,0,''Common INI settings'',''ezstring'',157,''eng-GB'',2,0,''common ini settings'',1),(0,160,52,0,0,''/content/view/full/2/'',''ezinisetting'',158,''eng-GB'',2,0,'''',1),(0,161,52,0,0,''/content/view/full/2'',''ezinisetting'',159,''eng-GB'',2,0,'''',1),(0,162,52,0,0,''disabled'',''ezinisetting'',160,''eng-GB'',2,0,'''',1),(0,163,52,0,0,''disabled'',''ezinisetting'',161,''eng-GB'',2,0,'''',1),(0,164,52,0,0,'''',''ezinisetting'',162,''eng-GB'',2,0,'''',1),(0,165,52,0,0,''enabled'',''ezinisetting'',163,''eng-GB'',2,0,'''',1),(0,166,52,0,0,''disabled'',''ezinisetting'',164,''eng-GB'',2,0,'''',1),(0,167,52,0,0,''enabled'',''ezinisetting'',165,''eng-GB'',2,0,'''',1),(0,168,52,0,0,''enabled'',''ezinisetting'',166,''eng-GB'',2,0,'''',1),(0,169,52,0,0,''=geometry/scale=100;100'',''ezinisetting'',167,''eng-GB'',2,0,'''',1),(0,170,52,0,0,''=geometry/scale=200;200'',''ezinisetting'',168,''eng-GB'',2,0,'''',1),(0,171,52,0,0,''=geometry/scale=300;300'',''ezinisetting'',169,''eng-GB'',2,0,'''',1),(0,172,54,0,0,''Plain site'',''ezinisetting'',170,''eng-GB'',2,0,'''',2),(0,173,54,0,0,''author=eZ Systems\ncopyright=eZ Systems\ndescription=Content Management System\nkeywords=cms, publish, e-commerce, content management, development framework'',''ezinisetting'',171,''eng-GB'',2,0,'''',2),(0,174,54,0,0,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1082016632\"><original attribute_id=\"172\" attribute_version=\"2\" attribute_language=\"eng-GB\"/></ezimage>\n'',''ezimage'',172,''eng-GB'',2,0,'''',2),(0,175,54,0,0,''0'',''ezpackage'',173,''eng-GB'',2,0,''0'',2),(0,176,54,0,0,''sitestyle_identifier'',''ezstring'',174,''eng-GB'',2,0,''sitestyle_identifier'',2),(0,177,54,0,0,''nospam@ez.no'',''ezinisetting'',175,''eng-GB'',2,0,'''',2),(0,178,54,0,0,''ez.no'',''ezinisetting'',176,''eng-GB'',2,0,'''',2),(0,179,10,0,0,'''',''eztext'',177,''eng-GB'',3,0,'''',2),(0,179,14,0,0,'''',''eztext'',178,''eng-GB'',3,0,'''',3),(0,179,14,NULL,NULL,NULL,''eztext'',178,''eng-GB'',3,0,'''',4),(0,180,10,0,0,'''',''ezimage'',179,''eng-GB'',3,0,'''',2),(0,180,14,0,0,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"\" filename=\"\" suffix=\"\" basename=\"\" dirpath=\"\" url=\"\" original_filename=\"\" mime_type=\"\" width=\"\" height=\"\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1301057722\"><original attribute_id=\"180\" attribute_version=\"3\" attribute_language=\"eng-GB\"/></ezimage>\n'',''ezimage'',180,''eng-GB'',3,0,'''',3),(0,180,14,NULL,NULL,NULL,''ezimage'',180,''eng-GB'',3,0,'''',4),(0,4,56,0,NULL,''Design'',''ezstring'',181,''eng-GB'',3,0,''design'',1),(0,155,56,0,NULL,'''',''ezstring'',182,''eng-GB'',3,0,'''',1),(0,119,56,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',183,''eng-GB'',3,0,'''',1),(0,156,56,0,1045487555,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',184,''eng-GB'',3,0,'''',1),(0,158,56,0,1,'''',''ezboolean'',185,''eng-GB'',3,1,'''',1),(0,181,57,NULL,NULL,''Home'',''ezstring'',186,''eng-GB'',3,0,''home'',2),(0,181,57,NULL,NULL,''Home'',''ezstring'',186,''eng-GB'',3,0,''home'',3),(0,181,57,NULL,NULL,''Home'',''ezstring'',186,''eng-GB'',3,0,''home'',4),(0,182,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"home.jpg\"\n    suffix=\"jpg\" basename=\"home\" dirpath=\"var/site/storage/images/7/8/1/0/187-2-eng-GB\" url=\"var/site/storage/images/7/8/1/0/187-2-eng-GB/home.jpg\"\n    original_filename=\"home.jpg\" mime_type=\"image/jpeg\" width=\"2000\"\n    height=\"1333\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448648001\">\n  <original attribute_id=\"187\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1333\" Width=\"2000\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',187,''eng-GB'',3,0,'''',2),(0,182,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"homebg.jpg\"\n    suffix=\"jpg\" basename=\"homebg\" dirpath=\"var/site/storage/images/7/8/1/0/187-3-eng-GB\" url=\"var/site/storage/images/7/8/1/0/187-3-eng-GB/homebg.jpg\"\n    original_filename=\"homebg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"1200\" alternative_text=\"home_bg\" alias_key=\"1293033771\" timestamp=\"1511089778\">\n  <original attribute_id=\"187\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1200\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',187,''eng-GB'',3,0,'''',3),(0,182,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"homebg.jpg\"\n    suffix=\"jpg\" basename=\"homebg\" dirpath=\"var/site/storage/images/7/8/1/0/187-3-eng-GB\" url=\"var/site/storage/images/7/8/1/0/187-3-eng-GB/homebg.jpg\"\n    original_filename=\"homebg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"1200\" alternative_text=\"home_bg\" alias_key=\"1293033771\" timestamp=\"1511090690\">\n  <original attribute_id=\"187\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1200\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',187,''eng-GB'',3,0,'''',4),(0,183,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Starting a new CMS Project</para></section>\n'',''ezrichtext'',188,''eng-GB'',3,0,'''',1),(0,183,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Starting a new CMS Project</para></section>\n'',''ezrichtext'',188,''eng-GB'',3,0,'''',2),(0,183,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Starting a new CMS Project</para></section>\n'',''ezrichtext'',188,''eng-GB'',3,0,'''',3),(0,183,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Starting a new CMS Project</para></section>\n'',''ezrichtext'',188,''eng-GB'',3,0,'''',4),(0,193,58,NULL,NULL,''Contact Us'',''ezstring'',189,''eng-GB'',3,0,''contact us'',2),(0,194,58,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Want to know more, get a quote or schedule a demo?</para><para>Please tell us more about your needs filling the form beside.</para></section>\n'',''ezrichtext'',190,''eng-GB'',3,0,'''',1),(0,194,58,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Want to know more, get a quote or schedule a demo?</para><para>Please tell us more about your needs filling the form beside.</para></section>\n'',''ezrichtext'',190,''eng-GB'',3,0,'''',2),(0,195,58,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"contact_form.jpg\"\n    suffix=\"jpg\" basename=\"contact_form\" dirpath=\"var/site/storage/images/1/9/1/0/191-2-eng-GB\" url=\"var/site/storage/images/1/9/1/0/191-2-eng-GB/contact_form.jpg\"\n    original_filename=\"contact_form.jpg\" mime_type=\"image/jpeg\" width=\"800\"\n    height=\"532\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448629194\">\n  <original attribute_id=\"191\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"532\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',191,''eng-GB'',3,0,'''',2),(0,196,58,NULL,NULL,''no-spam@ez.no'',''ezemail'',192,''eng-GB'',3,0,''no-spam@ez.no'',2),(0,197,58,NULL,1,'''',''ezgmaplocation'',193,''eng-GB'',3,0,''us, ny, 35 meadow street, suite 103'',2),(0,198,59,NULL,NULL,''Projects'',''ezstring'',194,''eng-GB'',3,0,''projects'',2),(0,198,59,NULL,NULL,''Projectstest'',''ezstring'',194,''eng-GB'',3,0,''projectstest'',3),(0,198,59,NULL,NULL,''Projects'',''ezstring'',194,''eng-GB'',3,0,''projects'',4),(0,199,59,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',195,''eng-GB'',3,0,'''',1),(0,199,59,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Check them out</para></section>\n'',''ezrichtext'',195,''eng-GB'',3,0,'''',2),(0,199,59,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Check them out</para></section>\n'',''ezrichtext'',195,''eng-GB'',3,0,'''',3),(0,199,59,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Check them out</para></section>\n'',''ezrichtext'',195,''eng-GB'',3,0,'''',4),(0,184,60,NULL,NULL,''Top Stories'',''ezstring'',196,''eng-GB'',3,0,''top stories'',6),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>How to get you idea onto the eZ blog</para></section>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',1),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>How to get you idea onto the eZ blog</para></section>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',2),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',3),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',4),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',5),(0,185,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>How to get you idea onto the eZ blog</para></section>\n'',''ezrichtext'',197,''eng-GB'',3,0,'''',6),(0,186,60,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"blog.jpg\"\n    suffix=\"jpg\" basename=\"blog\" dirpath=\"var/site/storage/images/8/9/1/0/198-2-eng-GB\" url=\"var/site/storage/images/8/9/1/0/198-2-eng-GB/blog.jpg\"\n    original_filename=\"blog.jpg\" mime_type=\"image/jpeg\" width=\"1500\"\n    height=\"1000\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448667363\">\n  <original attribute_id=\"198\" attribute_version=\"6\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1000\" Width=\"1500\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',198,''eng-GB'',3,0,'''',6),(0,116,61,NULL,NULL,''Canal Plus'',''ezstring'',199,''eng-GB'',3,0,''canal plus'',2),(0,117,61,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',200,''eng-GB'',3,0,'''',1),(0,117,61,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>CANAL+ OVERSEAS is the operator of CANAL+, CANALSAT and of the channel package of fee-paying television for international and French overseas: in more than 40 countries of Sub-Saharan Africa, Indian Ocean, Caribbean and South Pacific.</para></section>\n'',''ezrichtext'',200,''eng-GB'',3,0,'''',2),(0,118,61,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"CanalPlus.png\"\n    suffix=\"png\" basename=\"CanalPlus\" dirpath=\"var/site/storage/images/1/0/2/0/201-1-eng-GB\" url=\"var/site/storage/images/1/0/2/0/201-1-eng-GB/CanalPlus.png\"\n    original_filename=\"CanalPlus.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637383\">\n  <original attribute_id=\"201\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',201,''eng-GB'',3,0,'''',2),(0,116,62,NULL,NULL,''Hootsuite'',''ezstring'',202,''eng-GB'',3,0,''hootsuite'',2),(0,117,62,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',203,''eng-GB'',3,0,'''',1),(0,117,62,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Hootsuite is the world\''s most widely used social media relationship platform. They chose eZ Publish as the CMS and Mugo Web as the principal implementation team.</para></section>\n'',''ezrichtext'',203,''eng-GB'',3,0,'''',2),(0,118,62,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Hootsuite.png\"\n    suffix=\"png\" basename=\"Hootsuite\" dirpath=\"var/site/storage/images/4/0/2/0/204-1-eng-GB\" url=\"var/site/storage/images/4/0/2/0/204-1-eng-GB/Hootsuite.png\"\n    original_filename=\"Hootsuite.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637408\">\n  <original attribute_id=\"204\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',204,''eng-GB'',3,0,'''',2),(0,116,63,NULL,NULL,''Royal Canin'',''ezstring'',205,''eng-GB'',3,0,''royal canin'',2),(0,117,63,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',206,''eng-GB'',3,0,'''',1),(0,117,63,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Royal Canin is a world leader in providing nutritional products for cats and dogs. It is a subsidiary of Mars Inc.</para></section>\n'',''ezrichtext'',206,''eng-GB'',3,0,'''',2),(0,118,63,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Royalcanin.png\"\n    suffix=\"png\" basename=\"Royalcanin\" dirpath=\"var/site/storage/images/7/0/2/0/207-1-eng-GB\" url=\"var/site/storage/images/7/0/2/0/207-1-eng-GB/Royalcanin.png\"\n    original_filename=\"Royalcanin.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637436\">\n  <original attribute_id=\"207\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',207,''eng-GB'',3,0,'''',2),(0,116,64,NULL,NULL,''Mondadori'',''ezstring'',208,''eng-GB'',3,0,''mondadori'',2),(0,117,64,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',209,''eng-GB'',3,0,'''',1),(0,117,64,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mondadori has a portfolio of more than 300 magazines in France and is one of the leaders in their sectors. Their digital arm is working on their strategy for the internet, notably with the development, maintenance and hosting of high traffic sites linked with ambitious economic plans.</para></section>\n'',''ezrichtext'',209,''eng-GB'',3,0,'''',2),(0,118,64,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mondadori.png\"\n    suffix=\"png\" basename=\"Mondadori\" dirpath=\"var/site/storage/images/0/1/2/0/210-1-eng-GB\" url=\"var/site/storage/images/0/1/2/0/210-1-eng-GB/Mondadori.png\"\n    original_filename=\"Mondadori.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637463\">\n  <original attribute_id=\"210\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',210,''eng-GB'',3,0,'''',2),(0,116,65,NULL,NULL,''The Christian Science Monitor'',''ezstring'',211,''eng-GB'',3,0,''the christian science monitor'',3),(0,117,65,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',212,''eng-GB'',3,0,'''',1),(0,117,65,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Global in practice and spirit, The Christian Science Monitor is an international news organization that delivers thoughtful, global coverage via its website, weekly magazine, Daily News Briefing, email newsletters and mobile site. They transferred their daily print edition completely online</para></section>\n'',''ezrichtext'',212,''eng-GB'',3,0,'''',2),(0,117,65,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Global in practice and spirit, The Christian Science Monitor is an international news organization that delivers thoughtful, global coverage via its website, weekly magazine, Daily News Briefing, email newsletters and mobile site. They transferred their daily print edition completely online</para></section>\n'',''ezrichtext'',212,''eng-GB'',3,0,'''',3),(0,118,65,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Christian.png\"\n    suffix=\"png\" basename=\"Christian\" dirpath=\"var/site/storage/images/3/1/2/0/213-1-eng-GB\" url=\"var/site/storage/images/3/1/2/0/213-1-eng-GB/Christian.png\"\n    original_filename=\"Christian.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637538\">\n  <original attribute_id=\"213\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',213,''eng-GB'',3,0,'''',3),(0,116,66,NULL,NULL,''Road & Track, Hearst Magazines'',''ezstring'',214,''eng-GB'',3,0,''road & track, hearst magazines'',2),(0,117,66,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',215,''eng-GB'',3,0,'''',1),(0,117,66,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>As America\''s original car-enthusiast publication, ROAD &amp; TRACK has a 60-year track record of providing its audience with the finest road tests of new cars, plentiful comparisons for making car shopping decisions easier and more informed, over-the-horizon looks at future cars and trends, in-depth technical updates on everything from future fuels to tire technology, and racing features that transport the reader into the pits and paddocks of racing teams around the world.</para></section>\n'',''ezrichtext'',215,''eng-GB'',3,0,'''',2),(0,118,66,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"RoadTrack.png\"\n    suffix=\"png\" basename=\"RoadTrack\" dirpath=\"var/site/storage/images/6/1/2/0/216-1-eng-GB\" url=\"var/site/storage/images/6/1/2/0/216-1-eng-GB/RoadTrack.png\"\n    original_filename=\"RoadTrack.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637569\">\n  <original attribute_id=\"216\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',216,''eng-GB'',3,0,'''',2),(0,116,67,NULL,NULL,''Financial Times fDi Intelligence'',''ezstring'',217,''eng-GB'',3,0,''financial times fdi intelligence'',2),(0,117,67,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',218,''eng-GB'',3,0,'''',1),(0,117,67,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The Financial Times, one of the world’s leading business news organisations, is recognised internationally for its authority, integrity and accuracy. The newspaper, printed at 24 print sites across the globe, provides essential news, comment, data and analysis for the global business community. The Financial Times is launching 5 new niche digital products and chose Vision with Technology and eZ Publish as the Web Content Management to power them. Multichannel readiness, economic impact and flexibility are important criteria.</para></section>\n'',''ezrichtext'',218,''eng-GB'',3,0,'''',2),(0,118,67,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"FinancialTimes.png\"\n    suffix=\"png\" basename=\"FinancialTimes\" dirpath=\"var/site/storage/images/9/1/2/0/219-1-eng-GB\" url=\"var/site/storage/images/9/1/2/0/219-1-eng-GB/FinancialTimes.png\"\n    original_filename=\"FinancialTimes.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637604\">\n  <original attribute_id=\"219\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',219,''eng-GB'',3,0,'''',2),(0,116,68,NULL,NULL,''Dolly Dimples'',''ezstring'',220,''eng-GB'',3,0,''dolly dimples'',2),(0,117,68,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',221,''eng-GB'',3,0,'''',1),(0,117,68,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Dolly Dimples is one of the largest pizza chains in Norway. With 90 restaurants and 1600 employees most parts of Norway is covered. Dolly Dimples is in constantly growth, and new restaurants are both franchised and self-owned.</para></section>\n'',''ezrichtext'',221,''eng-GB'',3,0,'''',2),(0,118,68,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"DollyDimples.png\"\n    suffix=\"png\" basename=\"DollyDimples\" dirpath=\"var/site/storage/images/2/2/2/0/222-1-eng-GB\" url=\"var/site/storage/images/2/2/2/0/222-1-eng-GB/DollyDimples.png\"\n    original_filename=\"DollyDimples.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637638\">\n  <original attribute_id=\"222\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',222,''eng-GB'',3,0,'''',2),(0,116,69,NULL,NULL,''Swiss TV'',''ezstring'',223,''eng-GB'',3,0,''swiss tv'',2),(0,117,69,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',224,''eng-GB'',3,0,'''',1),(0,117,69,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Swiss TV is the market leader in the German speaking part of Switzerland. They have reached this position due to the clear confession to content, which are relevant for Germany/Switzerland and its inhabitants. Swiss content regarding information, maintenance, culture and sport make SF singular and indispensable in relation to foreign competition.</para></section>\n'',''ezrichtext'',224,''eng-GB'',3,0,'''',2),(0,118,69,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"SwissTv.png\"\n    suffix=\"png\" basename=\"SwissTv\" dirpath=\"var/site/storage/images/5/2/2/0/225-1-eng-GB\" url=\"var/site/storage/images/5/2/2/0/225-1-eng-GB/SwissTv.png\"\n    original_filename=\"SwissTv.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637664\">\n  <original attribute_id=\"225\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',225,''eng-GB'',3,0,'''',2),(0,116,70,NULL,NULL,''Elle'',''ezstring'',226,''eng-GB'',3,0,''elle'',2),(0,117,70,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',227,''eng-GB'',3,0,'''',1),(0,117,70,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>ELLE.com is the insider\''s style guide with a global outlook, delivering fashion, beauty, style, service and shopping in an accessible and attainable format. When faced with the decision of choosing a new web content management system, ELLE decided on eZ Publish as their chosen open source web CMS.</para></section>\n'',''ezrichtext'',227,''eng-GB'',3,0,'''',2),(0,118,70,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Elle.png\"\n    suffix=\"png\" basename=\"Elle\" dirpath=\"var/site/storage/images/8/2/2/0/228-1-eng-GB\" url=\"var/site/storage/images/8/2/2/0/228-1-eng-GB/Elle.png\"\n    original_filename=\"Elle.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637696\">\n  <original attribute_id=\"228\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',228,''eng-GB'',3,0,'''',2),(0,116,71,NULL,NULL,''Tecnotree'',''ezstring'',229,''eng-GB'',3,0,''tecnotree'',2),(0,117,71,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',230,''eng-GB'',3,0,'''',1),(0,117,71,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>ecnotree is a global provider of a broad range of telecom IT solutions focused on charging, billing, customer care, messaging and content services. They desired for a new site that should be based on their renewed corporate branding. The focus was to position the company as modern and future-proof choice among its competitors.</para></section>\n'',''ezrichtext'',230,''eng-GB'',3,0,'''',2),(0,118,71,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Tecnotree.png\"\n    suffix=\"png\" basename=\"Tecnotree\" dirpath=\"var/site/storage/images/1/3/2/0/231-1-eng-GB\" url=\"var/site/storage/images/1/3/2/0/231-1-eng-GB/Tecnotree.png\"\n    original_filename=\"Tecnotree.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637723\">\n  <original attribute_id=\"231\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',231,''eng-GB'',3,0,'''',2),(0,116,72,NULL,NULL,''Harvard Kennedy School'',''ezstring'',232,''eng-GB'',3,0,''harvard kennedy school'',2),(0,117,72,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',233,''eng-GB'',3,0,'''',1),(0,117,72,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Over the last 70 years, the Kennedy School has become the global leader in educating and empowering individuals committed to advancing the public interest. HKS teachers are renowned scholars and accomplished practitioners, who are actively engaged in the affairs of the world. Students are legislators, nonprofit executives, social entrepreneurs, advocates and aspiring leaders – from every age group and every corner of the globe.</para></section>\n'',''ezrichtext'',233,''eng-GB'',3,0,'''',2),(0,118,72,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Harvard.png\"\n    suffix=\"png\" basename=\"Harvard\" dirpath=\"var/site/storage/images/4/3/2/0/234-1-eng-GB\" url=\"var/site/storage/images/4/3/2/0/234-1-eng-GB/Harvard.png\"\n    original_filename=\"Harvard.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637763\">\n  <original attribute_id=\"234\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',234,''eng-GB'',3,0,'''',2),(0,116,73,NULL,NULL,''Casden'',''ezstring'',235,''eng-GB'',3,0,''casden'',2),(0,117,73,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',236,''eng-GB'',3,0,'''',1),(0,117,73,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The Casden Bank, a subsidiary of the BPCE Group offers its members a comprehensive offer of credits, savings, deposit and close accompaniment. Supplier brightening since 2006 to the Casden on Open Source technologies, Wide Open was asked: in 2009 with the redesign of the site Casden.fr, starting a study approach and choice of tool; in 2013 to extend use of the platform to an extranet destined for customer advisors.</para></section>\n'',''ezrichtext'',236,''eng-GB'',3,0,'''',2),(0,118,73,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Casden.png\"\n    suffix=\"png\" basename=\"Casden\" dirpath=\"var/site/storage/images/7/3/2/0/237-1-eng-GB\" url=\"var/site/storage/images/7/3/2/0/237-1-eng-GB/Casden.png\"\n    original_filename=\"Casden.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637792\">\n  <original attribute_id=\"237\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',237,''eng-GB'',3,0,'''',2),(0,116,74,NULL,NULL,''European Space Agency'',''ezstring'',238,''eng-GB'',3,0,''european space agency'',2),(0,117,74,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',239,''eng-GB'',3,0,'''',1),(0,117,74,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The European Space Agency (ESA) is Europe’s gateway to space. Its mission is to shape the development of Europe’s space capability and ensure that investment in space continues to deliver benefits to the citizens of Europe and the world.</para></section>\n'',''ezrichtext'',239,''eng-GB'',3,0,'''',2),(0,118,74,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Esa.png\"\n    suffix=\"png\" basename=\"Esa\" dirpath=\"var/site/storage/images/0/4/2/0/240-1-eng-GB\" url=\"var/site/storage/images/0/4/2/0/240-1-eng-GB/Esa.png\"\n    original_filename=\"Esa.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637827\">\n  <original attribute_id=\"240\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',240,''eng-GB'',3,0,'''',2),(0,116,75,NULL,NULL,''Euranet.eu - European Radio Network'',''ezstring'',241,''eng-GB'',3,0,''euranet.eu - european radio network'',2),(0,117,75,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',242,''eng-GB'',3,0,'''',1),(0,117,75,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>During the summer of 2007, international, national and regional radio stations joined forces to form the European Radio Network, Euranet. Six months later, the pan-European media consortium was awarded a contract relating to a project from the European Commission. The objective of this project was to improve reporting from and about Europe and to stimulate discussion about co-existence in Europe in order to promote the creation of a general European public.</para></section>\n'',''ezrichtext'',242,''eng-GB'',3,0,'''',2),(0,118,75,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Euranet.png\"\n    suffix=\"png\" basename=\"Euranet\" dirpath=\"var/site/storage/images/3/4/2/0/243-1-eng-GB\" url=\"var/site/storage/images/3/4/2/0/243-1-eng-GB/Euranet.png\"\n    original_filename=\"Euranet.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637900\">\n  <original attribute_id=\"243\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',243,''eng-GB'',3,0,'''',2),(0,116,76,NULL,NULL,''Fruchthof Nagel'',''ezstring'',244,''eng-GB'',3,0,''fruchthof nagel'',2),(0,117,76,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',245,''eng-GB'',3,0,'''',1),(0,117,76,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The objective of the project was to establish a B2B online shop containing around 1500 active items. It should only be possible for users to access the shop after logging in. Visitors without login details should be able to view the products as a catalogue without prices. As well as reducing the workload of sales staff, another important project objective is 24/7 accessibility for customers. The shop should also give the company a better online presence for potential customers.</para></section>\n'',''ezrichtext'',245,''eng-GB'',3,0,'''',2),(0,118,76,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Fruchthof.png\"\n    suffix=\"png\" basename=\"Fruchthof\" dirpath=\"var/site/storage/images/6/4/2/0/246-1-eng-GB\" url=\"var/site/storage/images/6/4/2/0/246-1-eng-GB/Fruchthof.png\"\n    original_filename=\"Fruchthof.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637933\">\n  <original attribute_id=\"246\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',246,''eng-GB'',3,0,'''',2),(0,116,77,NULL,NULL,''John Deere'',''ezstring'',247,''eng-GB'',3,0,''john deere'',2),(0,117,77,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',248,''eng-GB'',3,0,'''',1),(0,117,77,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>John Deere is an American corporation based in Moline, Illinois, and the leading manufacturer of agricultural machinery in the world. In 2008, it was listed as 102nd in the Fortune 500 ranking. Deere and Company agricultural products, usually sold under the John Deere name, include tractors, combine harvesters, balers, planters/seeders, ATVs and forestry equipment.</para></section>\n'',''ezrichtext'',248,''eng-GB'',3,0,'''',2),(0,118,77,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"John_Deere.png\"\n    suffix=\"png\" basename=\"John_Deere\" dirpath=\"var/site/storage/images/9/4/2/0/249-1-eng-GB\" url=\"var/site/storage/images/9/4/2/0/249-1-eng-GB/John_Deere.png\"\n    original_filename=\"John_Deere.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637975\">\n  <original attribute_id=\"249\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',249,''eng-GB'',3,0,'''',2),(0,116,78,NULL,NULL,''Mazars'',''ezstring'',250,''eng-GB'',3,0,''mazars'',2),(0,117,78,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',251,''eng-GB'',3,0,'''',1),(0,117,78,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Mazars is an international accounting and audit firm, with its head office based in France. Mazars employs 12,000 professional workers in 55 different countries. Additionally Mazars has a network of correspondent partners and joint ventures in a further 12 countries and is a member of the Praxity alliance which brings together 24,000 professionals in 72 countries.</para></section>\n'',''ezrichtext'',251,''eng-GB'',3,0,'''',2),(0,118,78,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Mazars.png\"\n    suffix=\"png\" basename=\"Mazars\" dirpath=\"var/site/storage/images/2/5/2/0/252-1-eng-GB\" url=\"var/site/storage/images/2/5/2/0/252-1-eng-GB/Mazars.png\"\n    original_filename=\"Mazars.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448638007\">\n  <original attribute_id=\"252\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',252,''eng-GB'',3,0,'''',2),(0,116,79,NULL,NULL,''La Nouvelle Republique'',''ezstring'',253,''eng-GB'',3,0,''la nouvelle republique'',2),(0,117,79,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',254,''eng-GB'',3,0,'''',1),(0,117,79,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Major daily newspaper in the central regions of France, La Nouvelle République du Centre-Ouest made its website as the center of its development strategy. The open-source Content Management eZ Publish has been chosen for its optimal scalability Novactive developed this website in mixing all the latest technologies in order to meet the challenge</para></section>\n'',''ezrichtext'',254,''eng-GB'',3,0,'''',2),(0,118,79,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Nouvelle_Rep.png\"\n    suffix=\"png\" basename=\"Nouvelle_Rep\" dirpath=\"var/site/storage/images/5/5/2/0/255-1-eng-GB\" url=\"var/site/storage/images/5/5/2/0/255-1-eng-GB/Nouvelle_Rep.png\"\n    original_filename=\"Nouvelle_Rep.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448638040\">\n  <original attribute_id=\"255\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',255,''eng-GB'',3,0,'''',2),(0,116,80,NULL,NULL,''Nuclear Security'',''ezstring'',256,''eng-GB'',3,0,''nuclear security'',2),(0,117,80,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',257,''eng-GB'',3,0,'''',1),(0,117,80,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The Nuclear Safety Authority (ASN), an independent administrative authority set up by law 2006-686 of 13 June 2006 concerning nuclear transparency and safety (known as the “TSN law”) is tasked, on behalf of the State, with regulating nuclear safety and radiation protection in order to protect workers, patients, the public and the environment from the risks involved in nuclear activities. It also contributes to informing the citizens.</para></section>\n'',''ezrichtext'',257,''eng-GB'',3,0,'''',2),(0,118,80,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Nuclear_security.png\"\n    suffix=\"png\" basename=\"Nuclear_security\" dirpath=\"var/site/storage/images/8/5/2/0/258-1-eng-GB\" url=\"var/site/storage/images/8/5/2/0/258-1-eng-GB/Nuclear_security.png\"\n    original_filename=\"Nuclear_security.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637166\">\n  <original attribute_id=\"258\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',258,''eng-GB'',3,0,'''',2),(0,116,81,NULL,NULL,''Shera'',''ezstring'',259,''eng-GB'',3,0,''shera'',1),(0,117,81,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>silver.solutions has been looking after the B2B shop of SHERA for a number of years. Last year the company has developed iPhone and iPad apps with specific field service functions for SHERA. The most recent task was the development of a new website design based on the current design as well as the conversion of the website from Typo3 to eZ Publish.</para></section>\n'',''ezrichtext'',260,''eng-GB'',3,0,'''',1),(0,118,81,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Shera.png\"\n    suffix=\"png\" basename=\"Shera\" dirpath=\"var/site/storage/images/1/6/2/0/261-1-eng-GB\" url=\"var/site/storage/images/1/6/2/0/261-1-eng-GB/Shera.png\"\n    original_filename=\"Shera.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637211\">\n  <original attribute_id=\"261\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',261,''eng-GB'',3,0,'''',1),(0,116,82,NULL,NULL,''Telekom Business Marketplace, Deutsche Telekom'',''ezstring'',262,''eng-GB'',3,0,''telekom business marketplace, deutsche telekom'',1),(0,117,82,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>The Business Marketplace provides Software-as-a-Service applications targeted at 3 million small and medium-sized businesses in Germany. The launch of eZ Publish International in October 2012 enriches the portfolio of the Business Marketplace as one of the first applications. eZ Systems provides a special edition “eZ Publish International” which is suitable for all businesses with a need for simple, economic and rapidly produced multiple-language and mobile-ready websites.</para></section>\n'',''ezrichtext'',263,''eng-GB'',3,0,'''',1),(0,118,82,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Telekom.png\"\n    suffix=\"png\" basename=\"Telekom\" dirpath=\"var/site/storage/images/4/6/2/0/264-1-eng-GB\" url=\"var/site/storage/images/4/6/2/0/264-1-eng-GB/Telekom.png\"\n    original_filename=\"Telekom.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637257\">\n  <original attribute_id=\"264\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',264,''eng-GB'',3,0,'''',1),(0,116,83,NULL,NULL,''Comite Regional du Tourisme de Bretagne'',''ezstring'',265,''eng-GB'',3,0,''comite regional du tourisme de bretagne'',1),(0,117,83,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>With its stylish and striking black background, tourismebretagne.com brings dream to the web site’s visitors, particularly with its amazing photographic and video visuals. The ‘breton experiences’, which combine quality, innovation and the Breton identity really make you want to plan your next holiday in Britanny. Visitors can simply and easily find all the practical information they need in a journalistic style they can relate to.</para></section>\n'',''ezrichtext'',266,''eng-GB'',3,0,'''',1),(0,118,83,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Tour_Bretagne.png\"\n    suffix=\"png\" basename=\"Tour_Bretagne\" dirpath=\"var/site/storage/images/7/6/2/0/267-1-eng-GB\" url=\"var/site/storage/images/7/6/2/0/267-1-eng-GB/Tour_Bretagne.png\"\n    original_filename=\"Tour_Bretagne.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637312\">\n  <original attribute_id=\"267\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',267,''eng-GB'',3,0,'''',1),(0,116,84,NULL,NULL,''Vinextase'',''ezstring'',268,''eng-GB'',3,0,''vinextase'',1),(0,117,84,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Exclusive brand of bellows vine, Vinextase® develops and markets solutions in Enology for the wines of tomorrow. Thanks to the knowledge of his team with long experience in the wine the Vinextase® website mission is to attend the wine merchants and wine growers the whole wine range of bellows vine.</para></section>\n'',''ezrichtext'',269,''eng-GB'',3,0,'''',1),(0,118,84,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Vinextase.png\"\n    suffix=\"png\" basename=\"Vinextase\" dirpath=\"var/site/storage/images/0/7/2/0/270-1-eng-GB\" url=\"var/site/storage/images/0/7/2/0/270-1-eng-GB/Vinextase.png\"\n    original_filename=\"Vinextase.png\" mime_type=\"image/png\" width=\"800\"\n    height=\"535\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448637351\">\n  <original attribute_id=\"270\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"535\" Width=\"800\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',270,''eng-GB'',3,0,'''',1),(0,187,85,NULL,NULL,''Build a Better Performing Site with Continuous Optimization'',''ezstring'',271,''eng-GB'',3,0,''build a better performing site with continuous optimization'',1),(0,188,85,NULL,1431424800,NULL,''ezdatetime'',272,''eng-GB'',3,1431424800,'''',1),(0,189,85,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Andrey\" email=\"no-spam@ez.no\"/></authors></ezauthor>\n'',''ezauthor'',273,''eng-GB'',3,0,'''',1),(0,190,85,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',274,''eng-GB'',3,0,'''',1),(0,191,85,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',275,''eng-GB'',3,0,'''',1),(0,192,85,NULL,NULL,NULL,''ezimage'',276,''eng-GB'',3,0,'''',1),(0,187,86,NULL,NULL,''Build a better performing site with continuous optimization'',''ezstring'',277,''eng-GB'',3,0,''build a better performing site with continuous optimization'',7),(0,188,86,NULL,1431468000,NULL,''ezdatetime'',278,''eng-GB'',3,1431468000,'''',7),(0,189,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Andy Dufresne\" email=\"no-spam@ez.no\"/></authors></ezauthor>\n'',''ezauthor'',279,''eng-GB'',3,0,'''',7),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',1),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',2),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',3),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project...</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',4),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>We believe in continuous optimization of your online presence.</para><para>This is a topic we have touched on before, and something we will continue to discuss because we see real value in the approach.</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',5),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project...</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',6),(0,190,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project...</para></section>\n'',''ezrichtext'',280,''eng-GB'',3,0,'''',7),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',1),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',2),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',3),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',4),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para><emphasis role=\"strong\">Allocate Funds for Website Maintenance, Not Just the Initial Project</emphasis></para><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project -- something that needs to be refreshed every three years.</para><para>This way of thinking simply doesn’t cut it.</para><para>A more agile approach is necessary. One that is proactive, not reactive. One that doesn’t just throw money at an issue and hope for the best.</para><para>Continuous Optimization</para><para>We believe in continuous optimization of your online presence.</para><para>This is a topic we have touched on before, and something we will continue to discuss because we see real value in the approach.</para><para>Roland Benedetti wrote a great blog post on the topic of managing a website as a product and not as a project. This article summarizes what it means to find success by changing the way a website presence is organized and run.</para><para>Continuous Funding</para><para>Our business model consists of a flat annual subscription fee and is designed for ongoing improvement. This is in stark contrast to a licensed-based model, where big costs up front can jeopardize a project from the onset.</para><para>It is also much more aligned with an agile approach and our vision for continuous optimization. In reality, I still see too many projects that are top heavy -- funded up front and not geared towards long-term success.</para><para>It is difficult to predict the future, but organizations should still prepare for it. This means having money and resources in place for after the initial project is launched.</para><para>A successful digital presence requires continuous improvement, which takes solid tools and technology, but also manpower to execute. This is why it is critical that funding should be in place for the long run and not just the initial phase of the project.</para><para>The Impact of Performance</para><para>The performance of your site, or load time, has a tendency to be forgotten in the insanity that is the digital world. But nevertheless it is ultimately one of the most critical aspects of your website.</para><para>In many projects, we see that performance is taken seriously, but only when launching the first version. And as time moves on, site performance tends to have a downward trajectory. You need to keep in mind that, much like added features, performance requires continuous optimization.</para><para>As you develop your site, you should always have performance at the front of your mind.</para><para>Why?</para><para>Speed Impacts Usability</para><para>A website that responds quickly, will obviously provide users with a better user experience. In the book, “Usability Engineering,” by Jakob Nielsen from 1993 it’s stated that the time limit for a user interface to feel like it is reacting instantaneously is 0.1 seconds.</para><para>That is not a lot of time when we are talking about presenting the visitor of a website with a ready rendered page.</para><para>It used to be that bandwidth put limitations on the speed of the web. Today, bandwidth is not so much of an issue anymore, yet many websites are still sluggish.</para><para>Why?</para><para>Today, complexity and cluttered interfaces are often at fault. Luckily, there is a trend in the UI world that calls for simple yet functional design.</para><para>Site Speed Affects Search Ranking</para><para>If there is another reason to continuously optimize your site for better performance, search is it.</para><para>Did you know Google will rank your site better if it has a fast site speed? “Site speed reflects how quickly a website responds to web requests,” according to Google, not necessarily a site’s ability to quickly render a page. And even though the impact on search ranking of a site’s ability to quickly render a page is up for debate, it remains clear that a faster site leads to happier visitors. Google has conducted several studies that revealed that the slower your site, the less time users will spend on it.</para><para>Many people are unaware of this stated fact by Google. Much effort is placed in SEO optimization, but too often we see website performance being under prioritized.</para><para>Better Performance Leads to More Traffic</para><para>By simply improving the performance of your site by all means, on both the server and client side, you can help increase traffic and create happier users.</para><para>So when thinking about your next project, don’t just think about the launch. Spend time focusing on building things through continuity, from developing and optimizing features and performance to having solid plan to fund your site for the long haul.</para><para>Discover the full power of the eZ Publish Platform: get trained, certified and recommended by eZ Systems &gt; Become an eZ Business Partner now!</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',5),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para><emphasis role=\"strong\">Allocate Funds for Website Maintenance, Not Just the Initial Project</emphasis></para><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project -- something that needs to be refreshed every three years.</para><para>This way of thinking simply doesn’t cut it.</para><para>A more agile approach is necessary. One that is proactive, not reactive. One that doesn’t just throw money at an issue and hope for the best.</para><para>Continuous Optimization</para><para>We believe in continuous optimization of your online presence.</para><para>This is a topic we have touched on before, and something we will continue to discuss because we see real value in the approach.</para><para>Roland Benedetti wrote a great blog post on the topic of managing a website as a product and not as a project. This article summarizes what it means to find success by changing the way a website presence is organized and run.</para><para>Continuous Funding</para><para>Our business model consists of a flat annual subscription fee and is designed for ongoing improvement. This is in stark contrast to a licensed-based model, where big costs up front can jeopardize a project from the onset.</para><para>It is also much more aligned with an agile approach and our vision for continuous optimization. In reality, I still see too many projects that are top heavy -- funded up front and not geared towards long-term success.</para><para>It is difficult to predict the future, but organizations should still prepare for it. This means having money and resources in place for after the initial project is launched.</para><para>A successful digital presence requires continuous improvement, which takes solid tools and technology, but also manpower to execute. This is why it is critical that funding should be in place for the long run and not just the initial phase of the project.</para><para>The Impact of Performance</para><para>The performance of your site, or load time, has a tendency to be forgotten in the insanity that is the digital world. But nevertheless it is ultimately one of the most critical aspects of your website.</para><para>In many projects, we see that performance is taken seriously, but only when launching the first version. And as time moves on, site performance tends to have a downward trajectory. You need to keep in mind that, much like added features, performance requires continuous optimization.</para><para>As you develop your site, you should always have performance at the front of your mind.</para><para>Why?</para><para>Speed Impacts Usability</para><para>A website that responds quickly, will obviously provide users with a better user experience. In the book, “Usability Engineering,” by Jakob Nielsen from 1993 it’s stated that the time limit for a user interface to feel like it is reacting instantaneously is 0.1 seconds.</para><para>That is not a lot of time when we are talking about presenting the visitor of a website with a ready rendered page.</para><para>It used to be that bandwidth put limitations on the speed of the web. Today, bandwidth is not so much of an issue anymore, yet many websites are still sluggish.</para><para>Why?</para><para>Today, complexity and cluttered interfaces are often at fault. Luckily, there is a trend in the UI world that calls for simple yet functional design.</para><para>Site Speed Affects Search Ranking</para><para>If there is another reason to continuously optimize your site for better performance, search is it.</para><para>Did you know Google will rank your site better if it has a fast site speed? “Site speed reflects how quickly a website responds to web requests,” according to Google, not necessarily a site’s ability to quickly render a page. And even though the impact on search ranking of a site’s ability to quickly render a page is up for debate, it remains clear that a faster site leads to happier visitors. Google has conducted several studies that revealed that the slower your site, the less time users will spend on it.</para><para>Many people are unaware of this stated fact by Google. Much effort is placed in SEO optimization, but too often we see website performance being under prioritized.</para><para>Better Performance Leads to More Traffic</para><para>By simply improving the performance of your site by all means, on both the server and client side, you can help increase traffic and create happier users.</para><para>So when thinking about your next project, don’t just think about the launch. Spend time focusing on building things through continuity, from developing and optimizing features and performance to having solid plan to fund your site for the long haul.</para><para>Discover the full power of the eZ Publish Platform: get trained, certified and recommended by eZ Systems &gt; Become an eZ Business Partner now!</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',6),(0,191,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para><emphasis role=\"strong\">Allocate Funds for Website Maintenance, Not Just the Initial Project</emphasis></para><para>In answering RFPs and responding to customer inquiries, I find that customers are still latched onto the idea that building a website is just a project -- something that needs to be refreshed every three years.</para><para>This way of thinking simply doesn’t cut it.</para><para>A more agile approach is necessary. One that is proactive, not reactive. One that doesn’t just throw money at an issue and hope for the best.</para><para>Continuous Optimization</para><para>We believe in continuous optimization of your online presence.</para><para>This is a topic we have touched on before, and something we will continue to discuss because we see real value in the approach.</para><para>Roland Benedetti wrote a great blog post on the topic of managing a website as a product and not as a project. This article summarizes what it means to find success by changing the way a website presence is organized and run.</para><para>Continuous Funding</para><para>Our business model consists of a flat annual subscription fee and is designed for ongoing improvement. This is in stark contrast to a licensed-based model, where big costs up front can jeopardize a project from the onset.</para><para>It is also much more aligned with an agile approach and our vision for continuous optimization. In reality, I still see too many projects that are top heavy -- funded up front and not geared towards long-term success.</para><para>It is difficult to predict the future, but organizations should still prepare for it. This means having money and resources in place for after the initial project is launched.</para><para>A successful digital presence requires continuous improvement, which takes solid tools and technology, but also manpower to execute. This is why it is critical that funding should be in place for the long run and not just the initial phase of the project.</para><para>The Impact of Performance</para><para>The performance of your site, or load time, has a tendency to be forgotten in the insanity that is the digital world. But nevertheless it is ultimately one of the most critical aspects of your website.</para><para>In many projects, we see that performance is taken seriously, but only when launching the first version. And as time moves on, site performance tends to have a downward trajectory. You need to keep in mind that, much like added features, performance requires continuous optimization.</para><para>As you develop your site, you should always have performance at the front of your mind.</para><para>Why?</para><para>Speed Impacts Usability</para><para>A website that responds quickly, will obviously provide users with a better user experience. In the book, “Usability Engineering,” by Jakob Nielsen from 1993 it’s stated that the time limit for a user interface to feel like it is reacting instantaneously is 0.1 seconds.</para><para>That is not a lot of time when we are talking about presenting the visitor of a website with a ready rendered page.</para><para>It used to be that bandwidth put limitations on the speed of the web. Today, bandwidth is not so much of an issue anymore, yet many websites are still sluggish.</para><para>Why?</para><para>Today, complexity and cluttered interfaces are often at fault. Luckily, there is a trend in the UI world that calls for simple yet functional design.</para><para>Site Speed Affects Search Ranking</para><para>If there is another reason to continuously optimize your site for better performance, search is it.</para><para>Did you know Google will rank your site better if it has a fast site speed? “Site speed reflects how quickly a website responds to web requests,” according to Google, not necessarily a site’s ability to quickly render a page. And even though the impact on search ranking of a site’s ability to quickly render a page is up for debate, it remains clear that a faster site leads to happier visitors. Google has conducted several studies that revealed that the slower your site, the less time users will spend on it.</para><para>Many people are unaware of this stated fact by Google. Much effort is placed in SEO optimization, but too often we see website performance being under prioritized.</para><para>Better Performance Leads to More Traffic</para><para>By simply improving the performance of your site by all means, on both the server and client side, you can help increase traffic and create happier users.</para><para>So when thinking about your next project, don’t just think about the launch. Spend time focusing on building things through continuity, from developing and optimizing features and performance to having solid plan to fund your site for the long haul.</para><para>Discover the full power of the eZ Publish Platform: get trained, certified and recommended by eZ Systems &gt; Become an eZ Business Partner now!</para></section>\n'',''ezrichtext'',281,''eng-GB'',3,0,'''',7),(0,192,86,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"blog1.jpg\"\n    suffix=\"jpg\" basename=\"blog1\" dirpath=\"var/site/storage/images/2/8/2/0/282-7-eng-GB\" url=\"var/site/storage/images/2/8/2/0/282-7-eng-GB/blog1.jpg\"\n    original_filename=\"blog1.jpg\" mime_type=\"image/jpeg\" width=\"2000\"\n    height=\"1429\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448641212\">\n  <original attribute_id=\"282\" attribute_version=\"7\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1429\" Width=\"2000\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',282,''eng-GB'',3,0,'''',7),(0,187,87,NULL,NULL,''5 things to consider when making a multi-language site with eZ Publish'',''ezstring'',283,''eng-GB'',3,0,''5 things to consider when making a multi-language site with ez publish'',8),(0,188,87,NULL,1444125600,NULL,''ezdatetime'',284,''eng-GB'',3,1444125600,'''',8),(0,189,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Jack Black\" email=\"nospam@ez.no\"/></authors></ezauthor>\n'',''ezauthor'',285,''eng-GB'',3,0,'''',8),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',1),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',2),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',3),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',4),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',5),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',6),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',7),(0,190,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price...</para></section>\n'',''ezrichtext'',286,''eng-GB'',3,0,'''',8),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',1),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',2),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para>1. Find the right languages and display rules</para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para>2. Take advantage of eZ Publish’s URL translator</para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para>3. Make the language options clearly visible</para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para>4. Ensure that translated content supports your SEO needs</para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para>5. Use eZ to enhance editorial workflows</para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',3),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para>1. Find the right languages and display rules</para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para>2. Take advantage of eZ Publish’s URL translator</para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para>3. Make the language options clearly visible</para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para>4. Ensure that translated content supports your SEO needs</para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para>5. Use eZ to enhance editorial workflows</para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para><para>For further tips on developing multi-language sites with eZ Publish, check out What Multilingual Organizations Should Look for in a CMS.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',4),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para><emphasis role=\"strong\">1. Find the right languages and display rules</emphasis></para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para><emphasis role=\"strong\">2. Take advantage of eZ Publish’s URL translator</emphasis></para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para><emphasis role=\"strong\">3. Make the language options clearly visible</emphasis></para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para><emphasis role=\"strong\">4. Ensure that translated content supports your SEO needs</emphasis></para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para><emphasis role=\"strong\">5. Use eZ to enhance editorial workflows</emphasis></para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para><para>For further tips on developing multi-language sites with eZ Publish, check out What Multilingual Organizations Should Look for in a CMS.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',5),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para><emphasis role=\"strong\">1. Find the right languages and display rules</emphasis></para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para><emphasis role=\"strong\">2. Take advantage of eZ Publish’s URL translator</emphasis></para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para><emphasis role=\"strong\">3. Make the language options clearly visible</emphasis></para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para><emphasis role=\"strong\">4. Ensure that translated content supports your SEO needs</emphasis></para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para><emphasis role=\"strong\">5. Use eZ to enhance editorial workflows</emphasis></para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para><para>For further tips on developing multi-language sites with eZ Publish, check out What Multilingual Organizations Should Look for in a CMS.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',6),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para><emphasis role=\"strong\">1. Find the right languages and display rules</emphasis></para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para><emphasis role=\"strong\">2. Take advantage of eZ Publish’s URL translator</emphasis></para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para><emphasis role=\"strong\">3. Make the language options clearly visible</emphasis></para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para><emphasis role=\"strong\">4. Ensure that translated content supports your SEO needs</emphasis></para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para><emphasis role=\"strong\">5. Use eZ to enhance editorial workflows</emphasis></para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para><para>For further tips on developing multi-language sites with eZ Publish, check out What Multilingual Organizations Should Look for in a CMS.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',7),(0,191,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>73% of consumers prefer making purchases in their native language, and 56% say it’s more important than price.</para><para>Translation is a powerful way to ramp up business, and world brands like Diageo and John Deere have used eZ Publish to do just that.</para><para>Mugo Web’s Managing Director Peter Keung wrote this helpful blog post on how to build multi-language sites with eZ Publish. Peter and his team have completed many stellar projects using eZ, including Hootsuite, The Christian Science Monitor and The American Museum of Natural History.</para><para>In his blog, Peter considers which requirements should be met before deploying a multilingual site with eZ Publish. Here’s a summary of his list:</para><para><emphasis role=\"strong\">1. Find the right languages and display rules</emphasis></para><para>Use your knowledge of your visitor base or your favorite analytics tool to identify the languages you should add to your site. Then, determine the right “fall-back” language, if any, for content that isn’t translated. Most companies show the requested language first, then use a fall-back language, often English.</para><para>Localization, or adapting content to a target market, also comes into play when determining the right languages. Peter adds:</para><para>\"Are you appealing primarily to Spanish-speaking visitors from Europe, Spanish-speaking visitors from Latin America, or both? Or do you have even more specific targeting per country?\"</para><para><emphasis role=\"strong\">2. Take advantage of eZ Publish’s URL translator</emphasis></para><para>By default, eZ Publish will generate translated URLs for the same piece of content based off of the page title.</para><para>Peter writes, \"You can allow editors to be able to modify the URLs to make them different from the page title, and also remove accents for languages where you don\''t want accents in the URLs -- in some cases it is not preferable to have fully translated URLs.\"</para><para><emphasis role=\"strong\">3. Make the language options clearly visible</emphasis></para><para>Know how you’ll detect the user’s prefered language. You can make an educated guess by referencing their IP address or their browser language setting. Regardless, you should provide an easy way for users to switch languages, such as with the dropdown menu in the navigation on the Hootsuite website.</para><para><emphasis role=\"strong\">4. Ensure that translated content supports your SEO needs</emphasis></para><para>When it comes to translated content, you can maintain and approve your search ranking and SEO with eZ. Peter also recommends using “canonical” or “alternative” tags to ensure search engines don’t penalize you for duplicate content.</para><para>You can also organize translations in the sitemap. Google has more advice on the process here.</para><para><emphasis role=\"strong\">5. Use eZ to enhance editorial workflows</emphasis></para><para>How a company translates content is critical, and eZ Publish makes efficient, error-reducing workflows easy to construct.</para><para>For instance, eZ’s permissions systems limits the actions -- create, edit, delete, etc. -- any user can take. Editorial workflows also ensure that translated content won’t go live before being approved.</para><para>For further tips on developing multi-language sites with eZ Publish, check out What Multilingual Organizations Should Look for in a CMS.</para></section>\n'',''ezrichtext'',287,''eng-GB'',3,0,'''',8),(0,192,87,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"blog3.jpg\"\n    suffix=\"jpg\" basename=\"blog3\" dirpath=\"var/site/storage/images/8/8/2/0/288-8-eng-GB\" url=\"var/site/storage/images/8/8/2/0/288-8-eng-GB/blog3.jpg\"\n    original_filename=\"blog3.jpg\" mime_type=\"image/jpeg\" width=\"1840\"\n    height=\"1232\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448665349\">\n  <original attribute_id=\"288\" attribute_version=\"8\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1232\" Width=\"1840\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',288,''eng-GB'',3,0,'''',8),(0,187,88,NULL,NULL,''eZ Platform and eZ Studio coming soon'',''ezstring'',289,''eng-GB'',3,0,''ez platform and ez studio coming soon'',5),(0,188,88,NULL,1442570400,NULL,''ezdatetime'',290,''eng-GB'',3,1442570400,'''',5),(0,189,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezauthor><authors><author id=\"0\" name=\"Robert Kowalski\" email=\"nospam@ez.no\"/></authors></ezauthor>\n'',''ezauthor'',291,''eng-GB'',3,0,'''',5),(0,190,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',292,''eng-GB'',3,0,'''',1),(0,190,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para></section>\n'',''ezrichtext'',292,''eng-GB'',3,0,'''',2),(0,190,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para></section>\n'',''ezrichtext'',292,''eng-GB'',3,0,'''',3),(0,190,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release...</para></section>\n'',''ezrichtext'',292,''eng-GB'',3,0,'''',4),(0,190,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release...</para></section>\n'',''ezrichtext'',292,''eng-GB'',3,0,'''',5),(0,191,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>xxx</para></section>\n'',''ezrichtext'',293,''eng-GB'',3,0,'''',1),(0,191,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para><para>We planned to deliver beta and stable releases a little bit earlier but building the new platform as we want it is taking more energy and time than we expected; the last thing we want to do is release a half-baked product.</para><para>Earlier this week we released a new alpha of eZ Platform, as well as a beta of 5.4.5 which includes new search capabilities and a re-engineering of eZ Recommendation Service. We are definitely getting closer and a lot of things are moving quickly now in the finalization of features.</para><para>A look at our timeline</para><para>At this point, we aim to release the beta for eZ Platform and eZ Studio at the beginning of October. By nature, eZ Platform will be a public beta and eZ Studio will be a private one, in which we will provide guidance together with access to the beta software.</para><para>Following the beta release, we plan to have a first stable fast-track release (FTR) by early November. Our fast-track release path is the quick route to eZ\''s latest innovations. FTRs will be rolled out every two months, and eZ will support each one until the next FTR is introduced. Customers should anticipate upgrading to each new FTR to stay ahead of the curve and get continued support.</para><para>Following the first stable release, eZ Platform and eZ Studio together will be available under the eZ Enterprise Subscription with support and maintenance services. The LTS release, which we intend to release in December, will be named by the forthcoming year: eZ Enterprise 2016.</para><para>And when we mention we are definitely willing to provide something ready, this means not only software, but the services and knowledge around it. Together with the software, we are working on a new demo site, new tutorials and a training and enablement plan, as well as resources to tackle the transition from eZ Publish or eZ Publish Platform to eZ Platform and eZ Studio.</para><para>If you are eagerly awaiting for our new generation platform, we’d be very happy to get in touch and listen to your expectations, answer any questions you might have and help you contribute to the beta! Please feel free to reach out to productmanagement@ez.no</para><para>Stay tuned for more information on this blog.</para></section>\n'',''ezrichtext'',293,''eng-GB'',3,0,'''',2),(0,191,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para><para>We planned to deliver beta and stable releases a little bit earlier but building the new platform as we want it is taking more energy and time than we expected; the last thing we want to do is release a half-baked product.</para><para>Earlier this week we released a new alpha of eZ Platform, as well as a beta of 5.4.5 which includes new search capabilities and a re-engineering of eZ Recommendation Service. We are definitely getting closer and a lot of things are moving quickly now in the finalization of features.</para><para><emphasis role=\"strong\">A look at our timeline</emphasis></para><para>At this point, we aim to release the beta for eZ Platform and eZ Studio at the beginning of October. By nature, eZ Platform will be a public beta and eZ Studio will be a private one, in which we will provide guidance together with access to the beta software.</para><para>Following the beta release, we plan to have a first stable fast-track release (FTR) by early November. Our fast-track release path is the quick route to eZ\''s latest innovations. FTRs will be rolled out every two months, and eZ will support each one until the next FTR is introduced. Customers should anticipate upgrading to each new FTR to stay ahead of the curve and get continued support.</para><para>Following the first stable release, eZ Platform and eZ Studio together will be available under the eZ Enterprise Subscription with support and maintenance services. The LTS release, which we intend to release in December, will be named by the forthcoming year: eZ Enterprise 2016.</para><para>And when we mention we are definitely willing to provide something ready, this means not only software, but the services and knowledge around it. Together with the software, we are working on a new demo site, new tutorials and a training and enablement plan, as well as resources to tackle the transition from eZ Publish or eZ Publish Platform to eZ Platform and eZ Studio.</para><para>If you are eagerly awaiting for our new generation platform, we’d be very happy to get in touch and listen to your expectations, answer any questions you might have and help you contribute to the beta! Please feel free to reach out to productmanagement@ez.no</para><para>Stay tuned for more information on this blog.</para></section>\n'',''ezrichtext'',293,''eng-GB'',3,0,'''',3),(0,191,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para><para>We planned to deliver beta and stable releases a little bit earlier but building the new platform as we want it is taking more energy and time than we expected; the last thing we want to do is release a half-baked product.</para><para>Earlier this week we released a new alpha of eZ Platform, as well as a beta of 5.4.5 which includes new search capabilities and a re-engineering of eZ Recommendation Service. We are definitely getting closer and a lot of things are moving quickly now in the finalization of features.</para><para><emphasis role=\"strong\">A look at our timeline</emphasis></para><para>At this point, we aim to release the beta for eZ Platform and eZ Studio at the beginning of October. By nature, eZ Platform will be a public beta and eZ Studio will be a private one, in which we will provide guidance together with access to the beta software.</para><para>Following the beta release, we plan to have a first stable fast-track release (FTR) by early November. Our fast-track release path is the quick route to eZ\''s latest innovations. FTRs will be rolled out every two months, and eZ will support each one until the next FTR is introduced. Customers should anticipate upgrading to each new FTR to stay ahead of the curve and get continued support.</para><para>Following the first stable release, eZ Platform and eZ Studio together will be available under the eZ Enterprise Subscription with support and maintenance services. The LTS release, which we intend to release in December, will be named by the forthcoming year: eZ Enterprise 2016.</para><para>And when we mention we are definitely willing to provide something ready, this means not only software, but the services and knowledge around it. Together with the software, we are working on a new demo site, new tutorials and a training and enablement plan, as well as resources to tackle the transition from eZ Publish or eZ Publish Platform to eZ Platform and eZ Studio.</para><para>If you are eagerly awaiting for our new generation platform, we’d be very happy to get in touch and listen to your expectations, answer any questions you might have and help you contribute to the beta! Please feel free to reach out to productmanagement@ez.no</para><para><emphasis role=\"strong\">Stay tuned for more information on this blog.</emphasis></para></section>\n'',''ezrichtext'',293,''eng-GB'',3,0,'''',4),(0,191,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Our next generation content management solutions, eZ Platform and eZ Studio, are shaping up nicely, and the eZ team is working very hard to finish the first release.</para><para>We planned to deliver beta and stable releases a little bit earlier but building the new platform as we want it is taking more energy and time than we expected; the last thing we want to do is release a half-baked product.</para><para>Earlier this week we released a new alpha of eZ Platform, as well as a beta of 5.4.5 which includes new search capabilities and a re-engineering of eZ Recommendation Service. We are definitely getting closer and a lot of things are moving quickly now in the finalization of features.</para><para><emphasis role=\"strong\">A look at our timeline</emphasis></para><para>At this point, we aim to release the beta for eZ Platform and eZ Studio at the beginning of October. By nature, eZ Platform will be a public beta and eZ Studio will be a private one, in which we will provide guidance together with access to the beta software.</para><para>Following the beta release, we plan to have a first stable fast-track release (FTR) by early November. Our fast-track release path is the quick route to eZ\''s latest innovations. FTRs will be rolled out every two months, and eZ will support each one until the next FTR is introduced. Customers should anticipate upgrading to each new FTR to stay ahead of the curve and get continued support.</para><para>Following the first stable release, eZ Platform and eZ Studio together will be available under the eZ Enterprise Subscription with support and maintenance services. The LTS release, which we intend to release in December, will be named by the forthcoming year: eZ Enterprise 2016.</para><para>And when we mention we are definitely willing to provide something ready, this means not only software, but the services and knowledge around it. Together with the software, we are working on a new demo site, new tutorials and a training and enablement plan, as well as resources to tackle the transition from eZ Publish or eZ Publish Platform to eZ Platform and eZ Studio.</para><para>If you are eagerly awaiting for our new generation platform, we’d be very happy to get in touch and listen to your expectations, answer any questions you might have and help you contribute to the beta! Please feel free to reach out to productmanagement@ez.no</para><para><emphasis role=\"strong\">Stay tuned for more information on this blog.</emphasis></para></section>\n'',''ezrichtext'',293,''eng-GB'',3,0,'''',5),(0,192,88,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"blog2.jpg\"\n    suffix=\"jpg\" basename=\"blog2\" dirpath=\"var/site/storage/images/4/9/2/0/294-5-eng-GB\" url=\"var/site/storage/images/4/9/2/0/294-5-eng-GB/blog2.jpg\"\n    original_filename=\"blog2.jpg\" mime_type=\"image/jpeg\" width=\"2000\"\n    height=\"1333\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1448665098\">\n  <original attribute_id=\"294\" attribute_version=\"5\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1333\" Width=\"2000\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',294,''eng-GB'',3,0,'''',5),(0,200,57,NULL,NULL,NULL,''ezimage'',295,''eng-GB'',3,0,'''',2),(0,200,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"skillsbg.jpg\"\n    suffix=\"jpg\" basename=\"skillsbg\" dirpath=\"var/site/storage/images/5/9/2/0/295-3-eng-GB\" url=\"var/site/storage/images/5/9/2/0/295-3-eng-GB/skillsbg.jpg\"\n    original_filename=\"skillsbg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"800\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511089778\">\n  <original attribute_id=\"295\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"800\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',295,''eng-GB'',3,0,'''',3),(0,200,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"skillsbg.jpg\"\n    suffix=\"jpg\" basename=\"skillsbg\" dirpath=\"var/site/storage/images/5/9/2/0/295-3-eng-GB\" url=\"var/site/storage/images/5/9/2/0/295-3-eng-GB/skillsbg.jpg\"\n    original_filename=\"skillsbg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"800\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511090690\">\n  <original attribute_id=\"295\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"800\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',295,''eng-GB'',3,0,'''',4),(0,201,57,NULL,NULL,NULL,''ezimage'',296,''eng-GB'',3,0,'''',2),(0,201,57,NULL,NULL,NULL,''ezimage'',296,''eng-GB'',3,0,'''',3),(0,201,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"subscribebg.jpg\"\n    suffix=\"jpg\" basename=\"subscribebg\" dirpath=\"var/site/storage/images/6/9/2/0/296-4-eng-GB\" url=\"var/site/storage/images/6/9/2/0/296-4-eng-GB/subscribebg.jpg\"\n    original_filename=\"subscribebg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"800\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511090690\">\n  <original attribute_id=\"296\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"800\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',296,''eng-GB'',3,0,'''',4),(0,202,57,NULL,NULL,NULL,''ezimage'',297,''eng-GB'',3,0,'''',2),(0,202,57,NULL,NULL,NULL,''ezimage'',297,''eng-GB'',3,0,'''',3),(0,202,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"testimonialsbg.jpg\"\n    suffix=\"jpg\" basename=\"testimonialsbg\" dirpath=\"var/site/storage/images/7/9/2/0/297-4-eng-GB\" url=\"var/site/storage/images/7/9/2/0/297-4-eng-GB/testimonialsbg.jpg\"\n    original_filename=\"testimonialsbg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"800\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511090690\">\n  <original attribute_id=\"297\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"800\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',297,''eng-GB'',3,0,'''',4),(0,203,57,NULL,NULL,NULL,''ezimage'',298,''eng-GB'',3,0,'''',2),(0,203,57,NULL,NULL,NULL,''ezimage'',298,''eng-GB'',3,0,'''',3),(0,203,57,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"numbersbg.jpg\"\n    suffix=\"jpg\" basename=\"numbersbg\" dirpath=\"var/site/storage/images/8/9/2/0/298-4-eng-GB\" url=\"var/site/storage/images/8/9/2/0/298-4-eng-GB/numbersbg.jpg\"\n    original_filename=\"numbersbg.jpg\" mime_type=\"image/jpeg\" width=\"1920\"\n    height=\"800\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511090690\">\n  <original attribute_id=\"298\" attribute_version=\"4\" attribute_language=\"eng-GB\"/>\n  <information Height=\"800\" Width=\"1920\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',298,''eng-GB'',3,0,'''',4),(0,198,89,NULL,NULL,''Resume'',''ezstring'',299,''eng-GB'',3,0,''resume'',1),(0,199,89,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Personal resume</para></section>\n'',''ezrichtext'',300,''eng-GB'',3,0,'''',1),(0,198,90,NULL,NULL,''Personal Resume'',''ezstring'',301,''eng-GB'',3,0,''personal resume'',1),(0,199,90,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Personal resume</para></section>\n'',''ezrichtext'',302,''eng-GB'',3,0,'''',1),(0,204,91,NULL,NULL,''Journal \"Passe l\''info\"'',''ezstring'',303,''eng-GB'',3,0,''journal \"passe l\''info\"'',1),(0,205,91,NULL,1167609600,NULL,''ezdate'',304,''eng-GB'',3,1167609600,'''',1),(0,206,91,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/5/0/3/0/305-1-eng-GB\" url=\"var/site/storage/images/5/0/3/0/305-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"journalist\" alias_key=\"1293033771\" timestamp=\"1511093935\">\n  <original attribute_id=\"305\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',305,''eng-GB'',3,0,'''',1),(0,207,91,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Redacteur de presse ecrite pour le journal \"Passe l\''Info\". Journal assiociatif de la région nîmoise. Action initiée par l\''association Peuple et Culture.</para></section>\n'',''ezrichtext'',306,''eng-GB'',3,0,'''',1),(0,208,92,NULL,NULL,''Personal resume'',''ezstring'',307,''eng-GB'',3,0,''personal resume'',1),(0,209,92,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>My personal resume</para></section>\n'',''ezrichtext'',308,''eng-GB'',3,0,'''',1),(0,204,93,NULL,NULL,''Journal \"Passe l\''info\"'',''ezstring'',309,''eng-GB'',3,0,''journal \"passe l\''info\"'',1),(0,205,93,NULL,-2147483648,NULL,''ezdate'',310,''eng-GB'',3,-2147483648,'''',1),(0,206,93,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/1/1/3/0/311-1-eng-GB\" url=\"var/site/storage/images/1/1/3/0/311-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"Journalist\" alias_key=\"1293033771\" timestamp=\"1511099677\">\n  <original attribute_id=\"311\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',311,''eng-GB'',3,0,'''',1),(0,207,93,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Redacteur de presse ecrite pour le journal \"Passe l\''Info\". Journal assiociatif de la région nîmoise. Action initiée par l\''association Peuple et Culture.</para></section>\n'',''ezrichtext'',312,''eng-GB'',3,0,'''',1),(0,116,94,NULL,NULL,''Journal \"Passe l\''info\"'',''ezstring'',313,''eng-GB'',3,0,''journal \"passe l\''info\"'',1),(0,117,94,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Redacteur de presse ecrite pour le journal \"Passe l\''Info\". Journal assiociatif de la région nîmoise. Action initiée par l\''association Peuple et Culture.</para></section>\n'',''ezrichtext'',314,''eng-GB'',3,0,'''',1),(0,118,94,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/5/1/3/0/315-1-eng-GB\" url=\"var/site/storage/images/5/1/3/0/315-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511099742\">\n  <original attribute_id=\"315\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',315,''eng-GB'',3,0,'''',1),(0,204,95,NULL,NULL,''test'',''ezstring'',316,''eng-GB'',3,0,''test'',1),(0,204,95,NULL,NULL,''test'',''ezstring'',316,''eng-GB'',3,0,''test'',2),(0,204,95,NULL,NULL,''Journal \"Passe l\''info\"'',''ezstring'',316,''eng-GB'',3,0,''journal \"passe l\''info\"'',3),(0,205,95,NULL,1510963200,NULL,''ezdate'',317,''eng-GB'',3,1510963200,'''',1),(0,205,95,NULL,1510963200,NULL,''ezdate'',317,''eng-GB'',3,1510963200,'''',2),(0,205,95,NULL,1483228800,NULL,''ezdate'',317,''eng-GB'',3,1483228800,'''',3),(0,206,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/8/1/3/0/318-1-eng-GB\" url=\"var/site/storage/images/8/1/3/0/318-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511100010\">\n  <original attribute_id=\"318\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',318,''eng-GB'',3,0,'''',1),(0,206,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/8/1/3/0/318-1-eng-GB\" url=\"var/site/storage/images/8/1/3/0/318-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511100328\">\n  <original attribute_id=\"318\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',318,''eng-GB'',3,0,'''',2),(0,206,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"journaliste.jpg\"\n    suffix=\"jpg\" basename=\"journaliste\" dirpath=\"var/site/storage/images/8/1/3/0/318-1-eng-GB\" url=\"var/site/storage/images/8/1/3/0/318-1-eng-GB/journaliste.jpg\"\n    original_filename=\"journaliste.jpg\" mime_type=\"image/jpeg\" width=\"400\"\n    height=\"267\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511101042\">\n  <original attribute_id=\"318\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"267\" Width=\"400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',318,''eng-GB'',3,0,'''',3),(0,207,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>test</para></section>\n'',''ezrichtext'',319,''eng-GB'',3,0,'''',1),(0,207,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>test</para></section>\n'',''ezrichtext'',319,''eng-GB'',3,0,'''',2),(0,207,95,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Redacteur de presse ecrite pour le journal \"Passe l\''Info\". Journal assiociatif de la région nîmoise. Action initiée par l\''association Peuple et Culture.</para></section>\n'',''ezrichtext'',319,''eng-GB'',3,0,'''',3),(0,204,96,NULL,NULL,''Arkadyss'',''ezstring'',320,''eng-GB'',3,0,''arkadyss'',1),(0,205,96,NULL,1228089600,NULL,''ezdate'',321,''eng-GB'',3,1228089600,'''',1),(0,206,96,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"655_2.jpg\"\n    suffix=\"jpg\" basename=\"655_2\" dirpath=\"var/site/storage/images/2/2/3/0/322-1-eng-GB\" url=\"var/site/storage/images/2/2/3/0/322-1-eng-GB/655_2.jpg\"\n    original_filename=\"655_2.jpg\" mime_type=\"image/jpeg\" width=\"600\"\n    height=\"450\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511103127\">\n  <original attribute_id=\"322\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"450\" Width=\"600\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',322,''eng-GB'',3,0,'''',1),(0,207,96,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Technicien de maintenance Web et Animateur des ventes pour la société Arkadyss. Achat / Vente Retro Gaming, Consoles, Jeux-vidéos, Figurines et Mangas.</para></section>\n'',''ezrichtext'',323,''eng-GB'',3,0,'''',1),(0,204,97,NULL,NULL,''Geek-Avenue'',''ezstring'',324,''eng-GB'',3,0,''geek-avenue'',1),(0,205,97,NULL,1293840000,NULL,''ezdate'',325,''eng-GB'',3,1293840000,'''',1),(0,206,97,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"services.jpg\"\n    suffix=\"jpg\" basename=\"services\" dirpath=\"var/site/storage/images/6/2/3/0/326-1-eng-GB\" url=\"var/site/storage/images/6/2/3/0/326-1-eng-GB/services.jpg\"\n    original_filename=\"services.jpg\" mime_type=\"image/jpeg\" width=\"500\"\n    height=\"300\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511103293\">\n  <original attribute_id=\"326\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"300\" Width=\"500\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',326,''eng-GB'',3,0,'''',1),(0,207,97,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Auto-entrepreneur en services informatique. Maintenance, création de site vitrine et E-commerce. Réparation de Téléphonnes et Consoles de jeu.</para></section>\n'',''ezrichtext'',327,''eng-GB'',3,0,'''',1),(0,204,98,NULL,NULL,''CODA by Simplon'',''ezstring'',328,''eng-GB'',3,0,''coda by simplon'',1),(0,205,98,NULL,1472688000,NULL,''ezdate'',329,''eng-GB'',3,1472688000,'''',1),(0,206,98,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/0/3/3/0/330-1-eng-GB\" url=\"var/site/storage/images/0/3/3/0/330-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"520\"\n    height=\"325\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511103369\">\n  <original attribute_id=\"330\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"325\" Width=\"520\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',330,''eng-GB'',3,0,'''',1),(0,207,98,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Il s’agit d’une formation qualifiante intensive et immersive sur 6 mois avec une majeure technique et des contenus additionnels.</para></section>\n'',''ezrichtext'',331,''eng-GB'',3,0,'''',1),(0,204,99,NULL,NULL,''Kaliop'',''ezstring'',332,''eng-GB'',3,0,''kaliop'',1),(0,204,99,NULL,NULL,''Kaliop'',''ezstring'',332,''eng-GB'',3,0,''kaliop'',2),(0,205,99,NULL,1504224000,NULL,''ezdate'',333,''eng-GB'',3,1504224000,'''',1),(0,205,99,NULL,1504224000,NULL,''ezdate'',333,''eng-GB'',3,1504224000,'''',2),(0,206,99,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Kaliop_wood.jpg\"\n    suffix=\"jpg\" basename=\"Kaliop_wood\" dirpath=\"var/site/storage/images/4/3/3/0/334-1-eng-GB\" url=\"var/site/storage/images/4/3/3/0/334-1-eng-GB/Kaliop_wood.jpg\"\n    original_filename=\"Kaliop_wood.jpg\" mime_type=\"image/jpeg\" width=\"2400\"\n    height=\"1600\" alternative_text=\"kaliop\" alias_key=\"1293033771\" timestamp=\"1511103722\">\n  <original attribute_id=\"334\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1600\" Width=\"2400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',334,''eng-GB'',3,0,'''',1),(0,206,99,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Kaliop_wood.jpg\"\n    suffix=\"jpg\" basename=\"Kaliop_wood\" dirpath=\"var/site/storage/images/4/3/3/0/334-1-eng-GB\" url=\"var/site/storage/images/4/3/3/0/334-1-eng-GB/Kaliop_wood.jpg\"\n    original_filename=\"Kaliop_wood.jpg\" mime_type=\"image/jpeg\" width=\"2400\"\n    height=\"1600\" alternative_text=\"kaliop\" alias_key=\"1293033771\" timestamp=\"1511103785\">\n  <original attribute_id=\"334\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1600\" Width=\"2400\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',334,''eng-GB'',3,0,'''',2),(0,207,99,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Actions de maintenance corrective et évolutive de la gamme de produits Kaliop. Réalisation de tests et validations, participation à la rédaction de documentations techniques.</para></section>\n'',''ezrichtext'',335,''eng-GB'',3,0,'''',1),(0,207,99,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Maintenance corrective et évolutive de la gamme de produits Kaliop. Réalisation de tests et validations, participation à la rédaction de documentations techniques.</para></section>\n'',''ezrichtext'',335,''eng-GB'',3,0,'''',2),(0,116,100,NULL,NULL,''Twicth Stuff'',''ezstring'',336,''eng-GB'',3,0,''twicth stuff'',1),(0,116,100,NULL,NULL,''Twicth Stuff'',''ezstring'',336,''eng-GB'',3,0,''twicth stuff'',2),(0,116,100,NULL,NULL,''Twicth Stuff'',''ezstring'',336,''eng-GB'',3,0,''twicth stuff'',3),(0,117,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Création d\''un panel complet pour streameur Twitch. Contenant Image Hors-Ligne, Overlay Informatif et attente game, Overlay InGame et Intro vidéo avec effets visuels.</para></section>\n'',''ezrichtext'',337,''eng-GB'',3,0,'''',1),(0,117,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Création d\''un panel complet pour streameur Twitch. Contenant Image Hors-Ligne, Overlay Informatif et attente game, Overlay InGame et Intro vidéo avec effets visuels.</para></section>\n'',''ezrichtext'',337,''eng-GB'',3,0,'''',2),(0,117,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Création d\''un panel complet pour streameur Twitch. Contenant Image Hors-Ligne, Overlay Informatif et attente game, Overlay InGame et Intro vidéo avec effets visuels.</para></section>\n'',''ezrichtext'',337,''eng-GB'',3,0,'''',3),(0,118,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"twitch1.png\"\n    suffix=\"png\" basename=\"twitch1\" dirpath=\"var/site/storage/images/8/3/3/0/338-1-eng-GB\" url=\"var/site/storage/images/8/3/3/0/338-1-eng-GB/twitch1.png\"\n    original_filename=\"twitch1.png\" mime_type=\"image/png\" width=\"1681\"\n    height=\"954\" alternative_text=\"Twitch Stuff\" alias_key=\"1293033771\" timestamp=\"1511105924\">\n  <original attribute_id=\"338\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"954\" Width=\"1681\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',338,''eng-GB'',3,0,'''',1),(0,118,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"twitch_thumb.png\"\n    suffix=\"png\" basename=\"twitch_thumb\" dirpath=\"var/site/storage/images/8/3/3/0/338-2-eng-GB\" url=\"var/site/storage/images/8/3/3/0/338-2-eng-GB/twitch_thumb.png\"\n    original_filename=\"twitch_thumb.png\" mime_type=\"image/png\" width=\"360\"\n    height=\"360\" alternative_text=\"Twitch Stuff\" alias_key=\"1293033771\" timestamp=\"1511106262\">\n  <original attribute_id=\"338\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',338,''eng-GB'',3,0,'''',2),(0,118,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"twitch_thumb.png\"\n    suffix=\"png\" basename=\"twitch_thumb\" dirpath=\"var/site/storage/images/8/3/3/0/338-2-eng-GB\" url=\"var/site/storage/images/8/3/3/0/338-2-eng-GB/twitch_thumb.png\"\n    original_filename=\"twitch_thumb.png\" mime_type=\"image/png\" width=\"360\"\n    height=\"360\" alternative_text=\"Twitch Stuff\" alias_key=\"1293033771\" timestamp=\"1511106680\">\n  <original attribute_id=\"338\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',338,''eng-GB'',3,0,'''',3),(0,116,101,NULL,NULL,''ISPConfig'',''ezstring'',339,''eng-GB'',3,0,''ispconfig'',1),(0,116,101,NULL,NULL,''ISPConfig'',''ezstring'',339,''eng-GB'',3,0,''ispconfig'',2),(0,117,101,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Installation complete d\''un VPs sous ubuntu server et mise en place des serveurs Web, Mails, FTP et gestion pas ISPConfig.</para></section>\n'',''ezrichtext'',340,''eng-GB'',3,0,'''',1),(0,117,101,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Installation complete d\''un VPs sous ubuntu server et mise en place des serveurs Web, Mails, FTP et gestion pas ISPConfig.</para></section>\n'',''ezrichtext'',340,''eng-GB'',3,0,'''',2),(0,118,101,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"006.jpg\"\n    suffix=\"jpg\" basename=\"006\" dirpath=\"var/site/storage/images/1/4/3/0/341-1-eng-GB\" url=\"var/site/storage/images/1/4/3/0/341-1-eng-GB/006.jpg\"\n    original_filename=\"006.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"ispconfig\" alias_key=\"1293033771\" timestamp=\"1511106467\">\n  <original attribute_id=\"341\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',341,''eng-GB'',3,0,'''',1),(0,118,101,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"006.jpg\"\n    suffix=\"jpg\" basename=\"006\" dirpath=\"var/site/storage/images/1/4/3/0/341-1-eng-GB\" url=\"var/site/storage/images/1/4/3/0/341-1-eng-GB/006.jpg\"\n    original_filename=\"006.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"ispconfig\" alias_key=\"1293033771\" timestamp=\"1511106775\">\n  <original attribute_id=\"341\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',341,''eng-GB'',3,0,'''',2),(0,116,102,NULL,NULL,''CodeCademy'',''ezstring'',342,''eng-GB'',3,0,''codecademy'',1),(0,116,102,NULL,NULL,''CodeCademy'',''ezstring'',342,''eng-GB'',3,0,''codecademy'',2),(0,117,102,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Voici mon profil Codecademy ainsi que les badges obtenus. Codecamy est un site de formation en ligne disponible pour tous, de tout niveaux.</para></section>\n'',''ezrichtext'',343,''eng-GB'',3,0,'''',1),(0,117,102,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Voici mon profil Codecademy ainsi que les badges obtenus. Codecamy est un site de formation en ligne disponible pour tous, de tout niveaux.</para></section>\n'',''ezrichtext'',343,''eng-GB'',3,0,'''',2),(0,118,102,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"005.jpg\"\n    suffix=\"jpg\" basename=\"005\" dirpath=\"var/site/storage/images/4/4/3/0/344-1-eng-GB\" url=\"var/site/storage/images/4/4/3/0/344-1-eng-GB/005.jpg\"\n    original_filename=\"005.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"codecademy\" alias_key=\"1293033771\" timestamp=\"1511106535\">\n  <original attribute_id=\"344\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',344,''eng-GB'',3,0,'''',1),(0,118,102,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"005.jpg\"\n    suffix=\"jpg\" basename=\"005\" dirpath=\"var/site/storage/images/4/4/3/0/344-1-eng-GB\" url=\"var/site/storage/images/4/4/3/0/344-1-eng-GB/005.jpg\"\n    original_filename=\"005.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"codecademy\" alias_key=\"1293033771\" timestamp=\"1511106808\">\n  <original attribute_id=\"344\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',344,''eng-GB'',3,0,'''',2),(0,210,61,NULL,NULL,NULL,''ezimage'',345,''eng-GB'',3,0,'''',2),(0,210,62,NULL,NULL,NULL,''ezimage'',346,''eng-GB'',3,0,'''',2),(0,210,63,NULL,NULL,NULL,''ezimage'',347,''eng-GB'',3,0,'''',2),(0,210,64,NULL,NULL,NULL,''ezimage'',348,''eng-GB'',3,0,'''',2),(0,210,65,NULL,NULL,NULL,''ezimage'',349,''eng-GB'',3,0,'''',3),(0,210,66,NULL,NULL,NULL,''ezimage'',350,''eng-GB'',3,0,'''',2),(0,210,67,NULL,NULL,NULL,''ezimage'',351,''eng-GB'',3,0,'''',2),(0,210,68,NULL,NULL,NULL,''ezimage'',352,''eng-GB'',3,0,'''',2),(0,210,69,NULL,NULL,NULL,''ezimage'',353,''eng-GB'',3,0,'''',2),(0,210,70,NULL,NULL,NULL,''ezimage'',354,''eng-GB'',3,0,'''',2),(0,210,71,NULL,NULL,NULL,''ezimage'',355,''eng-GB'',3,0,'''',2),(0,210,72,NULL,NULL,NULL,''ezimage'',356,''eng-GB'',3,0,'''',2),(0,210,73,NULL,NULL,NULL,''ezimage'',357,''eng-GB'',3,0,'''',2),(0,210,74,NULL,NULL,NULL,''ezimage'',358,''eng-GB'',3,0,'''',2),(0,210,75,NULL,NULL,NULL,''ezimage'',359,''eng-GB'',3,0,'''',2),(0,210,76,NULL,NULL,NULL,''ezimage'',360,''eng-GB'',3,0,'''',2),(0,210,77,NULL,NULL,NULL,''ezimage'',361,''eng-GB'',3,0,'''',2),(0,210,78,NULL,NULL,NULL,''ezimage'',362,''eng-GB'',3,0,'''',2),(0,210,79,NULL,NULL,NULL,''ezimage'',363,''eng-GB'',3,0,'''',2),(0,210,80,NULL,NULL,NULL,''ezimage'',364,''eng-GB'',3,0,'''',2),(0,210,81,NULL,NULL,NULL,''ezimage'',365,''eng-GB'',3,0,'''',1),(0,210,82,NULL,NULL,NULL,''ezimage'',366,''eng-GB'',3,0,'''',1),(0,210,83,NULL,NULL,NULL,''ezimage'',367,''eng-GB'',3,0,'''',1),(0,210,84,NULL,NULL,NULL,''ezimage'',368,''eng-GB'',3,0,'''',1),(0,210,94,NULL,NULL,NULL,''ezimage'',369,''eng-GB'',3,0,'''',1),(0,210,100,NULL,NULL,NULL,''ezimage'',370,''eng-GB'',3,0,'''',1),(0,210,100,NULL,NULL,NULL,''ezimage'',370,''eng-GB'',3,0,'''',2),(0,210,100,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"twitch1.png\"\n    suffix=\"png\" basename=\"twitch1\" dirpath=\"var/site/storage/images/0/7/3/0/370-3-eng-GB\" url=\"var/site/storage/images/0/7/3/0/370-3-eng-GB/twitch1.png\"\n    original_filename=\"twitch1.png\" mime_type=\"image/png\" width=\"1681\"\n    height=\"954\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511106680\">\n  <original attribute_id=\"370\" attribute_version=\"3\" attribute_language=\"eng-GB\"/>\n  <information Height=\"954\" Width=\"1681\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',370,''eng-GB'',3,0,'''',3),(0,210,101,NULL,NULL,NULL,''ezimage'',371,''eng-GB'',3,0,'''',1),(0,210,101,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"006.jpg\"\n    suffix=\"jpg\" basename=\"006\" dirpath=\"var/site/storage/images/1/7/3/0/371-2-eng-GB\" url=\"var/site/storage/images/1/7/3/0/371-2-eng-GB/006.jpg\"\n    original_filename=\"006.jpg\" mime_type=\"image/jpeg\" width=\"1903\"\n    height=\"986\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511106775\">\n  <original attribute_id=\"371\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"986\" Width=\"1903\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',371,''eng-GB'',3,0,'''',2),(0,210,102,NULL,NULL,NULL,''ezimage'',372,''eng-GB'',3,0,'''',1),(0,210,102,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"005.jpg\"\n    suffix=\"jpg\" basename=\"005\" dirpath=\"var/site/storage/images/2/7/3/0/372-2-eng-GB\" url=\"var/site/storage/images/2/7/3/0/372-2-eng-GB/005.jpg\"\n    original_filename=\"005.jpg\" mime_type=\"image/jpeg\" width=\"1902\"\n    height=\"986\" alternative_text=\"\" alias_key=\"1293033771\" timestamp=\"1511106809\">\n  <original attribute_id=\"372\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"986\" Width=\"1902\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',372,''eng-GB'',3,0,'''',2),(0,116,103,NULL,NULL,''Conky - Ubuntu'',''ezstring'',373,''eng-GB'',3,0,''conky - ubuntu'',1),(0,117,103,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Création d\''un Conky sur mon ordinateur personnel sous Ubuntu 16.04, rassemblant toutes les infos nécessaire a une surpervisation du sytème.</para></section>\n'',''ezrichtext'',374,''eng-GB'',3,0,'''',1),(0,118,103,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"004.jpg\"\n    suffix=\"jpg\" basename=\"004\" dirpath=\"var/site/storage/images/5/7/3/0/375-1-eng-GB\" url=\"var/site/storage/images/5/7/3/0/375-1-eng-GB/004.jpg\"\n    original_filename=\"004.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Conky - Ubuntu\" alias_key=\"1293033771\" timestamp=\"1511106969\">\n  <original attribute_id=\"375\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',375,''eng-GB'',3,0,'''',1),(0,210,103,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"NeoConky.png\"\n    suffix=\"png\" basename=\"NeoConky\" dirpath=\"var/site/storage/images/6/7/3/0/376-1-eng-GB\" url=\"var/site/storage/images/6/7/3/0/376-1-eng-GB/NeoConky.png\"\n    original_filename=\"NeoConky.png\" mime_type=\"image/png\" width=\"1680\"\n    height=\"1049\" alternative_text=\"Conky - Ubuntu\" alias_key=\"1293033771\" timestamp=\"1511106969\">\n  <original attribute_id=\"376\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"1049\" Width=\"1680\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',376,''eng-GB'',3,0,'''',1),(0,116,104,NULL,NULL,''Personnal Resume'',''ezstring'',377,''eng-GB'',3,0,''personnal resume'',1),(0,117,104,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Ce site ici présent, one page avec paralax, décrivant mes competances et mes domaines de competances. Contact en bas de page ainsi que certaines réalisations.</para></section>\n'',''ezrichtext'',378,''eng-GB'',3,0,'''',1),(0,118,104,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"003.jpg\"\n    suffix=\"jpg\" basename=\"003\" dirpath=\"var/site/storage/images/9/7/3/0/379-1-eng-GB\" url=\"var/site/storage/images/9/7/3/0/379-1-eng-GB/003.jpg\"\n    original_filename=\"003.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Personnal Resume\" alias_key=\"1293033771\" timestamp=\"1511107047\">\n  <original attribute_id=\"379\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',379,''eng-GB'',3,0,'''',1),(0,210,104,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"003.jpg\"\n    suffix=\"jpg\" basename=\"003\" dirpath=\"var/site/storage/images/0/8/3/0/380-1-eng-GB\" url=\"var/site/storage/images/0/8/3/0/380-1-eng-GB/003.jpg\"\n    original_filename=\"003.jpg\" mime_type=\"image/jpeg\" width=\"1903\"\n    height=\"987\" alternative_text=\"Personnal Resume\" alias_key=\"1293033771\" timestamp=\"1511107047\">\n  <original attribute_id=\"380\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"987\" Width=\"1903\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',380,''eng-GB'',3,0,'''',1),(0,116,105,NULL,NULL,''Profesionnal CV Card'',''ezstring'',381,''eng-GB'',3,0,''profesionnal cv card'',1),(0,117,105,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Création d\''un CV sous forme de VCard, avec un systeme de transition JavaScript animé. Regroupant les informations du CV et un portfolio.</para></section>\n'',''ezrichtext'',382,''eng-GB'',3,0,'''',1),(0,118,105,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"002.jpg\"\n    suffix=\"jpg\" basename=\"002\" dirpath=\"var/site/storage/images/3/8/3/0/383-1-eng-GB\" url=\"var/site/storage/images/3/8/3/0/383-1-eng-GB/002.jpg\"\n    original_filename=\"002.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Profesionnal CV Card\" alias_key=\"1293033771\" timestamp=\"1511107609\">\n  <original attribute_id=\"383\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',383,''eng-GB'',3,0,'''',1),(0,210,105,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"002.jpg\"\n    suffix=\"jpg\" basename=\"002\" dirpath=\"var/site/storage/images/4/8/3/0/384-1-eng-GB\" url=\"var/site/storage/images/4/8/3/0/384-1-eng-GB/002.jpg\"\n    original_filename=\"002.jpg\" mime_type=\"image/jpeg\" width=\"926\"\n    height=\"540\" alternative_text=\"Profesionnal CV Card\" alias_key=\"1293033771\" timestamp=\"1511107609\">\n  <original attribute_id=\"384\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"540\" Width=\"926\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',384,''eng-GB'',3,0,'''',1),(0,116,106,NULL,NULL,''Torrent Trader'',''ezstring'',385,''eng-GB'',3,0,''torrent trader'',1),(0,116,106,NULL,NULL,''Torrent Trader'',''ezstring'',385,''eng-GB'',3,0,''torrent trader'',2),(0,117,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" version=\"5.0-variant ezpublish-1.0\"/>\n'',''ezrichtext'',386,''eng-GB'',3,0,'''',1),(0,117,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Confection d\''un CMS visant au partage de fichier torrent (P2P - Peer-To-Peer). Basé sur du PHP avec base de données MySQL, des requettes ajax et des animation JQuery.</para></section>\n'',''ezrichtext'',386,''eng-GB'',3,0,'''',2),(0,118,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/7/8/3/0/387-1-eng-GB\" url=\"var/site/storage/images/7/8/3/0/387-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Torrent Trader\" alias_key=\"1293033771\" timestamp=\"1511107668\">\n  <original attribute_id=\"387\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',387,''eng-GB'',3,0,'''',1),(0,118,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/7/8/3/0/387-1-eng-GB\" url=\"var/site/storage/images/7/8/3/0/387-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Torrent Trader\" alias_key=\"1293033771\" timestamp=\"1511107693\">\n  <original attribute_id=\"387\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',387,''eng-GB'',3,0,'''',2),(0,210,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/8/8/3/0/388-1-eng-GB\" url=\"var/site/storage/images/8/8/3/0/388-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"1919\"\n    height=\"941\" alternative_text=\"Torrent Trader\" alias_key=\"1293033771\" timestamp=\"1511107668\">\n  <original attribute_id=\"388\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"941\" Width=\"1919\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',388,''eng-GB'',3,0,'''',1),(0,210,106,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/8/8/3/0/388-1-eng-GB\" url=\"var/site/storage/images/8/8/3/0/388-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"1919\"\n    height=\"941\" alternative_text=\"Torrent Trader\" alias_key=\"1293033771\" timestamp=\"1511107693\">\n  <original attribute_id=\"388\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"941\" Width=\"1919\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',388,''eng-GB'',3,0,'''',2),(0,116,107,NULL,NULL,''PeePolls'',''ezstring'',389,''eng-GB'',3,0,''peepolls'',1),(0,117,107,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>En relation avec Facebook, ce site permet à ses utilisateurs de noter des personnes. Que ce soit des politiques, des directeurs d\''entreprises, des professeurs, des amis ou même des ennemis, vous pouvez critiquer celui que vous souhaitez.</para></section>\n'',''ezrichtext'',390,''eng-GB'',3,0,'''',1),(0,118,107,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"peepolls_thumb.png\"\n    suffix=\"png\" basename=\"peepolls_thumb\" dirpath=\"var/site/storage/images/1/9/3/0/391-1-eng-GB\" url=\"var/site/storage/images/1/9/3/0/391-1-eng-GB/peepolls_thumb.png\"\n    original_filename=\"peepolls_thumb.png\" mime_type=\"image/png\" width=\"720\"\n    height=\"720\" alternative_text=\"PeePolls\" alias_key=\"1293033771\" timestamp=\"1511108771\">\n  <original attribute_id=\"391\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"720\" Width=\"720\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',391,''eng-GB'',3,0,'''',1),(0,210,107,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"peepolls.png\"\n    suffix=\"png\" basename=\"peepolls\" dirpath=\"var/site/storage/images/2/9/3/0/392-1-eng-GB\" url=\"var/site/storage/images/2/9/3/0/392-1-eng-GB/peepolls.png\"\n    original_filename=\"peepolls.png\" mime_type=\"image/png\" width=\"1681\"\n    height=\"936\" alternative_text=\"PeePolls\" alias_key=\"1293033771\" timestamp=\"1511108771\">\n  <original attribute_id=\"392\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"936\" Width=\"1681\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',392,''eng-GB'',3,0,'''',1),(0,116,108,NULL,NULL,''Canturla'',''ezstring'',393,''eng-GB'',3,0,''canturla'',1),(0,117,108,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Premier projet utilisant le framework Symfony 3, Canturla Drive est un dérivé eCommerce, offrant à son utilisateur la possibilitée de créer un Drive.</para></section>\n'',''ezrichtext'',394,''eng-GB'',3,0,'''',1),(0,118,108,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"007.jpg\"\n    suffix=\"jpg\" basename=\"007\" dirpath=\"var/site/storage/images/5/9/3/0/395-1-eng-GB\" url=\"var/site/storage/images/5/9/3/0/395-1-eng-GB/007.jpg\"\n    original_filename=\"007.jpg\" mime_type=\"image/jpeg\" width=\"360\"\n    height=\"360\" alternative_text=\"Canturla\" alias_key=\"1293033771\" timestamp=\"1511108858\">\n  <original attribute_id=\"395\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"360\" Width=\"360\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',395,''eng-GB'',3,0,'''',1),(0,210,108,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"Canturla1.png\"\n    suffix=\"png\" basename=\"Canturla1\" dirpath=\"var/site/storage/images/6/9/3/0/396-1-eng-GB\" url=\"var/site/storage/images/6/9/3/0/396-1-eng-GB/Canturla1.png\"\n    original_filename=\"Canturla1.png\" mime_type=\"image/png\" width=\"1906\"\n    height=\"989\" alternative_text=\"Canturla\" alias_key=\"1293033771\" timestamp=\"1511108858\">\n  <original attribute_id=\"396\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"989\" Width=\"1906\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',396,''eng-GB'',3,0,'''',1),(0,211,109,NULL,NULL,''Testimonials'',''ezstring'',397,''eng-GB'',3,0,''testimonials'',1),(0,220,109,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Testimonials</para></section>\n'',''ezrichtext'',398,''eng-GB'',3,0,'''',1),(0,215,110,NULL,NULL,''Morghadi Patrick'',''ezstring'',399,''eng-GB'',3,0,''morghadi patrick'',1),(0,216,110,NULL,NULL,''Formateur CODA by Simplon'',''ezstring'',400,''eng-GB'',3,0,''formateur coda by simplon'',1),(0,218,110,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/1/0/4/0/401-1-eng-GB\" url=\"var/site/storage/images/1/0/4/0/401-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"150\"\n    height=\"150\" alternative_text=\"Morghadi Patrick\" alias_key=\"1293033771\" timestamp=\"1511110110\">\n  <original attribute_id=\"401\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"150\" Width=\"150\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',401,''eng-GB'',3,0,'''',1),(0,219,110,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Florian est un super développeur très compétent, efficace et consciencieux dans son travail. Il possède également des qualités humaines exceptionnelles, c’est un plaisir de travailler avec lui au quotidien! Il n’hésite pas à se remettre en question régulièrement et cherche toujours un moyen de s’améliorer. Il a cependant développé une obsession pour la sécurité mais... qui s’en plaindra ?!</para></section>\n'',''ezrichtext'',402,''eng-GB'',3,0,'''',1),(0,215,111,NULL,NULL,''Archilla Sylvain'',''ezstring'',403,''eng-GB'',3,0,''archilla sylvain'',1),(0,215,111,NULL,NULL,''Archilla Sylvain'',''ezstring'',403,''eng-GB'',3,0,''archilla sylvain'',2),(0,216,111,NULL,NULL,''Apprenant CODA by Simplon'',''ezstring'',404,''eng-GB'',3,0,''apprenant coda by simplon'',1),(0,216,111,NULL,NULL,''Apprenant CODA by Simplon'',''ezstring'',404,''eng-GB'',3,0,''apprenant coda by simplon'',2),(0,218,111,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"002.jpg\"\n    suffix=\"jpg\" basename=\"002\" dirpath=\"var/site/storage/images/5/0/4/0/405-1-eng-GB\" url=\"var/site/storage/images/5/0/4/0/405-1-eng-GB/002.jpg\"\n    original_filename=\"002.jpg\" mime_type=\"image/jpeg\" width=\"150\"\n    height=\"150\" alternative_text=\"Archilla Sylvain\" alias_key=\"1293033771\" timestamp=\"1511110197\">\n  <original attribute_id=\"405\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"150\" Width=\"150\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',405,''eng-GB'',3,0,'''',1),(0,218,111,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"002.jpg\"\n    suffix=\"jpg\" basename=\"002\" dirpath=\"var/site/storage/images/5/0/4/0/405-1-eng-GB\" url=\"var/site/storage/images/5/0/4/0/405-1-eng-GB/002.jpg\"\n    original_filename=\"002.jpg\" mime_type=\"image/jpeg\" width=\"150\"\n    height=\"150\" alternative_text=\"Archilla Sylvain\" alias_key=\"1293033771\" timestamp=\"1511113201\">\n  <original attribute_id=\"405\" attribute_version=\"2\" attribute_language=\"eng-GB\"/>\n  <information Height=\"150\" Width=\"150\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',405,''eng-GB'',3,0,'''',2),(0,219,111,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>&amp;Ccedil;a à été une grande experience de t’avoir rencontré pendant ce stage, merci de ton grand partage et de ton experience enrichissante. Tu es un super humain , en esperant que tu trouve un job à ton niveau.&lt;br /&gt; Un grand merci MEC.</para></section>\n'',''ezrichtext'',406,''eng-GB'',3,0,'''',1),(0,219,111,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Ça à été une grande experience de t’avoir rencontré pendant ce stage, merci de ton grand partage et de ton experience enrichissante. Tu es un super humain , en esperant que tu trouve un job à ton niveau.</para><para>Un grand merci MEC.</para></section>\n'',''ezrichtext'',406,''eng-GB'',3,0,'''',2),(0,215,112,NULL,NULL,''Emilie Robert'',''ezstring'',407,''eng-GB'',3,0,''emilie robert'',1),(0,216,112,NULL,NULL,''Chef de projet Mobilité & Numérique'',''ezstring'',408,''eng-GB'',3,0,''chef de projet mobilité & numérique'',1),(0,218,112,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"AAEAAQAAAAAAAA1gAAAAJGIxYzY3OGRlLTkwYWItNDRmNi05YjRiLTkyZDc1NDI5YTNhNQ.jpg\"\n    suffix=\"jpg\" basename=\"AAEAAQAAAAAAAA1gAAAAJGIxYzY3OGRlLTkwYWItNDRmNi05YjRiLTkyZDc1NDI5YTNhNQ\" dirpath=\"var/site/storage/images/9/0/4/0/409-1-eng-GB\" url=\"var/site/storage/images/9/0/4/0/409-1-eng-GB/AAEAAQAAAAAAAA1gAAAAJGIxYzY3OGRlLTkwYWItNDRmNi05YjRiLTkyZDc1NDI5YTNhNQ.jpg\"\n    original_filename=\"AAEAAQAAAAAAAA1gAAAAJGIxYzY3OGRlLTkwYWItNDRmNi05YjRiLTkyZDc1NDI5YTNhNQ.jpg\" mime_type=\"image/jpeg\" width=\"100\"\n    height=\"100\" alternative_text=\"Emilie Robert\" alias_key=\"1293033771\" timestamp=\"1511110430\">\n  <original attribute_id=\"409\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"100\" Width=\"100\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',409,''eng-GB'',3,0,'''',1),(0,219,112,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Très compétent et déterminé... Un brillant développeur!</para></section>\n'',''ezrichtext'',410,''eng-GB'',3,0,'''',1),(0,215,113,NULL,NULL,''Samir Ben Sadi'',''ezstring'',411,''eng-GB'',3,0,''samir ben sadi'',1),(0,216,113,NULL,NULL,''Chef de projets / webmaster'',''ezstring'',412,''eng-GB'',3,0,''chef de projets / webmaster'',1),(0,218,113,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"AAEAAQAAAAAAAAmPAAAAJGRlY2E2ZjcyLWYxZWItNGE2MS1hNDY2LWUzM2JkMmMwYjU0Yw.jpg\"\n    suffix=\"jpg\" basename=\"AAEAAQAAAAAAAAmPAAAAJGRlY2E2ZjcyLWYxZWItNGE2MS1hNDY2LWUzM2JkMmMwYjU0Yw\" dirpath=\"var/site/storage/images/3/1/4/0/413-1-eng-GB\" url=\"var/site/storage/images/3/1/4/0/413-1-eng-GB/AAEAAQAAAAAAAAmPAAAAJGRlY2E2ZjcyLWYxZWItNGE2MS1hNDY2LWUzM2JkMmMwYjU0Yw.jpg\"\n    original_filename=\"AAEAAQAAAAAAAAmPAAAAJGRlY2E2ZjcyLWYxZWItNGE2MS1hNDY2LWUzM2JkMmMwYjU0Yw.jpg\" mime_type=\"image/jpeg\" width=\"100\"\n    height=\"100\" alternative_text=\"Samir Ben Sadi\" alias_key=\"1293033771\" timestamp=\"1511110508\">\n  <original attribute_id=\"413\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"100\" Width=\"100\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',413,''eng-GB'',3,0,'''',1),(0,219,113,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Florian est très compétent, professionnel et très rigoureux dans son travail. son franc parler fait de lui quelqu\''un d\''entier et digne de confiance. il s’intégrera facilement dans une équipe de part ses qualités relationnel, bref il serait pour ma part indispensable dans n\''importe quelle équipe.</para></section>\n'',''ezrichtext'',414,''eng-GB'',3,0,'''',1),(0,215,114,NULL,NULL,''Morghadi Patrick'',''ezstring'',415,''eng-GB'',3,0,''morghadi patrick'',1),(0,216,114,NULL,NULL,''Formateur CODA by Simplon'',''ezstring'',416,''eng-GB'',3,0,''formateur coda by simplon'',1),(0,218,114,NULL,NULL,''<?xml version=\"1.0\" encoding=\"utf-8\"?>\n<ezimage serial_number=\"1\" is_valid=\"1\" filename=\"001.jpg\"\n    suffix=\"jpg\" basename=\"001\" dirpath=\"var/site/storage/images/7/1/4/0/417-1-eng-GB\" url=\"var/site/storage/images/7/1/4/0/417-1-eng-GB/001.jpg\"\n    original_filename=\"001.jpg\" mime_type=\"image/jpeg\" width=\"150\"\n    height=\"150\" alternative_text=\"Morghadi Patrick\" alias_key=\"1293033771\" timestamp=\"1511113103\">\n  <original attribute_id=\"417\" attribute_version=\"1\" attribute_language=\"eng-GB\"/>\n  <information Height=\"150\" Width=\"150\" IsColor=\"1\"/>\n</ezimage>'',''ezimage'',417,''eng-GB'',3,0,'''',1),(0,219,114,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><para>Florian est un super développeur très compétent, efficace et consciencieux dans son travail. Il possède également des qualités humaines exceptionnelles, c’est un plaisir de travailler avec lui au quotidien! Il n’hésite pas à se remettre en question régulièrement et cherche toujours un moyen de s’améliorer. Il a cependant développé une obsession pour la sécurité mais... qui s’en plaindra ?!</para></section>\n'',''ezrichtext'',418,''eng-GB'',3,0,'''',1),(0,211,115,NULL,NULL,''Testimonials'',''ezstring'',419,''eng-GB'',3,0,''testimonials'',1),(0,220,115,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><title ezxhtml:level=\"1\">Testimonials</title></section>\n'',''ezrichtext'',420,''eng-GB'',3,0,'''',1),(0,221,116,NULL,NULL,''Certifications'',''ezstring'',421,''eng-GB'',3,0,''certifications'',1),(0,229,116,NULL,NULL,''<?xml version=\"1.0\" encoding=\"UTF-8\"?>\n<section xmlns=\"http://docbook.org/ns/docbook\" xmlns:xlink=\"http://www.w3.org/1999/xlink\" xmlns:ezxhtml=\"http://ez.no/xmlns/ezpublish/docbook/xhtml\" xmlns:ezcustom=\"http://ez.no/xmlns/ezpublish/docbook/custom\" version=\"5.0-variant ezpublish-1.0\"><title ezxhtml:level=\"1\">Certifications</title></section>\n'',''ezrichtext'',422,''eng-GB'',3,0,'''',1),(0,225,117,NULL,NULL,''Git'',''ezstring'',423,''eng-GB'',3,0,''git'',1),(0,226,117,NULL,NULL,NULL,''ezstring'',424,''eng-GB'',3,0,'''',1),(0,227,117,NULL,23,''Afficher'',''ezurl'',425,''eng-GB'',3,0,'''',1),(0,228,117,NULL,1486166400,NULL,''ezdate'',426,''eng-GB'',3,1486166400,'''',1),(0,225,118,NULL,NULL,''Update'',''ezstring'',427,''eng-GB'',3,0,''update'',1),(0,226,118,NULL,NULL,NULL,''ezstring'',428,''eng-GB'',3,0,'''',1),(0,227,118,NULL,24,''Afficher'',''ezurl'',429,''eng-GB'',3,0,'''',1),(0,228,118,NULL,1486339200,NULL,''ezdate'',430,''eng-GB'',3,1486339200,'''',1),(0,225,119,NULL,NULL,''WordPress'',''ezstring'',431,''eng-GB'',3,0,''wordpress'',1),(0,226,119,NULL,NULL,NULL,''ezstring'',432,''eng-GB'',3,0,'''',1),(0,227,119,NULL,25,''Afficher'',''ezurl'',433,''eng-GB'',3,0,'''',1),(0,228,119,NULL,1486425600,NULL,''ezdate'',434,''eng-GB'',3,1486425600,'''',1),(0,225,120,NULL,NULL,''CMS'',''ezstring'',435,''eng-GB'',3,0,''cms'',1),(0,226,120,NULL,NULL,NULL,''ezstring'',436,''eng-GB'',3,0,'''',1),(0,227,120,NULL,26,''Afficher'',''ezurl'',437,''eng-GB'',3,0,'''',1),(0,228,120,NULL,1486425600,NULL,''ezdate'',438,''eng-GB'',3,1486425600,'''',1),(0,225,121,NULL,NULL,''API REST'',''ezstring'',439,''eng-GB'',3,0,''api rest'',1),(0,226,121,NULL,NULL,NULL,''ezstring'',440,''eng-GB'',3,0,'''',1),(0,227,121,NULL,27,''Afficher'',''ezurl'',441,''eng-GB'',3,0,'''',1),(0,228,121,NULL,1486425600,NULL,''ezdate'',442,''eng-GB'',3,1486425600,'''',1),(0,225,122,NULL,NULL,''Bootstrap'',''ezstring'',443,''eng-GB'',3,0,''bootstrap'',1),(0,226,122,NULL,NULL,''3/4'',''ezstring'',444,''eng-GB'',3,0,''3/4'',1),(0,227,122,NULL,27,''Afficher'',''ezurl'',445,''eng-GB'',3,0,'''',1),(0,228,122,NULL,1486425600,NULL,''ezdate'',446,''eng-GB'',3,1486425600,'''',1),(0,225,123,NULL,NULL,''jQuery'',''ezstring'',447,''eng-GB'',3,0,''jquery'',1),(0,226,123,NULL,NULL,NULL,''ezstring'',448,''eng-GB'',3,0,'''',1),(0,227,123,NULL,28,''Afficher'',''ezurl'',449,''eng-GB'',3,0,'''',1),(0,228,123,NULL,1486512000,NULL,''ezdate'',450,''eng-GB'',3,1486512000,'''',1),(0,225,124,NULL,NULL,''JavaScript'',''ezstring'',451,''eng-GB'',3,0,''javascript'',1),(0,226,124,NULL,NULL,''6'',''ezstring'',452,''eng-GB'',3,0,''6'',1),(0,227,124,NULL,29,''Afficher'',''ezurl'',453,''eng-GB'',3,0,'''',1),(0,228,124,NULL,1486339200,NULL,''ezdate'',454,''eng-GB'',3,1486339200,'''',1),(0,225,125,NULL,NULL,''HTML CSS'',''ezstring'',455,''eng-GB'',3,0,''html css'',1),(0,226,125,NULL,NULL,''5/3'',''ezstring'',456,''eng-GB'',3,0,''5/3'',1),(0,227,125,NULL,30,''Afficher'',''ezurl'',457,''eng-GB'',3,0,'''',1),(0,228,125,NULL,1486166400,NULL,''ezdate'',458,''eng-GB'',3,1486166400,'''',1),(0,225,126,NULL,NULL,''PHP'',''ezstring'',459,''eng-GB'',3,0,''php'',1),(0,226,126,NULL,NULL,''5.x/7.x'',''ezstring'',460,''eng-GB'',3,0,''5.x/7.x'',1),(0,227,126,NULL,31,''Afficher'',''ezurl'',461,''eng-GB'',3,0,'''',1),(0,228,126,NULL,1486598400,NULL,''ezdate'',462,''eng-GB'',3,1486598400,'''',1),(0,225,127,NULL,NULL,''Symfony'',''ezstring'',463,''eng-GB'',3,0,''symfony'',1),(0,226,127,NULL,NULL,''2.8/3'',''ezstring'',464,''eng-GB'',3,0,''2.8/3'',1),(0,227,127,NULL,32,''Afficher'',''ezurl'',465,''eng-GB'',3,0,'''',1),(0,228,127,NULL,1486080000,NULL,''ezdate'',466,''eng-GB'',3,1486080000,'''',1);
                                                                               /*!40000 ALTER TABLE
                                                                               `ezcontentobject_attribute` ENABLE
                                                                               KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_link`
--

DROP TABLE IF EXISTS `ezcontentobject_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_link` (
  `contentclassattribute_id`   INT(11) NOT NULL DEFAULT ''0'',
  `from_contentobject_id`      INT(11) NOT NULL DEFAULT ''0'',
  `from_contentobject_version` INT(11) NOT NULL DEFAULT ''0'',
  `id`                         INT(11) NOT NULL AUTO_INCREMENT,
  `relation_type`              INT(11) NOT NULL DEFAULT ''1'',
  `to_contentobject_id`        INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezco_link_from` (`from_contentobject_id`, `from_contentobject_version`, `contentclassattribute_id`),
  KEY `ezco_link_to_co_id` (`to_contentobject_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_link`
--

LOCK TABLES `ezcontentobject_link` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcontentobject_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_name`
--

DROP TABLE IF EXISTS `ezcontentobject_name`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_name` (
  `content_translation` VARCHAR(20) NOT NULL DEFAULT '''',
  `content_version`     INT(11)     NOT NULL DEFAULT ''0'',
  `contentobject_id`    INT(11)     NOT NULL DEFAULT ''0'',
  `language_id`         BIGINT(20)  NOT NULL DEFAULT ''0'',
  `name`                VARCHAR(255)         DEFAULT NULL,
  `real_translation`    VARCHAR(20)          DEFAULT NULL,
  PRIMARY KEY (`contentobject_id`, `content_version`, `content_translation`),
  KEY `ezcontentobject_name_cov_id` (`content_version`),
  KEY `ezcontentobject_name_lang_id` (`language_id`),
  KEY `ezcontentobject_name_name` (`name`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_name`
--

LOCK TABLES `ezcontentobject_name` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_name`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject_name`
VALUES (''eng - GB'', 1, 4, 3, ''Users'', ''eng - GB''), (''eng - GB'', 2, 10, 3, ''Anonymous USER '', ''eng - GB''),
  (''eng - GB'', 1, 11, 3, ''Guest accounts'', ''eng - GB''),
  (''eng - GB'', 1, 12, 3, ''Administrator users'', ''eng - GB''), (''eng - GB'', 1, 13, 3, ''Editors'', ''eng - GB''),
  (''eng - GB'', 3, 14, 3, ''Administrator USER '', ''eng - GB''),
  (''eng - GB'', 4, 14, 3, ''Administrator USER '', ''eng - GB''), (''eng - GB'', 1, 41, 3, ''Media'', ''eng - GB''),
  (''eng - GB'', 1, 42, 3, ''Anonymous Users'', ''eng - GB''), (''eng - GB'', 1, 45, 3, ''Setup'', ''eng - GB''),
  (''eng - GB'', 1, 49, 3, ''Images'', ''eng - GB''), (''eng - GB'', 1, 50, 3, ''Files'', ''eng - GB''),
  (''eng - GB'', 1, 51, 3, ''Multimedia'', ''eng - GB''),
  (''eng - GB'', 1, 52, 2, ''Common INI settings'', ''eng - GB''),
  (''eng - GB'', 2, 54, 2, ''Plain site'', ''eng - GB''), (''eng - GB'', 1, 56, 3, ''Design'', ''eng - GB''),
  (''eng - GB'', 2, 57, 2, ''Home'', ''eng - GB''), (''eng - GB'', 3, 57, 3, ''Home'', ''eng - GB''),
  (''eng - GB'', 4, 57, 3, ''Home'', ''eng - GB''), (''eng - GB'', 2, 58, 2, ''Contact Us'', ''eng - GB''),
  (''eng - GB'', 2, 59, 2, ''Projects'', ''eng - GB''), (''eng - GB'', 3, 59, 3, ''Projectstest'', ''eng - GB''),
  (''eng - GB'', 4, 59, 3, ''Projects'', ''eng - GB''), (''eng - GB'', 6, 60, 2, ''Top Stories'', ''eng - GB''),
  (''eng - GB'', 2, 61, 2, ''Canal Plus'', ''eng - GB''), (''eng - GB'', 2, 62, 2, ''Hootsuite'', ''eng - GB''),
  (''eng - GB'', 2, 63, 2, ''Royal Canin'', ''eng - GB''), (''eng - GB'', 2, 64, 2, ''Mondadori'', ''eng - GB''),
  (''eng - GB'', 3, 65, 2, ''The Christian Science Monitor'', ''eng - GB''),
  (''eng - GB'', 2, 66, 2, ''Road & Track, Hearst Magazines'', ''eng - GB''),
  (''eng - GB'', 2, 67, 2, ''Financial Times fDi Intelligence'', ''eng - GB''),
  (''eng - GB'', 2, 68, 2, ''Dolly Dimples'', ''eng - GB''), (''eng - GB'', 2, 69, 2, ''Swiss TV'', ''eng - GB''),
  (''eng - GB'', 2, 70, 2, ''Elle'', ''eng - GB''), (''eng - GB'', 2, 71, 2, ''Tecnotree'', ''eng - GB''),
  (''eng - GB'', 2, 72, 2, ''Harvard Kennedy School'', ''eng - GB''),
  (''eng - GB'', 2, 73, 2, ''Casden'', ''eng - GB''), (''eng - GB'', 2, 74, 2, ''European Space Agency'', ''eng - GB''),
  (''eng - GB'', 2, 75, 2, ''Euranet.eu - European Radio Network'', ''eng - GB''),
  (''eng - GB'', 2, 76, 2, ''Fruchthof Nagel'', ''eng - GB''), (''eng - GB'', 2, 77, 2, ''John Deere'', ''eng - GB''),
  (''eng - GB'', 2, 78, 2, ''Mazars'', ''eng - GB''),
  (''eng - GB'', 2, 79, 2, ''La Nouvelle Republique'', ''eng - GB''),
  (''eng - GB'', 2, 80, 2, ''Nuclear SECURITY '', ''eng - GB''), (''eng - GB'', 1, 81, 2, ''Shera'', ''eng - GB''),
  (''eng - GB'', 1, 82, 2, ''Telekom Business Marketplace, Deutsche Telekom'', ''eng - GB''),
  (''eng - GB'', 1, 83, 2, ''Comite Regional du Tourisme de Bretagne'', ''eng - GB''),
  (''eng - GB'', 1, 84, 2, ''Vinextase'', ''eng - GB''),
  (''eng - GB'', 1, 85, 2, ''Build a Better Performing Site WITH Continuous Optimization'', ''eng - GB''),
  (''eng - GB'', 7, 86, 2, ''Build a better performing site WITH continuous optimization'', ''eng - GB''),
  (''eng - GB'', 8, 87, 2, ''5 things TO consider WHEN making a multi- LANGUAGE site WITH eZ Publish'', ''eng - GB''),
  (''eng - GB'', 5, 88, 2, ''eZ Platform AND eZ Studio coming soon'', ''eng - GB''),
  (''eng - GB'', 1, 89, 3, ''RESUME'', ''eng - GB''), (''eng - GB'', 1, 90, 3, ''Personal RESUME '', ''eng - GB''),
  (''eng - GB'', 1, 91, 3, '''', ''eng - GB''), (''eng - GB'', 1, 92, 3, ''Personal RESUME '', ''eng - GB''),
  (''eng - GB'', 1, 93, 3, '''', ''eng - GB''), (''eng - GB'', 1, 94, 3,
                                                 ''Journal \"Passe l\''info\"'',''eng-GB''),(''eng-GB'',1,95,3,'''',''eng-GB''),(''eng-GB'',2,95,3,''test'',''eng-GB''),(''eng-GB'',3,95,3,''Journal \"Passe l\''info\"'',''eng-GB''),(''eng-GB'',1,96,3,''Arkadyss'',''eng-GB''),(''eng-GB'',1,97,3,''Geek-Avenue'',''eng-GB''),(''eng-GB'',1,98,3,''CODA by Simplon'',''eng-GB''),(''eng-GB'',1,99,3,''Kaliop'',''eng-GB''),(''eng-GB'',2,99,3,''Kaliop'',''eng-GB''),(''eng-GB'',1,100,3,''Twicth Stuff'',''eng-GB''),(''eng-GB'',2,100,3,''Twicth Stuff'',''eng-GB''),(''eng-GB'',3,100,3,''Twicth Stuff'',''eng-GB''),(''eng-GB'',1,101,3,''ISPConfig'',''eng-GB''),(''eng-GB'',2,101,3,''ISPConfig'',''eng-GB''),(''eng-GB'',1,102,3,''CodeCademy'',''eng-GB''),(''eng-GB'',2,102,3,''CodeCademy'',''eng-GB''),(''eng-GB'',1,103,3,''Conky - Ubuntu'',''eng-GB''),(''eng-GB'',1,104,3,''Personnal Resume'',''eng-GB''),(''eng-GB'',1,105,3,''Profesionnal CV Card'',''eng-GB''),(''eng-GB'',1,106,3,''Torrent Trader'',''eng-GB''),(''eng-GB'',2,106,3,''Torrent Trader'',''eng-GB''),(''eng-GB'',1,107,3,''PeePolls'',''eng-GB''),(''eng-GB'',1,108,3,''Canturla'',''eng-GB''),(''eng-GB'',1,109,3,''Testimonials'',''eng-GB''),(''eng-GB'',1,110,3,''Morghadi Patrick'',''eng-GB''),(''eng-GB'',1,111,3,''Archilla Sylvain'',''eng-GB''),(''eng-GB'',2,111,3,''Archilla Sylvain'',''eng-GB''),(''eng-GB'',1,112,3,''Emilie Robert'',''eng-GB''),(''eng-GB'',1,113,3,''Samir Ben Sadi'',''eng-GB''),(''eng-GB'',1,114,3,''Morghadi Patrick'',''eng-GB''),(''eng-GB'',1,115,3,''Testimonials'',''eng-GB''),(''eng-GB'',1,116,3,''Certifications'',''eng-GB''),(''eng-GB'',1,117,3,''Git'',''eng-GB''),(''eng-GB'',1,118,3,''Update'',''eng-GB''),(''eng-GB'',1,119,3,''WordPress'',''eng-GB''),(''eng-GB'',1,120,3,''CMS'',''eng-GB''),(''eng-GB'',1,121,3,''API REST'',''eng-GB''),(''eng-GB'',1,122,3,''Bootstrap'',''eng-GB''),(''eng-GB'',1,123,3,''jQuery'',''eng-GB''),(''eng-GB'',1,124,3,''JavaScript'',''eng-GB''),(''eng-GB'',1,125,3,''HTML CSS'',''eng-GB''),(''eng-GB'',1,126,3,''PHP'',''eng-GB''),(''eng-GB'',1,127,3,''Symfony'',''eng-GB'');
                                                 /*!40000 ALTER TABLE `ezcontentobject_name` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_trash`
--

DROP TABLE IF EXISTS `ezcontentobject_trash`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_trash` (
  `contentobject_id`           INT(11) DEFAULT NULL,
  `contentobject_version`      INT(11) DEFAULT NULL,
  `depth`                      INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `is_hidden`                  INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `is_invisible`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `main_node_id`               INT(11) DEFAULT NULL,
  `modified_subnode`           INT(11) DEFAULT ''0'',
  `node_id`                    INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `parent_node_id`             INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `path_identification_string` LONGTEXT,
  `path_string`                VARCHAR(255) NOT NULL DEFAULT '''',
  `priority`                   INT(11)      NOT NULL DEFAULT ''0'',
  `remote_id`                  VARCHAR(100) NOT NULL DEFAULT '''',
  `sort_field`                 INT(11) DEFAULT ''1'',
  `sort_order`                 INT(11) DEFAULT ''1'',
  PRIMARY KEY (`node_id`),
  KEY `ezcobj_trash_co_id` (`contentobject_id`),
  KEY `ezcobj_trash_depth` (`depth`),
  KEY `ezcobj_trash_modified_subnode` (`modified_subnode`),
  KEY `ezcobj_trash_p_node_id` (`parent_node_id`),
  KEY `ezcobj_trash_path` (`path_string`),
  KEY `ezcobj_trash_path_ident` (`path_identification_string`(50))
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_trash`
--

LOCK TABLES `ezcontentobject_trash` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_trash`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject_trash` VALUES
  (61, 2, 3, 0, 0, 63, 1448628826, 63, 61, ''projects / canal_plus'', '' / 1 / 2 / 61 / 63 / '', 0,
   ''a867eb26eed898fb75cef8ab97ae227c'', 1, 1),
  (62, 2, 3, 0, 0, 64, 1448632615, 64, 61, ''projects / hootsuite'', '' / 1 / 2 / 61 / 64 /
                                                                     '', 0, ''76d990ca02d0aa0b2b0015c22a1d7e6e'', 1, 1),
  (63, 2, 3, 0, 0, 65, 1448632662, 65, 61, ''projects / royal_canin'', '' / 1 / 2 / 61 / 65 /
                                                                       '', 0, ''1ea163c8d984df191e5b98354df2a71e'', 1, 1),
  (64, 2, 3, 0, 0, 66, 1448632753, 66, 61, ''projects / mondadori'', '' / 1 / 2 / 61 / 66 /
                                                                     '', 0, ''fd5d5078be1c080968eea6108dac52e5'', 1, 1),
  (65, 3, 3, 0, 0, 67, 1448632915, 67, 61, ''projects / the_christian_science_monitor'', '' / 1 / 2 / 61 / 67 /
                                                                                         '', 0, ''8215c70481b6c19f53e0784464d14253'', 1, 1),
  (66, 2, 3, 0, 0, 68, 1448633049, 68, 61, ''projects / road_track_hearst_magazines'', '' / 1 / 2 / 61 / 68 /
                                                                                       '', 0, ''6dcfd946a1eaeb165bc37f7458ba5105'', 1, 1),
  (67, 2, 3, 0, 0, 69, 1448633203, 69, 61, ''projects / financial_times_fdi_intelligence'', '' / 1 / 2 / 61 / 69 /
                                                                                            '', 0, ''ce43107b73c9a8a2102983834fe4548a'', 1, 1),
  (68, 2, 3, 0, 0, 70, 1448633288, 70, 61, ''projects / dolly_dimples'', '' / 1 / 2 / 61 / 70 /
                                                                         '', 0, ''32e3f86d39f6329cdaecc5657a7fefef'', 1, 1),
  (69, 2, 3, 0, 0, 71, 1448635570, 71, 61, ''projects / swiss_tv'', '' / 1 / 2 / 61 / 71 /
                                                                    '', 0, ''e6127d4b84fa94f3c605e9e396caf3f6'', 1, 1),
  (70, 2, 3, 0, 0, 72, 1448635651, 72, 61, ''projects / elle'', '' / 1 / 2 / 61 / 72 /
                                                                '', 0, ''45f3faa552a68c309fdc2357d08a6f04'', 1, 1),
  (71, 2, 3, 0, 0, 73, 1448635691, 73, 61, ''projects / tecnotree'', '' / 1 / 2 / 61 / 73 /
                                                                     '', 0, ''a49ad4b6c99057bf95561254585ea40a'', 1, 1),
  (72, 2, 3, 0, 0, 74, 1448635728, 74, 61, ''projects / harvard_kennedy_school'', '' / 1 / 2 / 61 / 74 /
                                                                                  '', 0, ''7adb3f10a3d3688960ebf390f6e78a99'', 1, 1),
  (73, 2, 3, 0, 0, 75, 1448635809, 75, 61, ''projects / casden'', '' / 1 / 2 / 61 / 75 /
                                                                  '', 0, ''373b2d081cc798b916d2a8f38c3a0e03'', 1, 1),
  (74, 2, 3, 0, 0, 76, 1448635848, 76, 61, ''projects / european_space_agency'', '' / 1 / 2 / 61 / 76 /
                                                                                 '', 0, ''166f099ea6b11aa668493f9c7a4caa5c'', 1, 1),
  (75, 2, 3, 0, 0, 77, 1448635903, 77, 61, ''projects / euranet_eu_european_radio_network'', '' / 1 / 2 / 61 / 77 /
                                                                                             '', 0, ''a4440254007c5b2a6104525cb835ea95'', 1, 1),
  (76, 2, 3, 0, 0, 78, 1448635952, 78, 61, ''projects / fruchthof_nagel'', '' / 1 / 2 / 61 / 78 /
                                                                           '', 0, ''90aad8c750d9d315c0077a14eed3ea53'', 1, 1),
  (77, 2, 3, 0, 0, 79, 1448636003, 79, 61, ''projects / john_deere'', '' / 1 / 2 / 61 / 79 /
                                                                      '', 0, ''85a55ac19a319b2f7930d4ceb49ab865'', 1, 1),
  (78, 2, 3, 0, 0, 80, 1448636049, 80, 61, ''projects / mazars'', '' / 1 / 2 / 61 / 80 /
                                                                  '', 0, ''d4fad6451188acd40f9eca4581616a8a'', 1, 1),
  (79, 2, 3, 0, 0, 81, 1448636142, 81, 61, ''projects / la_nouvelle_republique'', '' / 1 / 2 / 61 / 81 /
                                                                                  '', 0, ''7fbba0658bda3601ba3483462968c341'', 1, 1),
  (80, 2, 3, 0, 0, 82, 1448637147, 82, 61, ''projects / nuclear_security'', '' / 1 / 2 / 61 / 82 /
                                                                            '', 0, ''480f4423b8a318d989fd6a5027fc314a'', 1, 1),
  (81, 1, 3, 0, 0, 83, 1448637212, 83, 61, ''projects / shera'', '' / 1 / 2 / 61 / 83 /
                                                                 '', 0, ''e4a7ccbc1347f60beabf14e3850d3414'', 1, 1),
  (82, 1, 3, 0, 0, 84, 1448637257, 84, 61, ''projects / telekom_business_marketplace_deutsche_telekom'',
       '' / 1 / 2 / 61 / 84 / '', 0, ''963a0ac2354542a44b9831f4d2468d76'', 1, 1),
  (83, 1, 3, 0, 0, 85, 1448637313, 85, 61, ''projects / comite_regional_du_tourisme_de_bretagne'', '' / 1 / 2 / 61 / 85
                                                                                                   /
                                                                                                   '', 0, ''376f7051df9c05595ea297427686f874'', 1, 1),
  (84, 1, 3, 0, 0, 86, 1448637351, 86, 61, ''projects / vinextase'', '' / 1 / 2 / 61 / 86 /
                                                                     '', 0, ''4d63192fe7e6abcb3a5d6920cec099a5'', 1, 1),
  (89, 1, 3, 0, 0, 90, 1511093263, 90, 61, ''node_2 / projectstest / RESUME '', '' / 1 / 2 / 61 / 90 /
                                                                                '', 0, ''7022efbd8985bbd5efb882460ae88090'', 1, 1),
  (90, 1, 2, 0, 0, 91, 1511093334, 91, 2, ''node_2 / personal_resume'', '' / 1 / 2 / 91 /
                                                                        '', 0, ''38ba22b9e0e4e4f2818ff7347cbc5cb1'', 1, 1),
  (91, 1, 3, 0, 0, 92, 1511093935, 92, 91, ''node_2 / personal_resume / location_92'', '' / 1 / 2 / 91 / 92 /
                                                                                       '', 0, ''321c322e1383fed8d29cfae73de5ae4a'', 1, 1),
  (93, 1, 3, 0, 0, 94, 1511099677, 94, 93, ''node_2 / personal_resume / location_94'', '' / 1 / 2 / 93 / 94 /
                                                                                       '', 0, ''3c982286f1bf5019956d1df61eca4125'', 1, 1),
  (94, 1, 3, 0, 0, 95, 1511099743, 95, 93, ''node_2 / personal_resume / journal_passe_l_info'', '' / 1 / 2 / 93 / 95 /
                                                                                                '', 0, ''8f027f9d3dd18502aead8afbb3a55899'', 1, 1),
  (110, 1, 3, 0, 0, 111, 1511110111, 111, 110, ''node_2 / testimonials / morghadi_patrick'', '' / 1 / 2 / 110 / 111 /
                                                                                             '', 0, ''12cad7e46b5e8122163626e4712197c2'', 1, 1),
  (115, 1, 2, 0, 0, 116, 1511121766, 116, 2, ''node_2 / testimonials2'', '' / 1 / 2 / 116 /
                                                                         '', 0, ''3e82176b0162a4cada16ee9764ec1c58'', 1, 1);
/*!40000 ALTER TABLE `ezcontentobject_trash`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_tree`
--

DROP TABLE IF EXISTS `ezcontentobject_tree`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_tree` (
  `contentobject_id`           INT(11) DEFAULT NULL,
  `contentobject_is_published` INT(11) DEFAULT NULL,
  `contentobject_version`      INT(11) DEFAULT NULL,
  `depth`                      INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `is_hidden`                  INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `is_invisible`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `main_node_id`               INT(11) DEFAULT NULL,
  `modified_subnode`           INT(11) DEFAULT ''0'',
  `node_id`                    INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           AUTO_INCREMENT,
  `parent_node_id`             INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           DEFAULT ''0'',
  `path_identification_string` LONGTEXT,
  `path_string`                VARCHAR(255) NOT NULL DEFAULT '''',
  `priority`                   INT(11)      NOT NULL DEFAULT ''0'',
  `remote_id`                  VARCHAR(100) NOT NULL DEFAULT '''',
  `sort_field`                 INT(11) DEFAULT ''1'',
  `sort_order`                 INT(11) DEFAULT ''1'',
  PRIMARY KEY (`node_id`),
  KEY `ezcontentobject_tree_remote_id` (`remote_id`),
  KEY `ezcontentobject_tree_co_id` (`contentobject_id`),
  KEY `ezcontentobject_tree_depth` (`depth`),
  KEY `ezcontentobject_tree_p_node_id` (`parent_node_id`),
  KEY `ezcontentobject_tree_path` (`path_string`),
  KEY `ezcontentobject_tree_path_ident` (`path_identification_string`(50)),
  KEY `modified_subnode` (`modified_subnode`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 129
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_tree`
--

LOCK TABLES `ezcontentobject_tree` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_tree`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject_tree`
VALUES (0, 1, 1, 0, 0, 0, 1, 1511121791, 1, 1, '''', '' / 1 / '', 0, ''629709ba256fe317c3ddcee35453a96a'', 1, 1),
  (57, 1, 4, 1, 0, 0, 2, 1511121791, 2, 1, ''node_2'', '' / 1 / 2 / '', 0, ''f3e90596361e31d496d4026eb624c983'', 8, 1),
  (4, 1, 1, 1, 0, 0, 5, 1301062024, 5, 1, ''users'', '' / 1 / 5 / '', 0, ''3f6d92f8044aed134f32153517850f5a'', 1, 1),
  (11, 1, 1, 2, 0, 0, 12, 1081860719, 12, 5, ''users / guest_accounts'', '' / 1 / 5 / 12 /
                                                                         '', 0, ''602dcf84765e56b7f999eaafd3821dd3'', 1, 1),
  (12, 1, 1, 2, 0, 0, 13, 1301062024, 13, 5, ''users / administrator_users'', '' / 1 / 5 / 13 /
                                                                              '', 0, ''769380b7aa94541679167eab817ca893'', 1, 1),
  (13, 1, 1, 2, 0, 0, 14, 1081860719, 14, 5, ''users / editors'', '' / 1 / 5 / 14 /
                                                                  '', 0, ''f7dda2854fc68f7c8455d9cb14bd04a9'', 1, 1),
  (14, 1, 4, 3, 0, 0, 15, 1301062024, 15, 13, ''users / administrator_users / administrator_user'', '' / 1 / 5 / 13 / 15
                                                                                                    /
                                                                                                    '', 0, ''e5161a99f733200b9ed4e80f9c16187b'', 1, 1),
  (41, 1, 1, 1, 0, 0, 43, 1081860720, 43, 1, ''media'', '' / 1 / 43 /
                                                        '', 0, ''75c715a51699d2d309a924eca6a95145'', 9, 1),
  (42, 1, 1, 2, 0, 0, 44, 1081860719, 44, 5, ''users / anonymous_users'', '' / 1 / 5 / 44 /
                                                                          '', 0, ''4fdf0072da953bb276c0c7e0141c5c9b'', 9, 1),
  (10, 1, 2, 3, 0, 0, 45, 1081860719, 45, 44, ''users / anonymous_users / anonymous_user'', '' / 1 / 5 / 44 / 45 /
                                                                                            '', 0, ''2cf8343bee7b482bab82b269d8fecd76'', 9, 1),
  (45, 1, 1, 1, 0, 0, 48, 1184592117, 48, 1, ''setup2'', '' / 1 / 48 /
                                                         '', 0, ''182ce1b5af0c09fa378557c462ba2617'', 9, 1),
  (49, 1, 1, 2, 0, 0, 51, 1081860720, 51, 43, ''media / images'', '' / 1 / 43 / 51 /
                                                                  '', 0, ''1b26c0454b09bb49dfb1b9190ffd67cb'', 9, 1),
  (50, 1, 1, 2, 0, 0, 52, 1081860720, 52, 43, ''media / files'', '' / 1 / 43 / 52 /
                                                                 '', 0, ''0b113a208f7890f9ad3c24444ff5988c'', 9, 1),
  (51, 1, 1, 2, 0, 0, 53, 1081860720, 53, 43, ''media / multimedia'', '' / 1 / 43 / 53 /
                                                                      '', 0, ''4f18b82c75f10aad476cae5adf98c11f'', 9, 1),
  (52, 1, 1, 2, 0, 0, 54, 1184592117, 54, 48, ''setup2 / common_ini_settings'', '' / 1 / 48 / 54 /
                                                                                '', 0, ''fa9f3cff9cf90ecfae335718dcbddfe2'', 1, 1),
  (54, 1, 2, 2, 0, 0, 56, 1301062376, 56, 58, ''design / plain_site'', '' / 1 / 58 / 56 /
                                                                       '', 0, ''772da20ecf88b3035d73cbdfcea0f119'', 1, 1),
  (56, 1, 1, 1, 0, 0, 58, 1301062376, 58, 1, ''design'', '' / 1 / 58 /
                                                         '', 0, ''79f2d67372ab56f59b5d65bb9e0ca3b9'', 2, 0),
  (58, 1, 2, 2, 0, 0, 60, 1448627268, 60, 2, ''contact_us'', '' / 1 / 2 / 60 /
                                                             '', 30, ''11da938ffe35cd7e808213f3c6642e5a'', 1, 1),
  (59, 1, 4, 2, 0, 0, 61, 1511105759, 61, 2, ''node_2 / projects'', '' / 1 / 2 / 61 /
                                                                    '', 20, ''fa31454f371a62e5b006ef99b457398b'', 1, 1),
  (60, 1, 6, 2, 0, 0, 62, 1448627915, 62, 2, ''node_2 / top_stories'', '' / 1 / 2 / 62 /
                                                                       '', 10, ''f751fb1fd45e41589f73cd4604d4dddc'', 1, 1),
  (86, 1, 7, 3, 0, 0, 87, 1448638981, 87, 62, ''top_stories / build_a_better_performing_site_with_continuous_optimization'',
   '' / 1 / 2 / 62 / 87 / '', 0, ''b954df626ee3e02b51aaf66a21f15bba'', 1, 1),
  (87, 1, 8, 3, 0, 0, 88, 1448662074, 88, 62, ''node_2 / top_stories / 5_things_to_consider_when_making_a_multi_language_site_with_ez_publish'',
   '' / 1 / 2 / 62 / 88 / '', 0, ''1529314ee0f81511d7848f3527ccbfac'', 1, 1),
  (88, 1, 5, 3, 0, 0, 89, 1448662236, 89, 62, ''node_2 / top_stories / ez_platform_and_ez_studio_coming_soon'',
   '' / 1 / 2 / 62 / 89 / '', 0, ''00e195ded87bbe36383b05deab0b4072'', 1, 1),
  (92, 1, 1, 2, 0, 0, 93, 1511101008, 93, 2, ''node_2 / personal_resume'', '' / 1 / 2 / 93 /
                                                                           '', 0, ''006e66acf7145dcf237f75f7e8bcb405'', 1, 1),
  (95, 1, 3, 3, 0, 0, 96, 1511100010, 96, 93, ''node_2 / personal_resume / journal_passe_l_info'', '' / 1 / 2 / 93 / 96
                                                                                                   /
                                                                                                   '', 10, ''bf6e44bdc155caf4a19199056af41259'', 1, 1),
  (96, 1, 1, 3, 0, 0, 97, 1511103127, 97, 93, ''node_2 / personal_resume / arkadyss'', '' / 1 / 2 / 93 / 97 /
                                                                                       '', 0, ''85d103e9506d9f3e7298de6279b065d0'', 1, 1),
  (97, 1, 1, 3, 0, 0, 98, 1511103293, 98, 93, ''node_2 / personal_resume / geek_avenue'', '' / 1 / 2 / 93 / 98 /
                                                                                          '', 0, ''dbdd81bb6fd5deeaa67e6468a814897c'', 1, 1),
  (98, 1, 1, 3, 0, 0, 99, 1511103369, 99, 93, ''node_2 / personal_resume / coda_by_simplon'', '' / 1 / 2 / 93 / 99 /
                                                                                              '', 0, ''4618e795aa2de3f061a89ce2db71b93d'', 1, 1),
  (99, 1, 2, 3, 0, 0, 100, 1511103722, 100, 93, ''node_2 / personal_resume / kaliop'', '' / 1 / 2 / 93 / 100 /
                                                                                       '', 0, ''2c96186c20469960cc99a4280484dcb1'', 1, 1),
  (100, 1, 3, 3, 0, 0, 101, 1511105925, 101, 61, ''node_2 / projects / twicth_stuff'', '' / 1 / 2 / 61 / 101 /
                                                                                       '', 0, ''7225a7ad0d43dfd45ed019489c9ae44b'', 1, 1),
  (101, 1, 2, 3, 0, 0, 102, 1511106468, 102, 61, ''node_2 / projects / ispconfig'', '' / 1 / 2 / 61 / 102 /
                                                                                    '', 0, ''e5897a7fdf9908326ee9d3070018f347'', 1, 1),
  (102, 1, 2, 3, 0, 0, 103, 1511106535, 103, 61, ''node_2 / projects / codecademy'', '' / 1 / 2 / 61 / 103 /
                                                                                     '', 0, ''8134c0d09e75480259ac93f6502d8204'', 1, 1),
  (103, 1, 1, 3, 0, 0, 104, 1511106970, 104, 61, ''node_2 / projects / conky_ubuntu'', '' / 1 / 2 / 61 / 104 /
                                                                                       '', 0, ''72341fe2218c30962ada21549d1a38f5'', 1, 1),
  (104, 1, 1, 3, 0, 0, 105, 1511107047, 105, 61, ''node_2 / projects / personnal_resume'', '' / 1 / 2 / 61 / 105 /
                                                                                           '', 0, ''5952a07e79ff7517c0406f420f63c262'', 1, 1),
  (105, 1, 1, 3, 0, 0, 106, 1511107610, 106, 61, ''node_2 / projects / profesionnal_cv_card'', '' / 1 / 2 / 61 / 106 /
                                                                                               '', 0, ''3dfa24df5543f09aa5a3113a929a7cb7'', 1, 1),
  (106, 1, 2, 3, 0, 0, 107, 1511107668, 107, 61, ''node_2 / projects / torrent_trader'', '' / 1 / 2 / 61 / 107 /
                                                                                         '', 0, ''38c1110ec7e7510cadebed461d1f6741'', 1, 1),
  (107, 1, 1, 3, 0, 0, 108, 1511108771, 108, 61, ''node_2 / projects / peepolls'', '' / 1 / 2 / 61 / 108 /
                                                                                   '', 0, ''c6f07fdca0eb69f70ac4f2dea0d91179'', 1, 1),
  (108, 1, 1, 3, 0, 0, 109, 1511108858, 109, 61, ''node_2 / projects / canturla'', '' / 1 / 2 / 61 / 109 /
                                                                                   '', 0, ''a28221a76ed0806db16ffd1e0a170040'', 1, 1),
  (109, 1, 1, 2, 0, 0, 110, 1511113028, 110, 2, ''node_2 / testimonials'', '' / 1 / 2 / 110 /
                                                                           '', 0, ''d8737087bdf59195050b0b33836228c4'', 1, 1),
  (111, 1, 2, 3, 0, 0, 112, 1511110197, 112, 110, ''node_2 / testimonials / archilla_sylvain'', '' / 1 / 2 / 110 / 112 /
                                                                                                '', 100, ''193fe57ac44515569d37018afb29340a'', 1, 1),
  (112, 1, 1, 3, 0, 0, 113, 1511110430, 113, 110, ''node_2 / testimonials / emilie_robert'', '' / 1 / 2 / 110 / 113 /
                                                                                             '', 20, ''75f2837b1ad329419789495a97cab9ee'', 1, 1),
  (113, 1, 1, 3, 0, 0, 114, 1511110508, 114, 110, ''node_2 / testimonials / samir_ben_sadi'', '' / 1 / 2 / 110 / 114 /
                                                                                              '', 30, ''13c5b722d1b2b44203c493b3a0eab896'', 1, 1),
  (114, 1, 1, 3, 0, 0, 115, 1511113104, 115, 110, ''node_2 / testimonials / morghadi_patrick'', '' / 1 / 2 / 110 / 115 /
                                                                                                '', 0, ''3f23fac785297a75cd7c0287b594ba16'', 1, 1),
  (116, 1, 1, 2, 0, 0, 117, 1511121826, 117, 2, ''node_2 / certifications'', '' / 1 / 2 / 117 /
                                                                             '', 0, ''3a6c7ed7667cd5cf7bfc63c74c008966'', 1, 1),
  (117, 1, 1, 3, 0, 0, 118, 1511122018, 118, 117, ''node_2 / certifications / git'', '' / 1 / 2 / 117 / 118 /
                                                                                     '', 0, ''8cc6b8e67d384ad2f0decc7bfbecc055'', 1, 1),
  (118, 1, 1, 3, 0, 0, 119, 1511122169, 119, 117, ''node_2 / certifications / UPDATE '', '' / 1 / 2 / 117 / 119 /
                                                                                         '', 0, ''cd35cf7e0cf455f252388973051864cc'', 1, 1),
  (119, 1, 1, 3, 0, 0, 120, 1511122275, 120, 117, ''node_2 / certifications / wordpress'', '' / 1 / 2 / 117 / 120 /
                                                                                           '', 0, ''d50ea66535116a979c9965a8ee12556f'', 1, 1),
  (120, 1, 1, 3, 0, 0, 121, 1511122370, 121, 117, ''node_2 / certifications / cms'', '' / 1 / 2 / 117 / 121 /
                                                                                     '', 0, ''14f15e1e88d79c4d0b2ecd1268e06a71'', 1, 1),
  (121, 1, 1, 3, 0, 0, 122, 1511122449, 122, 117, ''node_2 / certifications / api_rest'', '' / 1 / 2 / 117 / 122 /
                                                                                          '', 0, ''7c0a6ecb49bd5945eeba5627a4853d0d'', 1, 1),
  (122, 1, 1, 3, 0, 0, 123, 1511122529, 123, 117, ''node_2 / certifications / bootstrap'', '' / 1 / 2 / 117 / 123 /
                                                                                           '', 0, ''797fdb5ad266ae15add8abe7cda43f7e'', 1, 1),
  (123, 1, 1, 3, 0, 0, 124, 1511122595, 124, 117, ''node_2 / certifications / jquery'', '' / 1 / 2 / 117 / 124 /
                                                                                        '', 0, ''e22059fdcb68c7e0043c856763e8ff83'', 1, 1),
  (124, 1, 1, 3, 0, 0, 125, 1511122654, 125, 117, ''node_2 / certifications / javascript'', '' / 1 / 2 / 117 / 125 / '',
   0, ''bf2f14a2dcdb264c6bff3ef08bda4a6b'', 1, 1),
  (125, 1, 1, 3, 0, 0, 126, 1511122726, 126, 117, ''node_2 / certifications / html_css'', '' / 1 / 2 / 117 / 126 / '',
   0, ''b5ec023ed44aa6f8cdd6657b129d0b8c'', 1, 1),
  (126, 1, 1, 3, 0, 0, 127, 1511122797, 127, 117, ''node_2 / certifications / php'', '' / 1 / 2 / 117 / 127 / '', 0,
   ''87b9f1f7b4604624e788d5be30b89d64'', 1, 1),
  (127, 1, 1, 3, 0, 0, 128, 1511122870, 128, 117, ''node_2 / certifications / symfony'', '' / 1 / 2 / 117 / 128 / '', 0,
   ''09bcfe3092c41fa76d96edc8c6534ef3'', 1, 1);
/*!40000 ALTER TABLE `ezcontentobject_tree`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcontentobject_version`
--

DROP TABLE IF EXISTS `ezcontentobject_version`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcontentobject_version` (
  `contentobject_id`    INT(11) DEFAULT NULL,
  `created`             INT(11)    NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEFAULT ''0'',
  `creator_id`          INT(11)    NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   DEFAULT ''0'',
  `id`                  INT(11)    NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                   AUTO_INCREMENT,
  `initial_language_id` BIGINT(20) NOT NULL DEFAULT ''0'',
  `language_mask`       BIGINT(20) NOT NULL DEFAULT ''0'',
  `modified`            INT(11)    NOT NULL DEFAULT ''0'',
  `status`              INT(11)    NOT NULL DEFAULT ''0'',
  `user_id`             INT(11)    NOT NULL DEFAULT ''0'',
  `version`             INT(11)    NOT NULL DEFAULT ''0'',
  `workflow_event_pos`  INT(11) DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezcobj_version_creator_id` (`creator_id`),
  KEY `ezcobj_version_status` (`status`),
  KEY `idx_object_version_objver` (`contentobject_id`, `version`),
  KEY `ezcontobj_version_obj_status` (`contentobject_id`, `status`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 642
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcontentobject_version`
--

LOCK TABLES `ezcontentobject_version` WRITE;
/*!40000 ALTER TABLE `ezcontentobject_version`
  DISABLE KEYS */;
INSERT INTO `ezcontentobject_version`
VALUES (4, 0, 14, 4, 2, 3, 0, 1, 0, 1, 1), (11, 1033920737, 14, 439, 2, 3, 1033920746, 1, 0, 1, 0),
  (12, 1033920760, 14, 440, 2, 3, 1033920775, 1, 0, 1, 0), (13, 1033920786, 14, 441, 2, 3, 1033920794, 1, 0, 1, 0),
  (41, 1060695450, 14, 472, 2, 3, 1060695457, 1, 0, 1, 0), (42, 1072180278, 14, 473, 2, 3, 1072180330, 1, 0, 1, 0),
  (10, 1072180337, 14, 474, 2, 3, 1072180405, 1, 0, 2, 0), (45, 1079684084, 14, 477, 2, 3, 1079684190, 1, 0, 1, 0),
  (49, 1080220181, 14, 488, 2, 3, 1080220197, 1, 0, 1, 0), (50, 1080220211, 14, 489, 2, 3, 1080220220, 1, 0, 1, 0),
  (51, 1080220225, 14, 490, 2, 3, 1080220233, 1, 0, 1, 0), (52, 1082016497, 14, 491, 2, 3, 1082016591, 1, 0, 1, 0),
  (56, 1103023120, 14, 495, 2, 3, 1103023120, 1, 0, 1, 0), (14, 1301061783, 14, 499, 2, 3, 1511085159, 3, 0, 3, 0),
  (54, 1301062300, 14, 500, 2, 3, 1301062375, 1, 0, 2, 0), (59, 1448627689, 14, 507, 2, 3, 1511088469, 3, 0, 2, 0),
  (58, 1448629193, 14, 511, 2, 3, 1448629197, 1, 0, 2, 0), (80, 1448637166, 14, 531, 2, 3, 1448637169, 1, 0, 2, 0),
  (81, 1448637209, 14, 532, 2, 3, 1448637212, 1, 0, 1, 0), (82, 1448637254, 14, 533, 2, 3, 1448637257, 1, 0, 1, 0),
  (83, 1448637310, 14, 534, 2, 3, 1448637313, 1, 0, 1, 0), (84, 1448637349, 14, 535, 2, 3, 1448637351, 1, 0, 1, 0),
  (61, 1448637383, 14, 536, 2, 3, 1448637386, 1, 0, 2, 0), (62, 1448637408, 14, 537, 2, 3, 1448637411, 1, 0, 2, 0),
  (63, 1448637436, 14, 538, 2, 3, 1448637439, 1, 0, 2, 0), (64, 1448637463, 14, 539, 2, 3, 1448637466, 1, 0, 2, 0),
  (65, 1448637538, 14, 541, 2, 3, 1448637540, 1, 0, 3, 0), (66, 1448637569, 14, 542, 2, 3, 1448637571, 1, 0, 2, 0),
  (67, 1448637604, 14, 543, 2, 3, 1448637606, 1, 0, 2, 0), (68, 1448637638, 14, 544, 2, 3, 1448637640, 1, 0, 2, 0),
  (69, 1448637664, 14, 545, 2, 3, 1448637667, 1, 0, 2, 0), (70, 1448637696, 14, 546, 2, 3, 1448637699, 1, 0, 2, 0),
  (71, 1448637723, 14, 547, 2, 3, 1448637724, 1, 0, 2, 0), (72, 1448637763, 14, 548, 2, 3, 1448637765, 1, 0, 2, 0),
  (73, 1448637792, 14, 549, 2, 3, 1448637794, 1, 0, 2, 0), (74, 1448637827, 14, 550, 2, 3, 1448637830, 1, 0, 2, 0),
  (75, 1448637900, 14, 551, 2, 3, 1448637903, 1, 0, 2, 0), (76, 1448637933, 14, 552, 2, 3, 1448637935, 1, 0, 2, 0),
  (77, 1448637975, 14, 553, 2, 3, 1448637977, 1, 0, 2, 0), (78, 1448638007, 14, 554, 2, 3, 1448638009, 1, 0, 2, 0),
  (79, 1448638040, 14, 555, 2, 3, 1448638042, 1, 0, 2, 0), (85, 1448638782, 14, 556, 2, 3, 1448638782, 0, 0, 1, 0),
  (86, 1448641211, 14, 567, 2, 3, 1448641214, 1, 0, 7, 0), (57, 1448648001, 14, 568, 2, 3, 1511089779, 3, 0, 2, 0),
  (88, 1448665098, 14, 585, 2, 3, 1448665102, 1, 0, 5, 0), (87, 1448665349, 14, 587, 2, 3, 1448665353, 1, 0, 8, 0),
  (60, 1448667363, 14, 588, 2, 3, 1448667368, 1, 0, 6, 0), (14, 1511085159, 14, 589, 2, 3, 1511085159, 1, 0, 4, 0),
  (59, 1511088469, 14, 590, 2, 3, 1511105778, 3, 0, 3, 0), (57, 1511089778, 14, 591, 2, 3, 1511090690, 3, 0, 3, 0),
  (57, 1511090690, 14, 592, 2, 3, 1511090690, 1, 0, 4, 0), (89, 1511093263, 14, 593, 2, 3, 1511093263, 1, 0, 1, 0),
  (90, 1511093333, 14, 594, 2, 3, 1511093334, 1, 0, 1, 0), (91, 1511093935, 14, 595, 2, 3, 1511093935, 1, 0, 1, 0),
  (92, 1511099470, 14, 596, 2, 3, 1511099470, 1, 0, 1, 0), (93, 1511099677, 14, 597, 2, 3, 1511099677, 1, 0, 1, 0),
  (94, 1511099742, 14, 598, 2, 3, 1511099743, 1, 0, 1, 0), (95, 1511100009, 14, 599, 2, 3, 1511100329, 3, 0, 1, 0),
  (95, 1511100328, 14, 600, 2, 3, 1511101043, 3, 0, 2, 0), (95, 1511101042, 14, 601, 2, 3, 1511101043, 1, 0, 3, 0),
  (96, 1511103127, 14, 602, 2, 3, 1511103127, 1, 0, 1, 0), (97, 1511103292, 14, 603, 2, 3, 1511103293, 1, 0, 1, 0),
  (98, 1511103369, 14, 604, 2, 3, 1511103369, 1, 0, 1, 0), (99, 1511103721, 14, 605, 2, 3, 1511103786, 3, 0, 1, 0),
  (99, 1511103785, 14, 606, 2, 3, 1511103786, 1, 0, 2, 0), (59, 1511105777, 14, 607, 2, 3, 1511105778, 1, 0, 4, 0),
  (100, 1511105924, 14, 608, 2, 3, 1511106262, 3, 0, 1, 0), (100, 1511106261, 14, 609, 2, 3, 1511106681, 3, 0, 2, 0),
  (101, 1511106467, 14, 610, 2, 3, 1511106776, 3, 0, 1, 0), (102, 1511106535, 14, 611, 2, 3, 1511106809, 3, 0, 1, 0),
  (100, 1511106680, 14, 612, 2, 3, 1511106681, 1, 0, 3, 0), (101, 1511106775, 14, 613, 2, 3, 1511106776, 1, 0, 2, 0),
  (102, 1511106808, 14, 614, 2, 3, 1511106809, 1, 0, 2, 0), (103, 1511106969, 14, 615, 2, 3, 1511106970, 1, 0, 1, 0),
  (104, 1511107046, 14, 616, 2, 3, 1511107047, 1, 0, 1, 0), (105, 1511107609, 14, 617, 2, 3, 1511107610, 1, 0, 1, 0),
  (106, 1511107668, 14, 618, 2, 3, 1511107694, 3, 0, 1, 0), (106, 1511107693, 14, 619, 2, 3, 1511107694, 1, 0, 2, 0),
  (107, 1511108770, 14, 620, 2, 3, 1511108771, 1, 0, 1, 0), (108, 1511108857, 14, 621, 2, 3, 1511108858, 1, 0, 1, 0),
  (109, 1511110025, 14, 622, 2, 3, 1511110025, 1, 0, 1, 0), (110, 1511110110, 14, 623, 2, 3, 1511110111, 1, 0, 1, 0),
  (111, 1511110196, 14, 624, 2, 3, 1511113202, 3, 0, 1, 0), (112, 1511110430, 14, 625, 2, 3, 1511110430, 1, 0, 1, 0),
  (113, 1511110508, 14, 626, 2, 3, 1511110508, 1, 0, 1, 0), (114, 1511113103, 14, 627, 2, 3, 1511113104, 1, 0, 1, 0),
  (111, 1511113201, 14, 628, 2, 3, 1511113202, 1, 0, 2, 0), (115, 1511121765, 14, 629, 2, 3, 1511121766, 1, 0, 1, 0),
  (116, 1511121825, 14, 630, 2, 3, 1511121826, 1, 0, 1, 0), (117, 1511122017, 14, 631, 2, 3, 1511122018, 1, 0, 1, 0),
  (118, 1511122168, 14, 632, 2, 3, 1511122169, 1, 0, 1, 0), (119, 1511122274, 14, 633, 2, 3, 1511122275, 1, 0, 1, 0),
  (120, 1511122369, 14, 634, 2, 3, 1511122370, 1, 0, 1, 0), (121, 1511122448, 14, 635, 2, 3, 1511122449, 1, 0, 1, 0),
  (122, 1511122528, 14, 636, 2, 3, 1511122529, 1, 0, 1, 0), (123, 1511122594, 14, 637, 2, 3, 1511122595, 1, 0, 1, 0),
  (124, 1511122654, 14, 638, 2, 3, 1511122654, 1, 0, 1, 0), (125, 1511122725, 14, 639, 2, 3, 1511122726, 1, 0, 1, 0),
  (126, 1511122796, 14, 640, 2, 3, 1511122797, 1, 0, 1, 0), (127, 1511122869, 14, 641, 2, 3, 1511122870, 1, 0, 1, 0);
/*!40000 ALTER TABLE `ezcontentobject_version`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezcurrencydata`
--

DROP TABLE IF EXISTS `ezcurrencydata`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezcurrencydata` (
  `auto_rate_value`   DECIMAL(10, 5) NOT NULL DEFAULT ''0.00000'',
  `code`              VARCHAR(4)     NOT NULL DEFAULT '''',
  `custom_rate_value` DECIMAL(10, 5) NOT NULL DEFAULT ''0.00000'',
  `id`                INT(11)        NOT NULL AUTO_INCREMENT,
  `locale`            VARCHAR(255)   NOT NULL DEFAULT '''',
  `rate_factor`       DECIMAL(10, 5) NOT NULL DEFAULT ''1.00000'',
  `status`            INT(11)        NOT NULL DEFAULT ''1'',
  `symbol`            VARCHAR(255)   NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`),
  KEY `ezcurrencydata_code` (`code`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezcurrencydata`
--

LOCK TABLES `ezcurrencydata` WRITE;
/*!40000 ALTER TABLE `ezcurrencydata`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezcurrencydata`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountrule`
--

DROP TABLE IF EXISTS `ezdiscountrule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountrule` (
  `id`   INT(11)      NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountrule`
--

LOCK TABLES `ezdiscountrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountrule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountrule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule`
--

DROP TABLE IF EXISTS `ezdiscountsubrule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule` (
  `discount_percent` FLOAT DEFAULT NULL,
  `discountrule_id`  INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     DEFAULT ''0'',
  `id`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     AUTO_INCREMENT,
  `limitation`       CHAR(1) DEFAULT NULL,
  `name`             VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule`
--

LOCK TABLES `ezdiscountsubrule` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezdiscountsubrule_value`
--

DROP TABLE IF EXISTS `ezdiscountsubrule_value`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezdiscountsubrule_value` (
  `discountsubrule_id` INT(11) NOT NULL DEFAULT ''0'',
  `issection`          INT(11) NOT NULL DEFAULT ''0'',
  `value`              INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`discountsubrule_id`, `value`, `issection`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezdiscountsubrule_value`
--

LOCK TABLES `ezdiscountsubrule_value` WRITE;
/*!40000 ALTER TABLE `ezdiscountsubrule_value`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezdiscountsubrule_value`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumobjectvalue`
--

DROP TABLE IF EXISTS `ezenumobjectvalue`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumobjectvalue` (
  `contentobject_attribute_id`      INT(11)      NOT NULL DEFAULT ''0'',
  `contentobject_attribute_version` INT(11)      NOT NULL DEFAULT ''0'',
  `enumelement`                     VARCHAR(255) NOT NULL DEFAULT '''',
  `enumid`                          INT(11)      NOT NULL DEFAULT ''0'',
  `enumvalue`                       VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`contentobject_attribute_id`, `contentobject_attribute_version`, `enumid`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumobjectvalue`
--

LOCK TABLES `ezenumobjectvalue` WRITE;
/*!40000 ALTER TABLE `ezenumobjectvalue`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumobjectvalue`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezenumvalue`
--

DROP TABLE IF EXISTS `ezenumvalue`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezenumvalue` (
  `contentclass_attribute_id`      INT(11)      NOT NULL DEFAULT ''0'',
  `contentclass_attribute_version` INT(11)      NOT NULL DEFAULT ''0'',
  `enumelement`                    VARCHAR(255) NOT NULL DEFAULT '''',
  `enumvalue`                      VARCHAR(255) NOT NULL DEFAULT '''',
  `id`                             INT(11)      NOT NULL AUTO_INCREMENT,
  `placement`                      INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `contentclass_attribute_id`, `contentclass_attribute_version`),
  KEY `ezenumvalue_co_cl_attr_id_co_class_att_ver` (`contentclass_attribute_id`, `contentclass_attribute_version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezenumvalue`
--

LOCK TABLES `ezenumvalue` WRITE;
/*!40000 ALTER TABLE `ezenumvalue`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezenumvalue`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezforgot_password`
--

DROP TABLE IF EXISTS `ezforgot_password`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezforgot_password` (
  `hash_key` VARCHAR(32) NOT NULL DEFAULT '''',
  `id`       INT(11)     NOT NULL AUTO_INCREMENT,
  `time`     INT(11)     NOT NULL DEFAULT ''0'',
  `user_id`  INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezforgot_password_user` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezforgot_password`
--

LOCK TABLES `ezforgot_password` WRITE;
/*!40000 ALTER TABLE `ezforgot_password`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezforgot_password`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgeneral_digest_user_settings`
--

DROP TABLE IF EXISTS `ezgeneral_digest_user_settings`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgeneral_digest_user_settings` (
  `day`            VARCHAR(255) NOT NULL DEFAULT '''',
  `digest_type`    INT(11)      NOT NULL DEFAULT ''0'',
  `id`             INT(11)      NOT NULL AUTO_INCREMENT,
  `receive_digest` INT(11)      NOT NULL DEFAULT ''0'',
  `time`           VARCHAR(255) NOT NULL DEFAULT '''',
  `user_id`        INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezgeneral_digest_user_id` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgeneral_digest_user_settings`
--

LOCK TABLES `ezgeneral_digest_user_settings` WRITE;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezgeneral_digest_user_settings`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezgmaplocation`
--

DROP TABLE IF EXISTS `ezgmaplocation`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezgmaplocation` (
  `contentobject_attribute_id` INT(11) NOT NULL DEFAULT ''0'',
  `contentobject_version`      INT(11) NOT NULL DEFAULT ''0'',
  `latitude`                   DOUBLE  NOT NULL DEFAULT ''0'',
  `longitude`                  DOUBLE  NOT NULL DEFAULT ''0'',
  `address`                    VARCHAR(150)     DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`, `contentobject_version`),
  KEY `latitude_longitude_key` (`latitude`, `longitude`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezgmaplocation`
--

LOCK TABLES `ezgmaplocation` WRITE;
/*!40000 ALTER TABLE `ezgmaplocation`
  DISABLE KEYS */;
INSERT INTO `ezgmaplocation` VALUES (193, 2, 40.711056, -73.935836, ''US, NY, 35 Meadow Street, suite 103'');
/*!40000 ALTER TABLE `ezgmaplocation`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezimagefile`
--

DROP TABLE IF EXISTS `ezimagefile`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezimagefile` (
  `contentobject_attribute_id` INT(11)  NOT NULL DEFAULT ''0'',
  `filepath`                   LONGTEXT NOT NULL,
  `id`                         INT(11)  NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`),
  KEY `ezimagefile_coid` (`contentobject_attribute_id`),
  KEY `ezimagefile_file` (`filepath`(200))
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 140
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezimagefile`
--

LOCK TABLES `ezimagefile` WRITE;
/*!40000 ALTER TABLE `ezimagefile`
  DISABLE KEYS */;
INSERT INTO `ezimagefile` VALUES (201, ''var/site/ STORAGE /images/1/0/2/0/201-1-eng - GB / CanalPlus.png'', 5),
  (201, ''var/site/ STORAGE /images/1/0/2/0/201-1-eng - GB / CanalPlus.png'', 6),
  (198, ''var/site/ STORAGE /images/8/9/1/0/198-2-eng - GB / blog.jpg'', 8),
  (191, ''var/site/ STORAGE /images/1/9/1/0/191-2-eng - GB / contact_form.jpg'', 10),
  (204, ''var/site/ STORAGE /images/4/0/2/0/204-1-eng - GB / Hootsuite.png'', 11),
  (204, ''var/site/ STORAGE /images/4/0/2/0/204-1-eng - GB / Hootsuite.png'', 12),
  (207, ''var/site/ STORAGE /images/7/0/2/0/207-1-eng - GB / Royalcanin.png'', 13),
  (207, ''var/site/ STORAGE /images/7/0/2/0/207-1-eng - GB / Royalcanin.png'', 14),
  (210, ''var/site/ STORAGE /images/0/1/2/0/210-1-eng - GB / Mondadori.png'', 15),
  (210, ''var/site/ STORAGE /images/0/1/2/0/210-1-eng - GB / Mondadori.png'', 16),
  (213, ''var/site/ STORAGE /images/3/1/2/0/213-1-eng - GB / Christian.png'', 17),
  (213, ''var/site/ STORAGE /images/3/1/2/0/213-1-eng - GB / Christian.png'', 18),
  (216, ''var/site/ STORAGE /images/6/1/2/0/216-1-eng - GB / RoadTrack.png'', 19),
  (216, ''var/site/ STORAGE /images/6/1/2/0/216-1-eng - GB / RoadTrack.png'', 20),
  (219, ''var/site/ STORAGE /images/9/1/2/0/219-1-eng - GB / FinancialTimes.png'', 21),
  (219, ''var/site/ STORAGE /images/9/1/2/0/219-1-eng - GB / FinancialTimes.png'', 22),
  (222, ''var/site/ STORAGE /images/2/2/2/0/222-1-eng - GB / DollyDimples.png'', 23),
  (222, ''var/site/ STORAGE /images/2/2/2/0/222-1-eng - GB / DollyDimples.png'', 24),
  (225, ''var/site/ STORAGE /images/5/2/2/0/225-1-eng - GB / SwissTv.png'', 25),
  (225, ''var/site/ STORAGE /images/5/2/2/0/225-1-eng - GB / SwissTv.png'', 26),
  (228, ''var/site/ STORAGE /images/8/2/2/0/228-1-eng - GB / Elle.png'', 27),
  (228, ''var/site/ STORAGE /images/8/2/2/0/228-1-eng - GB / Elle.png'', 28),
  (231, ''var/site/ STORAGE /images/1/3/2/0/231-1-eng - GB / Tecnotree.png'', 29),
  (231, ''var/site/ STORAGE /images/1/3/2/0/231-1-eng - GB / Tecnotree.png'', 30),
  (234, ''var/site/ STORAGE /images/4/3/2/0/234-1-eng - GB / Harvard.png'', 31),
  (234, ''var/site/ STORAGE /images/4/3/2/0/234-1-eng - GB / Harvard.png'', 32),
  (237, ''var/site/ STORAGE /images/7/3/2/0/237-1-eng - GB / Casden.png'', 33),
  (237, ''var/site/ STORAGE /images/7/3/2/0/237-1-eng - GB / Casden.png'', 34),
  (240, ''var/site/ STORAGE /images/0/4/2/0/240-1-eng - GB / Esa.png'', 35),
  (240, ''var/site/ STORAGE /images/0/4/2/0/240-1-eng - GB / Esa.png'', 36),
  (243, ''var/site/ STORAGE /images/3/4/2/0/243-1-eng - GB / Euranet.png'', 37),
  (243, ''var/site/ STORAGE /images/3/4/2/0/243-1-eng - GB / Euranet.png'', 38),
  (246, ''var/site/ STORAGE /images/6/4/2/0/246-1-eng - GB / Fruchthof.png'', 39),
  (246, ''var/site/ STORAGE /images/6/4/2/0/246-1-eng - GB / Fruchthof.png'', 40),
  (249, ''var/site/ STORAGE /images/9/4/2/0/249-1-eng - GB / John_Deere.png'', 41),
  (249, ''var/site/ STORAGE /images/9/4/2/0/249-1-eng - GB / John_Deere.png'', 42),
  (252, ''var/site/ STORAGE /images/2/5/2/0/252-1-eng - GB / Mazars.png'', 43),
  (252, ''var/site/ STORAGE /images/2/5/2/0/252-1-eng - GB / Mazars.png'', 44),
  (255, ''var/site/ STORAGE /images/5/5/2/0/255-1-eng - GB / Nouvelle_Rep.png'', 45),
  (255, ''var/site/ STORAGE /images/5/5/2/0/255-1-eng - GB / Nouvelle_Rep.png'', 46),
  (258, ''var/site/ STORAGE /images/8/5/2/0/258-1-eng - GB / Nuclear_security.png'', 47),
  (258, ''var/site/ STORAGE /images/8/5/2/0/258-1-eng - GB / Nuclear_security.png'', 48),
  (258, ''var/site/ STORAGE /images/8/5/2/0/258-1-eng - GB / Nuclear_security.png'', 49),
  (261, ''var/site/ STORAGE /images/1/6/2/0/261-1-eng - GB / Shera.png'', 50),
  (261, ''var/site/ STORAGE /images/1/6/2/0/261-1-eng - GB / Shera.png'', 51),
  (264, ''var/site/ STORAGE /images/4/6/2/0/264-1-eng - GB / Telekom.png'', 52),
  (264, ''var/site/ STORAGE /images/4/6/2/0/264-1-eng - GB / Telekom.png'', 53),
  (267, ''var/site/ STORAGE /images/7/6/2/0/267-1-eng - GB / Tour_Bretagne.png'', 54),
  (267, ''var/site/ STORAGE /images/7/6/2/0/267-1-eng - GB / Tour_Bretagne.png'', 55),
  (270, ''var/site/ STORAGE /images/0/7/2/0/270-1-eng - GB / Vinextase.png'', 56),
  (270, ''var/site/ STORAGE /images/0/7/2/0/270-1-eng - GB / Vinextase.png'', 57),
  (201, ''var/site/ STORAGE /images/1/0/2/0/201-1-eng - GB / CanalPlus.png'', 58),
  (204, ''var/site/ STORAGE /images/4/0/2/0/204-1-eng - GB / Hootsuite.png'', 59),
  (207, ''var/site/ STORAGE /images/7/0/2/0/207-1-eng - GB / Royalcanin.png'', 60),
  (210, ''var/site/ STORAGE /images/0/1/2/0/210-1-eng - GB / Mondadori.png'', 61),
  (213, ''var/site/ STORAGE /images/3/1/2/0/213-1-eng - GB / Christian.png'', 62),
  (213, ''var/site/ STORAGE /images/3/1/2/0/213-1-eng - GB / Christian.png'', 63),
  (216, ''var/site/ STORAGE /images/6/1/2/0/216-1-eng - GB / RoadTrack.png'', 64),
  (219, ''var/site/ STORAGE /images/9/1/2/0/219-1-eng - GB / FinancialTimes.png'', 65),
  (222, ''var/site/ STORAGE /images/2/2/2/0/222-1-eng - GB / DollyDimples.png'', 66),
  (225, ''var/site/ STORAGE /images/5/2/2/0/225-1-eng - GB / SwissTv.png'', 67),
  (228, ''var/site/ STORAGE /images/8/2/2/0/228-1-eng - GB / Elle.png'', 68),
  (231, ''var/site/ STORAGE /images/1/3/2/0/231-1-eng - GB / Tecnotree.png'', 69),
  (234, ''var/site/ STORAGE /images/4/3/2/0/234-1-eng - GB / Harvard.png'', 70),
  (237, ''var/site/ STORAGE /images/7/3/2/0/237-1-eng - GB / Casden.png'', 71),
  (240, ''var/site/ STORAGE /images/0/4/2/0/240-1-eng - GB / Esa.png'', 72),
  (243, ''var/site/ STORAGE /images/3/4/2/0/243-1-eng - GB / Euranet.png'', 73),
  (246, ''var/site/ STORAGE /images/6/4/2/0/246-1-eng - GB / Fruchthof.png'', 74),
  (249, ''var/site/ STORAGE /images/9/4/2/0/249-1-eng - GB / John_Deere.png'', 75),
  (252, ''var/site/ STORAGE /images/2/5/2/0/252-1-eng - GB / Mazars.png'', 76),
  (255, ''var/site/ STORAGE /images/5/5/2/0/255-1-eng - GB / Nouvelle_Rep.png'', 77),
  (282, ''var/site/ STORAGE /images/2/8/2/0/282-7-eng - GB / blog1.jpg'', 78),
  (187, ''var/site/ STORAGE /images/7/8/1/0/187-2-eng - GB / home.jpg'', 79),
  (282, ''var/site/ STORAGE /images/2/8/2/0/282-7-eng - GB / blog1.jpg'', 80),
  (198, ''var/site/ STORAGE /images/8/9/1/0/198-2-eng - GB / blog.jpg'', 81),
  (198, ''var/site/ STORAGE /images/8/9/1/0/198-2-eng - GB / blog.jpg'', 82),
  (198, ''var/site/ STORAGE /images/8/9/1/0/198-2-eng - GB / blog.jpg'', 83),
  (282, ''var/site/ STORAGE /images/2/8/2/0/282-7-eng - GB / blog1.jpg'', 84),
  (294, ''var/site/ STORAGE /images/4/9/2/0/294-5-eng - GB / blog2.jpg'', 85),
  (288, ''var/site/ STORAGE /images/8/8/2/0/288-8-eng - GB / blog3.jpg'', 88),
  (198, ''var/site/ STORAGE /images/8/9/1/0/198-2-eng - GB / blog.jpg'', 89),
  (187, ''var/site/ STORAGE /images/7/8/1/0/187-2-eng - GB / home.jpg'', 90),
  (187, ''var/site/ STORAGE /images/7/8/1/0/187-3-eng - GB / homebg.jpg'', 91),
  (295, ''var/site/ STORAGE /images/5/9/2/0/295-3-eng - GB / skillsbg.jpg'', 92),
  (187, ''var/site/ STORAGE /images/7/8/1/0/187-3-eng - GB / homebg.jpg'', 93),
  (295, ''var/site/ STORAGE /images/5/9/2/0/295-3-eng - GB / skillsbg.jpg'', 94),
  (296, ''var/site/ STORAGE /images/6/9/2/0/296-4-eng - GB / subscribebg.jpg'', 95),
  (297, ''var/site/ STORAGE /images/7/9/2/0/297-4-eng - GB / testimonialsbg.jpg'', 96),
  (298, ''var/site/ STORAGE /images/8/9/2/0/298-4-eng - GB / numbersbg.jpg'', 97),
  (305, ''var/site/ STORAGE /images/5/0/3/0/305-1-eng - GB / journaliste.jpg'', 98),
  (311, ''var/site/ STORAGE /images/1/1/3/0/311-1-eng - GB / journaliste.jpg'', 99),
  (315, ''var/site/ STORAGE /images/5/1/3/0/315-1-eng - GB / journaliste.jpg'', 100),
  (318, ''var/site/ STORAGE /images/8/1/3/0/318-1-eng - GB / journaliste.jpg'', 101),
  (318, ''var/site/ STORAGE /images/8/1/3/0/318-1-eng - GB / journaliste.jpg'', 102),
  (318, ''var/site/ STORAGE /images/8/1/3/0/318-1-eng - GB / journaliste.jpg'', 103),
  (322, ''var/site/ STORAGE /images/2/2/3/0/322-1-eng - GB / 655_2.jpg'', 104),
  (326, ''var/site/ STORAGE /images/6/2/3/0/326-1-eng - GB / services.jpg'', 105),
  (330, ''var/site/ STORAGE /images/0/3/3/0/330-1-eng - GB / 001.jpg'', 106),
  (334, ''var/site/ STORAGE /images/4/3/3/0/334-1-eng - GB / Kaliop_wood.jpg'', 107),
  (334, ''var/site/ STORAGE /images/4/3/3/0/334-1-eng - GB / Kaliop_wood.jpg'', 108),
  (338, ''var/site/ STORAGE /images/8/3/3/0/338-1-eng - GB / twitch1.png'', 109),
  (338, ''var/site/ STORAGE /images/8/3/3/0/338-1-eng - GB / twitch1.png'', 110),
  (338, ''var/site/ STORAGE /images/8/3/3/0/338-2-eng - GB / twitch_thumb.png'', 111),
  (341, ''var/site/ STORAGE /images/1/4/3/0/341-1-eng - GB / 006.jpg'', 112),
  (344, ''var/site/ STORAGE /images/4/4/3/0/344-1-eng - GB / 005.jpg'', 113),
  (338, ''var/site/ STORAGE /images/8/3/3/0/338-2-eng - GB / twitch_thumb.png'', 114),
  (370, ''var/site/ STORAGE /images/0/7/3/0/370-3-eng - GB / twitch1.png'', 115),
  (341, ''var/site/ STORAGE /images/1/4/3/0/341-1-eng - GB / 006.jpg'', 116),
  (371, ''var/site/ STORAGE /images/1/7/3/0/371-2-eng - GB / 006.jpg'', 117),
  (344, ''var/site/ STORAGE /images/4/4/3/0/344-1-eng - GB / 005.jpg'', 118),
  (372, ''var/site/ STORAGE /images/2/7/3/0/372-2-eng - GB / 005.jpg'', 119),
  (375, ''var/site/ STORAGE /images/5/7/3/0/375-1-eng - GB / 004.jpg'', 120),
  (376, ''var/site/ STORAGE /images/6/7/3/0/376-1-eng - GB / NeoConky.png'', 121),
  (379, ''var/site/ STORAGE /images/9/7/3/0/379-1-eng - GB / 003.jpg'', 122),
  (380, ''var/site/ STORAGE /images/0/8/3/0/380-1-eng - GB / 003.jpg'', 123),
  (383, ''var/site/ STORAGE /images/3/8/3/0/383-1-eng - GB / 002.jpg'', 124),
  (384, ''var/site/ STORAGE /images/4/8/3/0/384-1-eng - GB / 002.jpg'', 125),
  (387, ''var/site/ STORAGE /images/7/8/3/0/387-1-eng - GB / 001.jpg'', 126),
  (388, ''var/site/ STORAGE /images/8/8/3/0/388-1-eng - GB / 001.jpg'', 127),
  (387, ''var/site/ STORAGE /images/7/8/3/0/387-1-eng - GB / 001.jpg'', 128),
  (388, ''var/site/ STORAGE /images/8/8/3/0/388-1-eng - GB / 001.jpg'', 129),
  (391, ''var/site/ STORAGE /images/1/9/3/0/391-1-eng - GB / peepolls_thumb.png'', 130),
  (392, ''var/site/ STORAGE /images/2/9/3/0/392-1-eng - GB / peepolls.png'', 131),
  (395, ''var/site/ STORAGE /images/5/9/3/0/395-1-eng - GB / 007.jpg'', 132),
  (396, ''var/site/ STORAGE /images/6/9/3/0/396-1-eng - GB / Canturla1.png'', 133),
  (401, ''var/site/ STORAGE /images/1/0/4/0/401-1-eng - GB / 001.jpg'', 134),
  (405, ''var/site/ STORAGE /images/5/0/4/0/405-1-eng - GB / 002.jpg'', 135),
  (409, ''var/site/ STORAGE /images/9/0/4/0/409-1-eng - GB / AAEAAQAAAAAAAA1gAAAAJGIxYzY3OGRlLTkwYWItNDRmNi05YjRiLTkyZDc1NDI5YTNhNQ.jpg'', 136),
  (413, ''var/site/ STORAGE /images/3/1/4/0/413-1-eng - GB / AAEAAQAAAAAAAAmPAAAAJGRlY2E2ZjcyLWYxZWItNGE2MS1hNDY2LWUzM2JkMmMwYjU0Yw.jpg'', 137),
  (417, ''var/site/ STORAGE /images/7/1/4/0/417-1-eng - GB / 001.jpg'', 138),
  (405, ''var/site/ STORAGE /images/5/0/4/0/405-1-eng - GB / 002.jpg'', 139);
/*!40000 ALTER TABLE `ezimagefile`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection`
--

DROP TABLE IF EXISTS `ezinfocollection`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection` (
  `contentobject_id` INT(11) NOT NULL DEFAULT ''0'',
  `created`          INT(11) NOT NULL DEFAULT ''0'',
  `creator_id`       INT(11) NOT NULL DEFAULT ''0'',
  `id`               INT(11) NOT NULL AUTO_INCREMENT,
  `modified`         INT(11)          DEFAULT ''0'',
  `user_identifier`  VARCHAR(34)      DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_co_id_created` (`contentobject_id`, `created`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection`
--

LOCK TABLES `ezinfocollection` WRITE;
/*!40000 ALTER TABLE `ezinfocollection`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezinfocollection_attribute`
--

DROP TABLE IF EXISTS `ezinfocollection_attribute`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezinfocollection_attribute` (
  `contentclass_attribute_id`  INT(11) NOT NULL DEFAULT ''0'',
  `contentobject_attribute_id` INT(11)          DEFAULT NULL,
  `contentobject_id`           INT(11)          DEFAULT NULL,
  `data_float`                 FLOAT            DEFAULT NULL,
  `data_int`                   INT(11)          DEFAULT NULL,
  `data_text`                  LONGTEXT,
  `id`                         INT(11) NOT NULL AUTO_INCREMENT,
  `informationcollection_id`   INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezinfocollection_attr_cca_id` (`contentclass_attribute_id`),
  KEY `ezinfocollection_attr_co_id` (`contentobject_id`),
  KEY `ezinfocollection_attr_coa_id` (`contentobject_attribute_id`),
  KEY `ezinfocollection_attr_ic_id` (`informationcollection_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezinfocollection_attribute`
--

LOCK TABLES `ezinfocollection_attribute` WRITE;
/*!40000 ALTER TABLE `ezinfocollection_attribute`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezinfocollection_attribute`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group`
--

DROP TABLE IF EXISTS `ezisbn_group`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group` (
  `description`  VARCHAR(255) NOT NULL DEFAULT '''',
  `group_number` INT(11)      NOT NULL DEFAULT ''0'',
  `id`           INT(11)      NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 210
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group`
--

LOCK TABLES `ezisbn_group` WRITE;
/*!40000 ALTER TABLE `ezisbn_group`
  DISABLE KEYS */;
INSERT INTO `ezisbn_group`
VALUES (''English LANGUAGE '', 0, 1), (''English LANGUAGE '', 1, 2), (''French LANGUAGE '', 2, 3),
  (''German LANGUAGE '', 3, 4), (''Japan'', 4, 5), (''Russian Federation AND former USSR'', 5, 6), (''Iran'', 600, 7),
  (''Kazakhstan'', 601, 8), (''Indonesia'', 602, 9), (''Saudi Arabia'', 603, 10), (''Vietnam'', 604, 11),
  (''Turkey'', 605, 12), (''Romania'', 606, 13), (''Mexico'', 607, 14), (''Macedonia'', 608, 15),
  (''Lithuania'', 609, 16), (''Thailand'', 611, 17), (''Peru'', 612, 18), (''Mauritius'', 613, 19),
  (''Lebanon'', 614, 20), (''Hungary'', 615, 21), (''Thailand'', 616, 22), (''Ukraine'', 617, 23),
  (''China, People\''s Republic'', 7, 24), (''Czech Republic AND Slovakia'', 80, 25), (''India'', 81, 26),
  (''Norway'', 82, 27), (''Poland'', 83, 28), (''Spain'', 84, 29), (''Brazil'', 85, 30),
  (''Serbia AND Montenegro'', 86, 31), (''Denmark'', 87, 32), (''Italy'', 88, 33), (''Korea, Republic'', 89, 34),
  (''Netherlands'', 90, 35), (''Sweden'', 91, 36), (''International NGO Publishers AND EC Organizations'', 92, 37),
  (''India'', 93, 38), (''Netherlands'', 94, 39), (''Argentina'', 950, 40), (''Finland'', 951, 41),
  (''Finland'', 952, 42), (''Croatia'', 953, 43), (''Bulgaria'', 954, 44), (''Sri Lanka'', 955, 45),
  (''Chile'', 956, 46), (''Taiwan'', 957, 47), (''Colombia'', 958, 48), (''Cuba'', 959, 49), (''Greece'', 960, 50),
  (''Slovenia'', 961, 51), (''Hong Kong, China'', 962, 52), (''Hungary'', 963, 53), (''Iran'', 964, 54),
  (''Israel'', 965, 55), (''Ukraine'', 966, 56), (''Malaysia'', 967, 57), (''Mexico'', 968, 58),
  (''Pakistan'', 969, 59), (''Mexico'', 970, 60), (''Philippines'', 971, 61), (''Portugal'', 972, 62),
  (''Romania'', 973, 63), (''Thailand'', 974, 64), (''Turkey'', 975, 65), (''Caribbean Community'', 976, 66),
  (''Egypt'', 977, 67), (''Nigeria'', 978, 68), (''Indonesia'', 979, 69), (''Venezuela'', 980, 70),
  (''Singapore'', 981, 71), (''South Pacific'', 982, 72), (''Malaysia'', 983, 73), (''Bangladesh'', 984, 74),
  (''Belarus'', 985, 75), (''Taiwan'', 986, 76), (''Argentina'', 987, 77), (''Hong Kong, China'', 988, 78),
  (''Portugal'', 989, 79), (''Qatar'', 9927, 80), (''Albania'', 9928, 81), (''Guatemala'', 9929, 82),
  (''Costa Rica'', 9930, 83), (''Algeria'', 9931, 84), (''Lao People\''s Democratic Republic'', 9932, 85),
  (''Syria'', 9933, 86), (''Latvia'', 9934, 87), (''Iceland'', 9935, 88), (''Afghanistan'', 9936, 89),
  (''Nepal'', 9937, 90), (''Tunisia'', 9938, 91), (''Armenia'', 9939, 92), (''Montenegro'', 9940, 93),
  (''Georgia'', 9941, 94), (''Ecuador'', 9942, 95), (''Uzbekistan'', 9943, 96), (''Turkey'', 9944, 97),
  (''Dominican Republic'', 9945, 98), (''Korea, P.D.R.'', 9946, 99), (''Algeria'', 9947, 100),
  (''United Arab Emirates'', 9948, 101), (''Estonia'', 9949, 102), (''Palestine'', 9950, 103), (''Kosova'', 9951, 104),
  (''Azerbaijan'', 9952, 105), (''Lebanon'', 9953, 106), (''Morocco'', 9954, 107), (''Lithuania'', 9955, 108),
  (''Cameroon'', 9956, 109), (''Jordan'', 9957, 110), (''Bosnia AND Herzegovina'', 9958, 111), (''Libya'', 9959, 112),
  (''Saudi Arabia'', 9960, 113), (''Algeria'', 9961, 114), (''Panama'', 9962, 115), (''Cyprus'', 9963, 116),
  (''Ghana'', 9964, 117), (''Kazakhstan'', 9965, 118), (''Kenya'', 9966, 119), (''Kyrgyz Republic'', 9967, 120),
  (''Costa Rica'', 9968, 121), (''Uganda'', 9970, 122), (''Singapore'', 9971, 123), (''Peru'', 9972, 124),
  (''Tunisia'', 9973, 125), (''Uruguay'', 9974, 126), (''Moldova'', 9975, 127), (''Tanzania'', 9976, 128),
  (''Costa Rica'', 9977, 129), (''Ecuador'', 9978, 130), (''Iceland'', 9979, 131), (''Papua New Guinea'', 9980, 132),
  (''Morocco'', 9981, 133), (''Zambia'', 9982, 134), (''Gambia'', 9983, 135), (''Latvia'', 9984, 136),
  (''Estonia'', 9985, 137), (''Lithuania'', 9986, 138), (''Tanzania'', 9987, 139), (''Ghana'', 9988, 140),
  (''Macedonia'', 9989, 141), (''Bahrain'', 99901, 142), (''Gabon'', 99902, 143), (''Mauritius'', 99903, 144),
  (''Netherlands Antilles AND Aruba'', 99904, 145), (''Bolivia'', 99905, 146), (''Kuwait'', 99906, 147),
  (''Malawi'', 99908, 148), (''Malta'', 99909, 149), (''Sierra Leone'', 99910, 150), (''Lesotho'', 99911, 151),
  (''Botswana'', 99912, 152), (''Andorra'', 99913, 153), (''Suriname'', 99914, 154), (''Maldives'', 99915, 155),
  (''Namibia'', 99916, 156), (''Brunei Darussalam'', 99917, 157), (''Faroe Islands'', 99918, 158),
  (''Benin'', 99919, 159), (''Andorra'', 99920, 160), (''Qatar'', 99921, 161), (''Guatemala'', 99922, 162),
  (''El Salvador'', 99923, 163), (''Nicaragua'', 99924, 164), (''Paraguay'', 99925, 165), (''Honduras'', 99926, 166),
  (''Albania'', 99927, 167), (''Georgia'', 99928, 168), (''Mongolia'', 99929, 169), (''Armenia'', 99930, 170),
  (''Seychelles'', 99931, 171), (''Malta'', 99932, 172), (''Nepal'', 99933, 173), (''Dominican Republic'', 99934, 174),
  (''Haiti'', 99935, 175), (''Bhutan'', 99936, 176), (''Macau'', 99937, 177), (''Srpska, Republic of'', 99938, 178),
  (''Guatemala'', 99939, 179), (''Georgia'', 99940, 180), (''Armenia'', 99941, 181), (''Sudan'', 99942, 182),
  (''Albania'', 99943, 183), (''Ethiopia'', 99944, 184), (''Namibia'', 99945, 185), (''Nepal'', 99946, 186),
  (''Tajikistan'', 99947, 187), (''Eritrea'', 99948, 188), (''Mauritius'', 99949, 189), (''Cambodia'', 99950, 190),
  (''Congo'', 99951, 191), (''Mali'', 99952, 192), (''Paraguay'', 99953, 193), (''Bolivia'', 99954, 194),
  (''Srpska, Republic of'', 99955, 195), (''Albania'', 99956, 196), (''Malta'', 99957, 197), (''Bahrain'', 99958, 198),
  (''Luxembourg'', 99959, 199), (''Malawi'', 99960, 200), (''El Salvador'', 99961, 201), (''Mongolia'', 99962, 202),
  (''Cambodia'', 99963, 203), (''Nicaragua'', 99964, 204), (''Macau'', 99965, 205), (''Kuwait'', 99966, 206),
  (''Paraguay'', 99967, 207), (''Botswana'', 99968, 208), (''France'', 10, 209);
/*!40000 ALTER TABLE `ezisbn_group`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_group_range`
--

DROP TABLE IF EXISTS `ezisbn_group_range`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_group_range` (
  `from_number`  INT(11)     NOT NULL DEFAULT ''0'',
  `group_from`   VARCHAR(32) NOT NULL DEFAULT '''',
  `group_length` INT(11)     NOT NULL DEFAULT ''0'',
  `group_to`     VARCHAR(32) NOT NULL DEFAULT '''',
  `id`           INT(11)     NOT NULL AUTO_INCREMENT,
  `to_number`    INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 9
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_group_range`
--

LOCK TABLES `ezisbn_group_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_group_range`
  DISABLE KEYS */;
INSERT INTO `ezisbn_group_range`
VALUES (0, ''0'', 1, ''5'', 1, 59999), (60000, ''600'', 3, ''649'', 2, 64999), (70000, ''7'', 1, ''7'', 3, 79999),
  (80000, ''80'', 2, ''94'', 4, 94999), (95000, ''950'', 3, ''989'', 5, 98999),
  (99000, ''9900'', 4, ''9989'', 6, 99899), (99900, ''99900'', 5, ''99999'', 7, 99999),
  (10000, ''10'', 2, ''10'', 8, 10999);
/*!40000 ALTER TABLE `ezisbn_group_range`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezisbn_registrant_range`
--

DROP TABLE IF EXISTS `ezisbn_registrant_range`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezisbn_registrant_range` (
  `from_number`       INT(11)     NOT NULL DEFAULT ''0'',
  `id`                INT(11)     NOT NULL AUTO_INCREMENT,
  `isbn_group_id`     INT(11)     NOT NULL DEFAULT ''0'',
  `registrant_from`   VARCHAR(32) NOT NULL DEFAULT '''',
  `registrant_length` INT(11)     NOT NULL DEFAULT ''0'',
  `registrant_to`     VARCHAR(32) NOT NULL DEFAULT '''',
  `to_number`         INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 927
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezisbn_registrant_range`
--

LOCK TABLES `ezisbn_registrant_range` WRITE;
/*!40000 ALTER TABLE `ezisbn_registrant_range`
  DISABLE KEYS */;
INSERT INTO `ezisbn_registrant_range`
VALUES (0, 1, 1, ''00'', 2, ''19'', 19999), (20000, 2, 1, ''200'', 3, ''699'', 69999),
  (70000, 3, 1, ''7000'', 4, ''8499'', 84999), (85000, 4, 1, ''85000'', 5, ''89999'', 89999),
  (90000, 5, 1, ''900000'', 6, ''949999'', 94999), (95000, 6, 1, ''9500000'', 7, ''9999999'', 99999),
  (0, 7, 2, ''00'', 2, ''09'', 9999), (10000, 8, 2, ''100'', 3, ''399'', 39999),
  (40000, 9, 2, ''4000'', 4, ''5499'', 54999), (55000, 10, 2, ''55000'', 5, ''86979'', 86979),
  (86980, 11, 2, ''869800'', 6, ''998999'', 99899), (99900, 12, 2, ''9990000'', 7, ''9999999'', 99999),
  (0, 13, 3, ''00'', 2, ''19'', 19999), (20000, 14, 3, ''200'', 3, ''349'', 34999),
  (35000, 15, 3, ''35000'', 5, ''39999'', 39999), (40000, 16, 3, ''400'', 3, ''699'', 69999),
  (70000, 17, 3, ''7000'', 4, ''8399'', 83999), (84000, 18, 3, ''84000'', 5, ''89999'', 89999),
  (90000, 19, 3, ''900000'', 6, ''949999'', 94999), (95000, 20, 3, ''9500000'', 7, ''9999999'', 99999),
  (0, 21, 4, ''00'', 2, ''02'', 2999), (3000, 22, 4, ''030'', 3, ''033'', 3399),
  (3400, 23, 4, ''0340'', 4, ''0369'', 3699), (3700, 24, 4, ''03700'', 5, ''03999'', 3999),
  (4000, 25, 4, ''04'', 2, ''19'', 19999), (20000, 26, 4, ''200'', 3, ''699'', 69999),
  (70000, 27, 4, ''7000'', 4, ''8499'', 84999), (85000, 28, 4, ''85000'', 5, ''89999'', 89999),
  (90000, 29, 4, ''900000'', 6, ''949999'', 94999), (95000, 30, 4, ''9500000'', 7, ''9539999'', 95399),
  (95400, 31, 4, ''95400'', 5, ''96999'', 96999), (97000, 32, 4, ''9700000'', 7, ''9899999'', 98999),
  (99000, 33, 4, ''99000'', 5, ''99499'', 99499), (99500, 34, 4, ''99500'', 5, ''99999'', 99999),
  (0, 35, 5, ''00'', 2, ''19'', 19999), (20000, 36, 5, ''200'', 3, ''699'', 69999),
  (70000, 37, 5, ''7000'', 4, ''8499'', 84999), (85000, 38, 5, ''85000'', 5, ''89999'', 89999),
  (90000, 39, 5, ''900000'', 6, ''949999'', 94999), (95000, 40, 5, ''9500000'', 7, ''9999999'', 99999),
  (0, 41, 6, ''00'', 2, ''19'', 19999), (20000, 42, 6, ''200'', 3, ''420'', 42099),
  (42100, 43, 6, ''4210'', 4, ''4299'', 42999), (43000, 44, 6, ''430'', 3, ''430'', 43099),
  (43100, 45, 6, ''4310'', 4, ''4399'', 43999), (44000, 46, 6, ''440'', 3, ''440'', 44099),
  (44100, 47, 6, ''4410'', 4, ''4499'', 44999), (45000, 48, 6, ''450'', 3, ''699'', 69999),
  (70000, 49, 6, ''7000'', 4, ''8499'', 84999), (85000, 50, 6, ''85000'', 5, ''89999'', 89999),
  (90000, 51, 6, ''900000'', 6, ''909999'', 90999), (91000, 52, 6, ''91000'', 5, ''91999'', 91999),
  (92000, 53, 6, ''9200'', 4, ''9299'', 92999), (93000, 54, 6, ''93000'', 5, ''94999'', 94999),
  (95000, 55, 6, ''9500000'', 7, ''9500999'', 95009), (95010, 56, 6, ''9501'', 4, ''9799'', 97999),
  (98000, 57, 6, ''98000'', 5, ''98999'', 98999), (99000, 58, 6, ''9900000'', 7, ''9909999'', 99099),
  (99100, 59, 6, ''9910'', 4, ''9999'', 99999), (0, 60, 7, ''00'', 2, ''09'', 9999),
  (10000, 61, 7, ''100'', 3, ''499'', 49999), (50000, 62, 7, ''5000'', 4, ''8999'', 89999),
  (90000, 63, 7, ''90000'', 5, ''99999'', 99999), (0, 64, 8, ''00'', 2, ''19'', 19999),
  (20000, 65, 8, ''200'', 3, ''699'', 69999), (70000, 66, 8, ''7000'', 4, ''7999'', 79999),
  (80000, 67, 8, ''80000'', 5, ''84999'', 84999), (85000, 68, 8, ''85'', 2, ''99'', 99999),
  (0, 69, 9, ''00'', 2, ''19'', 19999), (20000, 70, 9, ''200'', 3, ''799'', 79999),
  (80000, 71, 9, ''8000'', 4, ''9499'', 94999), (95000, 72, 9, ''95000'', 5, ''99999'', 99999),
  (0, 73, 10, ''00'', 2, ''04'', 4999), (5000, 74, 10, ''05'', 2, ''49'', 49999),
  (50000, 75, 10, ''500'', 3, ''799'', 79999), (80000, 76, 10, ''8000'', 4, ''8999'', 89999),
  (90000, 77, 10, ''90000'', 5, ''99999'', 99999), (0, 78, 11, ''0'', 1, ''4'', 49999),
  (50000, 79, 11, ''50'', 2, ''89'', 89999), (90000, 80, 11, ''900'', 3, ''979'', 97999),
  (98000, 81, 11, ''9800'', 4, ''9999'', 99999), (1000, 82, 12, ''01'', 2, ''09'', 9999),
  (10000, 83, 12, ''100'', 3, ''399'', 39999), (40000, 84, 12, ''4000'', 4, ''5999'', 59999),
  (60000, 85, 12, ''60000'', 5, ''89999'', 89999), (90000, 86, 12, ''90'', 2, ''99'', 99999),
  (0, 87, 13, ''0'', 1, ''0'', 9999), (10000, 88, 13, ''10'', 2, ''49'', 49999),
  (50000, 89, 13, ''500'', 3, ''799'', 79999), (80000, 90, 13, ''8000'', 4, ''9199'', 91999),
  (92000, 91, 13, ''92000'', 5, ''99999'', 99999), (0, 92, 14, ''00'', 2, ''39'', 39999),
  (40000, 93, 14, ''400'', 3, ''749'', 74999), (75000, 94, 14, ''7500'', 4, ''9499'', 94999),
  (95000, 95, 14, ''95000'', 5, ''99999'', 99999), (0, 96, 15, ''0'', 1, ''0'', 9999),
  (10000, 97, 15, ''10'', 2, ''19'', 19999), (20000, 98, 15, ''200'', 3, ''449'', 44999),
  (45000, 99, 15, ''4500'', 4, ''6499'', 64999), (65000, 100, 15, ''65000'', 5, ''69999'', 69999),
  (70000, 101, 15, ''7'', 1, ''9'', 99999), (0, 102, 16, ''00'', 2, ''39'', 39999),
  (40000, 103, 16, ''400'', 3, ''799'', 79999), (80000, 104, 16, ''8000'', 4, ''9499'', 94999),
  (95000, 105, 16, ''95000'', 5, ''99999'', 99999), (0, 106, 18, ''00'', 2, ''29'', 29999),
  (30000, 107, 18, ''300'', 3, ''399'', 39999), (40000, 108, 18, ''4000'', 4, ''4499'', 44999),
  (45000, 109, 18, ''45000'', 5, ''49999'', 49999), (50000, 110, 18, ''50'', 2, ''99'', 99999),
  (0, 111, 19, ''0'', 1, ''9'', 99999), (0, 112, 20, ''00'', 2, ''39'', 39999),
  (40000, 113, 20, ''400'', 3, ''799'', 79999), (80000, 114, 20, ''8000'', 4, ''9499'', 94999),
  (95000, 115, 20, ''95000'', 5, ''99999'', 99999), (0, 116, 21, ''00'', 2, ''09'', 9999),
  (10000, 117, 21, ''100'', 3, ''499'', 49999), (50000, 118, 21, ''5000'', 4, ''7999'', 79999),
  (80000, 119, 21, ''80000'', 5, ''89999'', 89999), (0, 120, 22, ''00'', 2, ''19'', 19999),
  (20000, 121, 22, ''200'', 3, ''699'', 69999), (70000, 122, 22, ''7000'', 4, ''8999'', 89999),
  (90000, 123, 22, ''90000'', 5, ''99999'', 99999), (0, 124, 23, ''00'', 2, ''49'', 49999),
  (50000, 125, 23, ''500'', 3, ''699'', 69999), (70000, 126, 23, ''7000'', 4, ''8999'', 89999),
  (90000, 127, 23, ''90000'', 5, ''99999'', 99999), (0, 128, 24, ''00'', 2, ''09'', 9999),
  (10000, 129, 24, ''100'', 3, ''499'', 49999), (50000, 130, 24, ''5000'', 4, ''7999'', 79999),
  (80000, 131, 24, ''80000'', 5, ''89999'', 89999), (90000, 132, 24, ''900000'', 6, ''999999'', 99999),
  (0, 133, 25, ''00'', 2, ''19'', 19999), (20000, 134, 25, ''200'', 3, ''699'', 69999),
  (70000, 135, 25, ''7000'', 4, ''8499'', 84999), (85000, 136, 25, ''85000'', 5, ''89999'', 89999),
  (90000, 137, 25, ''900000'', 6, ''999999'', 99999), (0, 138, 26, ''00'', 2, ''19'', 19999),
  (20000, 139, 26, ''200'', 3, ''699'', 69999), (70000, 140, 26, ''7000'', 4, ''8499'', 84999),
  (85000, 141, 26, ''85000'', 5, ''89999'', 89999), (90000, 142, 26, ''900000'', 6, ''999999'', 99999),
  (0, 143, 27, ''00'', 2, ''19'', 19999), (20000, 144, 27, ''200'', 3, ''699'', 69999),
  (70000, 145, 27, ''7000'', 4, ''8999'', 89999), (90000, 146, 27, ''90000'', 5, ''98999'', 98999),
  (99000, 147, 27, ''990000'', 6, ''999999'', 99999), (0, 148, 28, ''00'', 2, ''19'', 19999),
  (20000, 149, 28, ''200'', 3, ''599'', 59999), (60000, 150, 28, ''60000'', 5, ''69999'', 69999),
  (70000, 151, 28, ''7000'', 4, ''8499'', 84999), (85000, 152, 28, ''85000'', 5, ''89999'', 89999),
  (90000, 153, 28, ''900000'', 6, ''999999'', 99999), (0, 154, 29, ''00'', 2, ''14'', 14999),
  (15000, 155, 29, ''15000'', 5, ''19999'', 19999), (20000, 156, 29, ''200'', 3, ''699'', 69999),
  (70000, 157, 29, ''7000'', 4, ''8499'', 84999), (85000, 158, 29, ''85000'', 5, ''89999'', 89999),
  (90000, 159, 29, ''9000'', 4, ''9199'', 91999), (92000, 160, 29, ''920000'', 6, ''923999'', 92399),
  (92400, 161, 29, ''92400'', 5, ''92999'', 92999), (93000, 162, 29, ''930000'', 6, ''949999'', 94999),
  (95000, 163, 29, ''95000'', 5, ''96999'', 96999), (97000, 164, 29, ''9700'', 4, ''9999'', 99999),
  (0, 165, 30, ''00'', 2, ''19'', 19999), (20000, 166, 30, ''200'', 3, ''599'', 59999),
  (60000, 167, 30, ''60000'', 5, ''69999'', 69999), (70000, 168, 30, ''7000'', 4, ''8499'', 84999),
  (85000, 169, 30, ''85000'', 5, ''89999'', 89999), (90000, 170, 30, ''900000'', 6, ''979999'', 97999),
  (98000, 171, 30, ''98000'', 5, ''99999'', 99999), (0, 172, 31, ''00'', 2, ''29'', 29999),
  (30000, 173, 31, ''300'', 3, ''599'', 59999), (60000, 174, 31, ''6000'', 4, ''7999'', 79999),
  (80000, 175, 31, ''80000'', 5, ''89999'', 89999), (90000, 176, 31, ''900000'', 6, ''999999'', 99999),
  (0, 177, 32, ''00'', 2, ''29'', 29999), (40000, 178, 32, ''400'', 3, ''649'', 64999),
  (70000, 179, 32, ''7000'', 4, ''7999'', 79999), (85000, 180, 32, ''85000'', 5, ''94999'', 94999),
  (97000, 181, 32, ''970000'', 6, ''999999'', 99999), (0, 182, 33, ''00'', 2, ''19'', 19999),
  (20000, 183, 33, ''200'', 3, ''599'', 59999), (60000, 184, 33, ''6000'', 4, ''8499'', 84999),
  (85000, 185, 33, ''85000'', 5, ''89999'', 89999), (90000, 186, 33, ''900000'', 6, ''949999'', 94999),
  (95000, 187, 33, ''95000'', 5, ''99999'', 99999), (0, 188, 34, ''00'', 2, ''24'', 24999),
  (25000, 189, 34, ''250'', 3, ''549'', 54999), (55000, 190, 34, ''5500'', 4, ''8499'', 84999),
  (85000, 191, 34, ''85000'', 5, ''94999'', 94999), (95000, 192, 34, ''950000'', 6, ''969999'', 96999),
  (97000, 193, 34, ''97000'', 5, ''98999'', 98999), (99000, 194, 34, ''990'', 3, ''999'', 99999),
  (0, 195, 35, ''00'', 2, ''19'', 19999), (20000, 196, 35, ''200'', 3, ''499'', 49999),
  (50000, 197, 35, ''5000'', 4, ''6999'', 69999), (70000, 198, 35, ''70000'', 5, ''79999'', 79999),
  (80000, 199, 35, ''800000'', 6, ''849999'', 84999), (85000, 200, 35, ''8500'', 4, ''8999'', 89999),
  (90000, 201, 35, ''90'', 2, ''90'', 90999), (91000, 202, 35, ''910000'', 6, ''939999'', 93999),
  (94000, 203, 35, ''94'', 2, ''94'', 94999), (95000, 204, 35, ''950000'', 6, ''999999'', 99999),
  (0, 205, 36, ''0'', 1, ''1'', 19999), (20000, 206, 36, ''20'', 2, ''49'', 49999),
  (50000, 207, 36, ''500'', 3, ''649'', 64999), (70000, 208, 36, ''7000'', 4, ''7999'', 79999),
  (85000, 209, 36, ''85000'', 5, ''94999'', 94999), (97000, 210, 36, ''970000'', 6, ''999999'', 99999),
  (0, 211, 37, ''0'', 1, ''5'', 59999), (60000, 212, 37, ''60'', 2, ''79'', 79999),
  (80000, 213, 37, ''800'', 3, ''899'', 89999), (90000, 214, 37, ''9000'', 4, ''9499'', 94999),
  (95000, 215, 37, ''95000'', 5, ''98999'', 98999), (99000, 216, 37, ''990000'', 6, ''999999'', 99999),
  (0, 217, 38, ''00'', 2, ''09'', 9999), (10000, 218, 38, ''100'', 3, ''499'', 49999),
  (50000, 219, 38, ''5000'', 4, ''7999'', 79999), (80000, 220, 38, ''80000'', 5, ''94999'', 94999),
  (95000, 221, 38, ''950000'', 6, ''999999'', 99999), (0, 222, 39, ''000'', 3, ''599'', 59999),
  (60000, 223, 39, ''6000'', 4, ''8999'', 89999), (90000, 224, 39, ''90000'', 5, ''99999'', 99999),
  (0, 225, 40, ''00'', 2, ''49'', 49999), (50000, 226, 40, ''500'', 3, ''899'', 89999),
  (90000, 227, 40, ''9000'', 4, ''9899'', 98999), (99000, 228, 40, ''99000'', 5, ''99999'', 99999),
  (0, 229, 41, ''0'', 1, ''1'', 19999), (20000, 230, 41, ''20'', 2, ''54'', 54999),
  (55000, 231, 41, ''550'', 3, ''889'', 88999), (89000, 232, 41, ''8900'', 4, ''9499'', 94999),
  (95000, 233, 41, ''95000'', 5, ''99999'', 99999), (0, 234, 42, ''00'', 2, ''19'', 19999),
  (20000, 235, 42, ''200'', 3, ''499'', 49999), (50000, 236, 42, ''5000'', 4, ''5999'', 59999),
  (60000, 237, 42, ''60'', 2, ''65'', 65999), (66000, 238, 42, ''6600'', 4, ''6699'', 66999),
  (67000, 239, 42, ''67000'', 5, ''69999'', 69999), (70000, 240, 42, ''7000'', 4, ''7999'', 79999),
  (80000, 241, 42, ''80'', 2, ''94'', 94999), (95000, 242, 42, ''9500'', 4, ''9899'', 98999),
  (99000, 243, 42, ''99000'', 5, ''99999'', 99999), (0, 244, 43, ''0'', 1, ''0'', 9999),
  (10000, 245, 43, ''10'', 2, ''14'', 14999), (15000, 246, 43, ''150'', 3, ''549'', 54999),
  (55000, 247, 43, ''55000'', 5, ''59999'', 59999), (60000, 248, 43, ''6000'', 4, ''9499'', 94999),
  (95000, 249, 43, ''95000'', 5, ''99999'', 99999), (0, 250, 44, ''00'', 2, ''28'', 28999),
  (29000, 251, 44, ''2900'', 4, ''2999'', 29999), (30000, 252, 44, ''300'', 3, ''799'', 79999),
  (80000, 253, 44, ''8000'', 4, ''8999'', 89999), (90000, 254, 44, ''90000'', 5, ''92999'', 92999),
  (93000, 255, 44, ''9300'', 4, ''9999'', 99999), (0, 256, 45, ''0000'', 4, ''1999'', 19999),
  (20000, 257, 45, ''20'', 2, ''49'', 49999), (50000, 258, 45, ''50000'', 5, ''54999'', 54999),
  (55000, 259, 45, ''550'', 3, ''799'', 79999), (80000, 260, 45, ''8000'', 4, ''9499'', 94999),
  (95000, 261, 45, ''95000'', 5, ''99999'', 99999), (0, 262, 46, ''00'', 2, ''19'', 19999),
  (20000, 263, 46, ''200'', 3, ''699'', 69999), (70000, 264, 46, ''7000'', 4, ''9999'', 99999),
  (0, 265, 47, ''00'', 2, ''02'', 2999), (3000, 266, 47, ''0300'', 4, ''0499'', 4999),
  (5000, 267, 47, ''05'', 2, ''19'', 19999), (20000, 268, 47, ''2000'', 4, ''2099'', 20999),
  (21000, 269, 47, ''21'', 2, ''27'', 27999), (28000, 270, 47, ''28000'', 5, ''30999'', 30999),
  (31000, 271, 47, ''31'', 2, ''43'', 43999), (44000, 272, 47, ''440'', 3, ''819'', 81999),
  (82000, 273, 47, ''8200'', 4, ''9699'', 96999), (97000, 274, 47, ''97000'', 5, ''99999'', 99999),
  (0, 275, 48, ''00'', 2, ''56'', 56999), (57000, 276, 48, ''57000'', 5, ''59999'', 59999),
  (60000, 277, 48, ''600'', 3, ''799'', 79999), (80000, 278, 48, ''8000'', 4, ''9499'', 94999),
  (95000, 279, 48, ''95000'', 5, ''99999'', 99999), (0, 280, 49, ''00'', 2, ''19'', 19999),
  (20000, 281, 49, ''200'', 3, ''699'', 69999), (70000, 282, 49, ''7000'', 4, ''8499'', 84999),
  (85000, 283, 49, ''85000'', 5, ''99999'', 99999), (0, 284, 50, ''00'', 2, ''19'', 19999),
  (20000, 285, 50, ''200'', 3, ''659'', 65999), (66000, 286, 50, ''6600'', 4, ''6899'', 68999),
  (69000, 287, 50, ''690'', 3, ''699'', 69999), (70000, 288, 50, ''7000'', 4, ''8499'', 84999),
  (85000, 289, 50, ''85000'', 5, ''92999'', 92999), (93000, 290, 50, ''93'', 2, ''93'', 93999),
  (94000, 291, 50, ''9400'', 4, ''9799'', 97999), (98000, 292, 50, ''98000'', 5, ''99999'', 99999),
  (0, 293, 51, ''00'', 2, ''19'', 19999), (20000, 294, 51, ''200'', 3, ''599'', 59999),
  (60000, 295, 51, ''6000'', 4, ''8999'', 89999), (90000, 296, 51, ''90000'', 5, ''94999'', 94999),
  (0, 297, 52, ''00'', 2, ''19'', 19999), (20000, 298, 52, ''200'', 3, ''699'', 69999),
  (70000, 299, 52, ''7000'', 4, ''8499'', 84999), (85000, 300, 52, ''85000'', 5, ''86999'', 86999),
  (87000, 301, 52, ''8700'', 4, ''8999'', 89999), (90000, 302, 52, ''900'', 3, ''999'', 99999),
  (0, 303, 53, ''00'', 2, ''19'', 19999), (20000, 304, 53, ''200'', 3, ''699'', 69999),
  (70000, 305, 53, ''7000'', 4, ''8499'', 84999), (85000, 306, 53, ''85000'', 5, ''89999'', 89999),
  (90000, 307, 53, ''9000'', 4, ''9999'', 99999), (0, 308, 54, ''00'', 2, ''14'', 14999),
  (15000, 309, 54, ''150'', 3, ''249'', 24999), (25000, 310, 54, ''2500'', 4, ''2999'', 29999),
  (30000, 311, 54, ''300'', 3, ''549'', 54999), (55000, 312, 54, ''5500'', 4, ''8999'', 89999),
  (90000, 313, 54, ''90000'', 5, ''96999'', 96999), (97000, 314, 54, ''970'', 3, ''989'', 98999),
  (99000, 315, 54, ''9900'', 4, ''9999'', 99999), (0, 316, 55, ''00'', 2, ''19'', 19999),
  (20000, 317, 55, ''200'', 3, ''599'', 59999), (70000, 318, 55, ''7000'', 4, ''7999'', 79999),
  (90000, 319, 55, ''90000'', 5, ''99999'', 99999), (0, 320, 56, ''00'', 2, ''14'', 14999),
  (15000, 321, 56, ''1500'', 4, ''1699'', 16999), (17000, 322, 56, ''170'', 3, ''199'', 19999),
  (20000, 323, 56, ''2000'', 4, ''2999'', 29999), (30000, 324, 56, ''300'', 3, ''699'', 69999),
  (70000, 325, 56, ''7000'', 4, ''8999'', 89999), (90000, 326, 56, ''90000'', 5, ''99999'', 99999),
  (0, 327, 57, ''00'', 2, ''00'', 999), (1000, 328, 57, ''0100'', 4, ''0999'', 9999),
  (10000, 329, 57, ''10000'', 5, ''19999'', 19999), (30000, 330, 57, ''300'', 3, ''499'', 49999),
  (50000, 331, 57, ''5000'', 4, ''5999'', 59999), (60000, 332, 57, ''60'', 2, ''89'', 89999),
  (90000, 333, 57, ''900'', 3, ''989'', 98999), (99000, 334, 57, ''9900'', 4, ''9989'', 99899),
  (99900, 335, 57, ''99900'', 5, ''99999'', 99999), (1000, 336, 58, ''01'', 2, ''39'', 39999),
  (40000, 337, 58, ''400'', 3, ''499'', 49999), (50000, 338, 58, ''5000'', 4, ''7999'', 79999),
  (80000, 339, 58, ''800'', 3, ''899'', 89999), (90000, 340, 58, ''9000'', 4, ''9999'', 99999),
  (0, 341, 59, ''0'', 1, ''1'', 19999), (20000, 342, 59, ''20'', 2, ''39'', 39999),
  (40000, 343, 59, ''400'', 3, ''799'', 79999), (80000, 344, 59, ''8000'', 4, ''9999'', 99999),
  (1000, 345, 60, ''01'', 2, ''59'', 59999), (60000, 346, 60, ''600'', 3, ''899'', 89999),
  (90000, 347, 60, ''9000'', 4, ''9099'', 90999), (91000, 348, 60, ''91000'', 5, ''96999'', 96999),
  (97000, 349, 60, ''9700'', 4, ''9999'', 99999), (0, 350, 61, ''000'', 3, ''015'', 1599),
  (1600, 351, 61, ''0160'', 4, ''0199'', 1999), (2000, 352, 61, ''02'', 2, ''02'', 2999),
  (3000, 353, 61, ''0300'', 4, ''0599'', 5999), (6000, 354, 61, ''06'', 2, ''09'', 9999),
  (10000, 355, 61, ''10'', 2, ''49'', 49999), (50000, 356, 61, ''500'', 3, ''849'', 84999),
  (85000, 357, 61, ''8500'', 4, ''9099'', 90999), (91000, 358, 61, ''91000'', 5, ''98999'', 98999),
  (99000, 359, 61, ''9900'', 4, ''9999'', 99999), (0, 360, 62, ''0'', 1, ''1'', 19999),
  (20000, 361, 62, ''20'', 2, ''54'', 54999), (55000, 362, 62, ''550'', 3, ''799'', 79999),
  (80000, 363, 62, ''8000'', 4, ''9499'', 94999), (95000, 364, 62, ''95000'', 5, ''99999'', 99999),
  (0, 365, 63, ''0'', 1, ''0'', 9999), (10000, 366, 63, ''100'', 3, ''169'', 16999),
  (17000, 367, 63, ''1700'', 4, ''1999'', 19999), (20000, 368, 63, ''20'', 2, ''54'', 54999),
  (55000, 369, 63, ''550'', 3, ''759'', 75999), (76000, 370, 63, ''7600'', 4, ''8499'', 84999),
  (85000, 371, 63, ''85000'', 5, ''88999'', 88999), (89000, 372, 63, ''8900'', 4, ''9499'', 94999),
  (95000, 373, 63, ''95000'', 5, ''99999'', 99999), (0, 374, 64, ''00'', 2, ''19'', 19999),
  (20000, 375, 64, ''200'', 3, ''699'', 69999), (70000, 376, 64, ''7000'', 4, ''8499'', 84999),
  (85000, 377, 64, ''85000'', 5, ''89999'', 89999), (90000, 378, 64, ''90000'', 5, ''94999'', 94999),
  (95000, 379, 64, ''9500'', 4, ''9999'', 99999), (0, 380, 65, ''00000'', 5, ''01999'', 1999),
  (2000, 381, 65, ''02'', 2, ''24'', 24999), (25000, 382, 65, ''250'', 3, ''599'', 59999),
  (60000, 383, 65, ''6000'', 4, ''9199'', 91999), (92000, 384, 65, ''92000'', 5, ''98999'', 98999),
  (99000, 385, 65, ''990'', 3, ''999'', 99999), (0, 386, 66, ''0'', 1, ''3'', 39999),
  (40000, 387, 66, ''40'', 2, ''59'', 59999), (60000, 388, 66, ''600'', 3, ''799'', 79999),
  (80000, 389, 66, ''8000'', 4, ''9499'', 94999), (95000, 390, 66, ''95000'', 5, ''99999'', 99999),
  (0, 391, 67, ''00'', 2, ''19'', 19999), (20000, 392, 67, ''200'', 3, ''499'', 49999),
  (50000, 393, 67, ''5000'', 4, ''6999'', 69999), (70000, 394, 67, ''700'', 3, ''999'', 99999),
  (0, 395, 68, ''000'', 3, ''199'', 19999), (20000, 396, 68, ''2000'', 4, ''2999'', 29999),
  (30000, 397, 68, ''30000'', 5, ''79999'', 79999), (80000, 398, 68, ''8000'', 4, ''8999'', 89999),
  (90000, 399, 68, ''900'', 3, ''999'', 99999), (0, 400, 69, ''000'', 3, ''099'', 9999),
  (10000, 401, 69, ''1000'', 4, ''1499'', 14999), (15000, 402, 69, ''15000'', 5, ''19999'', 19999),
  (20000, 403, 69, ''20'', 2, ''29'', 29999), (30000, 404, 69, ''3000'', 4, ''3999'', 39999),
  (40000, 405, 69, ''400'', 3, ''799'', 79999), (80000, 406, 69, ''8000'', 4, ''9499'', 94999),
  (95000, 407, 69, ''95000'', 5, ''99999'', 99999), (0, 408, 70, ''00'', 2, ''19'', 19999),
  (20000, 409, 70, ''200'', 3, ''599'', 59999), (60000, 410, 70, ''6000'', 4, ''9999'', 99999),
  (0, 411, 71, ''00'', 2, ''11'', 11999), (12000, 412, 71, ''1200'', 4, ''1999'', 19999),
  (20000, 413, 71, ''200'', 3, ''289'', 28999), (29000, 414, 71, ''2900'', 4, ''9999'', 99999),
  (0, 415, 72, ''00'', 2, ''09'', 9999), (10000, 416, 72, ''100'', 3, ''699'', 69999),
  (70000, 417, 72, ''70'', 2, ''89'', 89999), (90000, 418, 72, ''9000'', 4, ''9799'', 97999),
  (98000, 419, 72, ''98000'', 5, ''99999'', 99999), (0, 420, 73, ''00'', 2, ''01'', 1999),
  (2000, 421, 73, ''020'', 3, ''199'', 19999), (20000, 422, 73, ''2000'', 4, ''3999'', 39999),
  (40000, 423, 73, ''40000'', 5, ''44999'', 44999), (45000, 424, 73, ''45'', 2, ''49'', 49999),
  (50000, 425, 73, ''50'', 2, ''79'', 79999), (80000, 426, 73, ''800'', 3, ''899'', 89999),
  (90000, 427, 73, ''9000'', 4, ''9899'', 98999), (99000, 428, 73, ''99000'', 5, ''99999'', 99999),
  (0, 429, 74, ''00'', 2, ''39'', 39999), (40000, 430, 74, ''400'', 3, ''799'', 79999),
  (80000, 431, 74, ''8000'', 4, ''8999'', 89999), (90000, 432, 74, ''90000'', 5, ''99999'', 99999),
  (0, 433, 75, ''00'', 2, ''39'', 39999), (40000, 434, 75, ''400'', 3, ''599'', 59999),
  (60000, 435, 75, ''6000'', 4, ''8999'', 89999), (90000, 436, 75, ''90000'', 5, ''99999'', 99999),
  (0, 437, 76, ''00'', 2, ''11'', 11999), (12000, 438, 76, ''120'', 3, ''559'', 55999),
  (56000, 439, 76, ''5600'', 4, ''7999'', 79999), (80000, 440, 76, ''80000'', 5, ''99999'', 99999),
  (0, 441, 77, ''00'', 2, ''09'', 9999), (10000, 442, 77, ''1000'', 4, ''1999'', 19999),
  (20000, 443, 77, ''20000'', 5, ''29999'', 29999), (30000, 444, 77, ''30'', 2, ''49'', 49999),
  (50000, 445, 77, ''500'', 3, ''899'', 89999), (90000, 446, 77, ''9000'', 4, ''9499'', 94999),
  (95000, 447, 77, ''95000'', 5, ''99999'', 99999), (0, 448, 78, ''00'', 2, ''14'', 14999),
  (15000, 449, 78, ''15000'', 5, ''16999'', 16999), (17000, 450, 78, ''17000'', 5, ''19999'', 19999),
  (20000, 451, 78, ''200'', 3, ''799'', 79999), (80000, 452, 78, ''8000'', 4, ''9699'', 96999),
  (97000, 453, 78, ''97000'', 5, ''99999'', 99999), (0, 454, 79, ''0'', 1, ''1'', 19999),
  (20000, 455, 79, ''20'', 2, ''54'', 54999), (55000, 456, 79, ''550'', 3, ''799'', 79999),
  (80000, 457, 79, ''8000'', 4, ''9499'', 94999), (95000, 458, 79, ''95000'', 5, ''99999'', 99999),
  (0, 459, 80, ''00'', 2, ''09'', 9999), (10000, 460, 80, ''100'', 3, ''399'', 39999),
  (40000, 461, 80, ''4000'', 4, ''4999'', 49999), (0, 462, 81, ''00'', 2, ''09'', 9999),
  (10000, 463, 81, ''100'', 3, ''399'', 39999), (40000, 464, 81, ''4000'', 4, ''4999'', 49999),
  (0, 465, 82, ''0'', 1, ''3'', 39999), (40000, 466, 82, ''40'', 2, ''54'', 54999),
  (55000, 467, 82, ''550'', 3, ''799'', 79999), (80000, 468, 82, ''8000'', 4, ''9999'', 99999),
  (0, 469, 83, ''00'', 2, ''49'', 49999), (50000, 470, 83, ''500'', 3, ''939'', 93999),
  (94000, 471, 83, ''9400'', 4, ''9999'', 99999), (0, 472, 84, ''00'', 2, ''29'', 29999),
  (30000, 473, 84, ''300'', 3, ''899'', 89999), (90000, 474, 84, ''9000'', 4, ''9999'', 99999),
  (0, 475, 85, ''00'', 2, ''39'', 39999), (40000, 476, 85, ''400'', 3, ''849'', 84999),
  (85000, 477, 85, ''8500'', 4, ''9999'', 99999), (0, 478, 86, ''0'', 1, ''0'', 9999),
  (10000, 479, 86, ''10'', 2, ''39'', 39999), (40000, 480, 86, ''400'', 3, ''899'', 89999),
  (90000, 481, 86, ''9000'', 4, ''9999'', 99999), (0, 482, 87, ''0'', 1, ''0'', 9999),
  (10000, 483, 87, ''10'', 2, ''49'', 49999), (50000, 484, 87, ''500'', 3, ''799'', 79999),
  (80000, 485, 87, ''8000'', 4, ''9999'', 99999), (0, 486, 88, ''0'', 1, ''0'', 9999),
  (10000, 487, 88, ''10'', 2, ''39'', 39999), (40000, 488, 88, ''400'', 3, ''899'', 89999),
  (90000, 489, 88, ''9000'', 4, ''9999'', 99999), (0, 490, 89, ''0'', 1, ''1'', 19999),
  (20000, 491, 89, ''20'', 2, ''39'', 39999), (40000, 492, 89, ''400'', 3, ''799'', 79999),
  (80000, 493, 89, ''8000'', 4, ''9999'', 99999), (0, 494, 90, ''0'', 1, ''2'', 29999),
  (30000, 495, 90, ''30'', 2, ''49'', 49999), (50000, 496, 90, ''500'', 3, ''799'', 79999),
  (80000, 497, 90, ''8000'', 4, ''9999'', 99999), (0, 498, 91, ''00'', 2, ''79'', 79999),
  (80000, 499, 91, ''800'', 3, ''949'', 94999), (95000, 500, 91, ''9500'', 4, ''9999'', 99999),
  (0, 501, 92, ''0'', 1, ''4'', 49999), (50000, 502, 92, ''50'', 2, ''79'', 79999),
  (80000, 503, 92, ''800'', 3, ''899'', 89999), (90000, 504, 92, ''9000'', 4, ''9999'', 99999),
  (0, 505, 93, ''0'', 1, ''1'', 19999), (20000, 506, 93, ''20'', 2, ''49'', 49999),
  (50000, 507, 93, ''500'', 3, ''899'', 89999), (90000, 508, 93, ''9000'', 4, ''9999'', 99999),
  (0, 509, 94, ''0'', 1, ''0'', 9999), (10000, 510, 94, ''10'', 2, ''39'', 39999),
  (40000, 511, 94, ''400'', 3, ''899'', 89999), (90000, 512, 94, ''9000'', 4, ''9999'', 99999),
  (0, 513, 95, ''00'', 2, ''89'', 89999), (90000, 514, 95, ''900'', 3, ''984'', 98499),
  (98500, 515, 95, ''9850'', 4, ''9999'', 99999), (0, 516, 96, ''00'', 2, ''29'', 29999),
  (30000, 517, 96, ''300'', 3, ''399'', 39999), (40000, 518, 96, ''4000'', 4, ''9999'', 99999),
  (0, 519, 97, ''0000'', 4, ''0999'', 9999), (10000, 520, 97, ''100'', 3, ''499'', 49999),
  (50000, 521, 97, ''5000'', 4, ''5999'', 59999), (60000, 522, 97, ''60'', 2, ''69'', 69999),
  (70000, 523, 97, ''700'', 3, ''799'', 79999), (80000, 524, 97, ''80'', 2, ''89'', 89999),
  (90000, 525, 97, ''900'', 3, ''999'', 99999), (0, 526, 98, ''00'', 2, ''00'', 999),
  (1000, 527, 98, ''010'', 3, ''079'', 7999), (8000, 528, 98, ''08'', 2, ''39'', 39999),
  (40000, 529, 98, ''400'', 3, ''569'', 56999), (57000, 530, 98, ''57'', 2, ''57'', 57999),
  (58000, 531, 98, ''580'', 3, ''849'', 84999), (85000, 532, 98, ''8500'', 4, ''9999'', 99999),
  (0, 533, 99, ''0'', 1, ''1'', 19999), (20000, 534, 99, ''20'', 2, ''39'', 39999),
  (40000, 535, 99, ''400'', 3, ''899'', 89999), (90000, 536, 99, ''9000'', 4, ''9999'', 99999),
  (0, 537, 100, ''0'', 1, ''1'', 19999), (20000, 538, 100, ''20'', 2, ''79'', 79999),
  (80000, 539, 100, ''800'', 3, ''999'', 99999), (0, 540, 101, ''00'', 2, ''39'', 39999),
  (40000, 541, 101, ''400'', 3, ''849'', 84999), (85000, 542, 101, ''8500'', 4, ''9999'', 99999),
  (0, 543, 102, ''0'', 1, ''0'', 9999), (10000, 544, 102, ''10'', 2, ''39'', 39999),
  (40000, 545, 102, ''400'', 3, ''899'', 89999), (90000, 546, 102, ''9000'', 4, ''9999'', 99999),
  (0, 547, 103, ''00'', 2, ''29'', 29999), (30000, 548, 103, ''300'', 3, ''849'', 84999),
  (85000, 549, 103, ''8500'', 4, ''9999'', 99999), (0, 550, 104, ''00'', 2, ''39'', 39999),
  (40000, 551, 104, ''400'', 3, ''849'', 84999), (85000, 552, 104, ''8500'', 4, ''9999'', 99999),
  (0, 553, 105, ''0'', 1, ''1'', 19999), (20000, 554, 105, ''20'', 2, ''39'', 39999),
  (40000, 555, 105, ''400'', 3, ''799'', 79999), (80000, 556, 105, ''8000'', 4, ''9999'', 99999),
  (0, 557, 106, ''0'', 1, ''0'', 9999), (10000, 558, 106, ''10'', 2, ''39'', 39999),
  (40000, 559, 106, ''400'', 3, ''599'', 59999), (60000, 560, 106, ''60'', 2, ''89'', 89999),
  (90000, 561, 106, ''9000'', 4, ''9999'', 99999), (0, 562, 107, ''0'', 1, ''1'', 19999),
  (20000, 563, 107, ''20'', 2, ''39'', 39999), (40000, 564, 107, ''400'', 3, ''799'', 79999),
  (80000, 565, 107, ''8000'', 4, ''9999'', 99999), (0, 566, 108, ''00'', 2, ''39'', 39999),
  (40000, 567, 108, ''400'', 3, ''929'', 92999), (93000, 568, 108, ''9300'', 4, ''9999'', 99999),
  (0, 569, 109, ''0'', 1, ''0'', 9999), (10000, 570, 109, ''10'', 2, ''39'', 39999),
  (40000, 571, 109, ''400'', 3, ''899'', 89999), (90000, 572, 109, ''9000'', 4, ''9999'', 99999),
  (0, 573, 110, ''00'', 2, ''39'', 39999), (40000, 574, 110, ''400'', 3, ''699'', 69999),
  (70000, 575, 110, ''70'', 2, ''84'', 84999), (85000, 576, 110, ''8500'', 4, ''8799'', 87999),
  (88000, 577, 110, ''88'', 2, ''99'', 99999), (0, 578, 111, ''0'', 1, ''0'', 9999),
  (10000, 579, 111, ''10'', 2, ''18'', 18999), (19000, 580, 111, ''1900'', 4, ''1999'', 19999),
  (20000, 581, 111, ''20'', 2, ''49'', 49999), (50000, 582, 111, ''500'', 3, ''899'', 89999),
  (90000, 583, 111, ''9000'', 4, ''9999'', 99999), (0, 584, 112, ''0'', 1, ''1'', 19999),
  (20000, 585, 112, ''20'', 2, ''79'', 79999), (80000, 586, 112, ''800'', 3, ''949'', 94999),
  (95000, 587, 112, ''9500'', 4, ''9999'', 99999), (0, 588, 113, ''00'', 2, ''59'', 59999),
  (60000, 589, 113, ''600'', 3, ''899'', 89999), (90000, 590, 113, ''9000'', 4, ''9999'', 99999),
  (0, 591, 114, ''0'', 1, ''2'', 29999), (30000, 592, 114, ''30'', 2, ''69'', 69999),
  (70000, 593, 114, ''700'', 3, ''949'', 94999), (95000, 594, 114, ''9500'', 4, ''9999'', 99999),
  (0, 595, 115, ''00'', 2, ''54'', 54999), (55000, 596, 115, ''5500'', 4, ''5599'', 55999),
  (56000, 597, 115, ''56'', 2, ''59'', 59999), (60000, 598, 115, ''600'', 3, ''849'', 84999),
  (85000, 599, 115, ''8500'', 4, ''9999'', 99999), (0, 600, 116, ''0'', 1, ''2'', 29999),
  (30000, 601, 116, ''30'', 2, ''54'', 54999), (55000, 602, 116, ''550'', 3, ''734'', 73499),
  (73500, 603, 116, ''7350'', 4, ''7499'', 74999), (75000, 604, 116, ''7500'', 4, ''9999'', 99999),
  (0, 605, 117, ''0'', 1, ''6'', 69999), (70000, 606, 117, ''70'', 2, ''94'', 94999),
  (95000, 607, 117, ''950'', 3, ''999'', 99999), (0, 608, 118, ''00'', 2, ''39'', 39999),
  (40000, 609, 118, ''400'', 3, ''899'', 89999), (90000, 610, 118, ''9000'', 4, ''9999'', 99999),
  (0, 611, 119, ''000'', 3, ''149'', 14999), (15000, 612, 119, ''1500'', 4, ''1999'', 19999),
  (20000, 613, 119, ''20'', 2, ''69'', 69999), (70000, 614, 119, ''7000'', 4, ''7499'', 74999),
  (75000, 615, 119, ''750'', 3, ''959'', 95999), (96000, 616, 119, ''9600'', 4, ''9999'', 99999),
  (0, 617, 120, ''00'', 2, ''39'', 39999), (40000, 618, 120, ''400'', 3, ''899'', 89999),
  (90000, 619, 120, ''9000'', 4, ''9999'', 99999), (0, 620, 121, ''00'', 2, ''49'', 49999),
  (50000, 621, 121, ''500'', 3, ''939'', 93999), (94000, 622, 121, ''9400'', 4, ''9999'', 99999),
  (0, 623, 122, ''00'', 2, ''39'', 39999), (40000, 624, 122, ''400'', 3, ''899'', 89999),
  (90000, 625, 122, ''9000'', 4, ''9999'', 99999), (0, 626, 123, ''0'', 1, ''5'', 59999),
  (60000, 627, 123, ''60'', 2, ''89'', 89999), (90000, 628, 123, ''900'', 3, ''989'', 98999),
  (99000, 629, 123, ''9900'', 4, ''9999'', 99999), (0, 630, 124, ''00'', 2, ''09'', 9999),
  (10000, 631, 124, ''1'', 1, ''1'', 19999), (20000, 632, 124, ''200'', 3, ''249'', 24999),
  (25000, 633, 124, ''2500'', 4, ''2999'', 29999), (30000, 634, 124, ''30'', 2, ''59'', 59999),
  (60000, 635, 124, ''600'', 3, ''899'', 89999), (90000, 636, 124, ''9000'', 4, ''9999'', 99999),
  (0, 637, 125, ''00'', 2, ''05'', 5999), (6000, 638, 125, ''060'', 3, ''089'', 8999),
  (9000, 639, 125, ''0900'', 4, ''0999'', 9999), (10000, 640, 125, ''10'', 2, ''69'', 69999),
  (70000, 641, 125, ''700'', 3, ''969'', 96999), (97000, 642, 125, ''9700'', 4, ''9999'', 99999),
  (0, 643, 126, ''0'', 1, ''2'', 29999), (30000, 644, 126, ''30'', 2, ''54'', 54999),
  (55000, 645, 126, ''550'', 3, ''749'', 74999), (75000, 646, 126, ''7500'', 4, ''9499'', 94999),
  (95000, 647, 126, ''95'', 2, ''99'', 99999), (0, 648, 127, ''0'', 1, ''0'', 9999),
  (10000, 649, 127, ''100'', 3, ''399'', 39999), (40000, 650, 127, ''4000'', 4, ''4499'', 44999),
  (45000, 651, 127, ''45'', 2, ''89'', 89999), (90000, 652, 127, ''900'', 3, ''949'', 94999),
  (95000, 653, 127, ''9500'', 4, ''9999'', 99999), (0, 654, 128, ''0'', 1, ''5'', 59999),
  (60000, 655, 128, ''60'', 2, ''89'', 89999), (90000, 656, 128, ''900'', 3, ''989'', 98999),
  (99000, 657, 128, ''9900'', 4, ''9999'', 99999), (0, 658, 129, ''00'', 2, ''89'', 89999),
  (90000, 659, 129, ''900'', 3, ''989'', 98999), (99000, 660, 129, ''9900'', 4, ''9999'', 99999),
  (0, 661, 130, ''00'', 2, ''29'', 29999), (30000, 662, 130, ''300'', 3, ''399'', 39999),
  (40000, 663, 130, ''40'', 2, ''94'', 94999), (95000, 664, 130, ''950'', 3, ''989'', 98999),
  (99000, 665, 130, ''9900'', 4, ''9999'', 99999), (0, 666, 131, ''0'', 1, ''4'', 49999),
  (50000, 667, 131, ''50'', 2, ''64'', 64999), (65000, 668, 131, ''650'', 3, ''659'', 65999),
  (66000, 669, 131, ''66'', 2, ''75'', 75999), (76000, 670, 131, ''760'', 3, ''899'', 89999),
  (90000, 671, 131, ''9000'', 4, ''9999'', 99999), (0, 672, 132, ''0'', 1, ''3'', 39999),
  (40000, 673, 132, ''40'', 2, ''89'', 89999), (90000, 674, 132, ''900'', 3, ''989'', 98999),
  (99000, 675, 132, ''9900'', 4, ''9999'', 99999), (0, 676, 133, ''00'', 2, ''09'', 9999),
  (10000, 677, 133, ''100'', 3, ''159'', 15999), (16000, 678, 133, ''1600'', 4, ''1999'', 19999),
  (20000, 679, 133, ''20'', 2, ''79'', 79999), (80000, 680, 133, ''800'', 3, ''949'', 94999),
  (95000, 681, 133, ''9500'', 4, ''9999'', 99999), (0, 682, 134, ''00'', 2, ''79'', 79999),
  (80000, 683, 134, ''800'', 3, ''989'', 98999), (99000, 684, 134, ''9900'', 4, ''9999'', 99999),
  (80000, 685, 135, ''80'', 2, ''94'', 94999), (95000, 686, 135, ''950'', 3, ''989'', 98999),
  (99000, 687, 135, ''9900'', 4, ''9999'', 99999), (0, 688, 136, ''00'', 2, ''49'', 49999),
  (50000, 689, 136, ''500'', 3, ''899'', 89999), (90000, 690, 136, ''9000'', 4, ''9999'', 99999),
  (0, 691, 137, ''0'', 1, ''4'', 49999), (50000, 692, 137, ''50'', 2, ''79'', 79999),
  (80000, 693, 137, ''800'', 3, ''899'', 89999), (90000, 694, 137, ''9000'', 4, ''9999'', 99999),
  (0, 695, 138, ''00'', 2, ''39'', 39999), (40000, 696, 138, ''400'', 3, ''899'', 89999),
  (90000, 697, 138, ''9000'', 4, ''9399'', 93999), (94000, 698, 138, ''940'', 3, ''969'', 96999),
  (97000, 699, 138, ''97'', 2, ''99'', 99999), (0, 700, 139, ''00'', 2, ''39'', 39999),
  (40000, 701, 139, ''400'', 3, ''879'', 87999), (88000, 702, 139, ''8800'', 4, ''9999'', 99999),
  (0, 703, 140, ''0'', 1, ''2'', 29999), (30000, 704, 140, ''30'', 2, ''54'', 54999),
  (55000, 705, 140, ''550'', 3, ''749'', 74999), (75000, 706, 140, ''7500'', 4, ''9999'', 99999),
  (0, 707, 141, ''0'', 1, ''0'', 9999), (10000, 708, 141, ''100'', 3, ''199'', 19999),
  (20000, 709, 141, ''2000'', 4, ''2999'', 29999), (30000, 710, 141, ''30'', 2, ''59'', 59999),
  (60000, 711, 141, ''600'', 3, ''949'', 94999), (95000, 712, 141, ''9500'', 4, ''9999'', 99999),
  (0, 713, 142, ''00'', 2, ''49'', 49999), (50000, 714, 142, ''500'', 3, ''799'', 79999),
  (80000, 715, 142, ''80'', 2, ''99'', 99999), (0, 716, 144, ''0'', 1, ''1'', 19999),
  (20000, 717, 144, ''20'', 2, ''89'', 89999), (90000, 718, 144, ''900'', 3, ''999'', 99999),
  (0, 719, 145, ''0'', 1, ''5'', 59999), (60000, 720, 145, ''60'', 2, ''89'', 89999),
  (90000, 721, 145, ''900'', 3, ''999'', 99999), (0, 722, 146, ''0'', 1, ''3'', 39999),
  (40000, 723, 146, ''40'', 2, ''79'', 79999), (80000, 724, 146, ''800'', 3, ''999'', 99999),
  (0, 725, 147, ''0'', 1, ''2'', 29999), (30000, 726, 147, ''30'', 2, ''59'', 59999),
  (60000, 727, 147, ''600'', 3, ''699'', 69999), (70000, 728, 147, ''70'', 2, ''89'', 89999),
  (90000, 729, 147, ''90'', 2, ''94'', 94999), (95000, 730, 147, ''950'', 3, ''999'', 99999),
  (0, 731, 148, ''0'', 1, ''0'', 9999), (10000, 732, 148, ''10'', 2, ''89'', 89999),
  (90000, 733, 148, ''900'', 3, ''999'', 99999), (0, 734, 149, ''0'', 1, ''3'', 39999),
  (40000, 735, 149, ''40'', 2, ''94'', 94999), (95000, 736, 149, ''950'', 3, ''999'', 99999),
  (0, 737, 150, ''0'', 1, ''2'', 29999), (30000, 738, 150, ''30'', 2, ''89'', 89999),
  (90000, 739, 150, ''900'', 3, ''999'', 99999), (0, 740, 151, ''00'', 2, ''59'', 59999),
  (60000, 741, 151, ''600'', 3, ''999'', 99999), (0, 742, 152, ''0'', 1, ''3'', 39999),
  (40000, 743, 152, ''400'', 3, ''599'', 59999), (60000, 744, 152, ''60'', 2, ''89'', 89999),
  (90000, 745, 152, ''900'', 3, ''999'', 99999), (0, 746, 153, ''0'', 1, ''2'', 29999),
  (30000, 747, 153, ''30'', 2, ''35'', 35999), (60000, 748, 153, ''600'', 3, ''604'', 60499),
  (0, 749, 154, ''0'', 1, ''4'', 49999), (50000, 750, 154, ''50'', 2, ''89'', 89999),
  (90000, 751, 154, ''900'', 3, ''999'', 99999), (0, 752, 155, ''0'', 1, ''4'', 49999),
  (50000, 753, 155, ''50'', 2, ''79'', 79999), (80000, 754, 155, ''800'', 3, ''999'', 99999),
  (0, 755, 156, ''0'', 1, ''2'', 29999), (30000, 756, 156, ''30'', 2, ''69'', 69999),
  (70000, 757, 156, ''700'', 3, ''999'', 99999), (0, 758, 157, ''0'', 1, ''2'', 29999),
  (30000, 759, 157, ''30'', 2, ''89'', 89999), (90000, 760, 157, ''900'', 3, ''999'', 99999),
  (0, 761, 158, ''0'', 1, ''3'', 39999), (40000, 762, 158, ''40'', 2, ''79'', 79999),
  (80000, 763, 158, ''800'', 3, ''999'', 99999), (0, 764, 159, ''0'', 1, ''2'', 29999),
  (30000, 765, 159, ''300'', 3, ''399'', 39999), (40000, 766, 159, ''40'', 2, ''69'', 69999),
  (90000, 767, 159, ''900'', 3, ''999'', 99999), (0, 768, 160, ''0'', 1, ''4'', 49999),
  (50000, 769, 160, ''50'', 2, ''89'', 89999), (90000, 770, 160, ''900'', 3, ''999'', 99999),
  (0, 771, 161, ''0'', 1, ''1'', 19999), (20000, 772, 161, ''20'', 2, ''69'', 69999),
  (70000, 773, 161, ''700'', 3, ''799'', 79999), (80000, 774, 161, ''8'', 1, ''8'', 89999),
  (90000, 775, 161, ''90'', 2, ''99'', 99999), (0, 776, 162, ''0'', 1, ''3'', 39999),
  (40000, 777, 162, ''40'', 2, ''69'', 69999), (70000, 778, 162, ''700'', 3, ''999'', 99999),
  (0, 779, 163, ''0'', 1, ''1'', 19999), (20000, 780, 163, ''20'', 2, ''79'', 79999),
  (80000, 781, 163, ''800'', 3, ''999'', 99999), (0, 782, 164, ''0'', 1, ''1'', 19999),
  (20000, 783, 164, ''20'', 2, ''79'', 79999), (80000, 784, 164, ''800'', 3, ''999'', 99999),
  (0, 785, 165, ''0'', 1, ''3'', 39999), (40000, 786, 165, ''40'', 2, ''79'', 79999),
  (80000, 787, 165, ''800'', 3, ''999'', 99999), (0, 788, 166, ''0'', 1, ''0'', 9999),
  (10000, 789, 166, ''10'', 2, ''59'', 59999), (60000, 790, 166, ''600'', 3, ''999'', 99999),
  (0, 791, 167, ''0'', 1, ''2'', 29999), (30000, 792, 167, ''30'', 2, ''59'', 59999),
  (60000, 793, 167, ''600'', 3, ''999'', 99999), (0, 794, 168, ''0'', 1, ''0'', 9999),
  (10000, 795, 168, ''10'', 2, ''79'', 79999), (80000, 796, 168, ''800'', 3, ''999'', 99999),
  (0, 797, 169, ''0'', 1, ''4'', 49999), (50000, 798, 169, ''50'', 2, ''79'', 79999),
  (80000, 799, 169, ''800'', 3, ''999'', 99999), (0, 800, 170, ''0'', 1, ''4'', 49999),
  (50000, 801, 170, ''50'', 2, ''79'', 79999), (80000, 802, 170, ''800'', 3, ''999'', 99999),
  (0, 803, 171, ''0'', 1, ''4'', 49999), (50000, 804, 171, ''50'', 2, ''79'', 79999),
  (80000, 805, 171, ''800'', 3, ''999'', 99999), (0, 806, 172, ''0'', 1, ''0'', 9999),
  (10000, 807, 172, ''10'', 2, ''59'', 59999), (60000, 808, 172, ''600'', 3, ''699'', 69999),
  (70000, 809, 172, ''7'', 1, ''7'', 79999), (80000, 810, 172, ''80'', 2, ''99'', 99999),
  (0, 811, 173, ''0'', 1, ''2'', 29999), (30000, 812, 173, ''30'', 2, ''59'', 59999),
  (60000, 813, 173, ''600'', 3, ''999'', 99999), (0, 814, 174, ''0'', 1, ''1'', 19999),
  (20000, 815, 174, ''20'', 2, ''79'', 79999), (80000, 816, 174, ''800'', 3, ''999'', 99999),
  (0, 817, 175, ''0'', 1, ''2'', 29999), (30000, 818, 175, ''30'', 2, ''59'', 59999),
  (60000, 819, 175, ''600'', 3, ''699'', 69999), (70000, 820, 175, ''7'', 1, ''8'', 89999),
  (90000, 821, 175, ''90'', 2, ''99'', 99999), (0, 822, 176, ''0'', 1, ''0'', 9999),
  (10000, 823, 176, ''10'', 2, ''59'', 59999), (60000, 824, 176, ''600'', 3, ''999'', 99999),
  (0, 825, 177, ''0'', 1, ''1'', 19999), (20000, 826, 177, ''20'', 2, ''59'', 59999),
  (60000, 827, 177, ''600'', 3, ''999'', 99999), (0, 828, 178, ''0'', 1, ''1'', 19999),
  (20000, 829, 178, ''20'', 2, ''59'', 59999), (60000, 830, 178, ''600'', 3, ''899'', 89999),
  (90000, 831, 178, ''90'', 2, ''99'', 99999), (0, 832, 179, ''0'', 1, ''5'', 59999),
  (60000, 833, 179, ''60'', 2, ''89'', 89999), (90000, 834, 179, ''900'', 3, ''999'', 99999),
  (0, 835, 180, ''0'', 1, ''0'', 9999), (10000, 836, 180, ''10'', 2, ''69'', 69999),
  (70000, 837, 180, ''700'', 3, ''999'', 99999), (0, 838, 181, ''0'', 1, ''2'', 29999),
  (30000, 839, 181, ''30'', 2, ''79'', 79999), (80000, 840, 181, ''800'', 3, ''999'', 99999),
  (0, 841, 182, ''0'', 1, ''4'', 49999), (50000, 842, 182, ''50'', 2, ''79'', 79999),
  (80000, 843, 182, ''800'', 3, ''999'', 99999), (0, 844, 183, ''0'', 1, ''2'', 29999),
  (30000, 845, 183, ''30'', 2, ''59'', 59999), (60000, 846, 183, ''600'', 3, ''999'', 99999),
  (0, 847, 184, ''0'', 1, ''4'', 49999), (50000, 848, 184, ''50'', 2, ''79'', 79999),
  (80000, 849, 184, ''800'', 3, ''999'', 99999), (0, 850, 185, ''0'', 1, ''5'', 59999),
  (60000, 851, 185, ''60'', 2, ''89'', 89999), (90000, 852, 185, ''900'', 3, ''999'', 99999),
  (0, 853, 186, ''0'', 1, ''2'', 29999), (30000, 854, 186, ''30'', 2, ''59'', 59999),
  (60000, 855, 186, ''600'', 3, ''999'', 99999), (0, 856, 187, ''0'', 1, ''2'', 29999),
  (30000, 857, 187, ''30'', 2, ''69'', 69999), (70000, 858, 187, ''700'', 3, ''999'', 99999),
  (0, 859, 188, ''0'', 1, ''4'', 49999), (50000, 860, 188, ''50'', 2, ''79'', 79999),
  (80000, 861, 188, ''800'', 3, ''999'', 99999), (0, 862, 189, ''0'', 1, ''1'', 19999),
  (20000, 863, 189, ''20'', 2, ''89'', 89999), (90000, 864, 189, ''900'', 3, ''999'', 99999),
  (0, 865, 190, ''0'', 1, ''4'', 49999), (50000, 866, 190, ''50'', 2, ''79'', 79999),
  (80000, 867, 190, ''800'', 3, ''999'', 99999), (0, 868, 192, ''0'', 1, ''4'', 49999),
  (50000, 869, 192, ''50'', 2, ''79'', 79999), (80000, 870, 192, ''800'', 3, ''999'', 99999),
  (0, 871, 193, ''0'', 1, ''2'', 29999), (30000, 872, 193, ''30'', 2, ''79'', 79999),
  (80000, 873, 193, ''800'', 3, ''939'', 93999), (94000, 874, 193, ''94'', 2, ''99'', 99999),
  (0, 875, 194, ''0'', 1, ''2'', 29999), (30000, 876, 194, ''30'', 2, ''69'', 69999),
  (70000, 877, 194, ''700'', 3, ''999'', 99999), (0, 878, 195, ''0'', 1, ''1'', 19999),
  (20000, 879, 195, ''20'', 2, ''59'', 59999), (60000, 880, 195, ''600'', 3, ''799'', 79999),
  (80000, 881, 195, ''80'', 2, ''89'', 89999), (90000, 882, 195, ''90'', 2, ''99'', 99999),
  (0, 883, 196, ''00'', 2, ''59'', 59999), (60000, 884, 196, ''600'', 3, ''859'', 85999),
  (86000, 885, 196, ''86'', 2, ''99'', 99999), (0, 886, 197, ''0'', 1, ''1'', 19999),
  (20000, 887, 197, ''20'', 2, ''79'', 79999), (80000, 888, 197, ''800'', 3, ''999'', 99999),
  (0, 889, 198, ''0'', 1, ''4'', 49999), (50000, 890, 198, ''50'', 2, ''94'', 94999),
  (95000, 891, 198, ''950'', 3, ''999'', 99999), (0, 892, 199, ''0'', 1, ''2'', 29999),
  (30000, 893, 199, ''30'', 2, ''59'', 59999), (60000, 894, 199, ''600'', 3, ''999'', 99999),
  (0, 895, 200, ''0'', 1, ''0'', 9999), (10000, 896, 200, ''10'', 2, ''94'', 94999),
  (95000, 897, 200, ''950'', 3, ''999'', 99999), (0, 898, 201, ''0'', 1, ''3'', 39999),
  (40000, 899, 201, ''40'', 2, ''89'', 89999), (90000, 900, 201, ''900'', 3, ''999'', 99999),
  (0, 901, 202, ''0'', 1, ''4'', 49999), (50000, 902, 202, ''50'', 2, ''79'', 79999),
  (80000, 903, 202, ''800'', 3, ''999'', 99999), (0, 904, 203, ''00'', 2, ''49'', 49999),
  (50000, 905, 203, ''500'', 3, ''999'', 99999), (0, 906, 204, ''0'', 1, ''1'', 19999),
  (20000, 907, 204, ''20'', 2, ''79'', 79999), (80000, 908, 204, ''800'', 3, ''999'', 99999),
  (0, 909, 205, ''0'', 1, ''3'', 39999), (40000, 910, 205, ''40'', 2, ''79'', 79999),
  (80000, 911, 205, ''800'', 3, ''999'', 99999), (0, 912, 206, ''0'', 1, ''2'', 29999),
  (30000, 913, 206, ''30'', 2, ''69'', 69999), (70000, 914, 206, ''700'', 3, ''799'', 79999),
  (0, 915, 207, ''0'', 1, ''1'', 19999), (20000, 916, 207, ''20'', 2, ''59'', 59999),
  (60000, 917, 207, ''600'', 3, ''899'', 89999), (0, 918, 208, ''0'', 1, ''3'', 39999),
  (40000, 919, 208, ''400'', 3, ''599'', 59999), (60000, 920, 208, ''60'', 2, ''89'', 89999),
  (90000, 921, 208, ''900'', 3, ''999'', 99999), (0, 922, 209, ''00'', 2, ''19'', 19999),
  (20000, 923, 209, ''200'', 3, ''699'', 69999), (70000, 924, 209, ''7000'', 4, ''8999'', 89999),
  (90000, 925, 209, ''90000'', 5, ''97599'', 97599), (97600, 926, 209, ''976000'', 6, ''999999'', 99999);
/*!40000 ALTER TABLE `ezisbn_registrant_range`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword`
--

DROP TABLE IF EXISTS `ezkeyword`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword` (
  `class_id` INT(11) NOT NULL DEFAULT ''0'',
  `id`       INT(11) NOT NULL AUTO_INCREMENT,
  `keyword`  VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezkeyword_keyword` (`keyword`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword`
--

LOCK TABLES `ezkeyword` WRITE;
/*!40000 ALTER TABLE `ezkeyword`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezkeyword_attribute_link`
--

DROP TABLE IF EXISTS `ezkeyword_attribute_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezkeyword_attribute_link` (
  `id`                 INT(11) NOT NULL AUTO_INCREMENT,
  `keyword_id`         INT(11) NOT NULL DEFAULT ''0'',
  `objectattribute_id` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezkeyword_attr_link_kid_oaid` (`keyword_id`, `objectattribute_id`),
  KEY `ezkeyword_attr_link_oaid` (`objectattribute_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezkeyword_attribute_link`
--

LOCK TABLES `ezkeyword_attribute_link` WRITE;
/*!40000 ALTER TABLE `ezkeyword_attribute_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezkeyword_attribute_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_block`
--

DROP TABLE IF EXISTS `ezm_block`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_block` (
  `id`                CHAR(32)         NOT NULL,
  `zone_id`           CHAR(32)         NOT NULL,
  `name`              VARCHAR(255)     DEFAULT NULL,
  `node_id`           INT(10) UNSIGNED NOT NULL,
  `overflow_id`       CHAR(32)         DEFAULT NULL,
  `last_update`       INT(10) UNSIGNED DEFAULT ''0'',
  `block_type`        VARCHAR(255)     DEFAULT NULL,
  `fetch_params`      LONGTEXT,
  `rotation_type`     INT(10) UNSIGNED DEFAULT NULL,
  `rotation_interval` INT(10) UNSIGNED DEFAULT NULL,
  `is_removed`        INT(2) UNSIGNED  DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezm_block__is_removed` (`is_removed`),
  KEY `ezm_block__node_id` (`node_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_block`
--

LOCK TABLES `ezm_block` WRITE;
/*!40000 ALTER TABLE `ezm_block`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_block`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezm_pool`
--

DROP TABLE IF EXISTS `ezm_pool`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezm_pool` (
  `block_id`       CHAR(32)         NOT NULL,
  `object_id`      INT(10) UNSIGNED NOT NULL,
  `node_id`        INT(10) UNSIGNED NOT NULL,
  `priority`       INT(10) UNSIGNED DEFAULT ''0'',
  `ts_publication` INT(11)          DEFAULT ''0'',
  `ts_visible`     INT(10) UNSIGNED DEFAULT ''0'',
  `ts_hidden`      INT(10) UNSIGNED DEFAULT ''0'',
  `rotation_until` INT(10) UNSIGNED DEFAULT ''0'',
  `moved_to`       CHAR(32)         DEFAULT NULL,
  PRIMARY KEY (`block_id`, `object_id`),
  KEY `ezm_pool__block_id__ts_publication__priority` (`block_id`, `ts_publication`, `priority`),
  KEY `ezm_pool__block_id__ts_visible` (`block_id`, `ts_visible`),
  KEY `ezm_pool__block_id__ts_hidden` (`block_id`, `ts_hidden`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezm_pool`
--

LOCK TABLES `ezm_pool` WRITE;
/*!40000 ALTER TABLE `ezm_pool`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezm_pool`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmedia`
--

DROP TABLE IF EXISTS `ezmedia`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmedia` (
  `contentobject_attribute_id` INT(11)      NOT NULL DEFAULT ''0'',
  `controls`                   VARCHAR(50)           DEFAULT NULL,
  `filename`                   VARCHAR(255) NOT NULL DEFAULT '''',
  `has_controller`             INT(11)               DEFAULT ''0'',
  `height`                     INT(11)               DEFAULT NULL,
  `is_autoplay`                INT(11)               DEFAULT ''0'',
  `is_loop`                    INT(11)               DEFAULT ''0'',
  `mime_type`                  VARCHAR(50)  NOT NULL DEFAULT '''',
  `original_filename`          VARCHAR(255) NOT NULL DEFAULT '''',
  `pluginspage`                VARCHAR(255)          DEFAULT NULL,
  `quality`                    VARCHAR(50)           DEFAULT NULL,
  `version`                    INT(11)      NOT NULL DEFAULT ''0'',
  `width`                      INT(11)               DEFAULT NULL,
  PRIMARY KEY (`contentobject_attribute_id`, `version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmedia`
--

LOCK TABLES `ezmedia` WRITE;
/*!40000 ALTER TABLE `ezmedia`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmedia`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmessage`
--

DROP TABLE IF EXISTS `ezmessage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmessage` (
  `body`                LONGTEXT,
  `destination_address` VARCHAR(50)  NOT NULL DEFAULT '''',
  `id`                  INT(11)      NOT NULL AUTO_INCREMENT,
  `is_sent`             INT(11)      NOT NULL DEFAULT ''0'',
  `send_method`         VARCHAR(50)  NOT NULL DEFAULT '''',
  `send_time`           VARCHAR(50)  NOT NULL DEFAULT '''',
  `send_weekday`        VARCHAR(50)  NOT NULL DEFAULT '''',
  `title`               VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmessage`
--

LOCK TABLES `ezmessage` WRITE;
/*!40000 ALTER TABLE `ezmessage`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmessage`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmodule_run`
--

DROP TABLE IF EXISTS `ezmodule_run`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmodule_run` (
  `function_name`       VARCHAR(255)     DEFAULT NULL,
  `id`                  INT(11) NOT NULL AUTO_INCREMENT,
  `module_data`         LONGTEXT,
  `module_name`         VARCHAR(255)     DEFAULT NULL,
  `workflow_process_id` INT(11)          DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezmodule_run_workflow_process_id_s` (`workflow_process_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmodule_run`
--

LOCK TABLES `ezmodule_run` WRITE;
/*!40000 ALTER TABLE `ezmodule_run`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmodule_run`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezmultipricedata`
--

DROP TABLE IF EXISTS `ezmultipricedata`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezmultipricedata` (
  `contentobject_attr_id`      INT(11)        NOT NULL DEFAULT ''0'',
  `contentobject_attr_version` INT(11)        NOT NULL DEFAULT ''0'',
  `currency_code`              VARCHAR(4)     NOT NULL DEFAULT '''',
  `id`                         INT(11)        NOT NULL AUTO_INCREMENT,
  `type`                       INT(11)        NOT NULL DEFAULT ''0'',
  `value`                      DECIMAL(15, 2) NOT NULL DEFAULT ''0.00'',
  PRIMARY KEY (`id`),
  KEY `ezmultipricedata_coa_id` (`contentobject_attr_id`),
  KEY `ezmultipricedata_coa_version` (`contentobject_attr_version`),
  KEY `ezmultipricedata_currency_code` (`currency_code`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezmultipricedata`
--

LOCK TABLES `ezmultipricedata` WRITE;
/*!40000 ALTER TABLE `ezmultipricedata`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezmultipricedata`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznode_assignment`
--

DROP TABLE IF EXISTS `eznode_assignment`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznode_assignment` (
  `contentobject_id`      INT(11) DEFAULT NULL,
  `contentobject_version` INT(11) DEFAULT NULL,
  `from_node_id`          INT(11) DEFAULT ''0'',
  `id`                    INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                AUTO_INCREMENT,
  `is_main`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                DEFAULT ''0'',
  `op_code`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                DEFAULT ''0'',
  `parent_node`           INT(11) DEFAULT NULL,
  `parent_remote_id`      VARCHAR(100) NOT NULL DEFAULT '''',
  `remote_id`             VARCHAR(100) NOT NULL DEFAULT ''0'',
  `sort_field`            INT(11) DEFAULT ''1'',
  `sort_order`            INT(11) DEFAULT ''1'',
  `priority`              INT(11)      NOT NULL DEFAULT ''0'',
  `is_hidden`             INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `eznode_assignment_co_version` (`contentobject_version`),
  KEY `eznode_assignment_coid_cov` (`contentobject_id`, `contentobject_version`),
  KEY `eznode_assignment_is_main` (`is_main`),
  KEY `eznode_assignment_parent_node` (`parent_node`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 111
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznode_assignment`
--

LOCK TABLES `eznode_assignment` WRITE;
/*!40000 ALTER TABLE `eznode_assignment`
  DISABLE KEYS */;
INSERT INTO `eznode_assignment`
VALUES (8, 2, 0, 4, 1, 2, 5, '''', ''0'', 1, 1, 0, 0), (42, 1, 0, 5, 1, 2, 5, '''', ''0'', 9, 1, 0, 0),
  (10, 2, -1, 6, 1, 2, 44, '''', ''0'', 9, 1, 0, 0), (4, 1, 0, 7, 1, 2, 1, '''', ''0'', 1, 1, 0, 0),
  (12, 1, 0, 8, 1, 2, 5, '''', ''0'', 1, 1, 0, 0), (13, 1, 0, 9, 1, 2, 5, '''', ''0'', 1, 1, 0, 0),
  (41, 1, 0, 11, 1, 2, 1, '''', ''0'', 1, 1, 0, 0), (11, 1, 0, 12, 1, 2, 5, '''', ''0'', 1, 1, 0, 0),
  (45, 1, -1, 16, 1, 2, 1, '''', ''0'', 9, 1, 0, 0), (49, 1, 0, 27, 1, 2, 43, '''', ''0'', 9, 1, 0, 0),
  (50, 1, 0, 28, 1, 2, 43, '''', ''0'', 9, 1, 0, 0), (51, 1, 0, 29, 1, 2, 43, '''', ''0'', 9, 1, 0, 0),
  (52, 1, 0, 30, 1, 2, 48, '''', ''0'', 1, 1, 0, 0), (56, 1, 0, 34, 1, 2, 1, '''', ''0'', 2, 0, 0, 0),
  (14, 3, -1, 38, 1, 2, 13, '''', ''0'', 1, 1, 0, 0), (54, 2, -1, 39, 1, 2, 58, '''', ''0'', 1, 1, 0, 0),
  (81, 1, 0, 67, 1, 2, 61, ''e4a7ccbc1347f60beabf14e3850d3414'', ''0'', 1, 1, 0, 0),
  (82, 1, 0, 68, 1, 2, 61, ''963a0ac2354542a44b9831f4d2468d76'', ''0'', 1, 1, 0, 0),
  (83, 1, 0, 69, 1, 2, 61, ''376f7051df9c05595ea297427686f874'', ''0'', 1, 1, 0, 0),
  (84, 1, 0, 70, 1, 2, 61, ''4d63192fe7e6abcb3a5d6920cec099a5'', ''0'', 1, 1, 0, 0),
  (85, 1, 0, 71, 1, 3, 62, ''201e9b0c8e768f4cddabee7bb032994e'', ''0'', 1, 1, 0, 0),
  (89, 1, 0, 72, 1, 2, 61, ''7022efbd8985bbd5efb882460ae88090'', ''0'', 1, 1, 0, 0),
  (90, 1, 0, 73, 1, 2, 2, ''38ba22b9e0e4e4f2818ff7347cbc5cb1'', ''0'', 1, 1, 0, 0),
  (91, 1, 0, 74, 1, 2, 91, ''321c322e1383fed8d29cfae73de5ae4a'', ''0'', 1, 1, 0, 0),
  (92, 1, 0, 75, 1, 2, 2, ''006e66acf7145dcf237f75f7e8bcb405'', ''0'', 1, 1, 0, 0),
  (93, 1, 0, 76, 1, 2, 93, ''3c982286f1bf5019956d1df61eca4125'', ''0'', 1, 1, 0, 0),
  (94, 1, 0, 77, 1, 2, 93, ''8f027f9d3dd18502aead8afbb3a55899'', ''0'', 1, 1, 0, 0),
  (95, 1, 0, 78, 1, 2, 93, ''bf6e44bdc155caf4a19199056af41259'', ''0'', 1, 1, 0, 0),
  (96, 1, 0, 79, 1, 2, 93, ''85d103e9506d9f3e7298de6279b065d0'', ''0'', 1, 1, 0, 0),
  (97, 1, 0, 80, 1, 2, 93, ''dbdd81bb6fd5deeaa67e6468a814897c'', ''0'', 1, 1, 0, 0),
  (98, 1, 0, 81, 1, 2, 93, ''4618e795aa2de3f061a89ce2db71b93d'', ''0'', 1, 1, 0, 0),
  (99, 1, 0, 82, 1, 2, 93, ''2c96186c20469960cc99a4280484dcb1'', ''0'', 1, 1, 0, 0),
  (100, 1, 0, 83, 1, 2, 61, ''7225a7ad0d43dfd45ed019489c9ae44b'', ''0'', 1, 1, 0, 0),
  (101, 1, 0, 84, 1, 2, 61, ''e5897a7fdf9908326ee9d3070018f347'', ''0'', 1, 1, 0, 0),
  (102, 1, 0, 85, 1, 2, 61, ''8134c0d09e75480259ac93f6502d8204'', ''0'', 1, 1, 0, 0),
  (103, 1, 0, 86, 1, 2, 61, ''72341fe2218c30962ada21549d1a38f5'', ''0'', 1, 1, 0, 0),
  (104, 1, 0, 87, 1, 2, 61, ''5952a07e79ff7517c0406f420f63c262'', ''0'', 1, 1, 0, 0),
  (105, 1, 0, 88, 1, 2, 61, ''3dfa24df5543f09aa5a3113a929a7cb7'', ''0'', 1, 1, 0, 0),
  (106, 1, 0, 89, 1, 2, 61, ''38c1110ec7e7510cadebed461d1f6741'', ''0'', 1, 1, 0, 0),
  (107, 1, 0, 90, 1, 2, 61, ''c6f07fdca0eb69f70ac4f2dea0d91179'', ''0'', 1, 1, 0, 0),
  (108, 1, 0, 91, 1, 2, 61, ''a28221a76ed0806db16ffd1e0a170040'', ''0'', 1, 1, 0, 0),
  (109, 1, 0, 92, 1, 2, 2, ''d8737087bdf59195050b0b33836228c4'', ''0'', 1, 1, 0, 0),
  (110, 1, 0, 93, 1, 2, 110, ''12cad7e46b5e8122163626e4712197c2'', ''0'', 1, 1, 0, 0),
  (111, 1, 0, 94, 1, 2, 110, ''193fe57ac44515569d37018afb29340a'', ''0'', 1, 1, 0, 0),
  (112, 1, 0, 95, 1, 2, 110, ''75f2837b1ad329419789495a97cab9ee'', ''0'', 1, 1, 0, 0),
  (113, 1, 0, 96, 1, 2, 110, ''13c5b722d1b2b44203c493b3a0eab896'', ''0'', 1, 1, 0, 0),
  (114, 1, 0, 97, 1, 2, 110, ''3f23fac785297a75cd7c0287b594ba16'', ''0'', 1, 1, 0, 0),
  (115, 1, 0, 98, 1, 2, 2, ''3e82176b0162a4cada16ee9764ec1c58'', ''0'', 1, 1, 0, 0),
  (116, 1, 0, 99, 1, 2, 2, ''3a6c7ed7667cd5cf7bfc63c74c008966'', ''0'', 1, 1, 0, 0),
  (117, 1, 0, 100, 1, 2, 117, ''8cc6b8e67d384ad2f0decc7bfbecc055'', ''0'', 1, 1, 0, 0),
  (118, 1, 0, 101, 1, 2, 117, ''cd35cf7e0cf455f252388973051864cc'', ''0'', 1, 1, 0, 0),
  (119, 1, 0, 102, 1, 2, 117, ''d50ea66535116a979c9965a8ee12556f'', ''0'', 1, 1, 0, 0),
  (120, 1, 0, 103, 1, 2, 117, ''14f15e1e88d79c4d0b2ecd1268e06a71'', ''0'', 1, 1, 0, 0),
  (121, 1, 0, 104, 1, 2, 117, ''7c0a6ecb49bd5945eeba5627a4853d0d'', ''0'', 1, 1, 0, 0),
  (122, 1, 0, 105, 1, 2, 117, ''797fdb5ad266ae15add8abe7cda43f7e'', ''0'', 1, 1, 0, 0),
  (123, 1, 0, 106, 1, 2, 117, ''e22059fdcb68c7e0043c856763e8ff83'', ''0'', 1, 1, 0, 0),
  (124, 1, 0, 107, 1, 2, 117, ''bf2f14a2dcdb264c6bff3ef08bda4a6b'', ''0'', 1, 1, 0, 0),
  (125, 1, 0, 108, 1, 2, 117, ''b5ec023ed44aa6f8cdd6657b129d0b8c'', ''0'', 1, 1, 0, 0),
  (126, 1, 0, 109, 1, 2, 117, ''87b9f1f7b4604624e788d5be30b89d64'', ''0'', 1, 1, 0, 0),
  (127, 1, 0, 110, 1, 2, 117, ''09bcfe3092c41fa76d96edc8c6534ef3'', ''0'', 1, 1, 0, 0);
/*!40000 ALTER TABLE `eznode_assignment`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection`
--

DROP TABLE IF EXISTS `eznotificationcollection`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection` (
  `data_subject` LONGTEXT     NOT NULL,
  `data_text`    LONGTEXT     NOT NULL,
  `event_id`     INT(11)      NOT NULL DEFAULT ''0'',
  `handler`      VARCHAR(255) NOT NULL DEFAULT '''',
  `id`           INT(11)      NOT NULL AUTO_INCREMENT,
  `transport`    VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection`
--

LOCK TABLES `eznotificationcollection` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationcollection_item`
--

DROP TABLE IF EXISTS `eznotificationcollection_item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationcollection_item` (
  `address`       VARCHAR(255) NOT NULL DEFAULT '''',
  `collection_id` INT(11)      NOT NULL DEFAULT ''0'',
  `event_id`      INT(11)      NOT NULL DEFAULT ''0'',
  `id`            INT(11)      NOT NULL AUTO_INCREMENT,
  `send_date`     INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationcollection_item`
--

LOCK TABLES `eznotificationcollection_item` WRITE;
/*!40000 ALTER TABLE `eznotificationcollection_item`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationcollection_item`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eznotificationevent`
--

DROP TABLE IF EXISTS `eznotificationevent`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eznotificationevent` (
  `data_int1`         INT(11)      NOT NULL DEFAULT ''0'',
  `data_int2`         INT(11)      NOT NULL DEFAULT ''0'',
  `data_int3`         INT(11)      NOT NULL DEFAULT ''0'',
  `data_int4`         INT(11)      NOT NULL DEFAULT ''0'',
  `data_text1`        LONGTEXT     NOT NULL,
  `data_text2`        LONGTEXT     NOT NULL,
  `data_text3`        LONGTEXT     NOT NULL,
  `data_text4`        LONGTEXT     NOT NULL,
  `event_type_string` VARCHAR(255) NOT NULL DEFAULT '''',
  `id`                INT(11)      NOT NULL AUTO_INCREMENT,
  `status`            INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eznotificationevent`
--

LOCK TABLES `eznotificationevent` WRITE;
/*!40000 ALTER TABLE `eznotificationevent`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eznotificationevent`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezoperation_memento`
--

DROP TABLE IF EXISTS `ezoperation_memento`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezoperation_memento` (
  `id`           INT(11)     NOT NULL AUTO_INCREMENT,
  `main`         INT(11)     NOT NULL DEFAULT ''0'',
  `main_key`     VARCHAR(32) NOT NULL DEFAULT '''',
  `memento_data` LONGTEXT    NOT NULL,
  `memento_key`  VARCHAR(32) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`, `memento_key`),
  KEY `ezoperation_memento_memento_key_main` (`memento_key`, `main`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezoperation_memento`
--

LOCK TABLES `ezoperation_memento` WRITE;
/*!40000 ALTER TABLE `ezoperation_memento`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezoperation_memento`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder`
--

DROP TABLE IF EXISTS `ezorder`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder` (
  `account_identifier`   VARCHAR(100) NOT NULL DEFAULT ''DEFAULT '',
  `created`              INT(11)      NOT NULL DEFAULT ''0'',
  `data_text_1`          LONGTEXT,
  `data_text_2`          LONGTEXT,
  `email`                VARCHAR(150)          DEFAULT '''',
  `id`                   INT(11)      NOT NULL AUTO_INCREMENT,
  `ignore_vat`           INT(11)      NOT NULL DEFAULT ''0'',
  `is_archived`          INT(11)      NOT NULL DEFAULT ''0'',
  `is_temporary`         INT(11)      NOT NULL DEFAULT ''1'',
  `order_nr`             INT(11)      NOT NULL DEFAULT ''0'',
  `productcollection_id` INT(11)      NOT NULL DEFAULT ''0'',
  `status_id`            INT(11)               DEFAULT ''0'',
  `status_modified`      INT(11)               DEFAULT ''0'',
  `status_modifier_id`   INT(11)               DEFAULT ''0'',
  `user_id`              INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezorder_is_archived` (`is_archived`),
  KEY `ezorder_is_tmp` (`is_temporary`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder`
--

LOCK TABLES `ezorder` WRITE;
/*!40000 ALTER TABLE `ezorder`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_item`
--

DROP TABLE IF EXISTS `ezorder_item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_item` (
  `description` VARCHAR(255)     DEFAULT NULL,
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `is_vat_inc`  INT(11) NOT NULL DEFAULT ''0'',
  `order_id`    INT(11) NOT NULL DEFAULT ''0'',
  `price`       FLOAT            DEFAULT NULL,
  `type`        VARCHAR(30)      DEFAULT NULL,
  `vat_value`   FLOAT   NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezorder_item_order_id` (`order_id`),
  KEY `ezorder_item_type` (`type`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_item`
--

LOCK TABLES `ezorder_item` WRITE;
/*!40000 ALTER TABLE `ezorder_item`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_item`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_nr_incr`
--

DROP TABLE IF EXISTS `ezorder_nr_incr`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_nr_incr` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_nr_incr`
--

LOCK TABLES `ezorder_nr_incr` WRITE;
/*!40000 ALTER TABLE `ezorder_nr_incr`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_nr_incr`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status`
--

DROP TABLE IF EXISTS `ezorder_status`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status` (
  `id`        INT(11)      NOT NULL AUTO_INCREMENT,
  `is_active` INT(11)      NOT NULL DEFAULT ''1'',
  `name`      VARCHAR(255) NOT NULL DEFAULT '''',
  `status_id` INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_active` (`is_active`),
  KEY `ezorder_status_name` (`name`),
  KEY `ezorder_status_sid` (`status_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 4
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status`
--

LOCK TABLES `ezorder_status` WRITE;
/*!40000 ALTER TABLE `ezorder_status`
  DISABLE KEYS */;
INSERT INTO `ezorder_status` VALUES (1, 1, ''Pending'', 1), (2, 1, ''Processing'', 2), (3, 1, ''Delivered'', 3);
/*!40000 ALTER TABLE `ezorder_status`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezorder_status_history`
--

DROP TABLE IF EXISTS `ezorder_status_history`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezorder_status_history` (
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `modified`    INT(11) NOT NULL DEFAULT ''0'',
  `modifier_id` INT(11) NOT NULL DEFAULT ''0'',
  `order_id`    INT(11) NOT NULL DEFAULT ''0'',
  `status_id`   INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezorder_status_history_mod` (`modified`),
  KEY `ezorder_status_history_oid` (`order_id`),
  KEY `ezorder_status_history_sid` (`status_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezorder_status_history`
--

LOCK TABLES `ezorder_status_history` WRITE;
/*!40000 ALTER TABLE `ezorder_status_history`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezorder_status_history`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpackage`
--

DROP TABLE IF EXISTS `ezpackage`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpackage` (
  `id`           INT(11)      NOT NULL AUTO_INCREMENT,
  `install_date` INT(11)      NOT NULL DEFAULT ''0'',
  `name`         VARCHAR(100) NOT NULL DEFAULT '''',
  `version`      VARCHAR(30)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpackage`
--

LOCK TABLES `ezpackage` WRITE;
/*!40000 ALTER TABLE `ezpackage`
  DISABLE KEYS */;
INSERT INTO `ezpackage` VALUES (1, 1301057838, ''plain_site_data'', ''1.0 - 1'');
/*!40000 ALTER TABLE `ezpackage`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpaymentobject`
--

DROP TABLE IF EXISTS `ezpaymentobject`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpaymentobject` (
  `id`                 INT(11)      NOT NULL AUTO_INCREMENT,
  `order_id`           INT(11)      NOT NULL DEFAULT ''0'',
  `payment_string`     VARCHAR(255) NOT NULL DEFAULT '''',
  `status`             INT(11)      NOT NULL DEFAULT ''0'',
  `workflowprocess_id` INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpaymentobject`
--

LOCK TABLES `ezpaymentobject` WRITE;
/*!40000 ALTER TABLE `ezpaymentobject`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpaymentobject`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpdf_export`
--

DROP TABLE IF EXISTS `ezpdf_export`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpdf_export` (
  `created`          INT(11)          DEFAULT NULL,
  `creator_id`       INT(11)          DEFAULT NULL,
  `export_classes`   VARCHAR(255)     DEFAULT NULL,
  `export_structure` VARCHAR(255)     DEFAULT NULL,
  `id`               INT(11) NOT NULL AUTO_INCREMENT,
  `intro_text`       LONGTEXT,
  `modified`         INT(11)          DEFAULT NULL,
  `modifier_id`      INT(11)          DEFAULT NULL,
  `pdf_filename`     VARCHAR(255)     DEFAULT NULL,
  `show_frontpage`   INT(11)          DEFAULT NULL,
  `site_access`      VARCHAR(255)     DEFAULT NULL,
  `source_node_id`   INT(11)          DEFAULT NULL,
  `status`           INT(11)          DEFAULT NULL,
  `sub_text`         LONGTEXT,
  `title`            VARCHAR(255)     DEFAULT NULL,
  `version`          INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpdf_export`
--

LOCK TABLES `ezpdf_export` WRITE;
/*!40000 ALTER TABLE `ezpdf_export`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpdf_export`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpending_actions`
--

DROP TABLE IF EXISTS `ezpending_actions`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpending_actions` (
  `id`      INT(11)     NOT NULL AUTO_INCREMENT,
  `action`  VARCHAR(64) NOT NULL DEFAULT '''',
  `created` INT(11)              DEFAULT NULL,
  `param`   LONGTEXT,
  PRIMARY KEY (`id`),
  KEY `ezpending_actions_action` (`action`),
  KEY `ezpending_actions_created` (`created`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpending_actions`
--

LOCK TABLES `ezpending_actions` WRITE;
/*!40000 ALTER TABLE `ezpending_actions`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpending_actions`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy`
--

DROP TABLE IF EXISTS `ezpolicy`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy` (
  `function_name` VARCHAR(255)     DEFAULT NULL,
  `id`            INT(11) NOT NULL AUTO_INCREMENT,
  `module_name`   VARCHAR(255)     DEFAULT NULL,
  `original_id`   INT(11) NOT NULL DEFAULT ''0'',
  `role_id`       INT(11)          DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_original_id` (`original_id`),
  KEY `ezpolicy_role_id` (`role_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 334
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy`
--

LOCK TABLES `ezpolicy` WRITE;
/*!40000 ALTER TABLE `ezpolicy`
  DISABLE KEYS */;
INSERT INTO `ezpolicy`
VALUES ('' * '', 308, '' * '', 0, 2), ('' * '', 317, ''content'', 0, 3), (''login'', 319, ''USER'', 0, 3),
  (''READ'', 328, ''content'', 0, 1), (''pdf'', 329, ''content'', 0, 1), ('' * '', 330, ''ezoe'', 0, 3),
  (''login'', 331, ''USER'', 0, 1), (''READ'', 332, ''content'', 0, 4), (''register'', 333, ''USER'', 0, 1);
/*!40000 ALTER TABLE `ezpolicy`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation`
--

DROP TABLE IF EXISTS `ezpolicy_limitation`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation` (
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `identifier` VARCHAR(255) NOT NULL DEFAULT '''',
  `policy_id`  INT(11)               DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `policy_id` (`policy_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 256
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation`
--

LOCK TABLES `ezpolicy_limitation` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation`
  DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation`
VALUES (251, ''Section'', 328), (252, ''Section'', 329), (253, ''SiteAccess'', 331), (254, ''Class'', 332),
  (255, ''OWNER'', 332);
/*!40000 ALTER TABLE `ezpolicy_limitation`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpolicy_limitation_value`
--

DROP TABLE IF EXISTS `ezpolicy_limitation_value`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpolicy_limitation_value` (
  `id`            INT(11) NOT NULL AUTO_INCREMENT,
  `limitation_id` INT(11)          DEFAULT NULL,
  `value`         VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezpolicy_limitation_value_val` (`value`),
  KEY `ezpolicy_limit_value_limit_id` (`limitation_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 482
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpolicy_limitation_value`
--

LOCK TABLES `ezpolicy_limitation_value` WRITE;
/*!40000 ALTER TABLE `ezpolicy_limitation_value`
  DISABLE KEYS */;
INSERT INTO `ezpolicy_limitation_value`
VALUES (477, 251, ''1''), (478, 252, ''1''), (479, 253, ''1766001124''), (480, 254, ''4''), (481, 255, ''1'');
/*!40000 ALTER TABLE `ezpolicy_limitation_value`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpreferences`
--

DROP TABLE IF EXISTS `ezpreferences`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpreferences` (
  `id`      INT(11) NOT NULL AUTO_INCREMENT,
  `name`    VARCHAR(100)     DEFAULT NULL,
  `user_id` INT(11) NOT NULL DEFAULT ''0'',
  `value`   LONGTEXT,
  PRIMARY KEY (`id`),
  KEY `ezpreferences_name` (`name`),
  KEY `ezpreferences_user_id_idx` (`user_id`, `name`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpreferences`
--

LOCK TABLES `ezpreferences` WRITE;
/*!40000 ALTER TABLE `ezpreferences`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpreferences`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authcode`
--

DROP TABLE IF EXISTS `ezprest_authcode`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authcode` (
  `client_id`  VARCHAR(200) NOT NULL DEFAULT '''',
  `expirytime` BIGINT(20)   NOT NULL DEFAULT ''0'',
  `id`         VARCHAR(200) NOT NULL DEFAULT '''',
  `scope`      VARCHAR(200)          DEFAULT NULL,
  `user_id`    INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `authcode_client_id` (`client_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authcode`
--

LOCK TABLES `ezprest_authcode` WRITE;
/*!40000 ALTER TABLE `ezprest_authcode`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authcode`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_authorized_clients`
--

DROP TABLE IF EXISTS `ezprest_authorized_clients`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_authorized_clients` (
  `created`        INT(11)          DEFAULT NULL,
  `id`             INT(11) NOT NULL AUTO_INCREMENT,
  `rest_client_id` INT(11)          DEFAULT NULL,
  `user_id`        INT(11)          DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `client_user` (`rest_client_id`, `user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_authorized_clients`
--

LOCK TABLES `ezprest_authorized_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_authorized_clients`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_authorized_clients`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_clients`
--

DROP TABLE IF EXISTS `ezprest_clients`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_clients` (
  `client_id`     VARCHAR(200)     DEFAULT NULL,
  `client_secret` VARCHAR(200)     DEFAULT NULL,
  `created`       INT(11) NOT NULL DEFAULT ''0'',
  `description`   LONGTEXT,
  `endpoint_uri`  VARCHAR(200)     DEFAULT NULL,
  `id`            INT(11) NOT NULL AUTO_INCREMENT,
  `name`          VARCHAR(100)     DEFAULT NULL,
  `owner_id`      INT(11) NOT NULL DEFAULT ''0'',
  `updated`       INT(11) NOT NULL DEFAULT ''0'',
  `version`       INT(1)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `client_id_unique` (`client_id`, `version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_clients`
--

LOCK TABLES `ezprest_clients` WRITE;
/*!40000 ALTER TABLE `ezprest_clients`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_clients`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezprest_token`
--

DROP TABLE IF EXISTS `ezprest_token`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezprest_token` (
  `client_id`     VARCHAR(200) NOT NULL DEFAULT '''',
  `expirytime`    BIGINT(20)   NOT NULL DEFAULT ''0'',
  `id`            VARCHAR(200) NOT NULL DEFAULT '''',
  `refresh_token` VARCHAR(200) NOT NULL DEFAULT '''',
  `scope`         VARCHAR(200)          DEFAULT NULL,
  `user_id`       INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `token_client_id` (`client_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezprest_token`
--

LOCK TABLES `ezprest_token` WRITE;
/*!40000 ALTER TABLE `ezprest_token`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezprest_token`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcategory`
--

DROP TABLE IF EXISTS `ezproductcategory`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcategory` (
  `id`   INT(11)      NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcategory`
--

LOCK TABLES `ezproductcategory` WRITE;
/*!40000 ALTER TABLE `ezproductcategory`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcategory`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection`
--

DROP TABLE IF EXISTS `ezproductcollection`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection` (
  `created`       INT(11)             DEFAULT NULL,
  `currency_code` VARCHAR(4) NOT NULL DEFAULT '''',
  `id`            INT(11)    NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection`
--

LOCK TABLES `ezproductcollection` WRITE;
/*!40000 ALTER TABLE `ezproductcollection`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item`
--

DROP TABLE IF EXISTS `ezproductcollection_item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item` (
  `contentobject_id`     INT(11)      NOT NULL DEFAULT ''0'',
  `discount`             FLOAT                 DEFAULT NULL,
  `id`                   INT(11)      NOT NULL AUTO_INCREMENT,
  `is_vat_inc`           INT(11)               DEFAULT NULL,
  `item_count`           INT(11)      NOT NULL DEFAULT ''0'',
  `name`                 VARCHAR(255) NOT NULL DEFAULT '''',
  `price`                FLOAT                 DEFAULT ''0'',
  `productcollection_id` INT(11)      NOT NULL DEFAULT ''0'',
  `vat_value`            FLOAT                 DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_contentobject_id` (`contentobject_id`),
  KEY `ezproductcollection_item_productcollection_id` (`productcollection_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item`
--

LOCK TABLES `ezproductcollection_item` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezproductcollection_item_opt`
--

DROP TABLE IF EXISTS `ezproductcollection_item_opt`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezproductcollection_item_opt` (
  `id`                  INT(11)      NOT NULL AUTO_INCREMENT,
  `item_id`             INT(11)      NOT NULL DEFAULT ''0'',
  `name`                VARCHAR(255) NOT NULL DEFAULT '''',
  `object_attribute_id` INT(11)               DEFAULT NULL,
  `option_item_id`      INT(11)      NOT NULL DEFAULT ''0'',
  `price`               FLOAT        NOT NULL DEFAULT ''0'',
  `value`               VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`),
  KEY `ezproductcollection_item_opt_item_id` (`item_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezproductcollection_item_opt`
--

LOCK TABLES `ezproductcollection_item_opt` WRITE;
/*!40000 ALTER TABLE `ezproductcollection_item_opt`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezproductcollection_item_opt`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezpublishingqueueprocesses`
--

DROP TABLE IF EXISTS `ezpublishingqueueprocesses`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezpublishingqueueprocesses` (
  `created`                    INT(11)          DEFAULT NULL,
  `ezcontentobject_version_id` INT(11) NOT NULL DEFAULT ''0'',
  `finished`                   INT(11)          DEFAULT NULL,
  `pid`                        INT(8)           DEFAULT NULL,
  `started`                    INT(11)          DEFAULT NULL,
  `status`                     INT(2)           DEFAULT NULL,
  PRIMARY KEY (`ezcontentobject_version_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezpublishingqueueprocesses`
--

LOCK TABLES `ezpublishingqueueprocesses` WRITE;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezpublishingqueueprocesses`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrole`
--

DROP TABLE IF EXISTS `ezrole`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrole` (
  `id`      INT(11)      NOT NULL AUTO_INCREMENT,
  `is_new`  INT(11)      NOT NULL DEFAULT ''0'',
  `name`    VARCHAR(255) NOT NULL DEFAULT '''',
  `value`   CHAR(1)               DEFAULT NULL,
  `version` INT(11)               DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 5
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrole`
--

LOCK TABLES `ezrole` WRITE;
/*!40000 ALTER TABLE `ezrole`
  DISABLE KEYS */;
INSERT INTO `ezrole`
VALUES (1, 0, ''Anonymous'', '''', 0), (2, 0, ''Administrator'', '' * '', 0), (3, 0, ''Editor'', '''', 0),
  (4, 0, ''Member'', NULL, 0);
/*!40000 ALTER TABLE `ezrole`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export`
--

DROP TABLE IF EXISTS `ezrss_export`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export` (
  `access_url`        VARCHAR(255)     DEFAULT NULL,
  `active`            INT(11)          DEFAULT NULL,
  `created`           INT(11)          DEFAULT NULL,
  `creator_id`        INT(11)          DEFAULT NULL,
  `description`       LONGTEXT,
  `id`                INT(11) NOT NULL AUTO_INCREMENT,
  `image_id`          INT(11)          DEFAULT NULL,
  `main_node_only`    INT(11) NOT NULL DEFAULT ''1'',
  `modified`          INT(11)          DEFAULT NULL,
  `modifier_id`       INT(11)          DEFAULT NULL,
  `node_id`           INT(11)          DEFAULT NULL,
  `number_of_objects` INT(11) NOT NULL DEFAULT ''0'',
  `rss_version`       VARCHAR(255)     DEFAULT NULL,
  `site_access`       VARCHAR(255)     DEFAULT NULL,
  `status`            INT(11) NOT NULL DEFAULT ''0'',
  `title`             VARCHAR(255)     DEFAULT NULL,
  `url`               VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`, `status`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export`
--

LOCK TABLES `ezrss_export` WRITE;
/*!40000 ALTER TABLE `ezrss_export`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_export_item`
--

DROP TABLE IF EXISTS `ezrss_export_item`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_export_item` (
  `category`       VARCHAR(255)     DEFAULT NULL,
  `class_id`       INT(11)          DEFAULT NULL,
  `description`    VARCHAR(255)     DEFAULT NULL,
  `enclosure`      VARCHAR(255)     DEFAULT NULL,
  `id`             INT(11) NOT NULL AUTO_INCREMENT,
  `rssexport_id`   INT(11)          DEFAULT NULL,
  `source_node_id` INT(11)          DEFAULT NULL,
  `status`         INT(11) NOT NULL DEFAULT ''0'',
  `subnodes`       INT(11) NOT NULL DEFAULT ''0'',
  `title`          VARCHAR(255)     DEFAULT NULL,
  PRIMARY KEY (`id`, `status`),
  KEY `ezrss_export_rsseid` (`rssexport_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_export_item`
--

LOCK TABLES `ezrss_export_item` WRITE;
/*!40000 ALTER TABLE `ezrss_export_item`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_export_item`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezrss_import`
--

DROP TABLE IF EXISTS `ezrss_import`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezrss_import` (
  `active`              INT(11) DEFAULT NULL,
  `class_description`   VARCHAR(255) DEFAULT NULL,
  `class_id`            INT(11) DEFAULT NULL,
  `class_title`         VARCHAR(255) DEFAULT NULL,
  `class_url`           VARCHAR(255) DEFAULT NULL,
  `created`             INT(11) DEFAULT NULL,
  `creator_id`          INT(11) DEFAULT NULL,
  `destination_node_id` INT(11) DEFAULT NULL,
  `id`                  INT(11)  NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          AUTO_INCREMENT,
  `import_description`  LONGTEXT NOT NULL,
  `modified`            INT(11) DEFAULT NULL,
  `modifier_id`         INT(11) DEFAULT NULL,
  `name`                VARCHAR(255) DEFAULT NULL,
  `object_owner_id`     INT(11) DEFAULT NULL,
  `status`              INT(11)  NOT NULL DEFAULT ''0'',
  `url`                 LONGTEXT,
  PRIMARY KEY (`id`, `status`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezrss_import`
--

LOCK TABLES `ezrss_import` WRITE;
/*!40000 ALTER TABLE `ezrss_import`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezrss_import`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezscheduled_script`
--

DROP TABLE IF EXISTS `ezscheduled_script`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezscheduled_script` (
  `command`               VARCHAR(255) NOT NULL DEFAULT '''',
  `id`                    INT(11)      NOT NULL AUTO_INCREMENT,
  `last_report_timestamp` INT(11)      NOT NULL DEFAULT ''0'',
  `name`                  VARCHAR(50)  NOT NULL DEFAULT '''',
  `process_id`            INT(11)      NOT NULL DEFAULT ''0'',
  `progress`              INT(3)                DEFAULT ''0'',
  `user_id`               INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezscheduled_script_timestamp` (`last_report_timestamp`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezscheduled_script`
--

LOCK TABLES `ezscheduled_script` WRITE;
/*!40000 ALTER TABLE `ezscheduled_script`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezscheduled_script`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_object_word_link`
--

DROP TABLE IF EXISTS `ezsearch_object_word_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_object_word_link` (
  `contentclass_attribute_id` INT(11)      NOT NULL DEFAULT ''0'',
  `contentclass_id`           INT(11)      NOT NULL DEFAULT ''0'',
  `contentobject_id`          INT(11)      NOT NULL DEFAULT ''0'',
  `frequency`                 FLOAT        NOT NULL DEFAULT ''0'',
  `id`                        INT(11)      NOT NULL AUTO_INCREMENT,
  `identifier`                VARCHAR(255) NOT NULL DEFAULT '''',
  `integer_value`             INT(11)      NOT NULL DEFAULT ''0'',
  `next_word_id`              INT(11)      NOT NULL DEFAULT ''0'',
  `placement`                 INT(11)      NOT NULL DEFAULT ''0'',
  `prev_word_id`              INT(11)      NOT NULL DEFAULT ''0'',
  `published`                 INT(11)      NOT NULL DEFAULT ''0'',
  `section_id`                INT(11)      NOT NULL DEFAULT ''0'',
  `word_id`                   INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezsearch_object_word_link_frequency` (`frequency`),
  KEY `ezsearch_object_word_link_identifier` (`identifier`),
  KEY `ezsearch_object_word_link_integer_value` (`integer_value`),
  KEY `ezsearch_object_word_link_object` (`contentobject_id`),
  KEY `ezsearch_object_word_link_word` (`word_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 11682
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_object_word_link`
--

LOCK TABLES `ezsearch_object_word_link` WRITE;
/*!40000 ALTER TABLE `ezsearch_object_word_link`
  DISABLE KEYS */;
INSERT INTO `ezsearch_object_word_link` VALUES (7, 3, 4, 0, 7969, ''description'', 0, 2163, 0, 0, 1033917596, 2, 2162),
  (7, 3, 4, 0, 7970, ''description'', 0, 2164, 1, 2162, 1033917596, 2, 2163),
  (6, 3, 4, 0, 7971, ''NAME'', 0, 0, 2, 2163, 1033917596, 2, 2164),
  (8, 4, 10, 0, 7972, ''first_name'', 0, 2166, 0, 0, 1033920665, 2, 2165),
  (9, 4, 10, 0, 7973, ''last_name'', 0, 0, 1, 2165, 1033920665, 2, 2166),
  (6, 3, 11, 0, 7974, ''NAME'', 0, 2168, 0, 0, 1033920746, 2, 2167),
  (6, 3, 11, 0, 7975, ''NAME'', 0, 0, 1, 2167, 1033920746, 2, 2168),
  (6, 3, 12, 0, 7976, ''NAME'', 0, 2164, 0, 0, 1033920775, 2, 2169),
  (6, 3, 12, 0, 7977, ''NAME'', 0, 0, 1, 2169, 1033920775, 2, 2164),
  (6, 3, 13, 0, 7978, ''NAME'', 0, 0, 0, 0, 1033920794, 2, 2170),
  (8, 4, 14, 0, 7979, ''first_name'', 0, 2166, 0, 0, 1033920830, 2, 2169),
  (9, 4, 14, 0, 7980, ''last_name'', 0, 0, 1, 2169, 1033920830, 2, 2166),
  (4, 1, 41, 0, 7981, ''NAME'', 0, 0, 0, 0, 1060695457, 3, 2171),
  (6, 3, 42, 0, 7982, ''NAME'', 0, 2164, 0, 0, 1072180330, 2, 2165),
  (6, 3, 42, 0, 7983, ''NAME'', 0, 2166, 1, 2165, 1072180330, 2, 2164),
  (7, 3, 42, 0, 7984, ''description'', 0, 2163, 2, 2164, 1072180330, 2, 2166),
  (7, 3, 42, 0, 7985, ''description'', 0, 2172, 3, 2166, 1072180330, 2, 2163),
  (7, 3, 42, 0, 7986, ''description'', 0, 2173, 4, 2163, 1072180330, 2, 2172),
  (7, 3, 42, 0, 7987, ''description'', 0, 2165, 5, 2172, 1072180330, 2, 2173),
  (7, 3, 42, 0, 7988, ''description'', 0, 2166, 6, 2173, 1072180330, 2, 2165),
  (7, 3, 42, 0, 7989, ''description'', 0, 0, 7, 2165, 1072180330, 2, 2166),
  (4, 1, 45, 0, 7990, ''NAME'', 0, 0, 0, 0, 1079684190, 4, 2174),
  (4, 1, 49, 0, 7991, ''NAME'', 0, 0, 0, 0, 1080220197, 3, 2175),
  (4, 1, 50, 0, 7992, ''NAME'', 0, 0, 0, 0, 1080220220, 3, 2176),
  (4, 1, 51, 0, 7993, ''NAME'', 0, 0, 0, 0, 1080220233, 3, 2177),
  (159, 14, 52, 0, 7994, ''NAME'', 0, 2179, 0, 0, 1082016591, 4, 2178),
  (159, 14, 52, 0, 7995, ''NAME'', 0, 2180, 1, 2178, 1082016591, 4, 2179),
  (159, 14, 52, 0, 7996, ''NAME'', 0, 0, 2, 2179, 1082016591, 4, 2180),
  (176, 15, 54, 0, 7997, ''id'', 0, 0, 0, 0, 1082016652, 5, 2181),
  (4, 1, 56, 0, 7998, ''NAME'', 0, 0, 0, 0, 1103023132, 5, 2182),
  (193, 19, 58, 0, 8005, ''title'', 0, 2190, 0, 0, 1448629197, 1, 2189),
  (193, 19, 58, 0, 8006, ''title'', 0, 2191, 1, 2189, 1448629197, 1, 2190),
  (194, 19, 58, 0, 8007, ''description'', 0, 2192, 2, 2190, 1448629197, 1, 2191),
  (194, 19, 58, 0, 8008, ''description'', 0, 2193, 3, 2191, 1448629197, 1, 2192),
  (194, 19, 58, 0, 8009, ''description'', 0, 2194, 4, 2192, 1448629197, 1, 2193),
  (194, 19, 58, 0, 8010, ''description'', 0, 2195, 5, 2193, 1448629197, 1, 2194),
  (194, 19, 58, 0, 8011, ''description'', 0, 2185, 6, 2194, 1448629197, 1, 2195),
  (194, 19, 58, 0, 8012, ''description'', 0, 2196, 7, 2195, 1448629197, 1, 2185),
  (194, 19, 58, 0, 8013, ''description'', 0, 2197, 8, 2185, 1448629197, 1, 2196),
  (194, 19, 58, 0, 8014, ''description'', 0, 2198, 9, 2196, 1448629197, 1, 2197),
  (194, 19, 58, 0, 8015, ''description'', 0, 2185, 10, 2197, 1448629197, 1, 2198),
  (194, 19, 58, 0, 8016, ''description'', 0, 2199, 11, 2198, 1448629197, 1, 2185),
  (194, 19, 58, 0, 8017, ''description'', 0, 2200, 12, 2185, 1448629197, 1, 2199),
  (194, 19, 58, 0, 8018, ''description'', 0, 2201, 13, 2199, 1448629197, 1, 2200),
  (194, 19, 58, 0, 8019, ''description'', 0, 2190, 14, 2200, 1448629197, 1, 2201),
  (194, 19, 58, 0, 8020, ''description'', 0, 2194, 15, 2201, 1448629197, 1, 2190),
  (194, 19, 58, 0, 8021, ''description'', 0, 2202, 16, 2190, 1448629197, 1, 2194),
  (194, 19, 58, 0, 8022, ''description'', 0, 2203, 17, 2194, 1448629197, 1, 2202),
  (194, 19, 58, 0, 8023, ''description'', 0, 2204, 18, 2202, 1448629197, 1, 2203),
  (194, 19, 58, 0, 8024, ''description'', 0, 2205, 19, 2203, 1448629197, 1, 2204),
  (194, 19, 58, 0, 8025, ''description'', 0, 2173, 20, 2204, 1448629197, 1, 2205),
  (194, 19, 58, 0, 8026, ''description'', 0, 2206, 21, 2205, 1448629197, 1, 2173),
  (194, 19, 58, 0, 8027, ''description'', 0, 2207, 22, 2173, 1448629197, 1, 2206),
  (194, 19, 58, 0, 8028, ''description'', 0, 2190, 23, 2206, 1448629197, 1, 2207),
  (197, 19, 58, 0, 8029, ''location'', 0, 2208, 24, 2207, 1448629197, 1, 2190),
  (197, 19, 58, 0, 8030, ''location'', 0, 2209, 25, 2190, 1448629197, 1, 2208),
  (197, 19, 58, 0, 8031, ''location'', 0, 2210, 26, 2208, 1448629197, 1, 2209),
  (197, 19, 58, 0, 8032, ''location'', 0, 2211, 27, 2209, 1448629197, 1, 2210),
  (197, 19, 58, 0, 8033, ''location'', 0, 2212, 28, 2210, 1448629197, 1, 2211),
  (197, 19, 58, 0, 8034, ''location'', 0, 2213, 29, 2211, 1448629197, 1, 2212),
  (197, 19, 58, 0, 8035, ''location'', 0, 0, 30, 2212, 1448629197, 1, 2213),
  (184, 17, 60, 0, 8040, ''title'', 0, 2219, 0, 0, 1448667368, 1, 2218),
  (184, 17, 60, 0, 8041, ''title'', 0, 2220, 1, 2218, 1448667368, 1, 2219),
  (185, 17, 60, 0, 8042, ''description'', 0, 2192, 2, 2219, 1448667368, 1, 2220),
  (185, 17, 60, 0, 8043, ''description'', 0, 2195, 3, 2220, 1448667368, 1, 2192),
  (185, 17, 60, 0, 8044, ''description'', 0, 2221, 4, 2192, 1448667368, 1, 2195),
  (185, 17, 60, 0, 8045, ''description'', 0, 2222, 5, 2195, 1448667368, 1, 2221),
  (185, 17, 60, 0, 8046, ''description'', 0, 2223, 6, 2221, 1448667368, 1, 2222),
  (185, 17, 60, 0, 8047, ''description'', 0, 2173, 7, 2222, 1448667368, 1, 2223),
  (185, 17, 60, 0, 8048, ''description'', 0, 2224, 8, 2223, 1448667368, 1, 2173),
  (185, 17, 60, 0, 8049, ''description'', 0, 2225, 9, 2173, 1448667368, 1, 2224),
  (185, 17, 60, 0, 8050, ''description'', 0, 0, 10, 2224, 1448667368, 1, 2225),
  (187, 18, 86, 0, 9446, ''title'', 0, 2185, 0, 0, 1448641214, 1, 2870),
  (187, 18, 86, 0, 9447, ''title'', 0, 2665, 1, 2870, 1448641214, 1, 2185),
  (187, 18, 86, 0, 9448, ''title'', 0, 2871, 2, 2185, 1448641214, 1, 2665),
  (187, 18, 86, 0, 9449, ''title'', 0, 2334, 3, 2665, 1448641214, 1, 2871),
  (187, 18, 86, 0, 9450, ''title'', 0, 2300, 4, 2871, 1448641214, 1, 2334),
  (187, 18, 86, 0, 9451, ''title'', 0, 2872, 5, 2334, 1448641214, 1, 2300),
  (187, 18, 86, 0, 9452, ''title'', 0, 2873, 6, 2300, 1448641214, 1, 2872),
  (187, 18, 86, 0, 9453, ''title'', 0, 2874, 7, 2872, 1448641214, 1, 2873),
  (189, 18, 86, 0, 9454, ''author'', 0, 2875, 8, 2873, 1448641214, 1, 2874),
  (189, 18, 86, 0, 9455, ''author'', 0, 2241, 9, 2874, 1448641214, 1, 2875),
  (190, 18, 86, 0, 9456, ''intro'', 0, 2876, 10, 2875, 1448641214, 1, 2241),
  (190, 18, 86, 0, 9457, ''intro'', 0, 2877, 11, 2241, 1448641214, 1, 2876),
  (190, 18, 86, 0, 9458, ''intro'', 0, 2233, 12, 2876, 1448641214, 1, 2877),
  (190, 18, 86, 0, 9459, ''intro'', 0, 2878, 13, 2877, 1448641214, 1, 2233),
  (190, 18, 86, 0, 9460, ''intro'', 0, 2192, 14, 2233, 1448641214, 1, 2878),
  (190, 18, 86, 0, 9461, ''intro'', 0, 2501, 15, 2878, 1448641214, 1, 2192),
  (190, 18, 86, 0, 9462, ''intro'', 0, 2879, 16, 2192, 1448641214, 1, 2501),
  (190, 18, 86, 0, 9463, ''intro'', 0, 2880, 17, 2501, 1448641214, 1, 2879),
  (190, 18, 86, 0, 9464, ''intro'', 0, 2846, 18, 2879, 1448641214, 1, 2880),
  (190, 18, 86, 0, 9465, ''intro'', 0, 2320, 19, 2880, 1448641214, 1, 2846),
  (190, 18, 86, 0, 9466, ''intro'', 0, 2662, 20, 2846, 1448641214, 1, 2320),
  (190, 18, 86, 0, 9467, ''intro'', 0, 2419, 21, 2320, 1448641214, 1, 2662),
  (190, 18, 86, 0, 9468, ''intro'', 0, 2881, 22, 2662, 1448641214, 1, 2419),
  (190, 18, 86, 0, 9469, ''intro'', 0, 2882, 23, 2419, 1448641214, 1, 2881),
  (190, 18, 86, 0, 9470, ''intro'', 0, 2223, 24, 2881, 1448641214, 1, 2882),
  (190, 18, 86, 0, 9471, ''intro'', 0, 2173, 25, 2882, 1448641214, 1, 2223),
  (190, 18, 86, 0, 9472, ''intro'', 0, 2222, 26, 2223, 1448641214, 1, 2173),
  (190, 18, 86, 0, 9473, ''intro'', 0, 2320, 27, 2173, 1448641214, 1, 2222),
  (190, 18, 86, 0, 9474, ''intro'', 0, 2883, 28, 2222, 1448641214, 1, 2320),
  (190, 18, 86, 0, 9475, ''intro'', 0, 2185, 29, 2320, 1448641214, 1, 2883),
  (190, 18, 86, 0, 9476, ''intro'', 0, 2326, 30, 2883, 1448641214, 1, 2185),
  (190, 18, 86, 0, 9477, ''intro'', 0, 2229, 31, 2185, 1448641214, 1, 2326),
  (190, 18, 86, 0, 9478, ''intro'', 0, 2884, 32, 2326, 1448641214, 1, 2229),
  (190, 18, 86, 0, 9479, ''intro'', 0, 2185, 33, 2229, 1448641214, 1, 2884),
  (190, 18, 86, 0, 9480, ''intro'', 0, 2188, 34, 2884, 1448641214, 1, 2185),
  (190, 18, 86, 0, 9481, ''intro'', 0, 2885, 35, 2185, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9482, ''body'', 0, 2886, 36, 2188, 1448641214, 1, 2885),
  (191, 18, 86, 0, 9483, ''body'', 0, 2172, 37, 2885, 1448641214, 1, 2886),
  (191, 18, 86, 0, 9484, ''body'', 0, 2326, 38, 2886, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9485, ''body'', 0, 2302, 39, 2172, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9486, ''body'', 0, 2887, 40, 2326, 1448641214, 1, 2302),
  (191, 18, 86, 0, 9487, ''body'', 0, 2884, 41, 2302, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9488, ''body'', 0, 2173, 42, 2887, 1448641214, 1, 2884),
  (191, 18, 86, 0, 9489, ''body'', 0, 2888, 43, 2884, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9490, ''body'', 0, 2188, 44, 2173, 1448641214, 1, 2888),
  (191, 18, 86, 0, 9491, ''body'', 0, 2241, 45, 2888, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9492, ''body'', 0, 2876, 46, 2188, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9493, ''body'', 0, 2877, 47, 2241, 1448641214, 1, 2876),
  (191, 18, 86, 0, 9494, ''body'', 0, 2233, 48, 2876, 1448641214, 1, 2877),
  (191, 18, 86, 0, 9495, ''body'', 0, 2878, 49, 2877, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9496, ''body'', 0, 2192, 50, 2233, 1448641214, 1, 2878),
  (191, 18, 86, 0, 9497, ''body'', 0, 2501, 51, 2878, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9498, ''body'', 0, 2879, 52, 2192, 1448641214, 1, 2501),
  (191, 18, 86, 0, 9499, ''body'', 0, 2880, 53, 2501, 1448641214, 1, 2879),
  (191, 18, 86, 0, 9500, ''body'', 0, 2846, 54, 2879, 1448641214, 1, 2880),
  (191, 18, 86, 0, 9501, ''body'', 0, 2320, 55, 2880, 1448641214, 1, 2846),
  (191, 18, 86, 0, 9502, ''body'', 0, 2662, 56, 2846, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9503, ''body'', 0, 2419, 57, 2320, 1448641214, 1, 2662),
  (191, 18, 86, 0, 9504, ''body'', 0, 2881, 58, 2662, 1448641214, 1, 2419),
  (191, 18, 86, 0, 9505, ''body'', 0, 2882, 59, 2419, 1448641214, 1, 2881),
  (191, 18, 86, 0, 9506, ''body'', 0, 2223, 60, 2881, 1448641214, 1, 2882),
  (191, 18, 86, 0, 9507, ''body'', 0, 2173, 61, 2882, 1448641214, 1, 2223),
  (191, 18, 86, 0, 9508, ''body'', 0, 2222, 62, 2223, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9509, ''body'', 0, 2320, 63, 2173, 1448641214, 1, 2222),
  (191, 18, 86, 0, 9510, ''body'', 0, 2883, 64, 2222, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9511, ''body'', 0, 2185, 65, 2320, 1448641214, 1, 2883),
  (191, 18, 86, 0, 9512, ''body'', 0, 2326, 66, 2883, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9513, ''body'', 0, 2229, 67, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9514, ''body'', 0, 2884, 68, 2326, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9515, ''body'', 0, 2185, 69, 2229, 1448641214, 1, 2884),
  (191, 18, 86, 0, 9516, ''body'', 0, 2188, 70, 2884, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9517, ''body'', 0, 2889, 71, 2185, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9518, ''body'', 0, 2320, 72, 2188, 1448641214, 1, 2889),
  (191, 18, 86, 0, 9519, ''body'', 0, 2204, 73, 2889, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9520, ''body'', 0, 2192, 74, 2320, 1448641214, 1, 2204),
  (191, 18, 86, 0, 9521, ''body'', 0, 2507, 75, 2204, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9522, ''body'', 0, 2890, 76, 2192, 1448641214, 1, 2507),
  (191, 18, 86, 0, 9523, ''body'', 0, 2551, 77, 2507, 1448641214, 1, 2890),
  (191, 18, 86, 0, 9524, ''body'', 0, 2891, 78, 2890, 1448641214, 1, 2551),
  (191, 18, 86, 0, 9525, ''body'', 0, 2525, 79, 2551, 1448641214, 1, 2891),
  (191, 18, 86, 0, 9526, ''body'', 0, 2449, 80, 2891, 1448641214, 1, 2525),
  (191, 18, 86, 0, 9527, ''body'', 0, 2892, 81, 2525, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9528, ''body'', 0, 2231, 82, 2449, 1448641214, 1, 2892),
  (191, 18, 86, 0, 9529, ''body'', 0, 2893, 83, 2892, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9530, ''body'', 0, 2844, 84, 2231, 1448641214, 1, 2893),
  (191, 18, 86, 0, 9531, ''body'', 0, 2894, 85, 2893, 1448641214, 1, 2844),
  (191, 18, 86, 0, 9532, ''body'', 0, 2895, 86, 2844, 1448641214, 1, 2894),
  (191, 18, 86, 0, 9533, ''body'', 0, 2896, 87, 2894, 1448641214, 1, 2895),
  (191, 18, 86, 0, 9534, ''body'', 0, 2279, 88, 2895, 1448641214, 1, 2896),
  (191, 18, 86, 0, 9535, ''body'', 0, 2185, 89, 2896, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9536, ''body'', 0, 2194, 90, 2279, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9537, ''body'', 0, 2897, 91, 2185, 1448641214, 1, 2194),
  (191, 18, 86, 0, 9538, ''body'', 0, 2577, 92, 2194, 1448641214, 1, 2897),
  (191, 18, 86, 0, 9539, ''body'', 0, 2229, 93, 2897, 1448641214, 1, 2577),
  (191, 18, 86, 0, 9540, ''body'', 0, 2898, 94, 2577, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9541, ''body'', 0, 2289, 95, 2229, 1448641214, 1, 2898),
  (191, 18, 86, 0, 9542, ''body'', 0, 2320, 96, 2898, 1448641214, 1, 2289),
  (191, 18, 86, 0, 9543, ''body'', 0, 2229, 97, 2289, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9544, ''body'', 0, 2899, 98, 2320, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9545, ''body'', 0, 2887, 99, 2229, 1448641214, 1, 2899),
  (191, 18, 86, 0, 9546, ''body'', 0, 2900, 100, 2899, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9547, ''body'', 0, 2289, 101, 2887, 1448641214, 1, 2900),
  (191, 18, 86, 0, 9548, ''body'', 0, 2320, 102, 2900, 1448641214, 1, 2289),
  (191, 18, 86, 0, 9549, ''body'', 0, 2894, 103, 2289, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9550, ''body'', 0, 2895, 104, 2320, 1448641214, 1, 2894),
  (191, 18, 86, 0, 9551, ''body'', 0, 2884, 105, 2894, 1448641214, 1, 2895),
  (191, 18, 86, 0, 9552, ''body'', 0, 2901, 106, 2895, 1448641214, 1, 2884),
  (191, 18, 86, 0, 9553, ''body'', 0, 2902, 107, 2884, 1448641214, 1, 2901),
  (191, 18, 86, 0, 9554, ''body'', 0, 2365, 108, 2901, 1448641214, 1, 2902),
  (191, 18, 86, 0, 9555, ''body'', 0, 2317, 109, 2902, 1448641214, 1, 2365),
  (191, 18, 86, 0, 9556, ''body'', 0, 2903, 110, 2365, 1448641214, 1, 2317),
  (191, 18, 86, 0, 9557, ''body'', 0, 2233, 111, 2317, 1448641214, 1, 2903),
  (191, 18, 86, 0, 9558, ''body'', 0, 2904, 112, 2903, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9559, ''body'', 0, 2172, 113, 2233, 1448641214, 1, 2904),
  (191, 18, 86, 0, 9560, ''body'', 0, 2173, 114, 2904, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9561, ''body'', 0, 2905, 115, 2172, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9562, ''body'', 0, 2872, 116, 2173, 1448641214, 1, 2905),
  (191, 18, 86, 0, 9563, ''body'', 0, 2873, 117, 2905, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9564, ''body'', 0, 2906, 118, 2872, 1448641214, 1, 2873),
  (191, 18, 86, 0, 9565, ''body'', 0, 2907, 119, 2873, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9566, ''body'', 0, 2241, 120, 2906, 1448641214, 1, 2907),
  (191, 18, 86, 0, 9567, ''body'', 0, 2872, 121, 2907, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9568, ''body'', 0, 2873, 122, 2241, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9569, ''body'', 0, 2231, 123, 2872, 1448641214, 1, 2873),
  (191, 18, 86, 0, 9570, ''body'', 0, 2203, 124, 2873, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9571, ''body'', 0, 2339, 125, 2231, 1448641214, 1, 2203),
  (191, 18, 86, 0, 9572, ''body'', 0, 2666, 126, 2203, 1448641214, 1, 2339),
  (191, 18, 86, 0, 9573, ''body'', 0, 2449, 127, 2339, 1448641214, 1, 2666),
  (191, 18, 86, 0, 9574, ''body'', 0, 2229, 128, 2666, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9575, ''body'', 0, 2185, 129, 2449, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9576, ''body'', 0, 2908, 130, 2229, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9577, ''body'', 0, 2906, 131, 2185, 1448641214, 1, 2908),
  (191, 18, 86, 0, 9578, ''body'', 0, 2447, 132, 2908, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9579, ''body'', 0, 2909, 133, 2906, 1448641214, 1, 2447),
  (191, 18, 86, 0, 9580, ''body'', 0, 2296, 134, 2447, 1448641214, 1, 2909),
  (191, 18, 86, 0, 9581, ''body'', 0, 2910, 135, 2909, 1448641214, 1, 2296),
  (191, 18, 86, 0, 9582, ''body'', 0, 2233, 136, 2296, 1448641214, 1, 2910),
  (191, 18, 86, 0, 9583, ''body'', 0, 2889, 137, 2910, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9584, ''body'', 0, 2906, 138, 2233, 1448641214, 1, 2889),
  (191, 18, 86, 0, 9585, ''body'', 0, 2911, 139, 2889, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9586, ''body'', 0, 2912, 140, 2906, 1448641214, 1, 2911),
  (191, 18, 86, 0, 9587, ''body'', 0, 2192, 141, 2911, 1448641214, 1, 2912),
  (191, 18, 86, 0, 9588, ''body'', 0, 2913, 142, 2912, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9589, ''body'', 0, 2914, 143, 2192, 1448641214, 1, 2913),
  (191, 18, 86, 0, 9590, ''body'', 0, 2906, 144, 2913, 1448641214, 1, 2914),
  (191, 18, 86, 0, 9591, ''body'', 0, 2915, 145, 2914, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9592, ''body'', 0, 2916, 146, 2906, 1448641214, 1, 2915),
  (191, 18, 86, 0, 9593, ''body'', 0, 2917, 147, 2915, 1448641214, 1, 2916),
  (191, 18, 86, 0, 9594, ''body'', 0, 2241, 148, 2916, 1448641214, 1, 2917),
  (191, 18, 86, 0, 9595, ''body'', 0, 2173, 149, 2917, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9596, ''body'', 0, 2577, 150, 2241, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9597, ''body'', 0, 2918, 151, 2173, 1448641214, 1, 2577),
  (191, 18, 86, 0, 9598, ''body'', 0, 2919, 152, 2577, 1448641214, 1, 2918),
  (191, 18, 86, 0, 9599, ''body'', 0, 2920, 153, 2918, 1448641214, 1, 2919),
  (191, 18, 86, 0, 9600, ''body'', 0, 2185, 154, 2919, 1448641214, 1, 2920),
  (191, 18, 86, 0, 9601, ''body'', 0, 2921, 155, 2920, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9602, ''body'', 0, 2225, 156, 2185, 1448641214, 1, 2921),
  (191, 18, 86, 0, 9603, ''body'', 0, 2922, 157, 2921, 1448641214, 1, 2225),
  (191, 18, 86, 0, 9604, ''body'', 0, 2296, 158, 2225, 1448641214, 1, 2922),
  (191, 18, 86, 0, 9605, ''body'', 0, 2173, 159, 2922, 1448641214, 1, 2296),
  (191, 18, 86, 0, 9606, ''body'', 0, 2908, 160, 2296, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9607, ''body'', 0, 2231, 161, 2173, 1448641214, 1, 2908),
  (191, 18, 86, 0, 9608, ''body'', 0, 2923, 162, 2908, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9609, ''body'', 0, 2185, 163, 2231, 1448641214, 1, 2923),
  (191, 18, 86, 0, 9610, ''body'', 0, 2326, 164, 2923, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9611, ''body'', 0, 2265, 165, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9612, ''body'', 0, 2185, 166, 2326, 1448641214, 1, 2265),
  (191, 18, 86, 0, 9613, ''body'', 0, 2924, 167, 2265, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9614, ''body'', 0, 2233, 168, 2185, 1448641214, 1, 2924),
  (191, 18, 86, 0, 9615, ''body'', 0, 2887, 169, 2924, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9616, ''body'', 0, 2265, 170, 2233, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9617, ''body'', 0, 2185, 171, 2887, 1448641214, 1, 2265),
  (191, 18, 86, 0, 9618, ''body'', 0, 2188, 172, 2265, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9619, ''body'', 0, 2449, 173, 2185, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9620, ''body'', 0, 2925, 174, 2188, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9621, ''body'', 0, 2926, 175, 2449, 1448641214, 1, 2925),
  (191, 18, 86, 0, 9622, ''body'', 0, 2927, 176, 2925, 1448641214, 1, 2926),
  (191, 18, 86, 0, 9623, ''body'', 0, 2279, 177, 2926, 1448641214, 1, 2927),
  (191, 18, 86, 0, 9624, ''body'', 0, 2928, 178, 2927, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9625, ''body'', 0, 2192, 179, 2279, 1448641214, 1, 2928),
  (191, 18, 86, 0, 9626, ''body'', 0, 2846, 180, 2928, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9627, ''body'', 0, 2929, 181, 2192, 1448641214, 1, 2846),
  (191, 18, 86, 0, 9628, ''body'', 0, 2752, 182, 2846, 1448641214, 1, 2929),
  (191, 18, 86, 0, 9629, ''body'', 0, 2930, 183, 2929, 1448641214, 1, 2752),
  (191, 18, 86, 0, 9630, ''body'', 0, 2173, 184, 2752, 1448641214, 1, 2930),
  (191, 18, 86, 0, 9631, ''body'', 0, 2892, 185, 2930, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9632, ''body'', 0, 2185, 186, 2173, 1448641214, 1, 2892),
  (191, 18, 86, 0, 9633, ''body'', 0, 2326, 187, 2892, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9634, ''body'', 0, 2666, 188, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9635, ''body'', 0, 2229, 189, 2326, 1448641214, 1, 2666),
  (191, 18, 86, 0, 9636, ''body'', 0, 2931, 190, 2666, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9637, ''body'', 0, 2233, 191, 2229, 1448641214, 1, 2931),
  (191, 18, 86, 0, 9638, ''body'', 0, 2932, 192, 2931, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9639, ''body'', 0, 2872, 193, 2233, 1448641214, 1, 2932),
  (191, 18, 86, 0, 9640, ''body'', 0, 2933, 194, 2932, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9641, ''body'', 0, 2934, 195, 2872, 1448641214, 1, 2933),
  (191, 18, 86, 0, 9642, ''body'', 0, 2390, 196, 2933, 1448641214, 1, 2934),
  (191, 18, 86, 0, 9643, ''body'', 0, 2935, 197, 2934, 1448641214, 1, 2390),
  (191, 18, 86, 0, 9644, ''body'', 0, 2936, 198, 2390, 1448641214, 1, 2935),
  (191, 18, 86, 0, 9645, ''body'', 0, 2231, 199, 2935, 1448641214, 1, 2936),
  (191, 18, 86, 0, 9646, ''body'', 0, 2185, 200, 2936, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9647, ''body'', 0, 2937, 201, 2231, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9648, ''body'', 0, 2938, 202, 2185, 1448641214, 1, 2937),
  (191, 18, 86, 0, 9649, ''body'', 0, 2939, 203, 2937, 1448641214, 1, 2938),
  (191, 18, 86, 0, 9650, ''body'', 0, 2236, 204, 2938, 1448641214, 1, 2939),
  (191, 18, 86, 0, 9651, ''body'', 0, 2233, 205, 2939, 1448641214, 1, 2236),
  (191, 18, 86, 0, 9652, ''body'', 0, 2229, 206, 2236, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9653, ''body'', 0, 2940, 207, 2233, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9654, ''body'', 0, 2172, 208, 2229, 1448641214, 1, 2940),
  (191, 18, 86, 0, 9655, ''body'', 0, 2941, 209, 2940, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9656, ''body'', 0, 2942, 210, 2172, 1448641214, 1, 2941),
  (191, 18, 86, 0, 9657, ''body'', 0, 2449, 211, 2941, 1448641214, 1, 2942),
  (191, 18, 86, 0, 9658, ''body'', 0, 2229, 212, 2942, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9659, ''body'', 0, 2241, 213, 2449, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9660, ''body'', 0, 2943, 214, 2229, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9661, ''body'', 0, 2944, 215, 2241, 1448641214, 1, 2943),
  (191, 18, 86, 0, 9662, ''body'', 0, 2192, 216, 2943, 1448641214, 1, 2944),
  (191, 18, 86, 0, 9663, ''body'', 0, 2185, 217, 2944, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9664, ''body'', 0, 2945, 218, 2192, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9665, ''body'', 0, 2508, 219, 2185, 1448641214, 1, 2945),
  (191, 18, 86, 0, 9666, ''body'', 0, 2935, 220, 2945, 1448641214, 1, 2508),
  (191, 18, 86, 0, 9667, ''body'', 0, 2946, 221, 2508, 1448641214, 1, 2935),
  (191, 18, 86, 0, 9668, ''body'', 0, 2947, 222, 2935, 1448641214, 1, 2946),
  (191, 18, 86, 0, 9669, ''body'', 0, 2948, 223, 2946, 1448641214, 1, 2947),
  (191, 18, 86, 0, 9670, ''body'', 0, 2751, 224, 2947, 1448641214, 1, 2948),
  (191, 18, 86, 0, 9671, ''body'', 0, 2949, 225, 2948, 1448641214, 1, 2751),
  (191, 18, 86, 0, 9672, ''body'', 0, 2843, 226, 2751, 1448641214, 1, 2949),
  (191, 18, 86, 0, 9673, ''body'', 0, 2950, 227, 2949, 1448641214, 1, 2843),
  (191, 18, 86, 0, 9674, ''body'', 0, 2185, 228, 2843, 1448641214, 1, 2950),
  (191, 18, 86, 0, 9675, ''body'', 0, 2188, 229, 2950, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9676, ''body'', 0, 2372, 230, 2185, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9677, ''body'', 0, 2173, 231, 2188, 1448641214, 1, 2372),
  (191, 18, 86, 0, 9678, ''body'', 0, 2951, 232, 2372, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9679, ''body'', 0, 2279, 233, 2173, 1448641214, 1, 2951),
  (191, 18, 86, 0, 9680, ''body'', 0, 2229, 234, 2951, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9681, ''body'', 0, 2663, 235, 2279, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9682, ''body'', 0, 2952, 236, 2229, 1448641214, 1, 2663),
  (191, 18, 86, 0, 9683, ''body'', 0, 2194, 237, 2663, 1448641214, 1, 2952),
  (191, 18, 86, 0, 9684, ''body'', 0, 2953, 238, 2952, 1448641214, 1, 2194),
  (191, 18, 86, 0, 9685, ''body'', 0, 2300, 239, 2194, 1448641214, 1, 2953),
  (191, 18, 86, 0, 9686, ''body'', 0, 2317, 240, 2953, 1448641214, 1, 2300),
  (191, 18, 86, 0, 9687, ''body'', 0, 2897, 241, 2300, 1448641214, 1, 2317),
  (191, 18, 86, 0, 9688, ''body'', 0, 2577, 242, 2317, 1448641214, 1, 2897),
  (191, 18, 86, 0, 9689, ''body'', 0, 2233, 243, 2897, 1448641214, 1, 2577),
  (191, 18, 86, 0, 9690, ''body'', 0, 2934, 244, 2577, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9691, ''body'', 0, 2411, 245, 2233, 1448641214, 1, 2934),
  (191, 18, 86, 0, 9692, ''body'', 0, 2172, 246, 2934, 1448641214, 1, 2411),
  (191, 18, 86, 0, 9693, ''body'', 0, 2872, 247, 2411, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9694, ''body'', 0, 2873, 248, 2172, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9695, ''body'', 0, 2241, 249, 2872, 1448641214, 1, 2873),
  (191, 18, 86, 0, 9696, ''body'', 0, 2954, 250, 2873, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9697, ''body'', 0, 2880, 251, 2241, 1448641214, 1, 2954),
  (191, 18, 86, 0, 9698, ''body'', 0, 2881, 252, 2954, 1448641214, 1, 2880),
  (191, 18, 86, 0, 9699, ''body'', 0, 2915, 253, 2880, 1448641214, 1, 2881),
  (191, 18, 86, 0, 9700, ''body'', 0, 2955, 254, 2881, 1448641214, 1, 2915),
  (191, 18, 86, 0, 9701, ''body'', 0, 2956, 255, 2915, 1448641214, 1, 2955),
  (191, 18, 86, 0, 9702, ''body'', 0, 2214, 256, 2955, 1448641214, 1, 2956),
  (191, 18, 86, 0, 9703, ''body'', 0, 2320, 257, 2956, 1448641214, 1, 2214),
  (191, 18, 86, 0, 9704, ''body'', 0, 2419, 258, 2214, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9705, ''body'', 0, 2218, 259, 2320, 1448641214, 1, 2419),
  (191, 18, 86, 0, 9706, ''body'', 0, 2957, 260, 2419, 1448641214, 1, 2218),
  (191, 18, 86, 0, 9707, ''body'', 0, 2958, 261, 2218, 1448641214, 1, 2957),
  (191, 18, 86, 0, 9708, ''body'', 0, 2751, 262, 2957, 1448641214, 1, 2958),
  (191, 18, 86, 0, 9709, ''body'', 0, 2949, 263, 2958, 1448641214, 1, 2751),
  (191, 18, 86, 0, 9710, ''body'', 0, 2233, 264, 2751, 1448641214, 1, 2949),
  (191, 18, 86, 0, 9711, ''body'', 0, 2887, 265, 2949, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9712, ''body'', 0, 2959, 266, 2233, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9713, ''body'', 0, 2960, 267, 2887, 1448641214, 1, 2959),
  (191, 18, 86, 0, 9714, ''body'', 0, 2863, 268, 2959, 1448641214, 1, 2960),
  (191, 18, 86, 0, 9715, ''body'', 0, 2961, 269, 2960, 1448641214, 1, 2863),
  (191, 18, 86, 0, 9716, ''body'', 0, 2929, 270, 2863, 1448641214, 1, 2961),
  (191, 18, 86, 0, 9717, ''body'', 0, 2279, 271, 2961, 1448641214, 1, 2929),
  (191, 18, 86, 0, 9718, ''body'', 0, 2229, 272, 2929, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9719, ''body'', 0, 2962, 273, 2279, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9720, ''body'', 0, 2192, 274, 2229, 1448641214, 1, 2962),
  (191, 18, 86, 0, 9721, ''body'', 0, 2963, 275, 2962, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9722, ''body'', 0, 2173, 276, 2192, 1448641214, 1, 2963),
  (191, 18, 86, 0, 9723, ''body'', 0, 2366, 277, 2963, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9724, ''body'', 0, 2964, 278, 2173, 1448641214, 1, 2366),
  (191, 18, 86, 0, 9725, ''body'', 0, 2965, 279, 2366, 1448641214, 1, 2964),
  (191, 18, 86, 0, 9726, ''body'', 0, 2506, 280, 2964, 1448641214, 1, 2965),
  (191, 18, 86, 0, 9727, ''body'', 0, 2881, 281, 2965, 1448641214, 1, 2506),
  (191, 18, 86, 0, 9728, ''body'', 0, 2966, 282, 2506, 1448641214, 1, 2881),
  (191, 18, 86, 0, 9729, ''body'', 0, 2172, 283, 2881, 1448641214, 1, 2966),
  (191, 18, 86, 0, 9730, ''body'', 0, 2279, 284, 2966, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9731, ''body'', 0, 2449, 285, 2172, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9732, ''body'', 0, 2928, 286, 2279, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9733, ''body'', 0, 2967, 287, 2449, 1448641214, 1, 2928),
  (191, 18, 86, 0, 9734, ''body'', 0, 2902, 288, 2928, 1448641214, 1, 2967),
  (191, 18, 86, 0, 9735, ''body'', 0, 2233, 289, 2967, 1448641214, 1, 2902),
  (191, 18, 86, 0, 9736, ''body'', 0, 2968, 290, 2902, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9737, ''body'', 0, 2241, 291, 2233, 1448641214, 1, 2968),
  (191, 18, 86, 0, 9738, ''body'', 0, 2969, 292, 2968, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9739, ''body'', 0, 2172, 293, 2241, 1448641214, 1, 2969),
  (191, 18, 86, 0, 9740, ''body'', 0, 2644, 294, 2969, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9741, ''body'', 0, 2173, 295, 2172, 1448641214, 1, 2644),
  (191, 18, 86, 0, 9742, ''body'', 0, 2888, 296, 2644, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9743, ''body'', 0, 2188, 297, 2173, 1448641214, 1, 2888),
  (191, 18, 86, 0, 9744, ''body'', 0, 2229, 298, 2888, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9745, ''body'', 0, 2970, 299, 2188, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9746, ''body'', 0, 2185, 300, 2229, 1448641214, 1, 2970),
  (191, 18, 86, 0, 9747, ''body'', 0, 2971, 301, 2970, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9748, ''body'', 0, 2293, 302, 2185, 1448641214, 1, 2971),
  (191, 18, 86, 0, 9749, ''body'', 0, 2666, 303, 2971, 1448641214, 1, 2293),
  (191, 18, 86, 0, 9750, ''body'', 0, 2972, 304, 2293, 1448641214, 1, 2666),
  (191, 18, 86, 0, 9751, ''body'', 0, 2872, 305, 2666, 1448641214, 1, 2972),
  (191, 18, 86, 0, 9752, ''body'', 0, 2942, 306, 2972, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9753, ''body'', 0, 2454, 307, 2872, 1448641214, 1, 2942),
  (191, 18, 86, 0, 9754, ''body'', 0, 2973, 308, 2942, 1448641214, 1, 2454),
  (191, 18, 86, 0, 9755, ''body'', 0, 2974, 309, 2454, 1448641214, 1, 2973),
  (191, 18, 86, 0, 9756, ''body'', 0, 2975, 310, 2973, 1448641214, 1, 2974),
  (191, 18, 86, 0, 9757, ''body'', 0, 2233, 311, 2974, 1448641214, 1, 2975),
  (191, 18, 86, 0, 9758, ''body'', 0, 2375, 312, 2975, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9759, ''body'', 0, 2964, 313, 2233, 1448641214, 1, 2375),
  (191, 18, 86, 0, 9760, ''body'', 0, 2663, 314, 2375, 1448641214, 1, 2964),
  (191, 18, 86, 0, 9761, ''body'', 0, 2976, 315, 2964, 1448641214, 1, 2663),
  (191, 18, 86, 0, 9762, ''body'', 0, 2192, 316, 2663, 1448641214, 1, 2976),
  (191, 18, 86, 0, 9763, ''body'', 0, 2977, 317, 2976, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9764, ''body'', 0, 2449, 318, 2192, 1448641214, 1, 2977),
  (191, 18, 86, 0, 9765, ''body'', 0, 2229, 319, 2977, 1448641214, 1, 2449),
  (191, 18, 86, 0, 9766, ''body'', 0, 2978, 320, 2449, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9767, ''body'', 0, 2279, 321, 2229, 1448641214, 1, 2978),
  (191, 18, 86, 0, 9768, ''body'', 0, 2229, 322, 2978, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9769, ''body'', 0, 2979, 323, 2279, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9770, ''body'', 0, 2320, 324, 2229, 1448641214, 1, 2979),
  (191, 18, 86, 0, 9771, ''body'', 0, 2933, 325, 2979, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9772, ''body'', 0, 2506, 326, 2320, 1448641214, 1, 2933),
  (191, 18, 86, 0, 9773, ''body'', 0, 2507, 327, 2933, 1448641214, 1, 2506),
  (191, 18, 86, 0, 9774, ''body'', 0, 2241, 328, 2506, 1448641214, 1, 2507),
  (191, 18, 86, 0, 9775, ''body'', 0, 2969, 329, 2507, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9776, ''body'', 0, 2172, 330, 2241, 1448641214, 1, 2969),
  (191, 18, 86, 0, 9777, ''body'', 0, 2173, 331, 2969, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9778, ''body'', 0, 2863, 332, 2172, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9779, ''body'', 0, 2932, 333, 2173, 1448641214, 1, 2863),
  (191, 18, 86, 0, 9780, ''body'', 0, 2233, 334, 2863, 1448641214, 1, 2932),
  (191, 18, 86, 0, 9781, ''body'', 0, 2887, 335, 2932, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9782, ''body'', 0, 2884, 336, 2233, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9783, ''body'', 0, 2173, 337, 2887, 1448641214, 1, 2884),
  (191, 18, 86, 0, 9784, ''body'', 0, 2888, 338, 2884, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9785, ''body'', 0, 2980, 339, 2173, 1448641214, 1, 2888),
  (191, 18, 86, 0, 9786, ''body'', 0, 2231, 340, 2888, 1448641214, 1, 2980),
  (191, 18, 86, 0, 9787, ''body'', 0, 2173, 341, 2980, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9788, ''body'', 0, 2188, 342, 2231, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9789, ''body'', 0, 2173, 343, 2173, 1448641214, 1, 2188),
  (191, 18, 86, 0, 9790, ''body'', 0, 2417, 344, 2188, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9791, ''body'', 0, 2231, 345, 2173, 1448641214, 1, 2417),
  (191, 18, 86, 0, 9792, ''body'', 0, 2981, 346, 2417, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9793, ''body'', 0, 2173, 347, 2231, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9794, ''body'', 0, 2981, 348, 2981, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9795, ''body'', 0, 2231, 349, 2173, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9796, ''body'', 0, 2203, 350, 2981, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9797, ''body'', 0, 2334, 351, 2231, 1448641214, 1, 2203),
  (191, 18, 86, 0, 9798, ''body'', 0, 2197, 352, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 9799, ''body'', 0, 2982, 353, 2334, 1448641214, 1, 2197),
  (191, 18, 86, 0, 9800, ''body'', 0, 2983, 354, 2197, 1448641214, 1, 2982),
  (191, 18, 86, 0, 9801, ''body'', 0, 2284, 355, 2982, 1448641214, 1, 2983),
  (191, 18, 86, 0, 9802, ''body'', 0, 2185, 356, 2983, 1448641214, 1, 2284),
  (191, 18, 86, 0, 9803, ''body'', 0, 2984, 357, 2284, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9804, ''body'', 0, 2192, 358, 2185, 1448641214, 1, 2984),
  (191, 18, 86, 0, 9805, ''body'', 0, 2507, 359, 2984, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9806, ''body'', 0, 2985, 360, 2192, 1448641214, 1, 2507),
  (191, 18, 86, 0, 9807, ''body'', 0, 2241, 361, 2507, 1448641214, 1, 2985),
  (191, 18, 86, 0, 9808, ''body'', 0, 2173, 362, 2985, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9809, ''body'', 0, 2986, 363, 2241, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9810, ''body'', 0, 2320, 364, 2173, 1448641214, 1, 2986),
  (191, 18, 86, 0, 9811, ''body'', 0, 2229, 365, 2986, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9812, ''body'', 0, 2173, 366, 2320, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9813, ''body'', 0, 2293, 367, 2229, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9814, ''body'', 0, 2254, 368, 2173, 1448641214, 1, 2293),
  (191, 18, 86, 0, 9815, ''body'', 0, 2964, 369, 2293, 1448641214, 1, 2254),
  (191, 18, 86, 0, 9816, ''body'', 0, 2987, 370, 2254, 1448641214, 1, 2964),
  (191, 18, 86, 0, 9817, ''body'', 0, 2279, 371, 2964, 1448641214, 1, 2987),
  (191, 18, 86, 0, 9818, ''body'', 0, 2229, 372, 2987, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9819, ''body'', 0, 2988, 373, 2279, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9820, ''body'', 0, 2289, 374, 2229, 1448641214, 1, 2988),
  (191, 18, 86, 0, 9821, ''body'', 0, 2231, 375, 2988, 1448641214, 1, 2289),
  (191, 18, 86, 0, 9822, ''body'', 0, 2173, 376, 2289, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9823, ''body'', 0, 2256, 377, 2231, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9824, ''body'', 0, 2979, 378, 2173, 1448641214, 1, 2256),
  (191, 18, 86, 0, 9825, ''body'', 0, 2989, 379, 2256, 1448641214, 1, 2979),
  (191, 18, 86, 0, 9826, ''body'', 0, 2231, 380, 2979, 1448641214, 1, 2989),
  (191, 18, 86, 0, 9827, ''body'', 0, 2203, 381, 2989, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9828, ''body'', 0, 2326, 382, 2231, 1448641214, 1, 2203),
  (191, 18, 86, 0, 9829, ''body'', 0, 2241, 383, 2203, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9830, ''body'', 0, 2956, 384, 2326, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9831, ''body'', 0, 2214, 385, 2241, 1448641214, 1, 2956),
  (191, 18, 86, 0, 9832, ''body'', 0, 2906, 386, 2956, 1448641214, 1, 2214),
  (191, 18, 86, 0, 9833, ''body'', 0, 2915, 387, 2214, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9834, ''body'', 0, 2320, 388, 2906, 1448641214, 1, 2915),
  (191, 18, 86, 0, 9835, ''body'', 0, 2981, 389, 2915, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9836, ''body'', 0, 2229, 390, 2320, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9837, ''body'', 0, 2990, 391, 2981, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9838, ''body'', 0, 2991, 392, 2229, 1448641214, 1, 2990),
  (191, 18, 86, 0, 9839, ''body'', 0, 2964, 393, 2990, 1448641214, 1, 2991),
  (191, 18, 86, 0, 9840, ''body'', 0, 2641, 394, 2991, 1448641214, 1, 2964),
  (191, 18, 86, 0, 9841, ''body'', 0, 2482, 395, 2964, 1448641214, 1, 2641),
  (191, 18, 86, 0, 9842, ''body'', 0, 2408, 396, 2641, 1448641214, 1, 2482),
  (191, 18, 86, 0, 9843, ''body'', 0, 2173, 397, 2482, 1448641214, 1, 2408),
  (191, 18, 86, 0, 9844, ''body'', 0, 2806, 398, 2408, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9845, ''body'', 0, 2992, 399, 2173, 1448641214, 1, 2806),
  (191, 18, 86, 0, 9846, ''body'', 0, 2233, 400, 2806, 1448641214, 1, 2992),
  (191, 18, 86, 0, 9847, ''body'', 0, 2265, 401, 2992, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9848, ''body'', 0, 2983, 402, 2233, 1448641214, 1, 2265),
  (191, 18, 86, 0, 9849, ''body'', 0, 2993, 403, 2265, 1448641214, 1, 2983),
  (191, 18, 86, 0, 9850, ''body'', 0, 2296, 404, 2983, 1448641214, 1, 2993),
  (191, 18, 86, 0, 9851, ''body'', 0, 2334, 405, 2993, 1448641214, 1, 2296),
  (191, 18, 86, 0, 9852, ''body'', 0, 2981, 406, 2296, 1448641214, 1, 2334),
  (191, 18, 86, 0, 9853, ''body'', 0, 2994, 407, 2334, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9854, ''body'', 0, 2192, 408, 2981, 1448641214, 1, 2994),
  (191, 18, 86, 0, 9855, ''body'', 0, 2447, 409, 2994, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9856, ''body'', 0, 2185, 410, 2192, 1448641214, 1, 2447),
  (191, 18, 86, 0, 9857, ''body'', 0, 2995, 411, 2447, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9858, ''body'', 0, 2996, 412, 2185, 1448641214, 1, 2995),
  (191, 18, 86, 0, 9859, ''body'', 0, 2221, 413, 2995, 1448641214, 1, 2996),
  (191, 18, 86, 0, 9860, ''body'', 0, 2810, 414, 2996, 1448641214, 1, 2221),
  (191, 18, 86, 0, 9861, ''body'', 0, 2192, 415, 2221, 1448641214, 1, 2810),
  (191, 18, 86, 0, 9862, ''body'', 0, 2997, 416, 2810, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9863, ''body'', 0, 2241, 417, 2192, 1448641214, 1, 2997),
  (191, 18, 86, 0, 9864, ''body'', 0, 2998, 418, 2997, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9865, ''body'', 0, 2320, 419, 2241, 1448641214, 1, 2998),
  (191, 18, 86, 0, 9866, ''body'', 0, 2952, 420, 2998, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9867, ''body'', 0, 2999, 421, 2320, 1448641214, 1, 2952),
  (191, 18, 86, 0, 9868, ''body'', 0, 3000, 422, 2952, 1448641214, 1, 2999),
  (191, 18, 86, 0, 9869, ''body'', 0, 2377, 423, 2999, 1448641214, 1, 3000),
  (191, 18, 86, 0, 9870, ''body'', 0, 2981, 424, 3000, 1448641214, 1, 2377),
  (191, 18, 86, 0, 9871, ''body'', 0, 2972, 425, 2377, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9872, ''body'', 0, 2872, 426, 2981, 1448641214, 1, 2972),
  (191, 18, 86, 0, 9873, ''body'', 0, 2873, 427, 2972, 1448641214, 1, 2872),
  (191, 18, 86, 0, 9874, ''body'', 0, 2265, 428, 2872, 1448641214, 1, 2873),
  (191, 18, 86, 0, 9875, ''body'', 0, 2221, 429, 2873, 1448641214, 1, 2265),
  (191, 18, 86, 0, 9876, ''body'', 0, 3001, 430, 2265, 1448641214, 1, 2221),
  (191, 18, 86, 0, 9877, ''body'', 0, 2203, 431, 2221, 1448641214, 1, 3001),
  (191, 18, 86, 0, 9878, ''body'', 0, 2334, 432, 3001, 1448641214, 1, 2203),
  (191, 18, 86, 0, 9879, ''body'', 0, 2221, 433, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 9880, ''body'', 0, 2506, 434, 2334, 1448641214, 1, 2221),
  (191, 18, 86, 0, 9881, ''body'', 0, 3002, 435, 2221, 1448641214, 1, 2506),
  (191, 18, 86, 0, 9882, ''body'', 0, 2447, 436, 2506, 1448641214, 1, 3002),
  (191, 18, 86, 0, 9883, ''body'', 0, 2981, 437, 3002, 1448641214, 1, 2447),
  (191, 18, 86, 0, 9884, ''body'', 0, 2365, 438, 2447, 1448641214, 1, 2981),
  (191, 18, 86, 0, 9885, ''body'', 0, 2173, 439, 2981, 1448641214, 1, 2365),
  (191, 18, 86, 0, 9886, ''body'', 0, 2949, 440, 2365, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9887, ''body'', 0, 2231, 441, 2173, 1448641214, 1, 2949),
  (191, 18, 86, 0, 9888, ''body'', 0, 2203, 442, 2949, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9889, ''body'', 0, 2998, 443, 2231, 1448641214, 1, 2203),
  (191, 18, 86, 0, 9890, ''body'', 0, 2978, 444, 2203, 1448641214, 1, 2998),
  (191, 18, 86, 0, 9891, ''body'', 0, 3003, 445, 2998, 1448641214, 1, 2978),
  (191, 18, 86, 0, 9892, ''body'', 0, 3004, 446, 2978, 1448641214, 1, 3003),
  (191, 18, 86, 0, 9893, ''body'', 0, 3005, 447, 3003, 1448641214, 1, 3004),
  (191, 18, 86, 0, 9894, ''body'', 0, 2185, 448, 3004, 1448641214, 1, 3005),
  (191, 18, 86, 0, 9895, ''body'', 0, 2326, 449, 3005, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9896, ''body'', 0, 2320, 450, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9897, ''body'', 0, 3006, 451, 2326, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9898, ''body'', 0, 3007, 452, 2320, 1448641214, 1, 3006),
  (191, 18, 86, 0, 9899, ''body'', 0, 2911, 453, 3006, 1448641214, 1, 3007),
  (191, 18, 86, 0, 9900, ''body'', 0, 3008, 454, 3007, 1448641214, 1, 2911),
  (191, 18, 86, 0, 9901, ''body'', 0, 3009, 455, 2911, 1448641214, 1, 3008),
  (191, 18, 86, 0, 9902, ''body'', 0, 2164, 456, 3008, 1448641214, 1, 3009),
  (191, 18, 86, 0, 9903, ''body'', 0, 2300, 457, 3009, 1448641214, 1, 2164),
  (191, 18, 86, 0, 9904, ''body'', 0, 2185, 458, 2164, 1448641214, 1, 2300),
  (191, 18, 86, 0, 9905, ''body'', 0, 2665, 459, 2300, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9906, ''body'', 0, 2166, 460, 2185, 1448641214, 1, 2665),
  (191, 18, 86, 0, 9907, ''body'', 0, 2864, 461, 2665, 1448641214, 1, 2166),
  (191, 18, 86, 0, 9908, ''body'', 0, 2241, 462, 2166, 1448641214, 1, 2864),
  (191, 18, 86, 0, 9909, ''body'', 0, 2173, 463, 2864, 1448641214, 1, 2241),
  (191, 18, 86, 0, 9910, ''body'', 0, 3010, 464, 2241, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9911, ''body'', 0, 3005, 465, 2173, 1448641214, 1, 3010),
  (191, 18, 86, 0, 9912, ''body'', 0, 3011, 466, 3010, 1448641214, 1, 3005),
  (191, 18, 86, 0, 9913, ''body'', 0, 2752, 467, 3005, 1448641214, 1, 3011),
  (191, 18, 86, 0, 9914, ''body'', 0, 3012, 468, 3011, 1448641214, 1, 2752),
  (191, 18, 86, 0, 9915, ''body'', 0, 3013, 469, 2752, 1448641214, 1, 3012),
  (191, 18, 86, 0, 9916, ''body'', 0, 2372, 470, 3012, 1448641214, 1, 3013),
  (191, 18, 86, 0, 9917, ''body'', 0, 3014, 471, 3013, 1448641214, 1, 2372),
  (191, 18, 86, 0, 9918, ''body'', 0, 2279, 472, 2372, 1448641214, 1, 3014),
  (191, 18, 86, 0, 9919, ''body'', 0, 2255, 473, 3014, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9920, ''body'', 0, 3015, 474, 2279, 1448641214, 1, 2255),
  (191, 18, 86, 0, 9921, ''body'', 0, 2320, 475, 2255, 1448641214, 1, 3015),
  (191, 18, 86, 0, 9922, ''body'', 0, 2173, 476, 3015, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9923, ''body'', 0, 2983, 477, 2320, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9924, ''body'', 0, 3016, 478, 2173, 1448641214, 1, 2983),
  (191, 18, 86, 0, 9925, ''body'', 0, 2172, 479, 2983, 1448641214, 1, 3016),
  (191, 18, 86, 0, 9926, ''body'', 0, 2185, 480, 3016, 1448641214, 1, 2172),
  (191, 18, 86, 0, 9927, ''body'', 0, 2166, 481, 2172, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9928, ''body'', 0, 3017, 482, 2185, 1448641214, 1, 2166),
  (191, 18, 86, 0, 9929, ''body'', 0, 2192, 483, 2166, 1448641214, 1, 3017),
  (191, 18, 86, 0, 9930, ''body'', 0, 3018, 484, 3017, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9931, ''body'', 0, 2999, 485, 2192, 1448641214, 1, 3018),
  (191, 18, 86, 0, 9932, ''body'', 0, 2279, 486, 3018, 1448641214, 1, 2999),
  (191, 18, 86, 0, 9933, ''body'', 0, 2229, 487, 2999, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9934, ''body'', 0, 3019, 488, 2279, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9935, ''body'', 0, 3020, 489, 2229, 1448641214, 1, 3019),
  (191, 18, 86, 0, 9936, ''body'', 0, 2229, 490, 3019, 1448641214, 1, 3020),
  (191, 18, 86, 0, 9937, ''body'', 0, 3021, 491, 3020, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9938, ''body'', 0, 3022, 492, 2229, 1448641214, 1, 3021),
  (191, 18, 86, 0, 9939, ''body'', 0, 3023, 493, 3021, 1448641214, 1, 3022),
  (191, 18, 86, 0, 9940, ''body'', 0, 2320, 494, 3022, 1448641214, 1, 3023),
  (191, 18, 86, 0, 9941, ''body'', 0, 2229, 495, 3023, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9942, ''body'', 0, 2887, 496, 2320, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9943, ''body'', 0, 2185, 497, 2229, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9944, ''body'', 0, 3024, 498, 2887, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9945, ''body'', 0, 2231, 499, 2185, 1448641214, 1, 3024),
  (191, 18, 86, 0, 9946, ''body'', 0, 2983, 500, 3024, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9947, ''body'', 0, 2482, 501, 2231, 1448641214, 1, 2983),
  (191, 18, 86, 0, 9948, ''body'', 0, 2906, 502, 2983, 1448641214, 1, 2482),
  (191, 18, 86, 0, 9949, ''body'', 0, 2419, 503, 2482, 1448641214, 1, 2906),
  (191, 18, 86, 0, 9950, ''body'', 0, 3025, 504, 2906, 1448641214, 1, 2419),
  (191, 18, 86, 0, 9951, ''body'', 0, 2202, 505, 2419, 1448641214, 1, 3025),
  (191, 18, 86, 0, 9952, ''body'', 0, 3026, 506, 3025, 1448641214, 1, 2202),
  (191, 18, 86, 0, 9953, ''body'', 0, 2173, 507, 2202, 1448641214, 1, 3026),
  (191, 18, 86, 0, 9954, ''body'', 0, 3027, 508, 3026, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9955, ''body'', 0, 2231, 509, 2173, 1448641214, 1, 3027),
  (191, 18, 86, 0, 9956, ''body'', 0, 2185, 510, 3027, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9957, ''body'', 0, 2326, 511, 2231, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9958, ''body'', 0, 2300, 512, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 9959, ''body'', 0, 2185, 513, 2326, 1448641214, 1, 2300),
  (191, 18, 86, 0, 9960, ''body'', 0, 2816, 514, 2300, 1448641214, 1, 2185),
  (191, 18, 86, 0, 9961, ''body'', 0, 3028, 515, 2185, 1448641214, 1, 2816),
  (191, 18, 86, 0, 9962, ''body'', 0, 3029, 516, 2816, 1448641214, 1, 3028),
  (191, 18, 86, 0, 9963, ''body'', 0, 2279, 517, 3028, 1448641214, 1, 3029),
  (191, 18, 86, 0, 9964, ''body'', 0, 2258, 518, 3029, 1448641214, 1, 2279),
  (191, 18, 86, 0, 9965, ''body'', 0, 2192, 519, 2279, 1448641214, 1, 2258),
  (191, 18, 86, 0, 9966, ''body'', 0, 2507, 520, 2258, 1448641214, 1, 2192),
  (191, 18, 86, 0, 9967, ''body'', 0, 2320, 521, 2192, 1448641214, 1, 2507),
  (191, 18, 86, 0, 9968, ''body'', 0, 3030, 522, 2507, 1448641214, 1, 2320),
  (191, 18, 86, 0, 9969, ''body'', 0, 3031, 523, 2320, 1448641214, 1, 3030),
  (191, 18, 86, 0, 9970, ''body'', 0, 3032, 524, 3030, 1448641214, 1, 3031),
  (191, 18, 86, 0, 9971, ''body'', 0, 2296, 525, 3031, 1448641214, 1, 3032),
  (191, 18, 86, 0, 9972, ''body'', 0, 2173, 526, 3032, 1448641214, 1, 2296),
  (191, 18, 86, 0, 9973, ''body'', 0, 3003, 527, 2296, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9974, ''body'', 0, 2231, 528, 2173, 1448641214, 1, 3003),
  (191, 18, 86, 0, 9975, ''body'', 0, 2173, 529, 3003, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9976, ''body'', 0, 2267, 530, 2231, 1448641214, 1, 2173),
  (191, 18, 86, 0, 9977, ''body'', 0, 3033, 531, 2173, 1448641214, 1, 2267),
  (191, 18, 86, 0, 9978, ''body'', 0, 3030, 532, 2267, 1448641214, 1, 3033),
  (191, 18, 86, 0, 9979, ''body'', 0, 2229, 533, 3033, 1448641214, 1, 3030),
  (191, 18, 86, 0, 9980, ''body'', 0, 2887, 534, 3030, 1448641214, 1, 2229),
  (191, 18, 86, 0, 9981, ''body'', 0, 3034, 535, 2229, 1448641214, 1, 2887),
  (191, 18, 86, 0, 9982, ''body'', 0, 2952, 536, 2887, 1448641214, 1, 3034),
  (191, 18, 86, 0, 9983, ''body'', 0, 2231, 537, 3034, 1448641214, 1, 2952),
  (191, 18, 86, 0, 9984, ''body'', 0, 2317, 538, 2952, 1448641214, 1, 2231),
  (191, 18, 86, 0, 9985, ''body'', 0, 2903, 539, 2231, 1448641214, 1, 2317),
  (191, 18, 86, 0, 9986, ''body'', 0, 3035, 540, 2317, 1448641214, 1, 2903),
  (191, 18, 86, 0, 9987, ''body'', 0, 3036, 541, 2903, 1448641214, 1, 3035),
  (191, 18, 86, 0, 9988, ''body'', 0, 2956, 542, 3035, 1448641214, 1, 3036),
  (191, 18, 86, 0, 9989, ''body'', 0, 2817, 543, 3036, 1448641214, 1, 2956),
  (191, 18, 86, 0, 9990, ''body'', 0, 2419, 544, 2956, 1448641214, 1, 2817),
  (191, 18, 86, 0, 9991, ''body'', 0, 2881, 545, 2817, 1448641214, 1, 2419),
  (191, 18, 86, 0, 9992, ''body'', 0, 3037, 546, 2419, 1448641214, 1, 2881),
  (191, 18, 86, 0, 9993, ''body'', 0, 2978, 547, 2881, 1448641214, 1, 3037),
  (191, 18, 86, 0, 9994, ''body'', 0, 3033, 548, 3037, 1448641214, 1, 2978),
  (191, 18, 86, 0, 9995, ''body'', 0, 3038, 549, 2978, 1448641214, 1, 3033),
  (191, 18, 86, 0, 9996, ''body'', 0, 2233, 550, 3033, 1448641214, 1, 3038),
  (191, 18, 86, 0, 9997, ''body'', 0, 3039, 551, 3038, 1448641214, 1, 2233),
  (191, 18, 86, 0, 9998, ''body'', 0, 3040, 552, 2233, 1448641214, 1, 3039),
  (191, 18, 86, 0, 9999, ''body'', 0, 2419, 553, 3039, 1448641214, 1, 3040),
  (191, 18, 86, 0, 10000, ''body'', 0, 3041, 554, 3040, 1448641214, 1, 2419),
  (191, 18, 86, 0, 10001, ''body'', 0, 2365, 555, 2419, 1448641214, 1, 3041),
  (191, 18, 86, 0, 10002, ''body'', 0, 3042, 556, 3041, 1448641214, 1, 2365),
  (191, 18, 86, 0, 10003, ''body'', 0, 3043, 557, 2365, 1448641214, 1, 3042),
  (191, 18, 86, 0, 10004, ''body'', 0, 3044, 558, 3042, 1448641214, 1, 3043),
  (191, 18, 86, 0, 10005, ''body'', 0, 2229, 559, 3043, 1448641214, 1, 3044),
  (191, 18, 86, 0, 10006, ''body'', 0, 2185, 560, 3044, 1448641214, 1, 2229),
  (191, 18, 86, 0, 10007, ''body'', 0, 3045, 561, 2229, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10008, ''body'', 0, 2241, 562, 2185, 1448641214, 1, 3045),
  (191, 18, 86, 0, 10009, ''body'', 0, 2173, 563, 3045, 1448641214, 1, 2241),
  (191, 18, 86, 0, 10010, ''body'', 0, 3046, 564, 2241, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10011, ''body'', 0, 2254, 565, 2173, 1448641214, 1, 3046),
  (191, 18, 86, 0, 10012, ''body'', 0, 2320, 566, 3046, 1448641214, 1, 2254),
  (191, 18, 86, 0, 10013, ''body'', 0, 3047, 567, 2254, 1448641214, 1, 2320),
  (191, 18, 86, 0, 10014, ''body'', 0, 2172, 568, 2320, 1448641214, 1, 3047),
  (191, 18, 86, 0, 10015, ''body'', 0, 2811, 569, 3047, 1448641214, 1, 2172),
  (191, 18, 86, 0, 10016, ''body'', 0, 3036, 570, 2172, 1448641214, 1, 2811),
  (191, 18, 86, 0, 10017, ''body'', 0, 3048, 571, 2811, 1448641214, 1, 3036),
  (191, 18, 86, 0, 10018, ''body'', 0, 2182, 572, 3036, 1448641214, 1, 3048),
  (191, 18, 86, 0, 10019, ''body'', 0, 2334, 573, 3048, 1448641214, 1, 2182),
  (191, 18, 86, 0, 10020, ''body'', 0, 3003, 574, 2182, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10021, ''body'', 0, 3049, 575, 2334, 1448641214, 1, 3003),
  (191, 18, 86, 0, 10022, ''body'', 0, 3050, 576, 3003, 1448641214, 1, 3049),
  (191, 18, 86, 0, 10023, ''body'', 0, 2682, 577, 3049, 1448641214, 1, 3050),
  (191, 18, 86, 0, 10024, ''body'', 0, 3051, 578, 3050, 1448641214, 1, 2682),
  (191, 18, 86, 0, 10025, ''body'', 0, 3044, 579, 2682, 1448641214, 1, 3051),
  (191, 18, 86, 0, 10026, ''body'', 0, 2229, 580, 3051, 1448641214, 1, 3044),
  (191, 18, 86, 0, 10027, ''body'', 0, 2659, 581, 3044, 1448641214, 1, 2229),
  (191, 18, 86, 0, 10028, ''body'', 0, 3052, 582, 2229, 1448641214, 1, 2659),
  (191, 18, 86, 0, 10029, ''body'', 0, 2192, 583, 2659, 1448641214, 1, 3052),
  (191, 18, 86, 0, 10030, ''body'', 0, 3053, 584, 3052, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10031, ''body'', 0, 3054, 585, 2192, 1448641214, 1, 3053),
  (191, 18, 86, 0, 10032, ''body'', 0, 2203, 586, 3053, 1448641214, 1, 3054),
  (191, 18, 86, 0, 10033, ''body'', 0, 2334, 587, 3054, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10034, ''body'', 0, 2172, 588, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10035, ''body'', 0, 2665, 589, 2334, 1448641214, 1, 2172),
  (191, 18, 86, 0, 10036, ''body'', 0, 2981, 590, 2172, 1448641214, 1, 2665),
  (191, 18, 86, 0, 10037, ''body'', 0, 3050, 591, 2665, 1448641214, 1, 2981),
  (191, 18, 86, 0, 10038, ''body'', 0, 2229, 592, 2981, 1448641214, 1, 3050),
  (191, 18, 86, 0, 10039, ''body'', 0, 2279, 593, 3050, 1448641214, 1, 2229),
  (191, 18, 86, 0, 10040, ''body'', 0, 3055, 594, 2229, 1448641214, 1, 2279),
  (191, 18, 86, 0, 10041, ''body'', 0, 2221, 595, 2279, 1448641214, 1, 3055),
  (191, 18, 86, 0, 10042, ''body'', 0, 2193, 596, 3055, 1448641214, 1, 2221),
  (191, 18, 86, 0, 10043, ''body'', 0, 3056, 597, 2221, 1448641214, 1, 2193),
  (191, 18, 86, 0, 10044, ''body'', 0, 2911, 598, 2193, 1448641214, 1, 3056),
  (191, 18, 86, 0, 10045, ''body'', 0, 3057, 599, 3056, 1448641214, 1, 2911),
  (191, 18, 86, 0, 10046, ''body'', 0, 2203, 600, 2911, 1448641214, 1, 3057),
  (191, 18, 86, 0, 10047, ''body'', 0, 2334, 601, 3057, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10048, ''body'', 0, 2665, 602, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10049, ''body'', 0, 3051, 603, 2334, 1448641214, 1, 2665),
  (191, 18, 86, 0, 10050, ''body'', 0, 2279, 604, 2665, 1448641214, 1, 3051),
  (191, 18, 86, 0, 10051, ''body'', 0, 2284, 605, 3051, 1448641214, 1, 2279),
  (191, 18, 86, 0, 10052, ''body'', 0, 2185, 606, 2279, 1448641214, 1, 2284),
  (191, 18, 86, 0, 10053, ''body'', 0, 3058, 607, 2284, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10054, ''body'', 0, 2334, 608, 2185, 1448641214, 1, 3058),
  (191, 18, 86, 0, 10055, ''body'', 0, 3003, 609, 3058, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10056, ''body'', 0, 2334, 610, 2334, 1448641214, 1, 3003),
  (191, 18, 86, 0, 10057, ''body'', 0, 3003, 611, 3003, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10058, ''body'', 0, 3059, 612, 2334, 1448641214, 1, 3003),
  (191, 18, 86, 0, 10059, ''body'', 0, 2220, 613, 3003, 1448641214, 1, 3059),
  (191, 18, 86, 0, 10060, ''body'', 0, 3007, 614, 3059, 1448641214, 1, 2220),
  (191, 18, 86, 0, 10061, ''body'', 0, 2185, 615, 2220, 1448641214, 1, 3007),
  (191, 18, 86, 0, 10062, ''body'', 0, 2326, 616, 3007, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10063, ''body'', 0, 3006, 617, 2185, 1448641214, 1, 2326),
  (191, 18, 86, 0, 10064, ''body'', 0, 2192, 618, 2326, 1448641214, 1, 3006),
  (191, 18, 86, 0, 10065, ''body'', 0, 2267, 619, 3006, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10066, ''body'', 0, 3060, 620, 2192, 1448641214, 1, 2267),
  (191, 18, 86, 0, 10067, ''body'', 0, 3061, 621, 2267, 1448641214, 1, 3060),
  (191, 18, 86, 0, 10068, ''body'', 0, 2192, 622, 3060, 1448641214, 1, 3061),
  (191, 18, 86, 0, 10069, ''body'', 0, 3056, 623, 3061, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10070, ''body'', 0, 2887, 624, 2192, 1448641214, 1, 3056),
  (191, 18, 86, 0, 10071, ''body'', 0, 3062, 625, 3056, 1448641214, 1, 2887),
  (191, 18, 86, 0, 10072, ''body'', 0, 2185, 626, 2887, 1448641214, 1, 3062),
  (191, 18, 86, 0, 10073, ''body'', 0, 2334, 627, 3062, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10074, ''body'', 0, 2255, 628, 2185, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10075, ''body'', 0, 3063, 629, 2334, 1448641214, 1, 2255),
  (191, 18, 86, 0, 10076, ''body'', 0, 2192, 630, 2255, 1448641214, 1, 3063),
  (191, 18, 86, 0, 10077, ''body'', 0, 3007, 631, 3063, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10078, ''body'', 0, 3064, 632, 2192, 1448641214, 1, 3007),
  (191, 18, 86, 0, 10079, ''body'', 0, 2185, 633, 3007, 1448641214, 1, 3064),
  (191, 18, 86, 0, 10080, ''body'', 0, 3029, 634, 3064, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10081, ''body'', 0, 2233, 635, 2185, 1448641214, 1, 3029),
  (191, 18, 86, 0, 10082, ''body'', 0, 3065, 636, 3029, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10083, ''body'', 0, 3066, 637, 2233, 1448641214, 1, 3065),
  (191, 18, 86, 0, 10084, ''body'', 0, 2173, 638, 3065, 1448641214, 1, 3066),
  (191, 18, 86, 0, 10085, ''body'', 0, 2417, 639, 3066, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10086, ''body'', 0, 2296, 640, 2173, 1448641214, 1, 2417),
  (191, 18, 86, 0, 10087, ''body'', 0, 3050, 641, 2417, 1448641214, 1, 2296),
  (191, 18, 86, 0, 10088, ''body'', 0, 2682, 642, 2296, 1448641214, 1, 3050),
  (191, 18, 86, 0, 10089, ''body'', 0, 2231, 643, 3050, 1448641214, 1, 2682),
  (191, 18, 86, 0, 10090, ''body'', 0, 2185, 644, 2682, 1448641214, 1, 2231),
  (191, 18, 86, 0, 10091, ''body'', 0, 2334, 645, 2231, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10092, ''body'', 0, 2255, 646, 2185, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10093, ''body'', 0, 3063, 647, 2334, 1448641214, 1, 2255),
  (191, 18, 86, 0, 10094, ''body'', 0, 2192, 648, 2255, 1448641214, 1, 3063),
  (191, 18, 86, 0, 10095, ''body'', 0, 3007, 649, 3063, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10096, ''body'', 0, 3064, 650, 2192, 1448641214, 1, 3007),
  (191, 18, 86, 0, 10097, ''body'', 0, 2185, 651, 3007, 1448641214, 1, 3064),
  (191, 18, 86, 0, 10098, ''body'', 0, 3029, 652, 3064, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10099, ''body'', 0, 2229, 653, 2185, 1448641214, 1, 3029),
  (191, 18, 86, 0, 10100, ''body'', 0, 2751, 654, 3029, 1448641214, 1, 2229),
  (191, 18, 86, 0, 10101, ''body'', 0, 2172, 655, 2229, 1448641214, 1, 2751),
  (191, 18, 86, 0, 10102, ''body'', 0, 3067, 656, 2751, 1448641214, 1, 2172),
  (191, 18, 86, 0, 10103, ''body'', 0, 2279, 657, 2172, 1448641214, 1, 3067),
  (191, 18, 86, 0, 10104, ''body'', 0, 3068, 658, 3067, 1448641214, 1, 2279),
  (191, 18, 86, 0, 10105, ''body'', 0, 2452, 659, 2279, 1448641214, 1, 3068),
  (191, 18, 86, 0, 10106, ''body'', 0, 2320, 660, 3068, 1448641214, 1, 2452),
  (191, 18, 86, 0, 10107, ''body'', 0, 2185, 661, 2452, 1448641214, 1, 2320),
  (191, 18, 86, 0, 10108, ''body'', 0, 3069, 662, 2320, 1448641214, 1, 2185),
  (191, 18, 86, 0, 10109, ''body'', 0, 2334, 663, 2185, 1448641214, 1, 3069),
  (191, 18, 86, 0, 10110, ''body'', 0, 3070, 664, 3069, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10111, ''body'', 0, 2192, 665, 2334, 1448641214, 1, 3070),
  (191, 18, 86, 0, 10112, ''body'', 0, 3071, 666, 3070, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10113, ''body'', 0, 2646, 667, 2192, 1448641214, 1, 3071),
  (191, 18, 86, 0, 10114, ''body'', 0, 3056, 668, 3071, 1448641214, 1, 2646),
  (191, 18, 86, 0, 10115, ''body'', 0, 2284, 669, 2646, 1448641214, 1, 3056),
  (191, 18, 86, 0, 10116, ''body'', 0, 3072, 670, 3056, 1448641214, 1, 2284),
  (191, 18, 86, 0, 10117, ''body'', 0, 3073, 671, 2284, 1448641214, 1, 3072),
  (191, 18, 86, 0, 10118, ''body'', 0, 3074, 672, 3072, 1448641214, 1, 3073),
  (191, 18, 86, 0, 10119, ''body'', 0, 2320, 673, 3073, 1448641214, 1, 3074),
  (191, 18, 86, 0, 10120, ''body'', 0, 3075, 674, 3074, 1448641214, 1, 2320),
  (191, 18, 86, 0, 10121, ''body'', 0, 2320, 675, 2320, 1448641214, 1, 3075),
  (191, 18, 86, 0, 10122, ''body'', 0, 2173, 676, 3075, 1448641214, 1, 2320),
  (191, 18, 86, 0, 10123, ''body'', 0, 3076, 677, 2320, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10124, ''body'', 0, 2203, 678, 2173, 1448641214, 1, 3076),
  (191, 18, 86, 0, 10125, ''body'', 0, 2334, 679, 3076, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10126, ''body'', 0, 2173, 680, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10127, ''body'', 0, 3077, 681, 2334, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10128, ''body'', 0, 2983, 682, 2173, 1448641214, 1, 3077),
  (191, 18, 86, 0, 10129, ''body'', 0, 2164, 683, 3077, 1448641214, 1, 2983),
  (191, 18, 86, 0, 10130, ''body'', 0, 2911, 684, 2983, 1448641214, 1, 2164),
  (191, 18, 86, 0, 10131, ''body'', 0, 3078, 685, 2164, 1448641214, 1, 2911),
  (191, 18, 86, 0, 10132, ''body'', 0, 2296, 686, 2911, 1448641214, 1, 3078),
  (191, 18, 86, 0, 10133, ''body'', 0, 2279, 687, 3078, 1448641214, 1, 2296),
  (191, 18, 86, 0, 10134, ''body'', 0, 2956, 688, 2296, 1448641214, 1, 2279),
  (191, 18, 86, 0, 10135, ''body'', 0, 3079, 689, 2279, 1448641214, 1, 2956),
  (191, 18, 86, 0, 10136, ''body'', 0, 2419, 690, 2956, 1448641214, 1, 3079),
  (191, 18, 86, 0, 10137, ''body'', 0, 3080, 691, 3079, 1448641214, 1, 2419),
  (191, 18, 86, 0, 10138, ''body'', 0, 2231, 692, 2419, 1448641214, 1, 3080),
  (191, 18, 86, 0, 10139, ''body'', 0, 2449, 693, 3080, 1448641214, 1, 2231),
  (191, 18, 86, 0, 10140, ''body'', 0, 3015, 694, 2231, 1448641214, 1, 2449),
  (191, 18, 86, 0, 10141, ''body'', 0, 3081, 695, 2449, 1448641214, 1, 3015),
  (191, 18, 86, 0, 10142, ''body'', 0, 2752, 696, 3015, 1448641214, 1, 3081),
  (191, 18, 86, 0, 10143, ''body'', 0, 3056, 697, 3081, 1448641214, 1, 2752),
  (191, 18, 86, 0, 10144, ''body'', 0, 2952, 698, 2752, 1448641214, 1, 3056),
  (191, 18, 86, 0, 10145, ''body'', 0, 3082, 699, 3056, 1448641214, 1, 2952),
  (191, 18, 86, 0, 10146, ''body'', 0, 2229, 700, 2952, 1448641214, 1, 3082),
  (191, 18, 86, 0, 10147, ''body'', 0, 3083, 701, 3082, 1448641214, 1, 2229),
  (191, 18, 86, 0, 10148, ''body'', 0, 2241, 702, 2229, 1448641214, 1, 3083),
  (191, 18, 86, 0, 10149, ''body'', 0, 3084, 703, 3083, 1448641214, 1, 2241),
  (191, 18, 86, 0, 10150, ''body'', 0, 2873, 704, 2241, 1448641214, 1, 3084),
  (191, 18, 86, 0, 10151, ''body'', 0, 2964, 705, 3084, 1448641214, 1, 2873),
  (191, 18, 86, 0, 10152, ''body'', 0, 2955, 706, 2873, 1448641214, 1, 2964),
  (191, 18, 86, 0, 10153, ''body'', 0, 3041, 707, 2964, 1448641214, 1, 2955),
  (191, 18, 86, 0, 10154, ''body'', 0, 2906, 708, 2955, 1448641214, 1, 3041),
  (191, 18, 86, 0, 10155, ''body'', 0, 2915, 709, 3041, 1448641214, 1, 2906),
  (191, 18, 86, 0, 10156, ''body'', 0, 2326, 710, 2906, 1448641214, 1, 2915),
  (191, 18, 86, 0, 10157, ''body'', 0, 2981, 711, 2915, 1448641214, 1, 2326),
  (191, 18, 86, 0, 10158, ''body'', 0, 3085, 712, 2326, 1448641214, 1, 2981),
  (191, 18, 86, 0, 10159, ''body'', 0, 2685, 713, 2981, 1448641214, 1, 3085),
  (191, 18, 86, 0, 10160, ''body'', 0, 3086, 714, 3085, 1448641214, 1, 2685),
  (191, 18, 86, 0, 10161, ''body'', 0, 2665, 715, 2685, 1448641214, 1, 3086),
  (191, 18, 86, 0, 10162, ''body'', 0, 2981, 716, 3086, 1448641214, 1, 2665),
  (191, 18, 86, 0, 10163, ''body'', 0, 3070, 717, 2665, 1448641214, 1, 2981),
  (191, 18, 86, 0, 10164, ''body'', 0, 2192, 718, 2981, 1448641214, 1, 3070),
  (191, 18, 86, 0, 10165, ''body'', 0, 2194, 719, 3070, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10166, ''body'', 0, 2305, 720, 2192, 1448641214, 1, 2194),
  (191, 18, 86, 0, 10167, ''body'', 0, 2752, 721, 2194, 1448641214, 1, 2305),
  (191, 18, 86, 0, 10168, ''body'', 0, 2844, 722, 2305, 1448641214, 1, 2752),
  (191, 18, 86, 0, 10169, ''body'', 0, 3087, 723, 2752, 1448641214, 1, 2844),
  (191, 18, 86, 0, 10170, ''body'', 0, 2173, 724, 2844, 1448641214, 1, 3087),
  (191, 18, 86, 0, 10171, ''body'', 0, 2981, 725, 3087, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10172, ''body'', 0, 2231, 726, 2173, 1448641214, 1, 2981),
  (191, 18, 86, 0, 10173, ''body'', 0, 2203, 727, 2981, 1448641214, 1, 2231),
  (191, 18, 86, 0, 10174, ''body'', 0, 2334, 728, 2231, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10175, ''body'', 0, 2752, 729, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10176, ''body'', 0, 2740, 730, 2334, 1448641214, 1, 2752),
  (191, 18, 86, 0, 10177, ''body'', 0, 2928, 731, 2752, 1448641214, 1, 2740),
  (191, 18, 86, 0, 10178, ''body'', 0, 2296, 732, 2740, 1448641214, 1, 2928),
  (191, 18, 86, 0, 10179, ''body'', 0, 2436, 733, 2928, 1448641214, 1, 2296),
  (191, 18, 86, 0, 10180, ''body'', 0, 2173, 734, 2296, 1448641214, 1, 2436),
  (191, 18, 86, 0, 10181, ''body'', 0, 3088, 735, 2436, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10182, ''body'', 0, 2233, 736, 2173, 1448641214, 1, 3088),
  (191, 18, 86, 0, 10183, ''body'', 0, 3089, 737, 3088, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10184, ''body'', 0, 3090, 738, 2233, 1448641214, 1, 3089),
  (191, 18, 86, 0, 10185, ''body'', 0, 2221, 739, 3089, 1448641214, 1, 3090),
  (191, 18, 86, 0, 10186, ''body'', 0, 2843, 740, 3090, 1448641214, 1, 2221),
  (191, 18, 86, 0, 10187, ''body'', 0, 3091, 741, 2221, 1448641214, 1, 2843),
  (191, 18, 86, 0, 10188, ''body'', 0, 3092, 742, 2843, 1448641214, 1, 3091),
  (191, 18, 86, 0, 10189, ''body'', 0, 2305, 743, 3091, 1448641214, 1, 3092),
  (191, 18, 86, 0, 10190, ''body'', 0, 2233, 744, 3092, 1448641214, 1, 2305),
  (191, 18, 86, 0, 10191, ''body'', 0, 3093, 745, 2305, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10192, ''body'', 0, 3071, 746, 2233, 1448641214, 1, 3093),
  (191, 18, 86, 0, 10193, ''body'', 0, 2164, 747, 3093, 1448641214, 1, 3071),
  (191, 18, 86, 0, 10194, ''body'', 0, 3034, 748, 3071, 1448641214, 1, 2164),
  (191, 18, 86, 0, 10195, ''body'', 0, 2482, 749, 2164, 1448641214, 1, 3034),
  (191, 18, 86, 0, 10196, ''body'', 0, 2893, 750, 3034, 1448641214, 1, 2482),
  (191, 18, 86, 0, 10197, ''body'', 0, 2202, 751, 2482, 1448641214, 1, 2893),
  (191, 18, 86, 0, 10198, ''body'', 0, 2203, 752, 2893, 1448641214, 1, 2202),
  (191, 18, 86, 0, 10199, ''body'', 0, 2840, 753, 2202, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10200, ''body'', 0, 2188, 754, 2203, 1448641214, 1, 2840),
  (191, 18, 86, 0, 10201, ''body'', 0, 3094, 755, 2840, 1448641214, 1, 2188),
  (191, 18, 86, 0, 10202, ''body'', 0, 2895, 756, 2188, 1448641214, 1, 3094),
  (191, 18, 86, 0, 10203, ''body'', 0, 2884, 757, 3094, 1448641214, 1, 2895),
  (191, 18, 86, 0, 10204, ''body'', 0, 3095, 758, 2895, 1448641214, 1, 2884),
  (191, 18, 86, 0, 10205, ''body'', 0, 2202, 759, 2884, 1448641214, 1, 3095),
  (191, 18, 86, 0, 10206, ''body'', 0, 2173, 760, 3095, 1448641214, 1, 2202),
  (191, 18, 86, 0, 10207, ''body'', 0, 2802, 761, 2202, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10208, ''body'', 0, 3078, 762, 2173, 1448641214, 1, 2802),
  (191, 18, 86, 0, 10209, ''body'', 0, 2983, 763, 2802, 1448641214, 1, 3078),
  (191, 18, 86, 0, 10210, ''body'', 0, 3096, 764, 3078, 1448641214, 1, 2983),
  (191, 18, 86, 0, 10211, ''body'', 0, 2296, 765, 2983, 1448641214, 1, 3096),
  (191, 18, 86, 0, 10212, ''body'', 0, 2883, 766, 3096, 1448641214, 1, 2296),
  (191, 18, 86, 0, 10213, ''body'', 0, 3097, 767, 2296, 1448641214, 1, 2883),
  (191, 18, 86, 0, 10214, ''body'', 0, 3098, 768, 2883, 1448641214, 1, 3097),
  (191, 18, 86, 0, 10215, ''body'', 0, 3099, 769, 3097, 1448641214, 1, 3098),
  (191, 18, 86, 0, 10216, ''body'', 0, 2372, 770, 3098, 1448641214, 1, 3099),
  (191, 18, 86, 0, 10217, ''body'', 0, 3100, 771, 3099, 1448641214, 1, 2372),
  (191, 18, 86, 0, 10218, ''body'', 0, 2233, 772, 2372, 1448641214, 1, 3100),
  (191, 18, 86, 0, 10219, ''body'', 0, 3101, 773, 3100, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10220, ''body'', 0, 2377, 774, 2233, 1448641214, 1, 3101),
  (191, 18, 86, 0, 10221, ''body'', 0, 2233, 775, 3101, 1448641214, 1, 2377),
  (191, 18, 86, 0, 10222, ''body'', 0, 2981, 776, 2377, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10223, ''body'', 0, 2192, 777, 2233, 1448641214, 1, 2981),
  (191, 18, 86, 0, 10224, ''body'', 0, 2967, 778, 2981, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10225, ''body'', 0, 2974, 779, 2192, 1448641214, 1, 2967),
  (191, 18, 86, 0, 10226, ''body'', 0, 2839, 780, 2967, 1448641214, 1, 2974),
  (191, 18, 86, 0, 10227, ''body'', 0, 2192, 781, 2974, 1448641214, 1, 2839),
  (191, 18, 86, 0, 10228, ''body'', 0, 3102, 782, 2839, 1448641214, 1, 2192),
  (191, 18, 86, 0, 10229, ''body'', 0, 2203, 783, 2192, 1448641214, 1, 3102),
  (191, 18, 86, 0, 10230, ''body'', 0, 2334, 784, 3102, 1448641214, 1, 2203),
  (191, 18, 86, 0, 10231, ''body'', 0, 2172, 785, 2203, 1448641214, 1, 2334),
  (191, 18, 86, 0, 10232, ''body'', 0, 2173, 786, 2334, 1448641214, 1, 2172),
  (191, 18, 86, 0, 10233, ''body'', 0, 2863, 787, 2172, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10234, ''body'', 0, 3103, 788, 2173, 1448641214, 1, 2863),
  (191, 18, 86, 0, 10235, ''body'', 0, 3104, 789, 2863, 1448641214, 1, 3103),
  (191, 18, 86, 0, 10236, ''body'', 0, 2173, 790, 3103, 1448641214, 1, 3104),
  (191, 18, 86, 0, 10237, ''body'', 0, 3105, 791, 3104, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10238, ''body'', 0, 2414, 792, 2173, 1448641214, 1, 3105),
  (191, 18, 86, 0, 10239, ''body'', 0, 2231, 793, 3105, 1448641214, 1, 2414),
  (191, 18, 86, 0, 10240, ''body'', 0, 2173, 794, 2414, 1448641214, 1, 2231),
  (191, 18, 86, 0, 10241, ''body'', 0, 2224, 795, 2231, 1448641214, 1, 2173),
  (191, 18, 86, 0, 10242, ''body'', 0, 2264, 796, 2173, 1448641214, 1, 2224),
  (191, 18, 86, 0, 10243, ''body'', 0, 2261, 797, 2224, 1448641214, 1, 2264),
  (191, 18, 86, 0, 10244, ''body'', 0, 2195, 798, 2264, 1448641214, 1, 2261),
  (191, 18, 86, 0, 10245, ''body'', 0, 3106, 799, 2261, 1448641214, 1, 2195),
  (191, 18, 86, 0, 10246, ''body'', 0, 3107, 800, 2195, 1448641214, 1, 3106),
  (191, 18, 86, 0, 10247, ''body'', 0, 2233, 801, 3106, 1448641214, 1, 3107),
  (191, 18, 86, 0, 10248, ''body'', 0, 3108, 802, 3107, 1448641214, 1, 2233),
  (191, 18, 86, 0, 10249, ''body'', 0, 2752, 803, 2233, 1448641214, 1, 3108),
  (191, 18, 86, 0, 10250, ''body'', 0, 2224, 804, 3108, 1448641214, 1, 2752),
  (191, 18, 86, 0, 10251, ''body'', 0, 2807, 805, 2752, 1448641214, 1, 2224),
  (191, 18, 86, 0, 10252, ''body'', 0, 2526, 806, 2224, 1448641214, 1, 2807),
  (191, 18, 86, 0, 10253, ''body'', 0, 2317, 807, 2807, 1448641214, 1, 2526),
  (191, 18, 86, 0, 10254, ''body'', 0, 2224, 808, 2526, 1448641214, 1, 2317),
  (191, 18, 86, 0, 10255, ''body'', 0, 2390, 809, 2317, 1448641214, 1, 2224),
  (191, 18, 86, 0, 10256, ''body'', 0, 3109, 810, 2224, 1448641214, 1, 2390),
  (191, 18, 86, 0, 10257, ''body'', 0, 3110, 811, 2390, 1448641214, 1, 3109),
  (191, 18, 86, 0, 10258, ''body'', 0, 0, 812, 3109, 1448641214, 1, 3110),
  (187, 18, 87, 0, 10259, ''title'', 0, 3097, 0, 0, 1448665353, 1, 2409),
  (187, 18, 87, 0, 10260, ''title'', 0, 2192, 1, 2409, 1448665353, 1, 3097),
  (187, 18, 87, 0, 10261, ''title'', 0, 3111, 2, 3097, 1448665353, 1, 2192),
  (187, 18, 87, 0, 10262, ''title'', 0, 2482, 3, 2192, 1448665353, 1, 3111),
  (187, 18, 87, 0, 10263, ''title'', 0, 2357, 4, 3111, 1448665353, 1, 2482),
  (187, 18, 87, 0, 10264, ''title'', 0, 2185, 5, 2482, 1448665353, 1, 2357),
  (187, 18, 87, 0, 10265, ''title'', 0, 3112, 6, 2357, 1448665353, 1, 2185),
  (187, 18, 87, 0, 10266, ''title'', 0, 2815, 7, 2185, 1448665353, 1, 3112),
  (187, 18, 87, 0, 10267, ''title'', 0, 2334, 8, 3112, 1448665353, 1, 2815),
  (187, 18, 87, 0, 10268, ''title'', 0, 2300, 9, 2815, 1448665353, 1, 2334),
  (187, 18, 87, 0, 10269, ''title'', 0, 2224, 10, 2334, 1448665353, 1, 2300),
  (187, 18, 87, 0, 10270, ''title'', 0, 2264, 11, 2300, 1448665353, 1, 2224),
  (187, 18, 87, 0, 10271, ''title'', 0, 3113, 12, 2224, 1448665353, 1, 2264),
  (189, 18, 87, 0, 10272, ''author'', 0, 2824, 13, 2264, 1448665353, 1, 3113),
  (189, 18, 87, 0, 10273, ''author'', 0, 3114, 14, 3113, 1448665353, 1, 2824),
  (190, 18, 87, 0, 10274, ''intro'', 0, 2231, 15, 2824, 1448665353, 1, 3114),
  (190, 18, 87, 0, 10275, ''intro'', 0, 3115, 16, 3114, 1448665353, 1, 2231),
  (190, 18, 87, 0, 10276, ''intro'', 0, 3116, 17, 2231, 1448665353, 1, 3115),
  (190, 18, 87, 0, 10277, ''intro'', 0, 2357, 18, 3115, 1448665353, 1, 3116),
  (190, 18, 87, 0, 10278, ''intro'', 0, 3117, 19, 3116, 1448665353, 1, 2357),
  (190, 18, 87, 0, 10279, ''intro'', 0, 2241, 20, 2357, 1448665353, 1, 3117),
  (190, 18, 87, 0, 10280, ''intro'', 0, 2291, 21, 3117, 1448665353, 1, 2241),
  (190, 18, 87, 0, 10281, ''intro'', 0, 3118, 22, 2241, 1448665353, 1, 2291),
  (190, 18, 87, 0, 10282, ''intro'', 0, 2815, 23, 2291, 1448665353, 1, 3118),
  (190, 18, 87, 0, 10283, ''intro'', 0, 2233, 24, 3118, 1448665353, 1, 2815),
  (190, 18, 87, 0, 10284, ''intro'', 0, 3119, 25, 2815, 1448665353, 1, 2233),
  (190, 18, 87, 0, 10285, ''intro'', 0, 3120, 26, 2233, 1448665353, 1, 3119),
  (190, 18, 87, 0, 10286, ''intro'', 0, 2279, 27, 3119, 1448665353, 1, 3120),
  (190, 18, 87, 0, 10287, ''intro'', 0, 2255, 28, 3120, 1448665353, 1, 2279),
  (190, 18, 87, 0, 10288, ''intro'', 0, 2194, 29, 2279, 1448665353, 1, 2255),
  (190, 18, 87, 0, 10289, ''intro'', 0, 2420, 30, 2255, 1448665353, 1, 2194),
  (190, 18, 87, 0, 10290, ''intro'', 0, 2242, 31, 2194, 1448665353, 1, 2420),
  (190, 18, 87, 0, 10291, ''intro'', 0, 3121, 32, 2420, 1448665353, 1, 2242),
  (190, 18, 87, 0, 10292, ''intro'', 0, 3114, 33, 2242, 1448665353, 1, 3121),
  (191, 18, 87, 0, 10293, ''body'', 0, 2231, 34, 3121, 1448665353, 1, 3114),
  (191, 18, 87, 0, 10294, ''body'', 0, 3115, 35, 3114, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10295, ''body'', 0, 3116, 36, 2231, 1448665353, 1, 3115),
  (191, 18, 87, 0, 10296, ''body'', 0, 2357, 37, 3115, 1448665353, 1, 3116),
  (191, 18, 87, 0, 10297, ''body'', 0, 3117, 38, 3116, 1448665353, 1, 2357),
  (191, 18, 87, 0, 10298, ''body'', 0, 2241, 39, 2357, 1448665353, 1, 3117),
  (191, 18, 87, 0, 10299, ''body'', 0, 2291, 40, 3117, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10300, ''body'', 0, 3118, 41, 2241, 1448665353, 1, 2291),
  (191, 18, 87, 0, 10301, ''body'', 0, 2815, 42, 2291, 1448665353, 1, 3118),
  (191, 18, 87, 0, 10302, ''body'', 0, 2233, 43, 3118, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10303, ''body'', 0, 3119, 44, 2815, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10304, ''body'', 0, 3120, 45, 2233, 1448665353, 1, 3119),
  (191, 18, 87, 0, 10305, ''body'', 0, 2279, 46, 3119, 1448665353, 1, 3120),
  (191, 18, 87, 0, 10306, ''body'', 0, 2255, 47, 3120, 1448665353, 1, 2279),
  (191, 18, 87, 0, 10307, ''body'', 0, 2194, 48, 2279, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10308, ''body'', 0, 2420, 49, 2255, 1448665353, 1, 2194),
  (191, 18, 87, 0, 10309, ''body'', 0, 2242, 50, 2194, 1448665353, 1, 2420),
  (191, 18, 87, 0, 10310, ''body'', 0, 3121, 51, 2420, 1448665353, 1, 2242),
  (191, 18, 87, 0, 10311, ''body'', 0, 3122, 52, 2242, 1448665353, 1, 3121),
  (191, 18, 87, 0, 10312, ''body'', 0, 2229, 53, 3121, 1448665353, 1, 3122),
  (191, 18, 87, 0, 10313, ''body'', 0, 2185, 54, 3122, 1448665353, 1, 2229),
  (191, 18, 87, 0, 10314, ''body'', 0, 3123, 55, 2229, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10315, ''body'', 0, 2892, 56, 2185, 1448665353, 1, 3123),
  (191, 18, 87, 0, 10316, ''body'', 0, 2192, 57, 3123, 1448665353, 1, 2892),
  (191, 18, 87, 0, 10317, ''body'', 0, 3124, 58, 2892, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10318, ''body'', 0, 2751, 59, 2192, 1448665353, 1, 3124),
  (191, 18, 87, 0, 10319, ''body'', 0, 2390, 60, 3124, 1448665353, 1, 2751),
  (191, 18, 87, 0, 10320, ''body'', 0, 2233, 61, 2751, 1448665353, 1, 2390),
  (191, 18, 87, 0, 10321, ''body'', 0, 2254, 62, 2390, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10322, ''body'', 0, 3125, 63, 2233, 1448665353, 1, 2254),
  (191, 18, 87, 0, 10323, ''body'', 0, 2999, 64, 2254, 1448665353, 1, 3125),
  (191, 18, 87, 0, 10324, ''body'', 0, 3126, 65, 3125, 1448665353, 1, 2999),
  (191, 18, 87, 0, 10325, ''body'', 0, 2233, 66, 2999, 1448665353, 1, 3126),
  (191, 18, 87, 0, 10326, ''body'', 0, 2668, 67, 3126, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10327, ''body'', 0, 2669, 68, 2233, 1448665353, 1, 2668),
  (191, 18, 87, 0, 10328, ''body'', 0, 2447, 69, 2668, 1448665353, 1, 2669),
  (191, 18, 87, 0, 10329, ''body'', 0, 2258, 70, 2669, 1448665353, 1, 2447),
  (191, 18, 87, 0, 10330, ''body'', 0, 2224, 71, 2447, 1448665353, 1, 2258),
  (191, 18, 87, 0, 10331, ''body'', 0, 2264, 72, 2258, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10332, ''body'', 0, 2192, 73, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10333, ''body'', 0, 3127, 74, 2264, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10334, ''body'', 0, 2884, 75, 2192, 1448665353, 1, 3127),
  (191, 18, 87, 0, 10335, ''body'', 0, 2320, 76, 3127, 1448665353, 1, 2884),
  (191, 18, 87, 0, 10336, ''body'', 0, 2266, 77, 2884, 1448665353, 1, 2320),
  (191, 18, 87, 0, 10337, ''body'', 0, 2267, 78, 2320, 1448665353, 1, 2266),
  (191, 18, 87, 0, 10338, ''body'', 0, 2255, 79, 2266, 1448665353, 1, 2267),
  (191, 18, 87, 0, 10339, ''body'', 0, 2923, 80, 2267, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10340, ''body'', 0, 3128, 81, 2255, 1448665353, 1, 2923),
  (191, 18, 87, 0, 10341, ''body'', 0, 3129, 82, 2923, 1448665353, 1, 3128),
  (191, 18, 87, 0, 10342, ''body'', 0, 3130, 83, 3128, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10343, ''body'', 0, 2920, 84, 3129, 1448665353, 1, 3130),
  (191, 18, 87, 0, 10344, ''body'', 0, 2449, 85, 3130, 1448665353, 1, 2920),
  (191, 18, 87, 0, 10345, ''body'', 0, 3131, 86, 2920, 1448665353, 1, 2449),
  (191, 18, 87, 0, 10346, ''body'', 0, 2225, 87, 2449, 1448665353, 1, 3131),
  (191, 18, 87, 0, 10347, ''body'', 0, 2922, 88, 3131, 1448665353, 1, 2225),
  (191, 18, 87, 0, 10348, ''body'', 0, 2296, 89, 2225, 1448665353, 1, 2922),
  (191, 18, 87, 0, 10349, ''body'', 0, 2220, 90, 2922, 1448665353, 1, 2296),
  (191, 18, 87, 0, 10350, ''body'', 0, 2192, 91, 2296, 1448665353, 1, 2220),
  (191, 18, 87, 0, 10351, ''body'', 0, 2870, 92, 2220, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10352, ''body'', 0, 3112, 93, 2192, 1448665353, 1, 2870),
  (191, 18, 87, 0, 10353, ''body'', 0, 2815, 94, 2870, 1448665353, 1, 3112),
  (191, 18, 87, 0, 10354, ''body'', 0, 2306, 95, 3112, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10355, ''body'', 0, 2300, 96, 2815, 1448665353, 1, 2306),
  (191, 18, 87, 0, 10356, ''body'', 0, 2224, 97, 2306, 1448665353, 1, 2300),
  (191, 18, 87, 0, 10357, ''body'', 0, 2264, 98, 2300, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10358, ''body'', 0, 3129, 99, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10359, ''body'', 0, 2233, 100, 2264, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10360, ''body'', 0, 2862, 101, 3129, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10361, ''body'', 0, 2270, 102, 2233, 1448665353, 1, 2862),
  (191, 18, 87, 0, 10362, ''body'', 0, 2447, 103, 2862, 1448665353, 1, 2270),
  (191, 18, 87, 0, 10363, ''body'', 0, 3132, 104, 2270, 1448665353, 1, 2447),
  (191, 18, 87, 0, 10364, ''body'', 0, 2956, 105, 2447, 1448665353, 1, 3132),
  (191, 18, 87, 0, 10365, ''body'', 0, 3133, 106, 3132, 1448665353, 1, 2956),
  (191, 18, 87, 0, 10366, ''body'', 0, 2214, 107, 2956, 1448665353, 1, 3133),
  (191, 18, 87, 0, 10367, ''body'', 0, 3134, 108, 3133, 1448665353, 1, 2214),
  (191, 18, 87, 0, 10368, ''body'', 0, 2224, 109, 2214, 1448665353, 1, 3134),
  (191, 18, 87, 0, 10369, ''body'', 0, 3135, 110, 3134, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10370, ''body'', 0, 2253, 111, 2224, 1448665353, 1, 3135),
  (191, 18, 87, 0, 10371, ''body'', 0, 2173, 112, 3135, 1448665353, 1, 2253),
  (191, 18, 87, 0, 10372, ''body'', 0, 2311, 113, 2253, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10373, ''body'', 0, 2312, 114, 2173, 1448665353, 1, 2311),
  (191, 18, 87, 0, 10374, ''body'', 0, 2313, 115, 2311, 1448665353, 1, 2312),
  (191, 18, 87, 0, 10375, ''body'', 0, 2233, 116, 2312, 1448665353, 1, 2313),
  (191, 18, 87, 0, 10376, ''body'', 0, 2173, 117, 2313, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10377, ''body'', 0, 2670, 118, 2233, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10378, ''body'', 0, 3136, 119, 2173, 1448665353, 1, 2670),
  (191, 18, 87, 0, 10379, ''body'', 0, 2231, 120, 2670, 1448665353, 1, 3136),
  (191, 18, 87, 0, 10380, ''body'', 0, 3137, 121, 3136, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10381, ''body'', 0, 3138, 122, 2231, 1448665353, 1, 3137),
  (191, 18, 87, 0, 10382, ''body'', 0, 2241, 123, 3137, 1448665353, 1, 3138),
  (191, 18, 87, 0, 10383, ''body'', 0, 2862, 124, 3138, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10384, ''body'', 0, 2225, 125, 2241, 1448665353, 1, 2862),
  (191, 18, 87, 0, 10385, ''body'', 0, 3129, 126, 2862, 1448665353, 1, 2225),
  (191, 18, 87, 0, 10386, ''body'', 0, 3139, 127, 2225, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10387, ''body'', 0, 2454, 128, 3129, 1448665353, 1, 3139),
  (191, 18, 87, 0, 10388, ''body'', 0, 3140, 129, 3139, 1448665353, 1, 2454),
  (191, 18, 87, 0, 10389, ''body'', 0, 2506, 130, 2454, 1448665353, 1, 3140),
  (191, 18, 87, 0, 10390, ''body'', 0, 2507, 131, 3140, 1448665353, 1, 2506),
  (191, 18, 87, 0, 10391, ''body'', 0, 3141, 132, 2506, 1448665353, 1, 2507),
  (191, 18, 87, 0, 10392, ''body'', 0, 2910, 133, 2507, 1448665353, 1, 3141),
  (191, 18, 87, 0, 10393, ''body'', 0, 3142, 134, 3141, 1448665353, 1, 2910),
  (191, 18, 87, 0, 10394, ''body'', 0, 2185, 135, 2910, 1448665353, 1, 3142),
  (191, 18, 87, 0, 10395, ''body'', 0, 3143, 136, 3142, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10396, ''body'', 0, 2334, 137, 2185, 1448665353, 1, 3143),
  (191, 18, 87, 0, 10397, ''body'', 0, 2300, 138, 3143, 1448665353, 1, 2334),
  (191, 18, 87, 0, 10398, ''body'', 0, 2224, 139, 2334, 1448665353, 1, 2300),
  (191, 18, 87, 0, 10399, ''body'', 0, 2264, 140, 2300, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10400, ''body'', 0, 3144, 141, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10401, ''body'', 0, 2255, 142, 2264, 1448665353, 1, 3144),
  (191, 18, 87, 0, 10402, ''body'', 0, 2185, 143, 3144, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10403, ''body'', 0, 3145, 144, 2255, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10404, ''body'', 0, 2231, 145, 2185, 1448665353, 1, 3145),
  (191, 18, 87, 0, 10405, ''body'', 0, 2862, 146, 3145, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10406, ''body'', 0, 3146, 147, 2231, 1448665353, 1, 2862),
  (191, 18, 87, 0, 10407, ''body'', 0, 3022, 148, 2862, 1448665353, 1, 3146),
  (191, 18, 87, 0, 10408, ''body'', 0, 2846, 149, 3146, 1448665353, 1, 3022),
  (191, 18, 87, 0, 10409, ''body'', 0, 2173, 150, 3022, 1448665353, 1, 2846),
  (191, 18, 87, 0, 10410, ''body'', 0, 3147, 151, 2846, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10411, ''body'', 0, 3148, 152, 2173, 1448665353, 1, 3147),
  (191, 18, 87, 0, 10412, ''body'', 0, 2233, 153, 3147, 1448665353, 1, 3148),
  (191, 18, 87, 0, 10413, ''body'', 0, 3149, 154, 3148, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10414, ''body'', 0, 3150, 155, 2233, 1448665353, 1, 3149),
  (191, 18, 87, 0, 10415, ''body'', 0, 2581, 156, 3149, 1448665353, 1, 3150),
  (191, 18, 87, 0, 10416, ''body'', 0, 2203, 157, 3150, 1448665353, 1, 2581),
  (191, 18, 87, 0, 10417, ''body'', 0, 2861, 158, 2581, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10418, ''body'', 0, 2231, 159, 2203, 1448665353, 1, 2861),
  (191, 18, 87, 0, 10419, ''body'', 0, 2203, 160, 2861, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10420, ''body'', 0, 3027, 161, 2231, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10421, ''body'', 0, 3151, 162, 2203, 1448665353, 1, 3027),
  (191, 18, 87, 0, 10422, ''body'', 0, 2197, 163, 3027, 1448665353, 1, 3151),
  (191, 18, 87, 0, 10423, ''body'', 0, 2203, 164, 3151, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10424, ''body'', 0, 3152, 165, 2197, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10425, ''body'', 0, 3153, 166, 2203, 1448665353, 1, 3152),
  (191, 18, 87, 0, 10426, ''body'', 0, 2578, 167, 3152, 1448665353, 1, 3153),
  (191, 18, 87, 0, 10427, ''body'', 0, 2192, 168, 3153, 1448665353, 1, 2578),
  (191, 18, 87, 0, 10428, ''body'', 0, 3154, 169, 2578, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10429, ''body'', 0, 2173, 170, 2192, 1448665353, 1, 3154),
  (191, 18, 87, 0, 10430, ''body'', 0, 3148, 171, 3154, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10431, ''body'', 0, 2221, 172, 2173, 1448665353, 1, 3148),
  (191, 18, 87, 0, 10432, ''body'', 0, 2506, 173, 3148, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10433, ''body'', 0, 3155, 174, 2221, 1448665353, 1, 2506),
  (191, 18, 87, 0, 10434, ''body'', 0, 2192, 175, 2506, 1448665353, 1, 3155),
  (191, 18, 87, 0, 10435, ''body'', 0, 2203, 176, 3155, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10436, ''body'', 0, 2334, 177, 2192, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10437, ''body'', 0, 3156, 178, 2203, 1448665353, 1, 2334),
  (191, 18, 87, 0, 10438, ''body'', 0, 3157, 179, 2334, 1448665353, 1, 3156),
  (191, 18, 87, 0, 10439, ''body'', 0, 2173, 180, 3156, 1448665353, 1, 3157),
  (191, 18, 87, 0, 10440, ''body'', 0, 3147, 181, 3157, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10441, ''body'', 0, 3158, 182, 2173, 1448665353, 1, 3147),
  (191, 18, 87, 0, 10442, ''body'', 0, 3159, 183, 3147, 1448665353, 1, 3158),
  (191, 18, 87, 0, 10443, ''body'', 0, 2815, 184, 3158, 1448665353, 1, 3159),
  (191, 18, 87, 0, 10444, ''body'', 0, 3051, 185, 3159, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10445, ''body'', 0, 3160, 186, 2815, 1448665353, 1, 3051),
  (191, 18, 87, 0, 10446, ''body'', 0, 2172, 187, 3051, 1448665353, 1, 3160),
  (191, 18, 87, 0, 10447, ''body'', 0, 2412, 188, 3160, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10448, ''body'', 0, 2320, 189, 2172, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10449, ''body'', 0, 3161, 190, 2412, 1448665353, 1, 2320),
  (191, 18, 87, 0, 10450, ''body'', 0, 2895, 191, 2320, 1448665353, 1, 3161),
  (191, 18, 87, 0, 10451, ''body'', 0, 3162, 192, 3161, 1448665353, 1, 2895),
  (191, 18, 87, 0, 10452, ''body'', 0, 2256, 193, 2895, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10453, ''body'', 0, 3163, 194, 3162, 1448665353, 1, 2256),
  (191, 18, 87, 0, 10454, ''body'', 0, 3164, 195, 2256, 1448665353, 1, 3163),
  (191, 18, 87, 0, 10455, ''body'', 0, 2173, 196, 3163, 1448665353, 1, 3164),
  (191, 18, 87, 0, 10456, ''body'', 0, 3165, 197, 3164, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10457, ''body'', 0, 2815, 198, 2173, 1448665353, 1, 3165),
  (191, 18, 87, 0, 10458, ''body'', 0, 2806, 199, 3165, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10459, ''body'', 0, 3156, 200, 2815, 1448665353, 1, 2806),
  (191, 18, 87, 0, 10460, ''body'', 0, 2581, 201, 2806, 1448665353, 1, 3156),
  (191, 18, 87, 0, 10461, ''body'', 0, 2185, 202, 3156, 1448665353, 1, 2581),
  (191, 18, 87, 0, 10462, ''body'', 0, 3158, 203, 2581, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10463, ''body'', 0, 3159, 204, 2185, 1448665353, 1, 3158),
  (191, 18, 87, 0, 10464, ''body'', 0, 2815, 205, 3158, 1448665353, 1, 3159),
  (191, 18, 87, 0, 10465, ''body'', 0, 3041, 206, 3159, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10466, ''body'', 0, 3166, 207, 2815, 1448665353, 1, 3041),
  (191, 18, 87, 0, 10467, ''body'', 0, 3167, 208, 3041, 1448665353, 1, 3166),
  (191, 18, 87, 0, 10468, ''body'', 0, 2197, 209, 3166, 1448665353, 1, 3167),
  (191, 18, 87, 0, 10469, ''body'', 0, 3168, 210, 3167, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10470, ''body'', 0, 2412, 211, 2197, 1448665353, 1, 3168),
  (191, 18, 87, 0, 10471, ''body'', 0, 2192, 212, 3168, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10472, ''body'', 0, 2185, 213, 2412, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10473, ''body'', 0, 3169, 214, 2192, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10474, ''body'', 0, 2442, 215, 2185, 1448665353, 1, 3169),
  (191, 18, 87, 0, 10475, ''body'', 0, 2663, 216, 3169, 1448665353, 1, 2442),
  (191, 18, 87, 0, 10476, ''body'', 0, 3170, 217, 2442, 1448665353, 1, 2663),
  (191, 18, 87, 0, 10477, ''body'', 0, 2380, 218, 2663, 1448665353, 1, 3170),
  (191, 18, 87, 0, 10478, ''body'', 0, 3171, 219, 3170, 1448665353, 1, 2380),
  (191, 18, 87, 0, 10479, ''body'', 0, 2482, 220, 2380, 1448665353, 1, 3171),
  (191, 18, 87, 0, 10480, ''body'', 0, 3172, 221, 3171, 1448665353, 1, 2482),
  (191, 18, 87, 0, 10481, ''body'', 0, 2173, 222, 2482, 1448665353, 1, 3172),
  (191, 18, 87, 0, 10482, ''body'', 0, 3147, 223, 3172, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10483, ''body'', 0, 3148, 224, 2173, 1448665353, 1, 3147),
  (191, 18, 87, 0, 10484, ''body'', 0, 3129, 225, 3147, 1448665353, 1, 3148),
  (191, 18, 87, 0, 10485, ''body'', 0, 3173, 226, 3148, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10486, ''body'', 0, 2419, 227, 3129, 1448665353, 1, 3173),
  (191, 18, 87, 0, 10487, ''body'', 0, 2221, 228, 3173, 1448665353, 1, 2419),
  (191, 18, 87, 0, 10488, ''body'', 0, 3174, 229, 2419, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10489, ''body'', 0, 3175, 230, 2221, 1448665353, 1, 3174),
  (191, 18, 87, 0, 10490, ''body'', 0, 2192, 231, 3174, 1448665353, 1, 3175),
  (191, 18, 87, 0, 10491, ''body'', 0, 3176, 232, 3175, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10492, ''body'', 0, 2444, 233, 2192, 1448665353, 1, 3176),
  (191, 18, 87, 0, 10493, ''body'', 0, 2646, 234, 3176, 1448665353, 1, 2444),
  (191, 18, 87, 0, 10494, ''body'', 0, 2372, 235, 2444, 1448665353, 1, 2646),
  (191, 18, 87, 0, 10495, ''body'', 0, 2589, 236, 2646, 1448665353, 1, 2372),
  (191, 18, 87, 0, 10496, ''body'', 0, 3176, 237, 2372, 1448665353, 1, 2589),
  (191, 18, 87, 0, 10497, ''body'', 0, 2444, 238, 2589, 1448665353, 1, 3176),
  (191, 18, 87, 0, 10498, ''body'', 0, 2646, 239, 3176, 1448665353, 1, 2444),
  (191, 18, 87, 0, 10499, ''body'', 0, 2372, 240, 2444, 1448665353, 1, 2646),
  (191, 18, 87, 0, 10500, ''body'', 0, 3177, 241, 2646, 1448665353, 1, 2372),
  (191, 18, 87, 0, 10501, ''body'', 0, 2343, 242, 2372, 1448665353, 1, 3177),
  (191, 18, 87, 0, 10502, ''body'', 0, 2197, 243, 3177, 1448665353, 1, 2343),
  (191, 18, 87, 0, 10503, ''body'', 0, 2436, 244, 2343, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10504, ''body'', 0, 2197, 245, 2197, 1448665353, 1, 2436),
  (191, 18, 87, 0, 10505, ''body'', 0, 3127, 246, 2436, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10506, ''body'', 0, 2221, 247, 2197, 1448665353, 1, 3127),
  (191, 18, 87, 0, 10507, ''body'', 0, 2447, 248, 3127, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10508, ''body'', 0, 3065, 249, 2221, 1448665353, 1, 2447),
  (191, 18, 87, 0, 10509, ''body'', 0, 2194, 250, 2447, 1448665353, 1, 3065),
  (191, 18, 87, 0, 10510, ''body'', 0, 2782, 251, 3065, 1448665353, 1, 2194),
  (191, 18, 87, 0, 10511, ''body'', 0, 3178, 252, 2194, 1448665353, 1, 2782),
  (191, 18, 87, 0, 10512, ''body'', 0, 3179, 253, 2782, 1448665353, 1, 3178),
  (191, 18, 87, 0, 10513, ''body'', 0, 3180, 254, 3178, 1448665353, 1, 3179),
  (191, 18, 87, 0, 10514, ''body'', 0, 3181, 255, 3179, 1448665353, 1, 3180),
  (191, 18, 87, 0, 10515, ''body'', 0, 3182, 256, 3180, 1448665353, 1, 3181),
  (191, 18, 87, 0, 10516, ''body'', 0, 3183, 257, 3181, 1448665353, 1, 3182),
  (191, 18, 87, 0, 10517, ''body'', 0, 2231, 258, 3182, 1448665353, 1, 3183),
  (191, 18, 87, 0, 10518, ''body'', 0, 2224, 259, 3183, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10519, ''body'', 0, 2264, 260, 2231, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10520, ''body'', 0, 2255, 261, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10521, ''body'', 0, 3184, 262, 2264, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10522, ''body'', 0, 3185, 263, 2255, 1448665353, 1, 3184),
  (191, 18, 87, 0, 10523, ''body'', 0, 2752, 264, 3184, 1448665353, 1, 3185),
  (191, 18, 87, 0, 10524, ''body'', 0, 3186, 265, 3185, 1448665353, 1, 2752),
  (191, 18, 87, 0, 10525, ''body'', 0, 2224, 266, 2752, 1448665353, 1, 3186),
  (191, 18, 87, 0, 10526, ''body'', 0, 2264, 267, 3186, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10527, ''body'', 0, 2911, 268, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10528, ''body'', 0, 3187, 269, 2264, 1448665353, 1, 2911),
  (191, 18, 87, 0, 10529, ''body'', 0, 3162, 270, 2911, 1448665353, 1, 3187),
  (191, 18, 87, 0, 10530, ''body'', 0, 3188, 271, 3187, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10531, ''body'', 0, 2172, 272, 3162, 1448665353, 1, 3188),
  (191, 18, 87, 0, 10532, ''body'', 0, 2173, 273, 3188, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10533, ''body'', 0, 3189, 274, 2172, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10534, ''body'', 0, 3190, 275, 2173, 1448665353, 1, 3189),
  (191, 18, 87, 0, 10535, ''body'', 0, 2231, 276, 3189, 1448665353, 1, 3190),
  (191, 18, 87, 0, 10536, ''body'', 0, 2412, 277, 3190, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10537, ''body'', 0, 2508, 278, 2231, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10538, ''body'', 0, 3191, 279, 2412, 1448665353, 1, 2508),
  (191, 18, 87, 0, 10539, ''body'', 0, 2231, 280, 2508, 1448665353, 1, 3191),
  (191, 18, 87, 0, 10540, ''body'', 0, 2173, 281, 3191, 1448665353, 1, 2231),
  (191, 18, 87, 0, 10541, ''body'', 0, 3029, 282, 2231, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10542, ''body'', 0, 3192, 283, 2173, 1448665353, 1, 3029),
  (191, 18, 87, 0, 10543, ''body'', 0, 3129, 284, 3029, 1448665353, 1, 3192),
  (191, 18, 87, 0, 10544, ''body'', 0, 3193, 285, 3192, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10545, ''body'', 0, 2221, 286, 3129, 1448665353, 1, 3193),
  (191, 18, 87, 0, 10546, ''body'', 0, 2843, 287, 3193, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10547, ''body'', 0, 3194, 288, 2221, 1448665353, 1, 2843),
  (191, 18, 87, 0, 10548, ''body'', 0, 2170, 289, 2843, 1448665353, 1, 3194),
  (191, 18, 87, 0, 10549, ''body'', 0, 2192, 290, 3194, 1448665353, 1, 2170),
  (191, 18, 87, 0, 10550, ''body'', 0, 2507, 291, 2170, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10551, ''body'', 0, 2650, 292, 2192, 1448665353, 1, 2507),
  (191, 18, 87, 0, 10552, ''body'', 0, 2192, 293, 2507, 1448665353, 1, 2650),
  (191, 18, 87, 0, 10553, ''body'', 0, 3195, 294, 2650, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10554, ''body'', 0, 2173, 295, 2192, 1448665353, 1, 3195),
  (191, 18, 87, 0, 10555, ''body'', 0, 3188, 296, 3195, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10556, ''body'', 0, 2192, 297, 2173, 1448665353, 1, 3188),
  (191, 18, 87, 0, 10557, ''body'', 0, 2462, 298, 3188, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10558, ''body'', 0, 2216, 299, 2192, 1448665353, 1, 2462),
  (191, 18, 87, 0, 10559, ''body'', 0, 2709, 300, 2462, 1448665353, 1, 2216),
  (191, 18, 87, 0, 10560, ''body'', 0, 2372, 301, 2216, 1448665353, 1, 2709),
  (191, 18, 87, 0, 10561, ''body'', 0, 2173, 302, 2709, 1448665353, 1, 2372),
  (191, 18, 87, 0, 10562, ''body'', 0, 3029, 303, 2372, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10563, ''body'', 0, 3192, 304, 2173, 1448665353, 1, 3029),
  (191, 18, 87, 0, 10564, ''body'', 0, 2233, 305, 3029, 1448665353, 1, 3192),
  (191, 18, 87, 0, 10565, ''body'', 0, 2663, 306, 3192, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10566, ''body'', 0, 3196, 307, 2233, 1448665353, 1, 2663),
  (191, 18, 87, 0, 10567, ''body'', 0, 3197, 308, 2663, 1448665353, 1, 3196),
  (191, 18, 87, 0, 10568, ''body'', 0, 2172, 309, 3196, 1448665353, 1, 3197),
  (191, 18, 87, 0, 10569, ''body'', 0, 3148, 310, 3197, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10570, ''body'', 0, 2946, 311, 2172, 1448665353, 1, 3148),
  (191, 18, 87, 0, 10571, ''body'', 0, 2221, 312, 3148, 1448665353, 1, 2946),
  (191, 18, 87, 0, 10572, ''body'', 0, 3094, 313, 2946, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10573, ''body'', 0, 2895, 314, 2221, 1448665353, 1, 3094),
  (191, 18, 87, 0, 10574, ''body'', 0, 2191, 315, 3094, 1448665353, 1, 2895),
  (191, 18, 87, 0, 10575, ''body'', 0, 3197, 316, 2895, 1448665353, 1, 2191),
  (191, 18, 87, 0, 10576, ''body'', 0, 2241, 317, 2191, 1448665353, 1, 3197),
  (191, 18, 87, 0, 10577, ''body'', 0, 2173, 318, 3197, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10578, ''body'', 0, 3188, 319, 2241, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10579, ''body'', 0, 2241, 320, 2173, 1448665353, 1, 3188),
  (191, 18, 87, 0, 10580, ''body'', 0, 3198, 321, 3188, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10581, ''body'', 0, 3199, 322, 2241, 1448665353, 1, 3198),
  (191, 18, 87, 0, 10582, ''body'', 0, 2279, 323, 3198, 1448665353, 1, 3199),
  (191, 18, 87, 0, 10583, ''body'', 0, 2229, 324, 3199, 1448665353, 1, 2279),
  (191, 18, 87, 0, 10584, ''body'', 0, 2887, 325, 2279, 1448665353, 1, 2229),
  (191, 18, 87, 0, 10585, ''body'', 0, 3200, 326, 2229, 1448665353, 1, 2887),
  (191, 18, 87, 0, 10586, ''body'', 0, 2192, 327, 2887, 1448665353, 1, 3200),
  (191, 18, 87, 0, 10587, ''body'', 0, 2447, 328, 3200, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10588, ''body'', 0, 3201, 329, 2192, 1448665353, 1, 2447),
  (191, 18, 87, 0, 10589, ''body'', 0, 3162, 330, 2447, 1448665353, 1, 3201),
  (191, 18, 87, 0, 10590, ''body'', 0, 3188, 331, 3201, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10591, ''body'', 0, 2796, 332, 3162, 1448665353, 1, 3188),
  (191, 18, 87, 0, 10592, ''body'', 0, 2462, 333, 3188, 1448665353, 1, 2796),
  (191, 18, 87, 0, 10593, ''body'', 0, 2173, 334, 2796, 1448665353, 1, 2462),
  (191, 18, 87, 0, 10594, ''body'', 0, 2815, 335, 2462, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10595, ''body'', 0, 3202, 336, 2173, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10596, ''body'', 0, 3203, 337, 2815, 1448665353, 1, 3202),
  (191, 18, 87, 0, 10597, ''body'', 0, 3204, 338, 3202, 1448665353, 1, 3203),
  (191, 18, 87, 0, 10598, ''body'', 0, 2193, 339, 3203, 1448665353, 1, 3204),
  (191, 18, 87, 0, 10599, ''body'', 0, 2220, 340, 3204, 1448665353, 1, 2193),
  (191, 18, 87, 0, 10600, ''body'', 0, 2221, 341, 2193, 1448665353, 1, 2220),
  (191, 18, 87, 0, 10601, ''body'', 0, 3205, 342, 2220, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10602, ''body'', 0, 3206, 343, 2221, 1448665353, 1, 3205),
  (191, 18, 87, 0, 10603, ''body'', 0, 2173, 344, 3205, 1448665353, 1, 3206),
  (191, 18, 87, 0, 10604, ''body'', 0, 2166, 345, 3206, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10605, ''body'', 0, 2255, 346, 2173, 1448665353, 1, 2166),
  (191, 18, 87, 0, 10606, ''body'', 0, 3207, 347, 2166, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10607, ''body'', 0, 2815, 348, 2255, 1448665353, 1, 3207),
  (191, 18, 87, 0, 10608, ''body'', 0, 2221, 349, 3207, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10609, ''body'', 0, 2843, 350, 2815, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10610, ''body'', 0, 2462, 351, 2221, 1448665353, 1, 2843),
  (191, 18, 87, 0, 10611, ''body'', 0, 2317, 352, 2843, 1448665353, 1, 2462),
  (191, 18, 87, 0, 10612, ''body'', 0, 3208, 353, 2462, 1448665353, 1, 2317),
  (191, 18, 87, 0, 10613, ''body'', 0, 3209, 354, 2317, 1448665353, 1, 3208),
  (191, 18, 87, 0, 10614, ''body'', 0, 2752, 355, 3208, 1448665353, 1, 3209),
  (191, 18, 87, 0, 10615, ''body'', 0, 3210, 356, 3209, 1448665353, 1, 2752),
  (191, 18, 87, 0, 10616, ''body'', 0, 2291, 357, 2752, 1448665353, 1, 3210),
  (191, 18, 87, 0, 10617, ''body'', 0, 3211, 358, 3210, 1448665353, 1, 2291),
  (191, 18, 87, 0, 10618, ''body'', 0, 3212, 359, 2291, 1448665353, 1, 3211),
  (191, 18, 87, 0, 10619, ''body'', 0, 2197, 360, 3211, 1448665353, 1, 3212),
  (191, 18, 87, 0, 10620, ''body'', 0, 2291, 361, 3212, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10621, ''body'', 0, 3213, 362, 2197, 1448665353, 1, 2291),
  (191, 18, 87, 0, 10622, ''body'', 0, 2815, 363, 2291, 1448665353, 1, 3213),
  (191, 18, 87, 0, 10623, ''body'', 0, 3214, 364, 3213, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10624, ''body'', 0, 3215, 365, 2815, 1448665353, 1, 3214),
  (191, 18, 87, 0, 10625, ''body'', 0, 2221, 366, 3214, 1448665353, 1, 3215),
  (191, 18, 87, 0, 10626, ''body'', 0, 2506, 367, 3215, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10627, ''body'', 0, 3009, 368, 2221, 1448665353, 1, 2506),
  (191, 18, 87, 0, 10628, ''body'', 0, 2317, 369, 2506, 1448665353, 1, 3009),
  (191, 18, 87, 0, 10629, ''body'', 0, 3216, 370, 3009, 1448665353, 1, 2317),
  (191, 18, 87, 0, 10630, ''body'', 0, 2892, 371, 2317, 1448665353, 1, 3216),
  (191, 18, 87, 0, 10631, ''body'', 0, 2172, 372, 3216, 1448665353, 1, 2892),
  (191, 18, 87, 0, 10632, ''body'', 0, 2164, 373, 2892, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10633, ''body'', 0, 2192, 374, 2172, 1448665353, 1, 2164),
  (191, 18, 87, 0, 10634, ''body'', 0, 3217, 375, 2164, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10635, ''body'', 0, 3148, 376, 2192, 1448665353, 1, 3217),
  (191, 18, 87, 0, 10636, ''body'', 0, 3218, 377, 3217, 1448665353, 1, 3148),
  (191, 18, 87, 0, 10637, ''body'', 0, 2265, 378, 3148, 1448665353, 1, 3218),
  (191, 18, 87, 0, 10638, ''body'', 0, 2300, 379, 3218, 1448665353, 1, 2265),
  (191, 18, 87, 0, 10639, ''body'', 0, 2173, 380, 2265, 1448665353, 1, 2300),
  (191, 18, 87, 0, 10640, ''body'', 0, 3219, 381, 2300, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10641, ''body'', 0, 3220, 382, 2173, 1448665353, 1, 3219),
  (191, 18, 87, 0, 10642, ''body'', 0, 2241, 383, 3219, 1448665353, 1, 3220),
  (191, 18, 87, 0, 10643, ''body'', 0, 2173, 384, 3220, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10644, ''body'', 0, 3221, 385, 2241, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10645, ''body'', 0, 2296, 386, 2173, 1448665353, 1, 3221),
  (191, 18, 87, 0, 10646, ''body'', 0, 2173, 387, 3221, 1448665353, 1, 2296),
  (191, 18, 87, 0, 10647, ''body'', 0, 2253, 388, 2296, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10648, ''body'', 0, 2326, 389, 2173, 1448665353, 1, 2253),
  (191, 18, 87, 0, 10649, ''body'', 0, 3222, 390, 2253, 1448665353, 1, 2326),
  (191, 18, 87, 0, 10650, ''body'', 0, 2594, 391, 2326, 1448665353, 1, 3222),
  (191, 18, 87, 0, 10651, ''body'', 0, 2320, 392, 3222, 1448665353, 1, 2594),
  (191, 18, 87, 0, 10652, ''body'', 0, 3162, 393, 2594, 1448665353, 1, 2320),
  (191, 18, 87, 0, 10653, ''body'', 0, 2412, 394, 2320, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10654, ''body'', 0, 3223, 395, 3162, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10655, ''body'', 0, 2203, 396, 2412, 1448665353, 1, 3223),
  (191, 18, 87, 0, 10656, ''body'', 0, 3084, 397, 3223, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10657, ''body'', 0, 2204, 398, 2203, 1448665353, 1, 3084),
  (191, 18, 87, 0, 10658, ''body'', 0, 2482, 399, 3084, 1448665353, 1, 2204),
  (191, 18, 87, 0, 10659, ''body'', 0, 2279, 400, 2204, 1448665353, 1, 2482),
  (191, 18, 87, 0, 10660, ''body'', 0, 3170, 401, 2482, 1448665353, 1, 2279),
  (191, 18, 87, 0, 10661, ''body'', 0, 2192, 402, 2279, 1448665353, 1, 3170),
  (191, 18, 87, 0, 10662, ''body'', 0, 3162, 403, 3170, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10663, ''body'', 0, 2412, 404, 2192, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10664, ''body'', 0, 2221, 405, 3162, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10665, ''body'', 0, 2843, 406, 2412, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10666, ''body'', 0, 3224, 407, 2221, 1448665353, 1, 2843),
  (191, 18, 87, 0, 10667, ''body'', 0, 2233, 408, 2843, 1448665353, 1, 3224),
  (191, 18, 87, 0, 10668, ''body'', 0, 3225, 409, 3224, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10669, ''body'', 0, 2203, 410, 2233, 1448665353, 1, 3225),
  (191, 18, 87, 0, 10670, ''body'', 0, 3050, 411, 3225, 1448665353, 1, 2203),
  (191, 18, 87, 0, 10671, ''body'', 0, 2682, 412, 2203, 1448665353, 1, 3050),
  (191, 18, 87, 0, 10672, ''body'', 0, 2233, 413, 3050, 1448665353, 1, 2682),
  (191, 18, 87, 0, 10673, ''body'', 0, 3084, 414, 2682, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10674, ''body'', 0, 2300, 415, 2233, 1448665353, 1, 3084),
  (191, 18, 87, 0, 10675, ''body'', 0, 2224, 416, 3084, 1448665353, 1, 2300),
  (191, 18, 87, 0, 10676, ''body'', 0, 3129, 417, 2300, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10677, ''body'', 0, 2663, 418, 2224, 1448665353, 1, 3129),
  (191, 18, 87, 0, 10678, ''body'', 0, 3226, 419, 3129, 1448665353, 1, 2663),
  (191, 18, 87, 0, 10679, ''body'', 0, 3134, 420, 2663, 1448665353, 1, 3226),
  (191, 18, 87, 0, 10680, ''body'', 0, 3227, 421, 3226, 1448665353, 1, 3134),
  (191, 18, 87, 0, 10681, ''body'', 0, 2197, 422, 3134, 1448665353, 1, 3227),
  (191, 18, 87, 0, 10682, ''body'', 0, 3228, 423, 3227, 1448665353, 1, 2197),
  (191, 18, 87, 0, 10683, ''body'', 0, 3229, 424, 2197, 1448665353, 1, 3228),
  (191, 18, 87, 0, 10684, ''body'', 0, 2192, 425, 3228, 1448665353, 1, 3229),
  (191, 18, 87, 0, 10685, ''body'', 0, 2594, 426, 3229, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10686, ''body'', 0, 3050, 427, 2192, 1448665353, 1, 2594),
  (191, 18, 87, 0, 10687, ''body'', 0, 3230, 428, 2594, 1448665353, 1, 3050),
  (191, 18, 87, 0, 10688, ''body'', 0, 3094, 429, 3050, 1448665353, 1, 3230),
  (191, 18, 87, 0, 10689, ''body'', 0, 2895, 430, 3230, 1448665353, 1, 3094),
  (191, 18, 87, 0, 10690, ''body'', 0, 3231, 431, 3094, 1448665353, 1, 2895),
  (191, 18, 87, 0, 10691, ''body'', 0, 2221, 432, 2895, 1448665353, 1, 3231),
  (191, 18, 87, 0, 10692, ''body'', 0, 2172, 433, 3231, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10693, ''body'', 0, 3232, 434, 2221, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10694, ''body'', 0, 2412, 435, 2172, 1448665353, 1, 3232),
  (191, 18, 87, 0, 10695, ''body'', 0, 2221, 436, 3232, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10696, ''body'', 0, 2843, 437, 2412, 1448665353, 1, 2221),
  (191, 18, 87, 0, 10697, ''body'', 0, 2663, 438, 2221, 1448665353, 1, 2843),
  (191, 18, 87, 0, 10698, ''body'', 0, 3233, 439, 2843, 1448665353, 1, 2663),
  (191, 18, 87, 0, 10699, ''body'', 0, 3234, 440, 2663, 1448665353, 1, 3233),
  (191, 18, 87, 0, 10700, ''body'', 0, 2241, 441, 3233, 1448665353, 1, 3234),
  (191, 18, 87, 0, 10701, ''body'', 0, 2173, 442, 3234, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10702, ''body'', 0, 3235, 443, 2241, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10703, ''body'', 0, 3056, 444, 2173, 1448665353, 1, 3235),
  (191, 18, 87, 0, 10704, ''body'', 0, 2284, 445, 3235, 1448665353, 1, 3056),
  (191, 18, 87, 0, 10705, ''body'', 0, 2194, 446, 3056, 1448665353, 1, 2284),
  (191, 18, 87, 0, 10706, ''body'', 0, 3236, 447, 2284, 1448665353, 1, 2194),
  (191, 18, 87, 0, 10707, ''body'', 0, 2296, 448, 2194, 1448665353, 1, 3236),
  (191, 18, 87, 0, 10708, ''body'', 0, 2173, 449, 3236, 1448665353, 1, 2296),
  (191, 18, 87, 0, 10709, ''body'', 0, 3237, 450, 2296, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10710, ''body'', 0, 3144, 451, 2173, 1448665353, 1, 3237),
  (191, 18, 87, 0, 10711, ''body'', 0, 2409, 452, 3237, 1448665353, 1, 3144),
  (191, 18, 87, 0, 10712, ''body'', 0, 2581, 453, 3144, 1448665353, 1, 2409),
  (191, 18, 87, 0, 10713, ''body'', 0, 2224, 454, 2409, 1448665353, 1, 2581),
  (191, 18, 87, 0, 10714, ''body'', 0, 2192, 455, 2581, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10715, ''body'', 0, 3238, 456, 2224, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10716, ''body'', 0, 3239, 457, 2192, 1448665353, 1, 3238),
  (191, 18, 87, 0, 10717, ''body'', 0, 3240, 458, 3238, 1448665353, 1, 3239),
  (191, 18, 87, 0, 10718, ''body'', 0, 2220, 459, 3239, 1448665353, 1, 3240),
  (191, 18, 87, 0, 10719, ''body'', 0, 2185, 460, 3240, 1448665353, 1, 2220),
  (191, 18, 87, 0, 10720, ''body'', 0, 2514, 461, 2220, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10721, ''body'', 0, 3241, 462, 2185, 1448665353, 1, 2514),
  (191, 18, 87, 0, 10722, ''body'', 0, 2412, 463, 2514, 1448665353, 1, 3241),
  (191, 18, 87, 0, 10723, ''body'', 0, 2229, 464, 3241, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10724, ''body'', 0, 2979, 465, 2412, 1448665353, 1, 2229),
  (191, 18, 87, 0, 10725, ''body'', 0, 2233, 466, 2229, 1448665353, 1, 2979),
  (191, 18, 87, 0, 10726, ''body'', 0, 2224, 467, 2979, 1448665353, 1, 2233),
  (191, 18, 87, 0, 10727, ''body'', 0, 2264, 468, 2233, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10728, ''body'', 0, 3242, 469, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10729, ''body'', 0, 3243, 470, 2264, 1448665353, 1, 3242),
  (191, 18, 87, 0, 10730, ''body'', 0, 3244, 471, 3242, 1448665353, 1, 3243),
  (191, 18, 87, 0, 10731, ''body'', 0, 2655, 472, 3243, 1448665353, 1, 3244),
  (191, 18, 87, 0, 10732, ''body'', 0, 3240, 473, 3244, 1448665353, 1, 2655),
  (191, 18, 87, 0, 10733, ''body'', 0, 3216, 474, 2655, 1448665353, 1, 3240),
  (191, 18, 87, 0, 10734, ''body'', 0, 2192, 475, 3240, 1448665353, 1, 3216),
  (191, 18, 87, 0, 10735, ''body'', 0, 3245, 476, 3216, 1448665353, 1, 2192),
  (191, 18, 87, 0, 10736, ''body'', 0, 2172, 477, 2192, 1448665353, 1, 3245),
  (191, 18, 87, 0, 10737, ''body'', 0, 3246, 478, 3245, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10738, ''body'', 0, 2224, 479, 2172, 1448665353, 1, 3246),
  (191, 18, 87, 0, 10739, ''body'', 0, 2255, 480, 3246, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10740, ''body'', 0, 3247, 481, 2224, 1448665353, 1, 2255),
  (191, 18, 87, 0, 10741, ''body'', 0, 2807, 482, 2255, 1448665353, 1, 3247),
  (191, 18, 87, 0, 10742, ''body'', 0, 3248, 483, 3247, 1448665353, 1, 2807),
  (191, 18, 87, 0, 10743, ''body'', 0, 2173, 484, 2807, 1448665353, 1, 3248),
  (191, 18, 87, 0, 10744, ''body'', 0, 3249, 485, 3248, 1448665353, 1, 2173),
  (191, 18, 87, 0, 10745, ''body'', 0, 3093, 486, 2173, 1448665353, 1, 3249),
  (191, 18, 87, 0, 10746, ''body'', 0, 3250, 487, 3249, 1448665353, 1, 3093),
  (191, 18, 87, 0, 10747, ''body'', 0, 3251, 488, 3093, 1448665353, 1, 3250),
  (191, 18, 87, 0, 10748, ''body'', 0, 3252, 489, 3250, 1448665353, 1, 3251),
  (191, 18, 87, 0, 10749, ''body'', 0, 3160, 490, 3251, 1448665353, 1, 3252),
  (191, 18, 87, 0, 10750, ''body'', 0, 2166, 491, 3252, 1448665353, 1, 3160),
  (191, 18, 87, 0, 10751, ''body'', 0, 2843, 492, 3160, 1448665353, 1, 2166),
  (191, 18, 87, 0, 10752, ''body'', 0, 3182, 493, 2166, 1448665353, 1, 2843),
  (191, 18, 87, 0, 10753, ''body'', 0, 3239, 494, 2843, 1448665353, 1, 3182),
  (191, 18, 87, 0, 10754, ''body'', 0, 3240, 495, 3182, 1448665353, 1, 3239),
  (191, 18, 87, 0, 10755, ''body'', 0, 2663, 496, 3239, 1448665353, 1, 3240),
  (191, 18, 87, 0, 10756, ''body'', 0, 2594, 497, 3240, 1448665353, 1, 2663),
  (191, 18, 87, 0, 10757, ''body'', 0, 2320, 498, 2663, 1448665353, 1, 2594),
  (191, 18, 87, 0, 10758, ''body'', 0, 3162, 499, 2594, 1448665353, 1, 2320),
  (191, 18, 87, 0, 10759, ''body'', 0, 2412, 500, 2320, 1448665353, 1, 3162),
  (191, 18, 87, 0, 10760, ''body'', 0, 3253, 501, 3162, 1448665353, 1, 2412),
  (191, 18, 87, 0, 10761, ''body'', 0, 2895, 502, 2412, 1448665353, 1, 3253),
  (191, 18, 87, 0, 10762, ''body'', 0, 3254, 503, 3253, 1448665353, 1, 2895),
  (191, 18, 87, 0, 10763, ''body'', 0, 3255, 504, 2895, 1448665353, 1, 3254),
  (191, 18, 87, 0, 10764, ''body'', 0, 2910, 505, 3254, 1448665353, 1, 3255),
  (191, 18, 87, 0, 10765, ''body'', 0, 3085, 506, 3255, 1448665353, 1, 2910),
  (191, 18, 87, 0, 10766, ''body'', 0, 3256, 507, 2910, 1448665353, 1, 3085),
  (191, 18, 87, 0, 10767, ''body'', 0, 2172, 508, 3085, 1448665353, 1, 3256),
  (191, 18, 87, 0, 10768, ''body'', 0, 2715, 509, 3256, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10769, ''body'', 0, 3257, 510, 2172, 1448665353, 1, 2715),
  (191, 18, 87, 0, 10770, ''body'', 0, 2296, 511, 2715, 1448665353, 1, 3257),
  (191, 18, 87, 0, 10771, ''body'', 0, 3100, 512, 3257, 1448665353, 1, 2296),
  (191, 18, 87, 0, 10772, ''body'', 0, 3112, 513, 2296, 1448665353, 1, 3100),
  (191, 18, 87, 0, 10773, ''body'', 0, 2815, 514, 3100, 1448665353, 1, 3112),
  (191, 18, 87, 0, 10774, ''body'', 0, 2306, 515, 3112, 1448665353, 1, 2815),
  (191, 18, 87, 0, 10775, ''body'', 0, 2300, 516, 2815, 1448665353, 1, 2306),
  (191, 18, 87, 0, 10776, ''body'', 0, 2224, 517, 2306, 1448665353, 1, 2300),
  (191, 18, 87, 0, 10777, ''body'', 0, 2264, 518, 2300, 1448665353, 1, 2224),
  (191, 18, 87, 0, 10778, ''body'', 0, 2215, 519, 2224, 1448665353, 1, 2264),
  (191, 18, 87, 0, 10779, ''body'', 0, 2217, 520, 2264, 1448665353, 1, 2215),
  (191, 18, 87, 0, 10780, ''body'', 0, 2927, 521, 2215, 1448665353, 1, 2217),
  (191, 18, 87, 0, 10781, ''body'', 0, 3143, 522, 2217, 1448665353, 1, 2927),
  (191, 18, 87, 0, 10782, ''body'', 0, 2965, 523, 2927, 1448665353, 1, 3143),
  (191, 18, 87, 0, 10783, ''body'', 0, 2506, 524, 3143, 1448665353, 1, 2965),
  (191, 18, 87, 0, 10784, ''body'', 0, 3258, 525, 2965, 1448665353, 1, 2506),
  (191, 18, 87, 0, 10785, ''body'', 0, 2172, 526, 2506, 1448665353, 1, 3258),
  (191, 18, 87, 0, 10786, ''body'', 0, 2241, 527, 3258, 1448665353, 1, 2172),
  (191, 18, 87, 0, 10787, ''body'', 0, 2185, 528, 2172, 1448665353, 1, 2241),
  (191, 18, 87, 0, 10788, ''body'', 0, 2187, 529, 2241, 1448665353, 1, 2185),
  (191, 18, 87, 0, 10789, ''body'', 0, 0, 530, 2185, 1448665353, 1, 2187),
  (187, 18, 88, 0, 10790, ''title'', 0, 2261, 0, 0, 1448665102, 1, 2224),
  (187, 18, 88, 0, 10791, ''title'', 0, 2233, 1, 2224, 1448665102, 1, 2261),
  (187, 18, 88, 0, 10792, ''title'', 0, 2224, 2, 2261, 1448665102, 1, 2233),
  (187, 18, 88, 0, 10793, ''title'', 0, 3259, 3, 2233, 1448665102, 1, 2224),
  (187, 18, 88, 0, 10794, ''title'', 0, 3260, 4, 2224, 1448665102, 1, 3259),
  (187, 18, 88, 0, 10795, ''title'', 0, 3261, 5, 3259, 1448665102, 1, 3260),
  (187, 18, 88, 0, 10796, ''title'', 0, 3262, 6, 3260, 1448665102, 1, 3261),
  (189, 18, 88, 0, 10797, ''author'', 0, 3263, 7, 3261, 1448665102, 1, 3262),
  (189, 18, 88, 0, 10798, ''author'', 0, 2934, 8, 3262, 1448665102, 1, 3263),
  (190, 18, 88, 0, 10799, ''intro'', 0, 2840, 9, 3263, 1448665102, 1, 2934),
  (190, 18, 88, 0, 10800, ''intro'', 0, 3264, 10, 2934, 1448665102, 1, 2840),
  (190, 18, 88, 0, 10801, ''intro'', 0, 2412, 11, 2840, 1448665102, 1, 3264),
  (190, 18, 88, 0, 10802, ''intro'', 0, 2413, 12, 3264, 1448665102, 1, 2412),
  (190, 18, 88, 0, 10803, ''intro'', 0, 2497, 13, 2412, 1448665102, 1, 2413),
  (190, 18, 88, 0, 10804, ''intro'', 0, 2224, 14, 2413, 1448665102, 1, 2497),
  (190, 18, 88, 0, 10805, ''intro'', 0, 2261, 15, 2497, 1448665102, 1, 2224),
  (190, 18, 88, 0, 10806, ''intro'', 0, 2233, 16, 2224, 1448665102, 1, 2261),
  (190, 18, 88, 0, 10807, ''intro'', 0, 2224, 17, 2261, 1448665102, 1, 2233),
  (190, 18, 88, 0, 10808, ''intro'', 0, 3259, 18, 2233, 1448665102, 1, 2224),
  (190, 18, 88, 0, 10809, ''intro'', 0, 2419, 19, 2224, 1448665102, 1, 3259),
  (190, 18, 88, 0, 10810, ''intro'', 0, 3265, 20, 3259, 1448665102, 1, 2419),
  (190, 18, 88, 0, 10811, ''intro'', 0, 2751, 21, 2419, 1448665102, 1, 3265),
  (190, 18, 88, 0, 10812, ''intro'', 0, 3266, 22, 3265, 1448665102, 1, 2751),
  (190, 18, 88, 0, 10813, ''intro'', 0, 2233, 23, 2751, 1448665102, 1, 3266),
  (190, 18, 88, 0, 10814, ''intro'', 0, 2173, 24, 3266, 1448665102, 1, 2233),
  (190, 18, 88, 0, 10815, ''intro'', 0, 2224, 25, 2233, 1448665102, 1, 2173),
  (190, 18, 88, 0, 10816, ''intro'', 0, 2270, 26, 2173, 1448665102, 1, 2224),
  (190, 18, 88, 0, 10817, ''intro'', 0, 2229, 27, 2224, 1448665102, 1, 2270),
  (190, 18, 88, 0, 10818, ''intro'', 0, 2295, 28, 2270, 1448665102, 1, 2229),
  (190, 18, 88, 0, 10819, ''intro'', 0, 3267, 29, 2229, 1448665102, 1, 2295),
  (190, 18, 88, 0, 10820, ''intro'', 0, 3268, 30, 2295, 1448665102, 1, 3267),
  (190, 18, 88, 0, 10821, ''intro'', 0, 2192, 31, 3267, 1448665102, 1, 3268),
  (190, 18, 88, 0, 10822, ''intro'', 0, 3269, 32, 3268, 1448665102, 1, 2192),
  (190, 18, 88, 0, 10823, ''intro'', 0, 2173, 33, 2192, 1448665102, 1, 3269),
  (190, 18, 88, 0, 10824, ''intro'', 0, 2806, 34, 3269, 1448665102, 1, 2173),
  (190, 18, 88, 0, 10825, ''intro'', 0, 3270, 35, 2173, 1448665102, 1, 2806),
  (190, 18, 88, 0, 10826, ''intro'', 0, 2934, 36, 2806, 1448665102, 1, 3270),
  (191, 18, 88, 0, 10827, ''body'', 0, 2840, 37, 3270, 1448665102, 1, 2934),
  (191, 18, 88, 0, 10828, ''body'', 0, 3264, 38, 2934, 1448665102, 1, 2840),
  (191, 18, 88, 0, 10829, ''body'', 0, 2412, 39, 2840, 1448665102, 1, 3264),
  (191, 18, 88, 0, 10830, ''body'', 0, 2413, 40, 3264, 1448665102, 1, 2412),
  (191, 18, 88, 0, 10831, ''body'', 0, 2497, 41, 2412, 1448665102, 1, 2413),
  (191, 18, 88, 0, 10832, ''body'', 0, 2224, 42, 2413, 1448665102, 1, 2497),
  (191, 18, 88, 0, 10833, ''body'', 0, 2261, 43, 2497, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10834, ''body'', 0, 2233, 44, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 10835, ''body'', 0, 2224, 45, 2261, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10836, ''body'', 0, 3259, 46, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10837, ''body'', 0, 2419, 47, 2224, 1448665102, 1, 3259),
  (191, 18, 88, 0, 10838, ''body'', 0, 3265, 48, 3259, 1448665102, 1, 2419),
  (191, 18, 88, 0, 10839, ''body'', 0, 2751, 49, 2419, 1448665102, 1, 3265),
  (191, 18, 88, 0, 10840, ''body'', 0, 3266, 50, 3265, 1448665102, 1, 2751),
  (191, 18, 88, 0, 10841, ''body'', 0, 2233, 51, 2751, 1448665102, 1, 3266),
  (191, 18, 88, 0, 10842, ''body'', 0, 2173, 52, 3266, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10843, ''body'', 0, 2224, 53, 2233, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10844, ''body'', 0, 2270, 54, 2173, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10845, ''body'', 0, 2229, 55, 2224, 1448665102, 1, 2270),
  (191, 18, 88, 0, 10846, ''body'', 0, 2295, 56, 2270, 1448665102, 1, 2229),
  (191, 18, 88, 0, 10847, ''body'', 0, 3267, 57, 2229, 1448665102, 1, 2295),
  (191, 18, 88, 0, 10848, ''body'', 0, 3268, 58, 2295, 1448665102, 1, 3267),
  (191, 18, 88, 0, 10849, ''body'', 0, 2192, 59, 3267, 1448665102, 1, 3268),
  (191, 18, 88, 0, 10850, ''body'', 0, 3269, 60, 3268, 1448665102, 1, 2192),
  (191, 18, 88, 0, 10851, ''body'', 0, 2173, 61, 2192, 1448665102, 1, 3269),
  (191, 18, 88, 0, 10852, ''body'', 0, 2806, 62, 3269, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10853, ''body'', 0, 3270, 63, 2173, 1448665102, 1, 2806),
  (191, 18, 88, 0, 10854, ''body'', 0, 2906, 64, 2806, 1448665102, 1, 3270),
  (191, 18, 88, 0, 10855, ''body'', 0, 3271, 65, 3270, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10856, ''body'', 0, 2192, 66, 2906, 1448665102, 1, 3271),
  (191, 18, 88, 0, 10857, ''body'', 0, 2597, 67, 3271, 1448665102, 1, 2192),
  (191, 18, 88, 0, 10858, ''body'', 0, 3272, 68, 2192, 1448665102, 1, 2597),
  (191, 18, 88, 0, 10859, ''body'', 0, 2233, 69, 2597, 1448665102, 1, 3272),
  (191, 18, 88, 0, 10860, ''body'', 0, 3273, 70, 3272, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10861, ''body'', 0, 3274, 71, 2233, 1448665102, 1, 3273),
  (191, 18, 88, 0, 10862, ''body'', 0, 2185, 72, 3273, 1448665102, 1, 3274),
  (191, 18, 88, 0, 10863, ''body'', 0, 3275, 73, 3274, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10864, ''body'', 0, 3276, 74, 2185, 1448665102, 1, 3275),
  (191, 18, 88, 0, 10865, ''body'', 0, 3277, 75, 3275, 1448665102, 1, 3276),
  (191, 18, 88, 0, 10866, ''body'', 0, 2964, 76, 3276, 1448665102, 1, 3277),
  (191, 18, 88, 0, 10867, ''body'', 0, 2883, 77, 3277, 1448665102, 1, 2964),
  (191, 18, 88, 0, 10868, ''body'', 0, 2173, 78, 2964, 1448665102, 1, 2883),
  (191, 18, 88, 0, 10869, ''body'', 0, 2186, 79, 2883, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10870, ''body'', 0, 2261, 80, 2173, 1448665102, 1, 2186),
  (191, 18, 88, 0, 10871, ''body'', 0, 2265, 81, 2186, 1448665102, 1, 2261),
  (191, 18, 88, 0, 10872, ''body'', 0, 2906, 82, 2261, 1448665102, 1, 2265),
  (191, 18, 88, 0, 10873, ''body'', 0, 2191, 83, 2265, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10874, ''body'', 0, 2279, 84, 2906, 1448665102, 1, 2191),
  (191, 18, 88, 0, 10875, ''body'', 0, 2229, 85, 2191, 1448665102, 1, 2279),
  (191, 18, 88, 0, 10876, ''body'', 0, 3278, 86, 2279, 1448665102, 1, 2229),
  (191, 18, 88, 0, 10877, ''body'', 0, 2194, 87, 2229, 1448665102, 1, 3278),
  (191, 18, 88, 0, 10878, ''body'', 0, 3279, 88, 3278, 1448665102, 1, 2194),
  (191, 18, 88, 0, 10879, ''body'', 0, 2233, 89, 2194, 1448665102, 1, 3279),
  (191, 18, 88, 0, 10880, ''body'', 0, 2983, 90, 3279, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10881, ''body'', 0, 2242, 91, 2233, 1448665102, 1, 2983),
  (191, 18, 88, 0, 10882, ''body'', 0, 2906, 92, 2983, 1448665102, 1, 2242),
  (191, 18, 88, 0, 10883, ''body'', 0, 3280, 93, 2242, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10884, ''body'', 0, 2173, 94, 2906, 1448665102, 1, 3280),
  (191, 18, 88, 0, 10885, ''body'', 0, 2523, 95, 3280, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10886, ''body'', 0, 3281, 96, 2173, 1448665102, 1, 2523),
  (191, 18, 88, 0, 10887, ''body'', 0, 2906, 97, 2523, 1448665102, 1, 3281),
  (191, 18, 88, 0, 10888, ''body'', 0, 2191, 98, 3281, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10889, ''body'', 0, 2192, 99, 2906, 1448665102, 1, 2191),
  (191, 18, 88, 0, 10890, ''body'', 0, 3127, 100, 2191, 1448665102, 1, 2192),
  (191, 18, 88, 0, 10891, ''body'', 0, 2229, 101, 2192, 1448665102, 1, 3127),
  (191, 18, 88, 0, 10892, ''body'', 0, 3270, 102, 3127, 1448665102, 1, 2229),
  (191, 18, 88, 0, 10893, ''body'', 0, 2185, 103, 2229, 1448665102, 1, 3270),
  (191, 18, 88, 0, 10894, ''body'', 0, 3282, 104, 3270, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10895, ''body'', 0, 3283, 105, 2185, 1448665102, 1, 3282),
  (191, 18, 88, 0, 10896, ''body'', 0, 2924, 106, 3282, 1448665102, 1, 3283),
  (191, 18, 88, 0, 10897, ''body'', 0, 3277, 107, 3283, 1448665102, 1, 2924),
  (191, 18, 88, 0, 10898, ''body'', 0, 2449, 108, 2924, 1448665102, 1, 3277),
  (191, 18, 88, 0, 10899, ''body'', 0, 3284, 109, 3277, 1448665102, 1, 2449),
  (191, 18, 88, 0, 10900, ''body'', 0, 2906, 110, 2449, 1448665102, 1, 3284),
  (191, 18, 88, 0, 10901, ''body'', 0, 3285, 111, 3284, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10902, ''body'', 0, 2185, 112, 2906, 1448665102, 1, 3285),
  (191, 18, 88, 0, 10903, ''body'', 0, 2186, 113, 3285, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10904, ''body'', 0, 3286, 114, 2185, 1448665102, 1, 2186),
  (191, 18, 88, 0, 10905, ''body'', 0, 2231, 115, 2186, 1448665102, 1, 3286),
  (191, 18, 88, 0, 10906, ''body'', 0, 2224, 116, 3286, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10907, ''body'', 0, 2261, 117, 2231, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10908, ''body'', 0, 2265, 118, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 10909, ''body'', 0, 2654, 119, 2261, 1448665102, 1, 2265),
  (191, 18, 88, 0, 10910, ''body'', 0, 2265, 120, 2265, 1448665102, 1, 2654),
  (191, 18, 88, 0, 10911, ''body'', 0, 2185, 121, 2654, 1448665102, 1, 2265),
  (191, 18, 88, 0, 10912, ''body'', 0, 3272, 122, 2265, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10913, ''body'', 0, 2231, 123, 2185, 1448665102, 1, 3272),
  (191, 18, 88, 0, 10914, ''body'', 0, 2409, 124, 3272, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10915, ''body'', 0, 3222, 125, 2231, 1448665102, 1, 2409),
  (191, 18, 88, 0, 10916, ''body'', 0, 2409, 126, 2409, 1448665102, 1, 3222),
  (191, 18, 88, 0, 10917, ''body'', 0, 2454, 127, 3222, 1448665102, 1, 2409),
  (191, 18, 88, 0, 10918, ''body'', 0, 3287, 128, 2409, 1448665102, 1, 2454),
  (191, 18, 88, 0, 10919, ''body'', 0, 2186, 129, 2454, 1448665102, 1, 3287),
  (191, 18, 88, 0, 10920, ''body'', 0, 3050, 130, 3287, 1448665102, 1, 2186),
  (191, 18, 88, 0, 10921, ''body'', 0, 3288, 131, 2186, 1448665102, 1, 3050),
  (191, 18, 88, 0, 10922, ''body'', 0, 2233, 132, 3050, 1448665102, 1, 3288),
  (191, 18, 88, 0, 10923, ''body'', 0, 2185, 133, 3288, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10924, ''body'', 0, 3289, 134, 2233, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10925, ''body'', 0, 3011, 135, 2185, 1448665102, 1, 3289),
  (191, 18, 88, 0, 10926, ''body'', 0, 2231, 136, 3289, 1448665102, 1, 3011),
  (191, 18, 88, 0, 10927, ''body'', 0, 2224, 137, 3011, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10928, ''body'', 0, 3290, 138, 2231, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10929, ''body'', 0, 2478, 139, 2224, 1448665102, 1, 3290),
  (191, 18, 88, 0, 10930, ''body'', 0, 2906, 140, 3290, 1448665102, 1, 2478),
  (191, 18, 88, 0, 10931, ''body'', 0, 2419, 141, 2478, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10932, ''body'', 0, 3291, 142, 2906, 1448665102, 1, 2419),
  (191, 18, 88, 0, 10933, ''body'', 0, 3292, 143, 2419, 1448665102, 1, 3291),
  (191, 18, 88, 0, 10934, ''body'', 0, 3293, 144, 3291, 1448665102, 1, 3292),
  (191, 18, 88, 0, 10935, ''body'', 0, 2233, 145, 3292, 1448665102, 1, 3293),
  (191, 18, 88, 0, 10936, ''body'', 0, 2185, 146, 3293, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10937, ''body'', 0, 3024, 147, 2233, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10938, ''body'', 0, 2231, 148, 2185, 1448665102, 1, 3024),
  (191, 18, 88, 0, 10939, ''body'', 0, 3097, 149, 3024, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10940, ''body'', 0, 2419, 150, 2231, 1448665102, 1, 3097),
  (191, 18, 88, 0, 10941, ''body'', 0, 3294, 151, 3097, 1448665102, 1, 2419),
  (191, 18, 88, 0, 10942, ''body'', 0, 3007, 152, 2419, 1448665102, 1, 3294),
  (191, 18, 88, 0, 10943, ''body'', 0, 3110, 153, 3294, 1448665102, 1, 3007),
  (191, 18, 88, 0, 10944, ''body'', 0, 2241, 154, 3007, 1448665102, 1, 3110),
  (191, 18, 88, 0, 10945, ''body'', 0, 2173, 155, 3110, 1448665102, 1, 2241),
  (191, 18, 88, 0, 10946, ''body'', 0, 3295, 156, 2241, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10947, ''body'', 0, 2231, 157, 2173, 1448665102, 1, 3295),
  (191, 18, 88, 0, 10948, ''body'', 0, 2377, 158, 3295, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10949, ''body'', 0, 2185, 159, 2231, 1448665102, 1, 2377),
  (191, 18, 88, 0, 10950, ''body'', 0, 3258, 160, 2377, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10951, ''body'', 0, 2365, 161, 2185, 1448665102, 1, 3258),
  (191, 18, 88, 0, 10952, ''body'', 0, 2934, 162, 3258, 1448665102, 1, 2365),
  (191, 18, 88, 0, 10953, ''body'', 0, 3296, 163, 2365, 1448665102, 1, 2934),
  (191, 18, 88, 0, 10954, ''body'', 0, 2365, 164, 2934, 1448665102, 1, 3296),
  (191, 18, 88, 0, 10955, ''body'', 0, 2449, 165, 3296, 1448665102, 1, 2365),
  (191, 18, 88, 0, 10956, ''body'', 0, 3297, 166, 2365, 1448665102, 1, 2449),
  (191, 18, 88, 0, 10957, ''body'', 0, 2906, 167, 2449, 1448665102, 1, 3297),
  (191, 18, 88, 0, 10958, ''body'', 0, 3298, 168, 3297, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10959, ''body'', 0, 2192, 169, 2906, 1448665102, 1, 3298),
  (191, 18, 88, 0, 10960, ''body'', 0, 3270, 170, 3298, 1448665102, 1, 2192),
  (191, 18, 88, 0, 10961, ''body'', 0, 2173, 171, 2192, 1448665102, 1, 3270),
  (191, 18, 88, 0, 10962, ''body'', 0, 3272, 172, 3270, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10963, ''body'', 0, 2172, 173, 2173, 1448665102, 1, 3272),
  (191, 18, 88, 0, 10964, ''body'', 0, 2224, 174, 3272, 1448665102, 1, 2172),
  (191, 18, 88, 0, 10965, ''body'', 0, 2261, 175, 2172, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10966, ''body'', 0, 2233, 176, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 10967, ''body'', 0, 2224, 177, 2261, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10968, ''body'', 0, 3259, 178, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10969, ''body'', 0, 2365, 179, 2224, 1448665102, 1, 3259),
  (191, 18, 88, 0, 10970, ''body'', 0, 2173, 180, 3259, 1448665102, 1, 2365),
  (191, 18, 88, 0, 10971, ''body'', 0, 3299, 181, 2365, 1448665102, 1, 2173),
  (191, 18, 88, 0, 10972, ''body'', 0, 2231, 182, 2173, 1448665102, 1, 3299),
  (191, 18, 88, 0, 10973, ''body'', 0, 2803, 183, 3299, 1448665102, 1, 2231),
  (191, 18, 88, 0, 10974, ''body'', 0, 2752, 184, 2231, 1448665102, 1, 2803),
  (191, 18, 88, 0, 10975, ''body'', 0, 3300, 185, 2803, 1448665102, 1, 2752),
  (191, 18, 88, 0, 10976, ''body'', 0, 2224, 186, 2752, 1448665102, 1, 3300),
  (191, 18, 88, 0, 10977, ''body'', 0, 2261, 187, 3300, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10978, ''body'', 0, 2911, 188, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 10979, ''body'', 0, 2507, 189, 2261, 1448665102, 1, 2911),
  (191, 18, 88, 0, 10980, ''body'', 0, 2185, 190, 2911, 1448665102, 1, 2507),
  (191, 18, 88, 0, 10981, ''body'', 0, 2532, 191, 2507, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10982, ''body'', 0, 3272, 192, 2185, 1448665102, 1, 2532),
  (191, 18, 88, 0, 10983, ''body'', 0, 2233, 193, 2532, 1448665102, 1, 3272),
  (191, 18, 88, 0, 10984, ''body'', 0, 2224, 194, 3272, 1448665102, 1, 2233),
  (191, 18, 88, 0, 10985, ''body'', 0, 3259, 195, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 10986, ''body'', 0, 2911, 196, 2224, 1448665102, 1, 3259),
  (191, 18, 88, 0, 10987, ''body'', 0, 2507, 197, 3259, 1448665102, 1, 2911),
  (191, 18, 88, 0, 10988, ''body'', 0, 2185, 198, 2911, 1448665102, 1, 2507),
  (191, 18, 88, 0, 10989, ''body'', 0, 3301, 199, 2507, 1448665102, 1, 2185),
  (191, 18, 88, 0, 10990, ''body'', 0, 2289, 200, 2185, 1448665102, 1, 3301),
  (191, 18, 88, 0, 10991, ''body'', 0, 2241, 201, 3301, 1448665102, 1, 2289),
  (191, 18, 88, 0, 10992, ''body'', 0, 2454, 202, 2289, 1448665102, 1, 2241),
  (191, 18, 88, 0, 10993, ''body'', 0, 2906, 203, 2241, 1448665102, 1, 2454),
  (191, 18, 88, 0, 10994, ''body'', 0, 2911, 204, 2454, 1448665102, 1, 2906),
  (191, 18, 88, 0, 10995, ''body'', 0, 3009, 205, 2906, 1448665102, 1, 2911),
  (191, 18, 88, 0, 10996, ''body'', 0, 3302, 206, 2911, 1448665102, 1, 3009),
  (191, 18, 88, 0, 10997, ''body'', 0, 2720, 207, 3009, 1448665102, 1, 3302),
  (191, 18, 88, 0, 10998, ''body'', 0, 2300, 208, 3302, 1448665102, 1, 2720),
  (191, 18, 88, 0, 10999, ''body'', 0, 2643, 209, 2720, 1448665102, 1, 2300),
  (191, 18, 88, 0, 11000, ''body'', 0, 2192, 210, 2300, 1448665102, 1, 2643),
  (191, 18, 88, 0, 11001, ''body'', 0, 2173, 211, 2643, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11002, ''body'', 0, 3272, 212, 2192, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11003, ''body'', 0, 2793, 213, 2173, 1448665102, 1, 3272),
  (191, 18, 88, 0, 11004, ''body'', 0, 3303, 214, 3272, 1448665102, 1, 2793),
  (191, 18, 88, 0, 11005, ''body'', 0, 2173, 215, 2793, 1448665102, 1, 3303),
  (191, 18, 88, 0, 11006, ''body'', 0, 3272, 216, 3303, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11007, ''body'', 0, 3270, 217, 2173, 1448665102, 1, 3272),
  (191, 18, 88, 0, 11008, ''body'', 0, 2906, 218, 3272, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11009, ''body'', 0, 2839, 219, 3270, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11010, ''body'', 0, 2192, 220, 2906, 1448665102, 1, 2839),
  (191, 18, 88, 0, 11011, ''body'', 0, 2447, 221, 2839, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11012, ''body'', 0, 2185, 222, 2192, 1448665102, 1, 2447),
  (191, 18, 88, 0, 11013, ''body'', 0, 2806, 223, 2447, 1448665102, 1, 2185),
  (191, 18, 88, 0, 11014, ''body'', 0, 3273, 224, 2185, 1448665102, 1, 2806),
  (191, 18, 88, 0, 11015, ''body'', 0, 3058, 225, 2806, 1448665102, 1, 3273),
  (191, 18, 88, 0, 11016, ''body'', 0, 2341, 226, 3273, 1448665102, 1, 3058),
  (191, 18, 88, 0, 11017, ''body'', 0, 3270, 227, 3058, 1448665102, 1, 2341),
  (191, 18, 88, 0, 11018, ''body'', 0, 3304, 228, 2341, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11019, ''body'', 0, 2752, 229, 3270, 1448665102, 1, 3304),
  (191, 18, 88, 0, 11020, ''body'', 0, 3305, 230, 3304, 1448665102, 1, 2752),
  (191, 18, 88, 0, 11021, ''body'', 0, 3306, 231, 2752, 1448665102, 1, 3305),
  (191, 18, 88, 0, 11022, ''body'', 0, 2934, 232, 3305, 1448665102, 1, 3306),
  (191, 18, 88, 0, 11023, ''body'', 0, 3058, 233, 3306, 1448665102, 1, 2934),
  (191, 18, 88, 0, 11024, ''body'', 0, 2341, 234, 2934, 1448665102, 1, 3058),
  (191, 18, 88, 0, 11025, ''body'', 0, 3270, 235, 3058, 1448665102, 1, 2341),
  (191, 18, 88, 0, 11026, ''body'', 0, 3307, 236, 2341, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11027, ''body'', 0, 2229, 237, 3270, 1448665102, 1, 3307),
  (191, 18, 88, 0, 11028, ''body'', 0, 2173, 238, 3307, 1448665102, 1, 2229),
  (191, 18, 88, 0, 11029, ''body'', 0, 3308, 239, 2229, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11030, ''body'', 0, 3309, 240, 2173, 1448665102, 1, 3308),
  (191, 18, 88, 0, 11031, ''body'', 0, 2192, 241, 3308, 1448665102, 1, 3309),
  (191, 18, 88, 0, 11032, ''body'', 0, 2224, 242, 3309, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11033, ''body'', 0, 2255, 243, 2192, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11034, ''body'', 0, 2741, 244, 2224, 1448665102, 1, 2255),
  (191, 18, 88, 0, 11035, ''body'', 0, 3310, 245, 2255, 1448665102, 1, 2741),
  (191, 18, 88, 0, 11036, ''body'', 0, 3311, 246, 2741, 1448665102, 1, 3310),
  (191, 18, 88, 0, 11037, ''body'', 0, 2911, 247, 3310, 1448665102, 1, 3311),
  (191, 18, 88, 0, 11038, ''body'', 0, 2507, 248, 3311, 1448665102, 1, 2911),
  (191, 18, 88, 0, 11039, ''body'', 0, 3312, 249, 2911, 1448665102, 1, 2507),
  (191, 18, 88, 0, 11040, ''body'', 0, 2217, 250, 2507, 1448665102, 1, 3312),
  (191, 18, 88, 0, 11041, ''body'', 0, 2551, 251, 3312, 1448665102, 1, 2217),
  (191, 18, 88, 0, 11042, ''body'', 0, 3313, 252, 2217, 1448665102, 1, 2551),
  (191, 18, 88, 0, 11043, ''body'', 0, 2613, 253, 2551, 1448665102, 1, 3313),
  (191, 18, 88, 0, 11044, ''body'', 0, 2233, 254, 3313, 1448665102, 1, 2613),
  (191, 18, 88, 0, 11045, ''body'', 0, 2224, 255, 2613, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11046, ''body'', 0, 2911, 256, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11047, ''body'', 0, 3314, 257, 2224, 1448665102, 1, 2911),
  (191, 18, 88, 0, 11048, ''body'', 0, 3315, 258, 2911, 1448665102, 1, 3314),
  (191, 18, 88, 0, 11049, ''body'', 0, 2289, 259, 3314, 1448665102, 1, 3315),
  (191, 18, 88, 0, 11050, ''body'', 0, 3316, 260, 3315, 1448665102, 1, 2289),
  (191, 18, 88, 0, 11051, ''body'', 0, 2173, 261, 2289, 1448665102, 1, 3316),
  (191, 18, 88, 0, 11052, ''body'', 0, 2840, 262, 3316, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11053, ''body'', 0, 3304, 263, 2173, 1448665102, 1, 2840),
  (191, 18, 88, 0, 11054, ''body'', 0, 2229, 264, 2840, 1448665102, 1, 3304),
  (191, 18, 88, 0, 11055, ''body'', 0, 3317, 265, 3304, 1448665102, 1, 2229),
  (191, 18, 88, 0, 11056, ''body'', 0, 2662, 266, 2229, 1448665102, 1, 3317),
  (191, 18, 88, 0, 11057, ''body'', 0, 2506, 267, 3317, 1448665102, 1, 2662),
  (191, 18, 88, 0, 11058, ''body'', 0, 3318, 268, 2662, 1448665102, 1, 2506),
  (191, 18, 88, 0, 11059, ''body'', 0, 3319, 269, 2506, 1448665102, 1, 3318),
  (191, 18, 88, 0, 11060, ''body'', 0, 2192, 270, 3318, 1448665102, 1, 3319),
  (191, 18, 88, 0, 11061, ''body'', 0, 3315, 271, 3319, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11062, ''body'', 0, 2186, 272, 2192, 1448665102, 1, 3315),
  (191, 18, 88, 0, 11063, ''body'', 0, 3304, 273, 3315, 1448665102, 1, 2186),
  (191, 18, 88, 0, 11064, ''body'', 0, 2192, 274, 2186, 1448665102, 1, 3304),
  (191, 18, 88, 0, 11065, ''body'', 0, 3320, 275, 3304, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11066, ''body'', 0, 3321, 276, 2192, 1448665102, 1, 3320),
  (191, 18, 88, 0, 11067, ''body'', 0, 2231, 277, 3320, 1448665102, 1, 3321),
  (191, 18, 88, 0, 11068, ''body'', 0, 2173, 278, 3321, 1448665102, 1, 2231),
  (191, 18, 88, 0, 11069, ''body'', 0, 3322, 279, 2231, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11070, ''body'', 0, 2233, 280, 2173, 1448665102, 1, 3322),
  (191, 18, 88, 0, 11071, ''body'', 0, 2195, 281, 3322, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11072, ''body'', 0, 3323, 282, 2233, 1448665102, 1, 2195),
  (191, 18, 88, 0, 11073, ''body'', 0, 3314, 283, 2195, 1448665102, 1, 3323),
  (191, 18, 88, 0, 11074, ''body'', 0, 3303, 284, 3323, 1448665102, 1, 3314),
  (191, 18, 88, 0, 11075, ''body'', 0, 2173, 285, 3314, 1448665102, 1, 3303),
  (191, 18, 88, 0, 11076, ''body'', 0, 2806, 286, 3303, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11077, ''body'', 0, 3273, 287, 2173, 1448665102, 1, 2806),
  (191, 18, 88, 0, 11078, ''body'', 0, 3270, 288, 2806, 1448665102, 1, 3273),
  (191, 18, 88, 0, 11079, ''body'', 0, 2224, 289, 3273, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11080, ''body'', 0, 2261, 290, 3270, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11081, ''body'', 0, 2233, 291, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 11082, ''body'', 0, 2224, 292, 2261, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11083, ''body'', 0, 3259, 293, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11084, ''body'', 0, 2720, 294, 2224, 1448665102, 1, 3259),
  (191, 18, 88, 0, 11085, ''body'', 0, 2911, 295, 3259, 1448665102, 1, 2720),
  (191, 18, 88, 0, 11086, ''body'', 0, 2507, 296, 2720, 1448665102, 1, 2911),
  (191, 18, 88, 0, 11087, ''body'', 0, 3324, 297, 2911, 1448665102, 1, 2507),
  (191, 18, 88, 0, 11088, ''body'', 0, 2685, 298, 2507, 1448665102, 1, 3324),
  (191, 18, 88, 0, 11089, ''body'', 0, 2173, 299, 3324, 1448665102, 1, 2685),
  (191, 18, 88, 0, 11090, ''body'', 0, 2224, 300, 2685, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11091, ''body'', 0, 3325, 301, 2173, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11092, ''body'', 0, 2939, 302, 2224, 1448665102, 1, 3325),
  (191, 18, 88, 0, 11093, ''body'', 0, 2300, 303, 3325, 1448665102, 1, 2939),
  (191, 18, 88, 0, 11094, ''body'', 0, 3314, 304, 2939, 1448665102, 1, 2300),
  (191, 18, 88, 0, 11095, ''body'', 0, 2233, 305, 2300, 1448665102, 1, 3314),
  (191, 18, 88, 0, 11096, ''body'', 0, 2302, 306, 3314, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11097, ''body'', 0, 2504, 307, 2233, 1448665102, 1, 2302),
  (191, 18, 88, 0, 11098, ''body'', 0, 2173, 308, 2302, 1448665102, 1, 2504),
  (191, 18, 88, 0, 11099, ''body'', 0, 3326, 309, 2504, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11100, ''body'', 0, 3270, 310, 2173, 1448665102, 1, 3326),
  (191, 18, 88, 0, 11101, ''body'', 0, 2454, 311, 3326, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11102, ''body'', 0, 2906, 312, 3270, 1448665102, 1, 2454),
  (191, 18, 88, 0, 11103, ''body'', 0, 3327, 313, 2454, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11104, ''body'', 0, 2192, 314, 2906, 1448665102, 1, 3327),
  (191, 18, 88, 0, 11105, ''body'', 0, 3270, 315, 3327, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11106, ''body'', 0, 2241, 316, 2192, 1448665102, 1, 3270),
  (191, 18, 88, 0, 11107, ''body'', 0, 3328, 317, 3270, 1448665102, 1, 2241),
  (191, 18, 88, 0, 11108, ''body'', 0, 2911, 318, 2241, 1448665102, 1, 3328),
  (191, 18, 88, 0, 11109, ''body'', 0, 2507, 319, 3328, 1448665102, 1, 2911),
  (191, 18, 88, 0, 11110, ''body'', 0, 3329, 320, 2911, 1448665102, 1, 2507),
  (191, 18, 88, 0, 11111, ''body'', 0, 2752, 321, 2507, 1448665102, 1, 3329),
  (191, 18, 88, 0, 11112, ''body'', 0, 2173, 322, 3329, 1448665102, 1, 2752),
  (191, 18, 88, 0, 11113, ''body'', 0, 3330, 323, 2752, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11114, ''body'', 0, 2349, 324, 2173, 1448665102, 1, 3330),
  (191, 18, 88, 0, 11115, ''body'', 0, 2224, 325, 3330, 1448665102, 1, 2349),
  (191, 18, 88, 0, 11116, ''body'', 0, 3325, 326, 2349, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11117, ''body'', 0, 3331, 327, 2224, 1448665102, 1, 3325),
  (191, 18, 88, 0, 11118, ''body'', 0, 2233, 328, 3325, 1448665102, 1, 3331),
  (191, 18, 88, 0, 11119, ''body'', 0, 2482, 329, 3331, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11120, ''body'', 0, 2906, 330, 2233, 1448665102, 1, 2482),
  (191, 18, 88, 0, 11121, ''body'', 0, 3332, 331, 2482, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11122, ''body'', 0, 2906, 332, 2906, 1448665102, 1, 3332),
  (191, 18, 88, 0, 11123, ''body'', 0, 2419, 333, 3332, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11124, ''body'', 0, 3291, 334, 2906, 1448665102, 1, 2419),
  (191, 18, 88, 0, 11125, ''body'', 0, 3333, 335, 2419, 1448665102, 1, 3291),
  (191, 18, 88, 0, 11126, ''body'', 0, 2192, 336, 3291, 1448665102, 1, 3333),
  (191, 18, 88, 0, 11127, ''body'', 0, 3009, 337, 3333, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11128, ''body'', 0, 2889, 338, 2192, 1448665102, 1, 3009),
  (191, 18, 88, 0, 11129, ''body'', 0, 2816, 339, 3009, 1448665102, 1, 2889),
  (191, 18, 88, 0, 11130, ''body'', 0, 2449, 340, 2889, 1448665102, 1, 2816),
  (191, 18, 88, 0, 11131, ''body'', 0, 2928, 341, 2816, 1448665102, 1, 2449),
  (191, 18, 88, 0, 11132, ''body'', 0, 2887, 342, 2449, 1448665102, 1, 2928),
  (191, 18, 88, 0, 11133, ''body'', 0, 2641, 343, 2928, 1448665102, 1, 2887),
  (191, 18, 88, 0, 11134, ''body'', 0, 2793, 344, 2887, 1448665102, 1, 2641),
  (191, 18, 88, 0, 11135, ''body'', 0, 2964, 345, 2641, 1448665102, 1, 2793),
  (191, 18, 88, 0, 11136, ''body'', 0, 2173, 346, 2793, 1448665102, 1, 2964),
  (191, 18, 88, 0, 11137, ''body'', 0, 2504, 347, 2964, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11138, ''body'', 0, 2233, 348, 2173, 1448665102, 1, 2504),
  (191, 18, 88, 0, 11139, ''body'', 0, 2861, 349, 2504, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11140, ''body'', 0, 2384, 350, 2233, 1448665102, 1, 2861),
  (191, 18, 88, 0, 11141, ''body'', 0, 2279, 351, 2861, 1448665102, 1, 2384),
  (191, 18, 88, 0, 11142, ''body'', 0, 2720, 352, 2384, 1448665102, 1, 2279),
  (191, 18, 88, 0, 11143, ''body'', 0, 2300, 353, 2279, 1448665102, 1, 2720),
  (191, 18, 88, 0, 11144, ''body'', 0, 2173, 354, 2720, 1448665102, 1, 2300),
  (191, 18, 88, 0, 11145, ''body'', 0, 2793, 355, 2300, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11146, ''body'', 0, 2906, 356, 2173, 1448665102, 1, 2793),
  (191, 18, 88, 0, 11147, ''body'', 0, 2419, 357, 2793, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11148, ''body'', 0, 2295, 358, 2906, 1448665102, 1, 2419),
  (191, 18, 88, 0, 11149, ''body'', 0, 2296, 359, 2419, 1448665102, 1, 2295),
  (191, 18, 88, 0, 11150, ''body'', 0, 2185, 360, 2295, 1448665102, 1, 2296),
  (191, 18, 88, 0, 11151, ''body'', 0, 2186, 361, 2296, 1448665102, 1, 2185),
  (191, 18, 88, 0, 11152, ''body'', 0, 2199, 362, 2185, 1448665102, 1, 2186),
  (191, 18, 88, 0, 11153, ''body'', 0, 2334, 363, 2186, 1448665102, 1, 2199),
  (191, 18, 88, 0, 11154, ''body'', 0, 2186, 364, 2199, 1448665102, 1, 2334),
  (191, 18, 88, 0, 11155, ''body'', 0, 3334, 365, 2334, 1448665102, 1, 2186),
  (191, 18, 88, 0, 11156, ''body'', 0, 2233, 366, 2186, 1448665102, 1, 3334),
  (191, 18, 88, 0, 11157, ''body'', 0, 2185, 367, 3334, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11158, ''body'', 0, 3335, 368, 2233, 1448665102, 1, 2185),
  (191, 18, 88, 0, 11159, ''body'', 0, 2233, 369, 2185, 1448665102, 1, 3335),
  (191, 18, 88, 0, 11160, ''body'', 0, 3336, 370, 3335, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11161, ''body'', 0, 2839, 371, 2233, 1448665102, 1, 3336),
  (191, 18, 88, 0, 11162, ''body'', 0, 2265, 372, 3336, 1448665102, 1, 2839),
  (191, 18, 88, 0, 11163, ''body'', 0, 2654, 373, 2839, 1448665102, 1, 2265),
  (191, 18, 88, 0, 11164, ''body'', 0, 2265, 374, 2265, 1448665102, 1, 2654),
  (191, 18, 88, 0, 11165, ''body'', 0, 2968, 375, 2654, 1448665102, 1, 2265),
  (191, 18, 88, 0, 11166, ''body'', 0, 2192, 376, 2265, 1448665102, 1, 2968),
  (191, 18, 88, 0, 11167, ''body'', 0, 3337, 377, 2968, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11168, ''body'', 0, 2173, 378, 2192, 1448665102, 1, 3337),
  (191, 18, 88, 0, 11169, ''body'', 0, 3338, 379, 3337, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11170, ''body'', 0, 2372, 380, 2173, 1448665102, 1, 3338),
  (191, 18, 88, 0, 11171, ''body'', 0, 2224, 381, 3338, 1448665102, 1, 2372),
  (191, 18, 88, 0, 11172, ''body'', 0, 2264, 382, 2372, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11173, ''body'', 0, 2197, 383, 2224, 1448665102, 1, 2264),
  (191, 18, 88, 0, 11174, ''body'', 0, 2224, 384, 2264, 1448665102, 1, 2197),
  (191, 18, 88, 0, 11175, ''body'', 0, 2264, 385, 2197, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11176, ''body'', 0, 2261, 386, 2224, 1448665102, 1, 2264),
  (191, 18, 88, 0, 11177, ''body'', 0, 2192, 387, 2264, 1448665102, 1, 2261),
  (191, 18, 88, 0, 11178, ''body'', 0, 2224, 388, 2261, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11179, ''body'', 0, 2261, 389, 2192, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11180, ''body'', 0, 2233, 390, 2224, 1448665102, 1, 2261),
  (191, 18, 88, 0, 11181, ''body'', 0, 2224, 391, 2261, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11182, ''body'', 0, 3259, 392, 2233, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11183, ''body'', 0, 3051, 393, 2224, 1448665102, 1, 3259),
  (191, 18, 88, 0, 11184, ''body'', 0, 2221, 394, 3259, 1448665102, 1, 3051),
  (191, 18, 88, 0, 11185, ''body'', 0, 2419, 395, 3051, 1448665102, 1, 2221),
  (191, 18, 88, 0, 11186, ''body'', 0, 3339, 396, 2221, 1448665102, 1, 2419),
  (191, 18, 88, 0, 11187, ''body'', 0, 3340, 397, 2419, 1448665102, 1, 3339),
  (191, 18, 88, 0, 11188, ''body'', 0, 2172, 398, 3339, 1448665102, 1, 3340),
  (191, 18, 88, 0, 11189, ''body'', 0, 2934, 399, 3340, 1448665102, 1, 2172),
  (191, 18, 88, 0, 11190, ''body'', 0, 2186, 400, 2172, 1448665102, 1, 2934),
  (191, 18, 88, 0, 11191, ''body'', 0, 3264, 401, 2934, 1448665102, 1, 2186),
  (191, 18, 88, 0, 11192, ''body'', 0, 2261, 402, 2186, 1448665102, 1, 3264),
  (191, 18, 88, 0, 11193, ''body'', 0, 2906, 403, 3264, 1448665102, 1, 2261),
  (191, 18, 88, 0, 11194, ''body'', 0, 3341, 404, 2261, 1448665102, 1, 2906),
  (191, 18, 88, 0, 11195, ''body'', 0, 2507, 405, 2906, 1448665102, 1, 3341),
  (191, 18, 88, 0, 11196, ''body'', 0, 3267, 406, 3341, 1448665102, 1, 2507),
  (191, 18, 88, 0, 11197, ''body'', 0, 3342, 407, 2507, 1448665102, 1, 3267),
  (191, 18, 88, 0, 11198, ''body'', 0, 2192, 408, 3267, 1448665102, 1, 3342),
  (191, 18, 88, 0, 11199, ''body'', 0, 2195, 409, 3342, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11200, ''body'', 0, 2241, 410, 2192, 1448665102, 1, 2195),
  (191, 18, 88, 0, 11201, ''body'', 0, 3343, 411, 2195, 1448665102, 1, 2241),
  (191, 18, 88, 0, 11202, ''body'', 0, 2233, 412, 2241, 1448665102, 1, 3343),
  (191, 18, 88, 0, 11203, ''body'', 0, 3344, 413, 3343, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11204, ''body'', 0, 2192, 414, 2233, 1448665102, 1, 3344),
  (191, 18, 88, 0, 11205, ''body'', 0, 2203, 415, 3344, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11206, ''body'', 0, 3345, 416, 2192, 1448665102, 1, 2203),
  (191, 18, 88, 0, 11207, ''body'', 0, 3346, 417, 2203, 1448665102, 1, 3345),
  (191, 18, 88, 0, 11208, ''body'', 0, 3160, 418, 3345, 1448665102, 1, 3346),
  (191, 18, 88, 0, 11209, ''body'', 0, 3347, 419, 3346, 1448665102, 1, 3160),
  (191, 18, 88, 0, 11210, ''body'', 0, 2221, 420, 3160, 1448665102, 1, 3347),
  (191, 18, 88, 0, 11211, ''body'', 0, 3348, 421, 3347, 1448665102, 1, 2221),
  (191, 18, 88, 0, 11212, ''body'', 0, 2447, 422, 2221, 1448665102, 1, 3348),
  (191, 18, 88, 0, 11213, ''body'', 0, 2233, 423, 3348, 1448665102, 1, 2447),
  (191, 18, 88, 0, 11214, ''body'', 0, 3091, 424, 2447, 1448665102, 1, 2233),
  (191, 18, 88, 0, 11215, ''body'', 0, 2221, 425, 2233, 1448665102, 1, 3091),
  (191, 18, 88, 0, 11216, ''body'', 0, 3349, 426, 3091, 1448665102, 1, 2221),
  (191, 18, 88, 0, 11217, ''body'', 0, 2192, 427, 2221, 1448665102, 1, 3349),
  (191, 18, 88, 0, 11218, ''body'', 0, 2173, 428, 3349, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11219, ''body'', 0, 3272, 429, 2192, 1448665102, 1, 2173),
  (191, 18, 88, 0, 11220, ''body'', 0, 2200, 430, 2173, 1448665102, 1, 3272),
  (191, 18, 88, 0, 11221, ''body'', 0, 3018, 431, 3272, 1448665102, 1, 2200),
  (191, 18, 88, 0, 11222, ''body'', 0, 3350, 432, 2200, 1448665102, 1, 3018),
  (191, 18, 88, 0, 11223, ''body'', 0, 2192, 433, 3018, 1448665102, 1, 3350),
  (191, 18, 88, 0, 11224, ''body'', 0, 3351, 434, 3350, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11225, ''body'', 0, 2217, 435, 2192, 1448665102, 1, 3351),
  (191, 18, 88, 0, 11226, ''body'', 0, 2192, 436, 3351, 1448665102, 1, 2217),
  (191, 18, 88, 0, 11227, ''body'', 0, 3352, 437, 2217, 1448665102, 1, 2192),
  (191, 18, 88, 0, 11228, ''body'', 0, 2224, 438, 2192, 1448665102, 1, 3352),
  (191, 18, 88, 0, 11229, ''body'', 0, 3353, 439, 3352, 1448665102, 1, 2224),
  (191, 18, 88, 0, 11230, ''body'', 0, 3320, 440, 2224, 1448665102, 1, 3353),
  (191, 18, 88, 0, 11231, ''body'', 0, 3354, 441, 3353, 1448665102, 1, 3320),
  (191, 18, 88, 0, 11232, ''body'', 0, 2172, 442, 3320, 1448665102, 1, 3354),
  (191, 18, 88, 0, 11233, ''body'', 0, 2194, 443, 3354, 1448665102, 1, 2172),
  (191, 18, 88, 0, 11234, ''body'', 0, 2459, 444, 2172, 1448665102, 1, 2194),
  (191, 18, 88, 0, 11235, ''body'', 0, 2296, 445, 2194, 1448665102, 1, 2459),
  (191, 18, 88, 0, 11236, ''body'', 0, 2449, 446, 2459, 1448665102, 1, 2296),
  (191, 18, 88, 0, 11237, ''body'', 0, 2225, 447, 2296, 1448665102, 1, 2449),
  (191, 18, 88, 0, 11238, ''body'', 0, 0, 448, 2449, 1448665102, 1, 2225),
  (181, 16, 57, 0, 11249, ''title'', 0, 2184, 0, 0, 1448648004, 1, 3357),
  (183, 16, 57, 0, 11250, ''description'', 0, 2185, 1, 3357, 1448648004, 1, 2184),
  (183, 16, 57, 0, 11251, ''description'', 0, 2186, 2, 2184, 1448648004, 1, 2185),
  (183, 16, 57, 0, 11252, ''description'', 0, 2187, 3, 2185, 1448648004, 1, 2186),
  (183, 16, 57, 0, 11253, ''description'', 0, 2188, 4, 2186, 1448648004, 1, 2187),
  (183, 16, 57, 0, 11254, ''description'', 0, 0, 5, 2187, 1448648004, 1, 2188),
  (204, 21, 91, 0, 11262, ''presume_name'', 0, 3363, 0, 0, 1511093935, 1, 3362),
  (204, 21, 91, 0, 11263, ''presume_name'', 0, 3364, 1, 3362, 1511093935, 1, 3363),
  (204, 21, 91, 0, 11264, ''presume_name'', 0, 3365, 2, 3363, 1511093935, 1, 3364),
  (204, 21, 91, 0, 11265, ''presume_name'', 0, 0, 3, 3364, 1511093935, 1, 3365),
  (208, 22, 92, 0, 11266, ''title'', 0, 3367, 0, 0, 1511099470, 1, 3366),
  (208, 22, 92, 0, 11267, ''title'', 0, 3368, 1, 3366, 1511099470, 1, 3367),
  (209, 22, 92, 0, 11268, ''description'', 0, 3366, 2, 3367, 1511099470, 1, 3368),
  (209, 22, 92, 0, 11269, ''description'', 0, 3367, 3, 3368, 1511099470, 1, 3366),
  (209, 22, 92, 0, 11270, ''description'', 0, 0, 4, 3366, 1511099470, 1, 3367),
  (204, 21, 95, 0, 11305, ''presume_name'', 0, 3363, 0, 0, 1511100010, 1, 3362),
  (204, 21, 95, 0, 11306, ''presume_name'', 0, 3364, 1, 3362, 1511100010, 1, 3363),
  (204, 21, 95, 0, 11307, ''presume_name'', 0, 3365, 2, 3363, 1511100010, 1, 3364),
  (204, 21, 95, 0, 11308, ''presume_name'', 0, 0, 3, 3364, 1511100010, 1, 3365),
  (204, 21, 96, 0, 11309, ''presume_name'', 0, 0, 0, 0, 1511103127, 1, 3385),
  (204, 21, 97, 0, 11310, ''presume_name'', 0, 3387, 0, 0, 1511103293, 1, 3386),
  (204, 21, 97, 0, 11311, ''presume_name'', 0, 0, 1, 3386, 1511103293, 1, 3387),
  (204, 21, 98, 0, 11312, ''presume_name'', 0, 2752, 0, 0, 1511103369, 1, 3388),
  (204, 21, 98, 0, 11313, ''presume_name'', 0, 3389, 1, 3388, 1511103369, 1, 2752),
  (204, 21, 98, 0, 11314, ''presume_name'', 0, 0, 2, 2752, 1511103369, 1, 3389),
  (204, 21, 99, 0, 11316, ''presume_name'', 0, 0, 0, 0, 1511103722, 1, 3391),
  (198, 20, 59, 0, 11317, ''title'', 0, 2215, 0, 0, 1448627693, 1, 2214),
  (199, 20, 59, 0, 11318, ''description'', 0, 2216, 1, 2214, 1448627693, 1, 2215),
  (199, 20, 59, 0, 11319, ''description'', 0, 2217, 2, 2215, 1448627693, 1, 2216),
  (199, 20, 59, 0, 11320, ''description'', 0, 0, 3, 2216, 1448627693, 1, 2217),
  (116, 5, 100, 0, 11421, ''NAME'', 0, 3472, 0, 0, 1511105925, 1, 3471),
  (116, 5, 100, 0, 11422, ''NAME'', 0, 3473, 1, 3471, 1511105925, 1, 3472),
  (117, 5, 100, 0, 11423, ''caption'', 0, 3341, 2, 3472, 1511105925, 1, 3473),
  (117, 5, 100, 0, 11424, ''caption'', 0, 3419, 3, 3473, 1511105925, 1, 3341),
  (117, 5, 100, 0, 11425, ''caption'', 0, 3474, 4, 3341, 1511105925, 1, 3419),
  (117, 5, 100, 0, 11426, ''caption'', 0, 3475, 5, 3419, 1511105925, 1, 3474),
  (117, 5, 100, 0, 11427, ''caption'', 0, 3422, 6, 3474, 1511105925, 1, 3475),
  (117, 5, 100, 0, 11428, ''caption'', 0, 3476, 7, 3475, 1511105925, 1, 3422),
  (117, 5, 100, 0, 11429, ''caption'', 0, 3477, 8, 3422, 1511105925, 1, 3476),
  (117, 5, 100, 0, 11430, ''caption'', 0, 3478, 9, 3476, 1511105925, 1, 3477),
  (117, 5, 100, 0, 11431, ''caption'', 0, 3479, 10, 3477, 1511105925, 1, 3478),
  (117, 5, 100, 0, 11432, ''caption'', 0, 3480, 11, 3478, 1511105925, 1, 3479),
  (117, 5, 100, 0, 11433, ''caption'', 0, 3428, 12, 3479, 1511105925, 1, 3480),
  (117, 5, 100, 0, 11434, ''caption'', 0, 3481, 13, 3480, 1511105925, 1, 3428),
  (117, 5, 100, 0, 11435, ''caption'', 0, 3482, 14, 3428, 1511105925, 1, 3481),
  (117, 5, 100, 0, 11436, ''caption'', 0, 3431, 15, 3481, 1511105925, 1, 3482),
  (117, 5, 100, 0, 11437, ''caption'', 0, 3483, 16, 3482, 1511105925, 1, 3431),
  (117, 5, 100, 0, 11438, ''caption'', 0, 3484, 17, 3431, 1511105925, 1, 3483),
  (117, 5, 100, 0, 11439, ''caption'', 0, 3481, 18, 3483, 1511105925, 1, 3484),
  (117, 5, 100, 0, 11440, ''caption'', 0, 3485, 19, 3484, 1511105925, 1, 3481),
  (117, 5, 100, 0, 11441, ''caption'', 0, 3431, 20, 3481, 1511105925, 1, 3485),
  (117, 5, 100, 0, 11442, ''caption'', 0, 3486, 21, 3485, 1511105925, 1, 3431),
  (117, 5, 100, 0, 11443, ''caption'', 0, 3487, 22, 3431, 1511105925, 1, 3486),
  (117, 5, 100, 0, 11444, ''caption'', 0, 3488, 23, 3486, 1511105925, 1, 3487),
  (117, 5, 100, 0, 11445, ''caption'', 0, 3489, 24, 3487, 1511105925, 1, 3488),
  (117, 5, 100, 0, 11446, ''caption'', 0, 3490, 25, 3488, 1511105925, 1, 3489),
  (117, 5, 100, 0, 11447, ''caption'', 0, 0, 26, 3489, 1511105925, 1, 3490),
  (116, 5, 101, 0, 11448, ''NAME'', 0, 3492, 0, 0, 1511106468, 1, 3491),
  (117, 5, 101, 0, 11449, ''caption'', 0, 3493, 1, 3491, 1511106468, 1, 3492),
  (117, 5, 101, 0, 11450, ''caption'', 0, 3341, 2, 3492, 1511106468, 1, 3493),
  (117, 5, 101, 0, 11451, ''caption'', 0, 3419, 3, 3493, 1511106468, 1, 3341),
  (117, 5, 101, 0, 11452, ''caption'', 0, 3494, 4, 3341, 1511106468, 1, 3419),
  (117, 5, 101, 0, 11453, ''caption'', 0, 3495, 5, 3419, 1511106468, 1, 3494),
  (117, 5, 101, 0, 11454, ''caption'', 0, 3496, 6, 3494, 1511106468, 1, 3495),
  (117, 5, 101, 0, 11455, ''caption'', 0, 3088, 7, 3495, 1511106468, 1, 3496),
  (117, 5, 101, 0, 11456, ''caption'', 0, 3431, 8, 3496, 1511106468, 1, 3088),
  (117, 5, 101, 0, 11457, ''caption'', 0, 3497, 9, 3088, 1511106468, 1, 3431),
  (117, 5, 101, 0, 11458, ''caption'', 0, 3447, 10, 3431, 1511106468, 1, 3497),
  (117, 5, 101, 0, 11459, ''caption'', 0, 2969, 11, 3497, 1511106468, 1, 3447),
  (117, 5, 101, 0, 11460, ''caption'', 0, 3498, 12, 3447, 1511106468, 1, 2969),
  (117, 5, 101, 0, 11461, ''caption'', 0, 3499, 13, 2969, 1511106468, 1, 3498),
  (117, 5, 101, 0, 11462, ''caption'', 0, 2267, 14, 3498, 1511106468, 1, 3499),
  (117, 5, 101, 0, 11463, ''caption'', 0, 3500, 15, 3499, 1511106468, 1, 2267),
  (117, 5, 101, 0, 11464, ''caption'', 0, 3501, 16, 2267, 1511106468, 1, 3500),
  (117, 5, 101, 0, 11465, ''caption'', 0, 3431, 17, 3500, 1511106468, 1, 3501),
  (117, 5, 101, 0, 11466, ''caption'', 0, 3502, 18, 3501, 1511106468, 1, 3431),
  (117, 5, 101, 0, 11467, ''caption'', 0, 3503, 19, 3431, 1511106468, 1, 3502),
  (117, 5, 101, 0, 11468, ''caption'', 0, 3491, 20, 3502, 1511106468, 1, 3503),
  (117, 5, 101, 0, 11469, ''caption'', 0, 0, 21, 3503, 1511106468, 1, 3491),
  (116, 5, 102, 0, 11470, ''NAME'', 0, 3505, 0, 0, 1511106535, 1, 3504),
  (117, 5, 102, 0, 11471, ''caption'', 0, 3506, 1, 3504, 1511106535, 1, 3505),
  (117, 5, 102, 0, 11472, ''caption'', 0, 3507, 2, 3505, 1511106535, 1, 3506),
  (117, 5, 102, 0, 11473, ''caption'', 0, 3504, 3, 3506, 1511106535, 1, 3507),
  (117, 5, 102, 0, 11474, ''caption'', 0, 3508, 4, 3507, 1511106535, 1, 3504),
  (117, 5, 102, 0, 11475, ''caption'', 0, 3509, 5, 3504, 1511106535, 1, 3508),
  (117, 5, 102, 0, 11476, ''caption'', 0, 3510, 6, 3508, 1511106535, 1, 3509),
  (117, 5, 102, 0, 11477, ''caption'', 0, 3511, 7, 3509, 1511106535, 1, 3510),
  (117, 5, 102, 0, 11478, ''caption'', 0, 3512, 8, 3510, 1511106535, 1, 3511),
  (117, 5, 102, 0, 11479, ''caption'', 0, 3513, 9, 3511, 1511106535, 1, 3512),
  (117, 5, 102, 0, 11480, ''caption'', 0, 3514, 10, 3512, 1511106535, 1, 3513),
  (117, 5, 102, 0, 11481, ''caption'', 0, 3419, 11, 3513, 1511106535, 1, 3514),
  (117, 5, 102, 0, 11482, ''caption'', 0, 2334, 12, 3514, 1511106535, 1, 3419),
  (117, 5, 102, 0, 11483, ''caption'', 0, 3515, 13, 3419, 1511106535, 1, 2334),
  (117, 5, 102, 0, 11484, ''caption'', 0, 3516, 14, 2334, 1511106535, 1, 3515),
  (117, 5, 102, 0, 11485, ''caption'', 0, 3447, 15, 3515, 1511106535, 1, 3516),
  (117, 5, 102, 0, 11486, ''caption'', 0, 3428, 16, 3516, 1511106535, 1, 3447),
  (117, 5, 102, 0, 11487, ''caption'', 0, 3517, 17, 3447, 1511106535, 1, 3428),
  (117, 5, 102, 0, 11488, ''caption'', 0, 3422, 18, 3428, 1511106535, 1, 3517),
  (117, 5, 102, 0, 11489, ''caption'', 0, 3518, 19, 3517, 1511106535, 1, 3422),
  (117, 5, 102, 0, 11490, ''caption'', 0, 3515, 20, 3422, 1511106535, 1, 3518),
  (117, 5, 102, 0, 11491, ''caption'', 0, 3519, 21, 3518, 1511106535, 1, 3515),
  (117, 5, 102, 0, 11492, ''caption'', 0, 3520, 22, 3515, 1511106535, 1, 3519),
  (117, 5, 102, 0, 11493, ''caption'', 0, 0, 23, 3519, 1511106535, 1, 3520),
  (116, 5, 103, 0, 11494, ''NAME'', 0, 3496, 0, 0, 1511106970, 1, 3521),
  (116, 5, 103, 0, 11495, ''NAME'', 0, 3473, 1, 3521, 1511106970, 1, 3496),
  (117, 5, 103, 0, 11496, ''caption'', 0, 3341, 2, 3496, 1511106970, 1, 3473),
  (117, 5, 103, 0, 11497, ''caption'', 0, 3419, 3, 3473, 1511106970, 1, 3341),
  (117, 5, 103, 0, 11498, ''caption'', 0, 3521, 4, 3341, 1511106970, 1, 3419),
  (117, 5, 103, 0, 11499, ''caption'', 0, 3522, 5, 3419, 1511106970, 1, 3521),
  (117, 5, 103, 0, 11500, ''caption'', 0, 3506, 6, 3521, 1511106970, 1, 3522),
  (117, 5, 103, 0, 11501, ''caption'', 0, 3523, 7, 3522, 1511106970, 1, 3506),
  (117, 5, 103, 0, 11502, ''caption'', 0, 3524, 8, 3506, 1511106970, 1, 3523),
  (117, 5, 103, 0, 11503, ''caption'', 0, 3495, 9, 3523, 1511106970, 1, 3524),
  (117, 5, 103, 0, 11504, ''caption'', 0, 3496, 10, 3524, 1511106970, 1, 3495),
  (117, 5, 103, 0, 11505, ''caption'', 0, 3525, 11, 3495, 1511106970, 1, 3496),
  (117, 5, 103, 0, 11506, ''caption'', 0, 3526, 12, 3496, 1511106970, 1, 3525),
  (117, 5, 103, 0, 11507, ''caption'', 0, 3527, 13, 3525, 1511106970, 1, 3526),
  (117, 5, 103, 0, 11508, ''caption'', 0, 3528, 14, 3526, 1511106970, 1, 3527),
  (117, 5, 103, 0, 11509, ''caption'', 0, 3510, 15, 3527, 1511106970, 1, 3528),
  (117, 5, 103, 0, 11510, ''caption'', 0, 3529, 16, 3528, 1511106970, 1, 3510),
  (117, 5, 103, 0, 11511, ''caption'', 0, 3530, 17, 3510, 1511106970, 1, 3529),
  (117, 5, 103, 0, 11512, ''caption'', 0, 2185, 18, 3529, 1511106970, 1, 3530),
  (117, 5, 103, 0, 11513, ''caption'', 0, 3531, 19, 3530, 1511106970, 1, 2185),
  (117, 5, 103, 0, 11514, ''caption'', 0, 3532, 20, 2185, 1511106970, 1, 3531),
  (117, 5, 103, 0, 11515, ''caption'', 0, 3533, 21, 3531, 1511106970, 1, 3532),
  (117, 5, 103, 0, 11516, ''caption'', 0, 3534, 22, 3532, 1511106970, 1, 3533),
  (117, 5, 103, 0, 11517, ''caption'', 0, 0, 23, 3533, 1511106970, 1, 3534),
  (116, 5, 104, 0, 11518, ''NAME'', 0, 3367, 0, 0, 1511107047, 1, 3535),
  (116, 5, 104, 0, 11519, ''NAME'', 0, 3536, 1, 3535, 1511107047, 1, 3367),
  (117, 5, 104, 0, 11520, ''caption'', 0, 2334, 2, 3367, 1511107047, 1, 3536),
  (117, 5, 104, 0, 11521, ''caption'', 0, 3537, 3, 3536, 1511107047, 1, 2334),
  (117, 5, 104, 0, 11522, ''caption'', 0, 3538, 4, 2334, 1511107047, 1, 3537),
  (117, 5, 104, 0, 11523, ''caption'', 0, 2289, 5, 3537, 1511107047, 1, 3538),
  (117, 5, 104, 0, 11524, ''caption'', 0, 3029, 6, 3538, 1511107047, 1, 2289),
  (117, 5, 104, 0, 11525, ''caption'', 0, 3488, 7, 2289, 1511107047, 1, 3029),
  (117, 5, 104, 0, 11526, ''caption'', 0, 3539, 8, 3029, 1511107047, 1, 3488),
  (117, 5, 104, 0, 11527, ''caption'', 0, 3540, 9, 3488, 1511107047, 1, 3539),
  (117, 5, 104, 0, 11528, ''caption'', 0, 3541, 10, 3539, 1511107047, 1, 3540),
  (117, 5, 104, 0, 11529, ''caption'', 0, 3542, 11, 3540, 1511107047, 1, 3541),
  (117, 5, 104, 0, 11530, ''caption'', 0, 3431, 12, 3541, 1511107047, 1, 3542),
  (117, 5, 104, 0, 11531, ''caption'', 0, 3541, 13, 3542, 1511107047, 1, 3431),
  (117, 5, 104, 0, 11532, ''caption'', 0, 3543, 14, 3431, 1511107047, 1, 3541),
  (117, 5, 104, 0, 11533, ''caption'', 0, 3515, 15, 3541, 1511107047, 1, 3543),
  (117, 5, 104, 0, 11534, ''caption'', 0, 3542, 16, 3543, 1511107047, 1, 3515),
  (117, 5, 104, 0, 11535, ''caption'', 0, 2189, 17, 3515, 1511107047, 1, 3542),
  (117, 5, 104, 0, 11536, ''caption'', 0, 3447, 18, 3542, 1511107047, 1, 2189),
  (117, 5, 104, 0, 11537, ''caption'', 0, 3544, 19, 2189, 1511107047, 1, 3447),
  (117, 5, 104, 0, 11538, ''caption'', 0, 3515, 20, 3447, 1511107047, 1, 3544),
  (117, 5, 104, 0, 11539, ''caption'', 0, 3029, 21, 3544, 1511107047, 1, 3515),
  (117, 5, 104, 0, 11540, ''caption'', 0, 3508, 22, 3515, 1511107047, 1, 3029),
  (117, 5, 104, 0, 11541, ''caption'', 0, 3509, 23, 3029, 1511107047, 1, 3508),
  (117, 5, 104, 0, 11542, ''caption'', 0, 3545, 24, 3508, 1511107047, 1, 3509),
  (117, 5, 104, 0, 11543, ''caption'', 0, 3546, 25, 3509, 1511107047, 1, 3545),
  (117, 5, 104, 0, 11544, ''caption'', 0, 0, 26, 3545, 1511107047, 1, 3546),
  (116, 5, 105, 0, 11545, ''NAME'', 0, 3548, 0, 0, 1511107610, 1, 3547),
  (116, 5, 105, 0, 11546, ''NAME'', 0, 3549, 1, 3547, 1511107610, 1, 3548),
  (116, 5, 105, 0, 11547, ''NAME'', 0, 3473, 2, 3548, 1511107610, 1, 3549),
  (117, 5, 105, 0, 11548, ''caption'', 0, 3341, 3, 3549, 1511107610, 1, 3473),
  (117, 5, 105, 0, 11549, ''caption'', 0, 3419, 4, 3473, 1511107610, 1, 3341),
  (117, 5, 105, 0, 11550, ''caption'', 0, 3548, 5, 3341, 1511107610, 1, 3419),
  (117, 5, 105, 0, 11551, ''caption'', 0, 3495, 6, 3419, 1511107610, 1, 3548),
  (117, 5, 105, 0, 11552, ''caption'', 0, 3550, 7, 3548, 1511107610, 1, 3495),
  (117, 5, 105, 0, 11553, ''caption'', 0, 3515, 8, 3495, 1511107610, 1, 3550),
  (117, 5, 105, 0, 11554, ''caption'', 0, 3551, 9, 3550, 1511107610, 1, 3515),
  (117, 5, 105, 0, 11555, ''caption'', 0, 3488, 10, 3515, 1511107610, 1, 3551),
  (117, 5, 105, 0, 11556, ''caption'', 0, 3419, 11, 3551, 1511107610, 1, 3488),
  (117, 5, 105, 0, 11557, ''caption'', 0, 3552, 12, 3488, 1511107610, 1, 3419),
  (117, 5, 105, 0, 11558, ''caption'', 0, 3515, 13, 3419, 1511107610, 1, 3552),
  (117, 5, 105, 0, 11559, ''caption'', 0, 3338, 14, 3552, 1511107610, 1, 3515),
  (117, 5, 105, 0, 11560, ''caption'', 0, 3553, 15, 3515, 1511107610, 1, 3338),
  (117, 5, 105, 0, 11561, ''caption'', 0, 3554, 16, 3338, 1511107610, 1, 3553),
  (117, 5, 105, 0, 11562, ''caption'', 0, 3555, 17, 3553, 1511107610, 1, 3554),
  (117, 5, 105, 0, 11563, ''caption'', 0, 3510, 18, 3554, 1511107610, 1, 3555),
  (117, 5, 105, 0, 11564, ''caption'', 0, 3556, 19, 3555, 1511107610, 1, 3510),
  (117, 5, 105, 0, 11565, ''caption'', 0, 3533, 20, 3510, 1511107610, 1, 3556),
  (117, 5, 105, 0, 11566, ''caption'', 0, 3548, 21, 3556, 1511107610, 1, 3533),
  (117, 5, 105, 0, 11567, ''caption'', 0, 3431, 22, 3533, 1511107610, 1, 3548),
  (117, 5, 105, 0, 11568, ''caption'', 0, 3419, 23, 3548, 1511107610, 1, 3431),
  (117, 5, 105, 0, 11569, ''caption'', 0, 3557, 24, 3431, 1511107610, 1, 3419),
  (117, 5, 105, 0, 11570, ''caption'', 0, 0, 25, 3419, 1511107610, 1, 3557),
  (116, 5, 106, 0, 11573, ''NAME'', 0, 3561, 0, 0, 1511107668, 1, 3560),
  (116, 5, 106, 0, 11574, ''NAME'', 0, 3562, 1, 3560, 1511107668, 1, 3561),
  (117, 5, 106, 0, 11575, ''caption'', 0, 3341, 2, 3561, 1511107668, 1, 3562),
  (117, 5, 106, 0, 11576, ''caption'', 0, 3419, 3, 3562, 1511107668, 1, 3341),
  (117, 5, 106, 0, 11577, ''caption'', 0, 2187, 4, 3341, 1511107668, 1, 3419),
  (117, 5, 106, 0, 11578, ''caption'', 0, 3563, 5, 3419, 1511107668, 1, 2187),
  (117, 5, 106, 0, 11579, ''caption'', 0, 3564, 6, 2187, 1511107668, 1, 3563),
  (117, 5, 106, 0, 11580, ''caption'', 0, 3565, 7, 3563, 1511107668, 1, 3564),
  (117, 5, 106, 0, 11581, ''caption'', 0, 3515, 8, 3564, 1511107668, 1, 3565),
  (117, 5, 106, 0, 11582, ''caption'', 0, 3566, 9, 3565, 1511107668, 1, 3515),
  (117, 5, 106, 0, 11583, ''caption'', 0, 3560, 10, 3515, 1511107668, 1, 3566),
  (117, 5, 106, 0, 11584, ''caption'', 0, 3567, 11, 3566, 1511107668, 1, 3560),
  (117, 5, 106, 0, 11585, ''caption'', 0, 3568, 12, 3560, 1511107668, 1, 3567),
  (117, 5, 106, 0, 11586, ''caption'', 0, 2192, 13, 3567, 1511107668, 1, 3568),
  (117, 5, 106, 0, 11587, ''caption'', 0, 3568, 14, 3568, 1511107668, 1, 2192),
  (117, 5, 106, 0, 11588, ''caption'', 0, 3151, 15, 2192, 1511107668, 1, 3568),
  (117, 5, 106, 0, 11589, ''caption'', 0, 3522, 16, 3568, 1511107668, 1, 3151),
  (117, 5, 106, 0, 11590, ''caption'', 0, 3533, 17, 3151, 1511107668, 1, 3522),
  (117, 5, 106, 0, 11591, ''caption'', 0, 3569, 18, 3522, 1511107668, 1, 3533),
  (117, 5, 106, 0, 11592, ''caption'', 0, 3488, 19, 3533, 1511107668, 1, 3569),
  (117, 5, 106, 0, 11593, ''caption'', 0, 3151, 20, 3569, 1511107668, 1, 3488),
  (117, 5, 106, 0, 11594, ''caption'', 0, 3515, 21, 3488, 1511107668, 1, 3151),
  (117, 5, 106, 0, 11595, ''caption'', 0, 3570, 22, 3151, 1511107668, 1, 3515),
  (117, 5, 106, 0, 11596, ''caption'', 0, 3571, 23, 3515, 1511107668, 1, 3570),
  (117, 5, 106, 0, 11597, ''caption'', 0, 3498, 24, 3570, 1511107668, 1, 3571),
  (117, 5, 106, 0, 11598, ''caption'', 0, 3572, 25, 3571, 1511107668, 1, 3498),
  (117, 5, 106, 0, 11599, ''caption'', 0, 3573, 26, 3498, 1511107668, 1, 3572),
  (117, 5, 106, 0, 11600, ''caption'', 0, 3431, 27, 3572, 1511107668, 1, 3573),
  (117, 5, 106, 0, 11601, ''caption'', 0, 3498, 28, 3573, 1511107668, 1, 3431),
  (117, 5, 106, 0, 11602, ''caption'', 0, 3574, 29, 3431, 1511107668, 1, 3498),
  (117, 5, 106, 0, 11603, ''caption'', 0, 3575, 30, 3498, 1511107668, 1, 3574),
  (117, 5, 106, 0, 11604, ''caption'', 0, 0, 31, 3574, 1511107668, 1, 3575),
  (116, 5, 107, 0, 11605, ''NAME'', 0, 3447, 0, 0, 1511108771, 1, 3576),
  (117, 5, 107, 0, 11606, ''caption'', 0, 3577, 1, 3576, 1511108771, 1, 3447),
  (117, 5, 107, 0, 11607, ''caption'', 0, 3488, 2, 3447, 1511108771, 1, 3577),
  (117, 5, 107, 0, 11608, ''caption'', 0, 3578, 3, 3577, 1511108771, 1, 3488),
  (117, 5, 107, 0, 11609, ''caption'', 0, 3536, 4, 3488, 1511108771, 1, 3578),
  (117, 5, 107, 0, 11610, ''caption'', 0, 2334, 5, 3578, 1511108771, 1, 3536),
  (117, 5, 107, 0, 11611, ''caption'', 0, 3579, 6, 3536, 1511108771, 1, 2334),
  (117, 5, 107, 0, 11612, ''caption'', 0, 2185, 7, 2334, 1511108771, 1, 3579),
  (117, 5, 107, 0, 11613, ''caption'', 0, 3580, 8, 3579, 1511108771, 1, 2185),
  (117, 5, 107, 0, 11614, ''caption'', 0, 3581, 9, 2185, 1511108771, 1, 3580),
  (117, 5, 107, 0, 11615, ''caption'', 0, 3515, 10, 3580, 1511108771, 1, 3581),
  (117, 5, 107, 0, 11616, ''caption'', 0, 3582, 11, 3581, 1511108771, 1, 3515),
  (117, 5, 107, 0, 11617, ''caption'', 0, 3498, 12, 3515, 1511108771, 1, 3582),
  (117, 5, 107, 0, 11618, ''caption'', 0, 3583, 13, 3582, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11619, ''caption'', 0, 3509, 14, 3498, 1511108771, 1, 3583),
  (117, 5, 107, 0, 11620, ''caption'', 0, 3536, 15, 3583, 1511108771, 1, 3509),
  (117, 5, 107, 0, 11621, ''caption'', 0, 3584, 16, 3509, 1511108771, 1, 3536),
  (117, 5, 107, 0, 11622, ''caption'', 0, 3498, 17, 3536, 1511108771, 1, 3584),
  (117, 5, 107, 0, 11623, ''caption'', 0, 3585, 18, 3584, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11624, ''caption'', 0, 3498, 19, 3498, 1511108771, 1, 3585),
  (117, 5, 107, 0, 11625, ''caption'', 0, 3586, 20, 3585, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11626, ''caption'', 0, 3341, 21, 3498, 1511108771, 1, 3586),
  (117, 5, 107, 0, 11627, ''caption'', 0, 3587, 22, 3586, 1511108771, 1, 3341),
  (117, 5, 107, 0, 11628, ''caption'', 0, 3498, 23, 3341, 1511108771, 1, 3587),
  (117, 5, 107, 0, 11629, ''caption'', 0, 3588, 24, 3587, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11630, ''caption'', 0, 3498, 25, 3498, 1511108771, 1, 3588),
  (117, 5, 107, 0, 11631, ''caption'', 0, 3589, 26, 3588, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11632, ''caption'', 0, 3590, 27, 3498, 1511108771, 1, 3589),
  (117, 5, 107, 0, 11633, ''caption'', 0, 3591, 28, 3589, 1511108771, 1, 3590),
  (117, 5, 107, 0, 11634, ''caption'', 0, 3498, 29, 3590, 1511108771, 1, 3591),
  (117, 5, 107, 0, 11635, ''caption'', 0, 3592, 30, 3591, 1511108771, 1, 3498),
  (117, 5, 107, 0, 11636, ''caption'', 0, 3593, 31, 3498, 1511108771, 1, 3592),
  (117, 5, 107, 0, 11637, ''caption'', 0, 3594, 32, 3592, 1511108771, 1, 3593),
  (117, 5, 107, 0, 11638, ''caption'', 0, 3595, 33, 3593, 1511108771, 1, 3594),
  (117, 5, 107, 0, 11639, ''caption'', 0, 3596, 34, 3594, 1511108771, 1, 3595),
  (117, 5, 107, 0, 11640, ''caption'', 0, 3509, 35, 3595, 1511108771, 1, 3596),
  (117, 5, 107, 0, 11641, ''caption'', 0, 3593, 36, 3596, 1511108771, 1, 3509),
  (117, 5, 107, 0, 11642, ''caption'', 0, 3597, 37, 3509, 1511108771, 1, 3593),
  (117, 5, 107, 0, 11643, ''caption'', 0, 0, 38, 3593, 1511108771, 1, 3597),
  (116, 5, 108, 0, 11644, ''NAME'', 0, 3599, 0, 0, 1511108858, 1, 3598),
  (117, 5, 108, 0, 11645, ''caption'', 0, 3600, 1, 3598, 1511108858, 1, 3599),
  (117, 5, 108, 0, 11646, ''caption'', 0, 3601, 2, 3599, 1511108858, 1, 3600),
  (117, 5, 108, 0, 11647, ''caption'', 0, 3602, 3, 3600, 1511108858, 1, 3601),
  (117, 5, 108, 0, 11648, ''caption'', 0, 3603, 4, 3601, 1511108858, 1, 3602),
  (117, 5, 108, 0, 11649, ''caption'', 0, 3604, 5, 3602, 1511108858, 1, 3603),
  (117, 5, 108, 0, 11650, ''caption'', 0, 2796, 6, 3603, 1511108858, 1, 3604),
  (117, 5, 108, 0, 11651, ''caption'', 0, 3598, 7, 3604, 1511108858, 1, 2796),
  (117, 5, 108, 0, 11652, ''caption'', 0, 3605, 8, 2796, 1511108858, 1, 3598),
  (117, 5, 108, 0, 11653, ''caption'', 0, 3514, 9, 3598, 1511108858, 1, 3605),
  (117, 5, 108, 0, 11654, ''caption'', 0, 3419, 10, 3605, 1511108858, 1, 3514),
  (117, 5, 108, 0, 11655, ''caption'', 0, 3606, 11, 3514, 1511108858, 1, 3419),
  (117, 5, 108, 0, 11656, ''caption'', 0, 3607, 12, 3419, 1511108858, 1, 3606),
  (117, 5, 108, 0, 11657, ''caption'', 0, 3608, 13, 3606, 1511108858, 1, 3607),
  (117, 5, 108, 0, 11658, ''caption'', 0, 2185, 14, 3607, 1511108858, 1, 3608),
  (117, 5, 108, 0, 11659, ''caption'', 0, 3609, 15, 3608, 1511108858, 1, 2185),
  (117, 5, 108, 0, 11660, ''caption'', 0, 3610, 16, 2185, 1511108858, 1, 3609),
  (117, 5, 108, 0, 11661, ''caption'', 0, 3611, 17, 3609, 1511108858, 1, 3610),
  (117, 5, 108, 0, 11662, ''caption'', 0, 3612, 18, 3610, 1511108858, 1, 3611),
  (117, 5, 108, 0, 11663, ''caption'', 0, 3515, 19, 3611, 1511108858, 1, 3612),
  (117, 5, 108, 0, 11664, ''caption'', 0, 3613, 20, 3612, 1511108858, 1, 3515),
  (117, 5, 108, 0, 11665, ''caption'', 0, 3419, 21, 3515, 1511108858, 1, 3613),
  (117, 5, 108, 0, 11666, ''caption'', 0, 3605, 22, 3613, 1511108858, 1, 3419),
  (117, 5, 108, 0, 11667, ''caption'', 0, 0, 23, 3419, 1511108858, 1, 3605),
  (221, 25, 116, 0, 11668, ''NAME'', 0, 0, 0, 0, 1511121826, 1, 3614),
  (225, 26, 117, 0, 11669, ''NAME'', 0, 0, 0, 0, 1511122018, 1, 3615),
  (225, 26, 118, 0, 11670, ''NAME'', 0, 0, 0, 0, 1511122169, 1, 3616),
  (225, 26, 119, 0, 11671, ''NAME'', 0, 0, 0, 0, 1511122275, 1, 3617),
  (225, 26, 120, 0, 11672, ''NAME'', 0, 0, 0, 0, 1511122370, 1, 2187),
  (225, 26, 121, 0, 11673, ''NAME'', 0, 3619, 0, 0, 1511122449, 1, 3618),
  (225, 26, 121, 0, 11674, ''NAME'', 0, 0, 1, 3618, 1511122449, 1, 3619),
  (225, 26, 122, 0, 11675, ''NAME'', 0, 0, 0, 0, 1511122529, 1, 3620),
  (225, 26, 123, 0, 11676, ''NAME'', 0, 0, 0, 0, 1511122595, 1, 3575),
  (225, 26, 124, 0, 11677, ''NAME'', 0, 0, 0, 0, 1511122654, 1, 3553),
  (225, 26, 125, 0, 11678, ''NAME'', 0, 3622, 0, 0, 1511122726, 1, 3621),
  (225, 26, 125, 0, 11679, ''NAME'', 0, 0, 1, 3621, 1511122726, 1, 3622),
  (225, 26, 126, 0, 11680, ''NAME'', 0, 0, 0, 0, 1511122797, 1, 3569),
  (225, 26, 127, 0, 11681, ''NAME'', 0, 0, 0, 0, 1511122870, 1, 3604);
/*!40000 ALTER TABLE `ezsearch_object_word_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_search_phrase`
--

DROP TABLE IF EXISTS `ezsearch_search_phrase`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_search_phrase` (
  `id`           INT(11) NOT NULL AUTO_INCREMENT,
  `phrase`       VARCHAR(250)     DEFAULT NULL,
  `phrase_count` INT(11)          DEFAULT ''0'',
  `result_count` INT(11)          DEFAULT ''0'',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ezsearch_search_phrase_phrase` (`phrase`),
  KEY `ezsearch_search_phrase_count` (`phrase_count`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_search_phrase`
--

LOCK TABLES `ezsearch_search_phrase` WRITE;
/*!40000 ALTER TABLE `ezsearch_search_phrase`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsearch_search_phrase`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsearch_word`
--

DROP TABLE IF EXISTS `ezsearch_word`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsearch_word` (
  `id`           INT(11) NOT NULL AUTO_INCREMENT,
  `object_count` INT(11) NOT NULL DEFAULT ''0'',
  `word`         VARCHAR(150)     DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezsearch_word_obj_count` (`object_count`),
  KEY `ezsearch_word_word_i` (`word`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 3623
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsearch_word`
--

LOCK TABLES `ezsearch_word` WRITE;
/*!40000 ALTER TABLE `ezsearch_word`
  DISABLE KEYS */;
INSERT INTO `ezsearch_word`
VALUES (2162, 1, ''main''), (2163, 2, ''GROUP''), (2164, 5, ''users''), (2165, 2, ''anonymous''), (2166, 5, ''USER''),
  (2167, 1, ''guest''), (2168, 1, ''accounts''), (2169, 2, ''administrator''), (2170, 2, ''editors''),
  (2171, 1, ''media''), (2172, 4, ''FOR''), (2173, 6, ''the''), (2174, 1, ''setup''), (2175, 1, ''images''),
  (2176, 1, ''files''), (2177, 1, ''multimedia''), (2178, 1, ''common''), (2179, 1, ''ini''), (2180, 1, ''settings''),
  (2181, 1, ''sitestyle_identifier''), (2182, 2, ''design''), (2184, 1, ''STARTING''), (2185, 8, ''a''),
  (2186, 2, ''new''), (2187, 4, ''cms''), (2188, 2, ''project''), (2189, 2, ''contact''), (2190, 1, ''us''),
  (2191, 3, ''want''), (2192, 6, ''TO''), (2193, 3, ''know''), (2194, 4, ''more''), (2195, 4, ''GET''),
  (2196, 1, ''quote''), (2197, 4, '' OR ''), (2198, 1, ''SCHEDULE''), (2199, 2, ''demo''), (2200, 2, ''please''),
  (2201, 1, ''tell''), (2202, 2, ''about''), (2203, 4, ''your''), (2204, 3, ''needs''), (2205, 1, ''filling''),
  (2206, 1, ''form''), (2207, 1, ''beside''), (2208, 1, ''ny''), (2209, 1, ''35''), (2210, 1, ''meadow''),
  (2211, 1, ''street''), (2212, 1, ''suite''), (2213, 1, ''103''), (2214, 3, ''projects''), (2215, 2, ''CHECK''),
  (2216, 2, ''them''), (2217, 3, ''OUT''), (2218, 2, ''top''), (2219, 1, ''stories''), (2220, 3, ''how''),
  (2221, 4, ''you''), (2222, 2, ''idea''), (2223, 2, ''onto''), (2224, 4, ''ez''), (2225, 4, ''blog''),
  (2229, 3, '' IS ''), (2231, 3, ''of''), (2233, 3, '' AND ''), (2236, 1, ''fee''), (2241, 3, ''IN''),
  (2242, 2, ''THAN''), (2253, 1, ''hootsuite''), (2254, 2, ''world''), (2255, 3, ''s''), (2256, 2, ''most''),
  (2258, 2, ''used''), (2261, 2, ''platform''), (2264, 3, ''publish''), (2265, 3, ''AS''), (2266, 1, ''mugo''),
  (2267, 3, ''web''), (2270, 2, ''team''), (2279, 3, ''it''), (2284, 2, ''has''), (2289, 3, ''ONE''),
  (2291, 1, ''their''), (2293, 1, ''digital''), (2295, 1, ''working''), (2296, 3, ''ON''), (2300, 3, ''WITH''),
  (2302, 2, ''maintenance''), (2305, 1, ''traffic''), (2306, 1, ''sites''), (2311, 1, ''christian''),
  (2312, 1, ''science''), (2313, 1, ''monitor''), (2317, 2, ''an''), (2320, 2, ''that''), (2326, 2, ''website''),
  (2334, 6, ''site''), (2339, 1, ''online''), (2341, 1, ''track''), (2343, 1, ''america''), (2349, 1, ''YEAR''),
  (2357, 1, ''making''), (2365, 2, ''AT''), (2366, 1, ''future''), (2372, 3, ''FROM''), (2375, 1, ''technology''),
  (2377, 2, ''features''), (2380, 1, ''INTO''), (2384, 1, ''around''), (2390, 2, ''business''),
  (2408, 1, ''launching''), (2409, 2, ''5''), (2411, 1, ''vision''), (2412, 2, ''content''), (2413, 1, ''management''),
  (2414, 1, ''power''), (2417, 1, ''impact''), (2419, 3, ''are''), (2420, 1, ''important''), (2436, 2, ''BOTH''),
  (2442, 1, ''market''), (2444, 1, ''speaking''), (2447, 3, ''have''), (2449, 3, ''this''), (2452, 1, ''clear''),
  (2454, 3, ''which''), (2459, 1, ''information''), (2462, 1, ''make''), (2478, 1, ''service''), (2482, 3, ''WHEN''),
  (2497, 1, ''solutions''), (2501, 1, ''customer''), (2504, 1, ''services''), (2506, 3, ''should''), (2507, 3, ''be''),
  (2508, 2, ''based''), (2514, 1, ''company''), (2523, 1, ''LAST''), (2525, 1, ''years''), (2526, 1, ''become''),
  (2532, 1, ''public''), (2551, 2, ''EVERY''), (2577, 1, ''approach''), (2578, 1, ''tool''), (2581, 1, ''USE''),
  (2589, 1, ''europe''), (2594, 1, ''ensure''), (2597, 1, ''deliver''), (2613, 1, ''months''), (2641, 2, ''only''),
  (2643, 1, ''access''), (2644, 1, ''AFTER''), (2646, 2, ''visitors''), (2650, 1, ''able''), (2654, 1, ''well''),
  (2655, 1, ''reducing''), (2659, 1, ''another''), (2662, 2, ''customers''), (2663, 2, ''also''), (2665, 1, ''better''),
  (2666, 1, ''presence''), (2668, 1, ''john''), (2669, 1, ''deere''), (2670, 1, ''american''), (2682, 2, ''ranking''),
  (2685, 2, ''under''), (2709, 1, ''different''), (2715, 1, ''further''), (2720, 1, ''together''), (2740, 1, ''ALL''),
  (2741, 1, ''latest''), (2751, 3, ''up''), (2752, 4, ''BY''), (2782, 1, ''SPECIFIC''), (2793, 1, ''software''),
  (2796, 2, ''3''), (2802, 1, ''launch''), (2803, 1, ''october''), (2806, 3, ''FIRST''), (2807, 2, ''systems''),
  (2810, 1, ''need''), (2811, 1, ''SIMPLE''), (2815, 1, ''LANGUAGE''), (2816, 2, ''ready''), (2817, 1, ''websites''),
  (2824, 1, ''black''), (2839, 2, ''plan''), (2840, 2, ''NEXT''), (2843, 2, ''can''), (2844, 1, ''simply''),
  (2846, 2, ''find''), (2861, 2, ''knowledge''), (2862, 1, ''his''), (2863, 1, ''LONG''), (2864, 1, ''experience''),
  (2870, 2, ''build''), (2871, 1, ''performing''), (2872, 1, ''continuous''), (2873, 1, ''optimization''),
  (2874, 1, ''andy''), (2875, 1, ''dufresne''), (2876, 1, ''answering''), (2877, 1, ''rfps''),
  (2878, 1, ''responding''), (2879, 1, ''inquiries''), (2880, 1, ''i''), (2881, 1, ''still''), (2882, 1, ''latched''),
  (2883, 2, ''building''), (2884, 2, ''just''), (2885, 1, ''allocate''), (2886, 1, ''funds''), (2887, 3, '' NOT ''),
  (2888, 1, ''INITIAL''), (2889, 2, ''something''), (2890, 1, ''refreshed''), (2891, 1, ''three''), (2892, 2, ''way''),
  (2893, 1, ''thinking''), (2894, 1, ''doesn''), (2895, 2, ''t''), (2896, 1, ''cut''), (2897, 1, ''agile''),
  (2898, 1, ''necessary''), (2899, 1, ''proactive''), (2900, 1, ''reactive''), (2901, 1, ''throw''),
  (2902, 1, ''money''), (2903, 1, ''issue''), (2904, 1, ''hope''), (2905, 1, ''best''), (2906, 2, ''we''),
  (2907, 1, ''believe''), (2908, 1, ''topic''), (2909, 1, ''touched''), (2910, 2, ''BEFORE''), (2911, 3, ''will''),
  (2912, 1, ''CONTINUE''), (2913, 1, ''discuss''), (2914, 1, ''because''), (2915, 1, ''see''), (2916, 1, ''REAL''),
  (2917, 1, ''VALUE''), (2918, 1, ''roland''), (2919, 1, ''benedetti''), (2920, 2, ''wrote''), (2921, 1, ''great''),
  (2922, 2, ''post''), (2923, 2, ''managing''), (2924, 2, ''product''), (2925, 1, ''article''),
  (2926, 1, ''summarizes''), (2927, 2, ''what''), (2928, 2, ''means''), (2929, 1, ''success''), (2930, 1, ''changing''),
  (2931, 1, ''organized''), (2932, 1, ''run''), (2933, 1, ''funding''), (2934, 2, ''our''), (2935, 1, ''model''),
  (2936, 1, ''consists''), (2937, 1, ''flat''), (2938, 1, ''annual''), (2939, 2, ''subscription''),
  (2940, 1, ''designed''), (2941, 1, ''ongoing''), (2942, 1, ''improvement''), (2943, 1, ''stark''),
  (2944, 1, ''contrast''), (2945, 1, ''licensed''), (2946, 2, ''WHERE''), (2947, 1, ''big''), (2948, 1, ''costs''),
  (2949, 1, ''front''), (2950, 1, ''jeopardize''), (2951, 1, ''onset''), (2952, 1, ''much''), (2953, 1, ''aligned''),
  (2954, 1, ''reality''), (2955, 1, ''too''), (2956, 2, ''many''), (2957, 1, ''heavy''), (2958, 1, ''funded''),
  (2959, 1, ''geared''), (2960, 1, ''towards''), (2961, 1, ''term''), (2962, 1, ''difficult''), (2963, 1, ''predict''),
  (2964, 2, ''but''), (2965, 2, ''organizations''), (2966, 1, ''PREPARE''), (2967, 1, ''HAVING''),
  (2968, 2, ''resources''), (2969, 2, ''place''), (2970, 1, ''launched''), (2971, 1, ''successful''),
  (2972, 1, ''requires''), (2973, 1, ''takes''), (2974, 1, ''solid''), (2975, 1, ''tools''), (2976, 1, ''manpower''),
  (2977, 1, ''EXECUTE''), (2978, 1, ''why''), (2979, 2, ''critical''), (2980, 1, ''PHASE''), (2981, 1, ''performance''),
  (2982, 1, ''LOAD''), (2983, 2, ''TIME''), (2984, 1, ''tendency''), (2985, 1, ''forgotten''), (2986, 1, ''insanity''),
  (2987, 1, ''nevertheless''), (2988, 1, ''ultimately''), (2989, 1, ''aspects''), (2990, 1, ''taken''),
  (2991, 1, ''seriously''), (2992, 1, ''version''), (2993, 1, ''moves''), (2994, 1, ''tends''), (2995, 1, ''downward''),
  (2996, 1, ''trajectory''), (2997, 1, ''keep''), (2998, 1, ''mind''), (2999, 2, '' LIKE ''), (3000, 1, ''added''),
  (3001, 1, ''develop''), (3002, 1, ''ALWAYS''), (3003, 1, ''speed''), (3004, 1, ''impacts''), (3005, 1, ''usability''),
  (3006, 1, ''responds''), (3007, 2, ''quickly''), (3008, 1, ''obviously''), (3009, 3, ''provide''),
  (3010, 1, ''book''), (3011, 2, ''engineering''), (3012, 1, ''jakob''), (3013, 1, ''nielsen''), (3014, 1, ''1993''),
  (3015, 1, ''stated''), (3016, 1, ''LIMIT''), (3017, 1, ''interface''), (3018, 2, ''feel''), (3019, 1, ''reacting''),
  (3020, 1, ''instantaneously''), (3021, 1, ''0''), (3022, 2, ''1''), (3023, 1, ''seconds''), (3024, 2, ''lot''),
  (3025, 1, ''talking''), (3026, 1, ''presenting''), (3027, 2, ''visitor''), (3028, 1, ''rendered''),
  (3029, 3, ''PAGE''), (3030, 1, ''bandwidth''), (3031, 1, ''put''), (3032, 1, ''limitations''), (3033, 1, ''today''),
  (3034, 1, ''so''), (3035, 1, ''anymore''), (3036, 1, ''yet''), (3037, 1, ''sluggish''), (3038, 1, ''complexity''),
  (3039, 1, ''cluttered''), (3040, 1, ''interfaces''), (3041, 2, ''often''), (3042, 1, ''fault''),
  (3043, 1, ''luckily''), (3044, 1, ''there''), (3045, 1, ''trend''), (3046, 1, ''ui''), (3047, 1, ''calls''),
  (3048, 1, ''functional''), (3049, 1, ''affects''), (3050, 3, ''search''), (3051, 3, ''IF''), (3052, 1, ''reason''),
  (3053, 1, ''continuously''), (3054, 1, ''OPTIMIZE''), (3055, 1, ''did''), (3056, 2, ''google''), (3057, 1, ''rank''),
  (3058, 2, ''FAST''), (3059, 1, ''reflects''), (3060, 1, ''requests''), (3061, 1, ''according''),
  (3062, 1, ''necessarily''), (3063, 1, ''ability''), (3064, 1, ''render''), (3065, 2, ''even''), (3066, 1, ''though''),
  (3067, 1, ''debate''), (3068, 1, ''remains''), (3069, 1, ''faster''), (3070, 1, ''leads''), (3071, 1, ''happier''),
  (3072, 1, ''conducted''), (3073, 1, ''several''), (3074, 1, ''studies''), (3075, 1, ''revealed''),
  (3076, 1, ''slower''), (3077, 1, ''LESS''), (3078, 1, ''spend''), (3079, 1, ''people''), (3080, 1, ''unaware''),
  (3081, 1, ''fact''), (3082, 1, ''effort''), (3083, 1, ''placed''), (3084, 2, ''seo''), (3085, 2, ''being''),
  (3086, 1, ''prioritized''), (3087, 1, ''improving''), (3088, 2, ''SERVER''), (3089, 1, ''CLIENT''),
  (3090, 1, ''side''), (3091, 2, ''HELP''), (3092, 1, ''increase''), (3093, 2, ''CREATE''), (3094, 2, ''don''),
  (3095, 1, ''think''), (3096, 1, ''focusing''), (3097, 3, ''things''), (3098, 1, ''through''),
  (3099, 1, ''continuity''), (3100, 2, ''developing''), (3101, 1, ''optimizing''), (3102, 1, ''fund''),
  (3103, 1, ''haul''), (3104, 1, ''discover''), (3105, 1, ''FULL''), (3106, 1, ''trained''), (3107, 1, ''certified''),
  (3108, 1, ''recommended''), (3109, 1, ''partner''), (3110, 2, ''now''), (3111, 1, ''consider''), (3112, 1, ''multi''),
  (3113, 1, ''jack''), (3114, 1, ''73''), (3115, 1, ''consumers''), (3116, 1, ''prefer''), (3117, 1, ''purchases''),
  (3118, 1, ''native''), (3119, 1, ''56''), (3120, 1, ''say''), (3121, 1, ''price''), (3122, 1, ''translation''),
  (3123, 1, ''powerful''), (3124, 1, ''ramp''), (3125, 1, ''brands''), (3126, 1, ''diageo''), (3127, 2, ''DO''),
  (3128, 1, ''director''), (3129, 1, ''peter''), (3130, 1, ''keung''), (3131, 1, ''helpful''), (3132, 1, ''completed''),
  (3133, 1, ''stellar''), (3134, 1, ''USING''), (3135, 1, ''including''), (3136, 1, ''museum''), (3137, 1, ''NATURAL''),
  (3138, 1, ''history''), (3139, 1, ''considers''), (3140, 1, ''requirements''), (3141, 1, ''met''),
  (3142, 1, ''deploying''), (3143, 1, ''multilingual''), (3144, 1, ''here''), (3145, 1, ''summary''),
  (3146, 1, ''LIST''), (3147, 1, ''RIGHT''), (3148, 1, ''languages''), (3149, 1, ''display''), (3150, 1, ''rules''),
  (3151, 2, ''base''), (3152, 1, ''favorite''), (3153, 1, ''analytics''), (3154, 1, ''identify''), (3155, 1, ''ADD''),
  (3156, 1, ''THEN''), (3157, 1, ''determine''), (3158, 1, ''fall''), (3159, 1, ''back''), (3160, 2, ''ANY''),
  (3161, 1, ''isn''), (3162, 1, ''translated''), (3163, 1, ''companies''), (3164, 1, ''SHOW''),
  (3165, 1, ''requested''), (3166, 1, ''english''), (3167, 1, ''localization''), (3168, 1, ''adapting''),
  (3169, 1, ''target''), (3170, 1, ''comes''), (3171, 1, ''play''), (3172, 1, ''determining''), (3173, 1, ''adds''),
  (3174, 1, ''appealing''), (3175, 1, ''primarily''), (3176, 1, ''spanish''), (3177, 1, ''latin''),
  (3178, 1, ''targeting''), (3179, 1, ''per''), (3180, 1, ''country''), (3181, 1, ''2''), (3182, 1, ''take''),
  (3183, 1, ''advantage''), (3184, 1, ''url''), (3185, 1, ''translator''), (3186, 1, ''DEFAULT''),
  (3187, 1, ''generate''), (3188, 1, ''urls''), (3189, 1, ''same''), (3190, 1, ''piece''), (3191, 1, ''off''),
  (3192, 1, ''title''), (3193, 1, ''writes''), (3194, 1, ''allow''), (3195, 1, ''MODIFY''), (3196, 1, ''REMOVE''),
  (3197, 1, ''accents''), (3198, 1, ''SOME''), (3199, 1, ''cases''), (3200, 1, ''preferable''), (3201, 1, ''fully''),
  (3202, 1, ''OPTIONS''), (3203, 1, ''clearly''), (3204, 1, ''visible''), (3205, 1, ''ll''), (3206, 1, ''detect''),
  (3207, 1, ''prefered''), (3208, 1, ''educated''), (3209, 1, ''guess''), (3210, 1, ''referencing''), (3211, 1, ''ip''),
  (3212, 1, ''address''), (3213, 1, ''browser''), (3214, 1, ''setting''), (3215, 1, ''regardless''),
  (3216, 1, ''easy''), (3217, 1, ''switch''), (3218, 1, ''such''), (3219, 1, ''dropdown''), (3220, 1, ''menu''),
  (3221, 1, ''navigation''), (3222, 2, ''4''), (3223, 1, ''supports''), (3224, 1, ''maintain''), (3225, 1, ''approve''),
  (3226, 1, ''recommends''), (3227, 1, ''canonical''), (3228, 1, ''alternative''), (3229, 1, ''tags''),
  (3230, 1, ''ENGINES''), (3231, 1, ''penalize''), (3232, 1, ''DUPLICATE''), (3233, 1, ''organize''),
  (3234, 1, ''translations''), (3235, 1, ''sitemap''), (3236, 1, ''advice''), (3237, 1, ''PROCESS''),
  (3238, 1, ''enhance''), (3239, 1, ''editorial''), (3240, 1, ''workflows''), (3241, 1, ''translates''),
  (3242, 1, ''makes''), (3243, 1, ''efficient''), (3244, 1, ''ERROR''), (3245, 1, ''construct''),
  (3246, 1, ''instance''), (3247, 1, ''permissions''), (3248, 1, ''limits''), (3249, 1, ''actions''),
  (3250, 1, ''edit''), (3251, 1, ''DELETE''), (3252, 1, ''etc''), (3253, 1, ''won''), (3254, 1, ''go''),
  (3255, 1, ''live''), (3256, 1, ''approved''), (3257, 1, ''tips''), (3258, 2, ''look''), (3259, 1, ''studio''),
  (3260, 1, ''coming''), (3261, 1, ''soon''), (3262, 1, ''robert''), (3263, 1, ''kowalski''), (3264, 1, ''generation''),
  (3265, 1, ''shaping''), (3266, 1, ''nicely''), (3267, 1, ''very''), (3268, 1, ''hard''), (3269, 1, ''finish''),
  (3270, 1, ''RELEASE''), (3271, 1, ''planned''), (3272, 1, ''beta''), (3273, 1, ''stable''), (3274, 1, ''releases''),
  (3275, 1, ''little''), (3276, 1, ''BIT''), (3277, 1, ''earlier''), (3278, 1, ''taking''), (3279, 1, ''energy''),
  (3280, 1, ''expected''), (3281, 1, ''thing''), (3282, 1, ''half''), (3283, 1, ''baked''), (3284, 1, ''WEEK''),
  (3285, 1, ''released''), (3286, 1, ''alpha''), (3287, 1, ''includes''), (3288, 1, ''capabilities''),
  (3289, 1, ''re''), (3290, 1, ''recommendation''), (3291, 1, ''definitely''), (3292, 1, ''getting''),
  (3293, 1, ''closer''), (3294, 1, ''moving''), (3295, 1, ''finalization''), (3296, 1, ''timeline''),
  (3297, 1, ''POINT''), (3298, 1, ''aim''), (3299, 1, ''beginning''), (3300, 1, ''nature''), (3301, 1, ''private''),
  (3302, 1, ''guidance''), (3303, 1, ''following''), (3304, 1, ''ftr''), (3305, 1, ''early''), (3306, 1, ''november''),
  (3307, 1, ''path''), (3308, 1, ''QUICK''), (3309, 1, ''route''), (3310, 1, ''innovations''), (3311, 1, ''ftrs''),
  (3312, 1, ''rolled''), (3313, 1, ''two''), (3314, 1, ''support''), (3315, 1, ''EACH''), (3316, 1, ''UNTIL''),
  (3317, 1, ''introduced''), (3318, 1, ''anticipate''), (3319, 1, ''upgrading''), (3320, 1, ''stay''),
  (3321, 1, ''ahead''), (3322, 1, ''curve''), (3323, 1, ''continued''), (3324, 1, ''available''),
  (3325, 1, ''enterprise''), (3326, 1, ''lts''), (3327, 1, ''intend''), (3328, 1, ''december''), (3329, 1, ''named''),
  (3330, 1, ''forthcoming''), (3331, 1, ''2016''), (3332, 1, ''mention''), (3333, 1, ''willing''),
  (3334, 1, ''tutorials''), (3335, 1, ''training''), (3336, 1, ''enablement''), (3337, 1, ''tackle''),
  (3338, 2, ''transition''), (3339, 1, ''eagerly''), (3340, 1, ''awaiting''), (3341, 7, ''d''), (3342, 1, ''happy''),
  (3343, 1, ''touch''), (3344, 1, ''listen''), (3345, 1, ''expectations''), (3346, 1, ''answer''),
  (3347, 1, ''questions''), (3348, 1, ''might''), (3349, 1, ''contribute''), (3350, 1, ''free''), (3351, 1, ''reach''),
  (3352, 1, ''productmanagement''), (3353, 1, ''NO''), (3354, 1, ''tuned''), (3357, 1, ''home''),
  (3362, 2, ''journal''), (3363, 2, ''passe''), (3364, 2, ''l''), (3365, 2, ''info''), (3366, 1, ''personal''),
  (3367, 2, ''RESUME''), (3368, 1, ''my''), (3385, 1, ''arkadyss''), (3386, 1, ''geek''), (3387, 1, ''avenue''),
  (3388, 1, ''coda''), (3389, 1, ''simplon''), (3391, 1, ''kaliop''), (3419, 7, ''un''), (3422, 2, ''pour''),
  (3428, 2, ''ligne''), (3431, 5, ''et''), (3447, 4, ''en''), (3471, 1, ''twicth''), (3472, 1, ''stuff''),
  (3473, 3, ''creation''), (3474, 1, ''panel''), (3475, 1, ''complet''), (3476, 1, ''streameur''),
  (3477, 1, ''twitch''), (3478, 1, ''contenant''), (3479, 1, ''image''), (3480, 1, ''hors''), (3481, 1, ''overlay''),
  (3482, 1, ''informatif''), (3483, 1, ''attente''), (3484, 1, ''game''), (3485, 1, ''ingame''), (3486, 1, ''intro''),
  (3487, 1, ''video''), (3488, 5, ''avec''), (3489, 1, ''effets''), (3490, 1, ''visuels''), (3491, 1, ''ispconfig''),
  (3492, 1, ''installation''), (3493, 1, ''complete''), (3494, 1, ''vps''), (3495, 3, ''sous''), (3496, 2, ''ubuntu''),
  (3497, 1, ''mise''), (3498, 3, ''des''), (3499, 1, ''serveurs''), (3500, 1, ''mails''), (3501, 1, ''ftp''),
  (3502, 1, ''gestion''), (3503, 1, ''pas''), (3504, 1, ''codecademy''), (3505, 1, ''voici''), (3506, 2, ''mon''),
  (3507, 1, ''profil''), (3508, 2, ''ainsi''), (3509, 3, ''que''), (3510, 3, ''les''), (3511, 1, ''badges''),
  (3512, 1, ''obtenus''), (3513, 1, ''codecamy''), (3514, 2, ''est''), (3515, 6, ''de''), (3516, 1, ''formation''),
  (3517, 1, ''disponible''), (3518, 1, ''tous''), (3519, 1, ''tout''), (3520, 1, ''niveaux''), (3521, 1, ''conky''),
  (3522, 2, ''sur''), (3523, 1, ''ordinateur''), (3524, 1, ''personnel''), (3525, 1, ''16''), (3526, 1, ''04''),
  (3527, 1, ''rassemblant''), (3528, 1, ''toutes''), (3529, 1, ''infos''), (3530, 1, ''necessaire''),
  (3531, 1, ''une''), (3532, 1, ''surpervisation''), (3533, 3, ''du''), (3534, 1, ''syteme''), (3535, 1, ''personnal''),
  (3536, 2, ''ce''), (3537, 1, ''ici''), (3538, 1, ''present''), (3539, 1, ''paralax''), (3540, 1, ''decrivant''),
  (3541, 1, ''mes''), (3542, 1, ''competances''), (3543, 1, ''domaines''), (3544, 1, ''bas''), (3545, 1, ''certaines''),
  (3546, 1, ''realisations''), (3547, 1, ''profesionnal''), (3548, 1, ''cv''), (3549, 1, ''card''),
  (3550, 1, ''forme''), (3551, 1, ''vcard''), (3552, 1, ''systeme''), (3553, 2, ''javascript''), (3554, 1, ''anime''),
  (3555, 1, ''regroupant''), (3556, 1, ''informations''), (3557, 1, ''portfolio''), (3560, 1, ''torrent''),
  (3561, 1, ''trader''), (3562, 1, ''confection''), (3563, 1, ''visant''), (3564, 1, ''au''), (3565, 1, ''partage''),
  (3566, 1, ''fichier''), (3567, 1, ''p2p''), (3568, 1, ''peer''), (3569, 2, ''php''), (3570, 1, ''donnees''),
  (3571, 1, ''mysql''), (3572, 1, ''requettes''), (3573, 1, ''ajax''), (3574, 1, ''animation''), (3575, 2, ''jquery''),
  (3576, 1, ''peepolls''), (3577, 1, ''relation''), (3578, 1, ''facebook''), (3579, 1, ''permet''), (3580, 1, ''ses''),
  (3581, 1, ''utilisateurs''), (3582, 1, ''noter''), (3583, 1, ''personnes''), (3584, 1, ''soit''),
  (3585, 1, ''politiques''), (3586, 1, ''directeurs''), (3587, 1, ''entreprises''), (3588, 1, ''professeurs''),
  (3589, 1, ''amis''), (3590, 1, ''ou''), (3591, 1, ''meme''), (3592, 1, ''ennemis''), (3593, 1, ''vous''),
  (3594, 1, ''pouvez''), (3595, 1, ''critiquer''), (3596, 1, ''celui''), (3597, 1, ''souhaitez''),
  (3598, 1, ''canturla''), (3599, 1, ''premier''), (3600, 1, ''projet''), (3601, 1, ''utilisant''), (3602, 1, ''le''),
  (3603, 1, ''framework''), (3604, 2, ''symfony''), (3605, 1, ''drive''), (3606, 1, ''derive''),
  (3607, 1, ''ecommerce''), (3608, 1, ''offrant''), (3609, 1, ''son''), (3610, 1, ''utilisateur''), (3611, 1, ''la''),
  (3612, 1, ''possibilitee''), (3613, 1, ''creer''), (3614, 1, ''certifications''), (3615, 1, ''git''),
  (3616, 1, ''UPDATE''), (3617, 1, ''wordpress''), (3618, 1, ''api''), (3619, 1, ''rest''), (3620, 1, ''bootstrap''),
  (3621, 1, ''html''), (3622, 1, ''css'');
/*!40000 ALTER TABLE `ezsearch_word`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsection`
--

DROP TABLE IF EXISTS `ezsection`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsection` (
  `id`                         INT(11) NOT NULL AUTO_INCREMENT,
  `identifier`                 VARCHAR(255)     DEFAULT NULL,
  `locale`                     VARCHAR(255)     DEFAULT NULL,
  `name`                       VARCHAR(255)     DEFAULT NULL,
  `navigation_part_identifier` VARCHAR(100)     DEFAULT ''ezcontentnavigationpart'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 6
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsection`
--

LOCK TABLES `ezsection` WRITE;
/*!40000 ALTER TABLE `ezsection`
  DISABLE KEYS */;
INSERT INTO `ezsection` VALUES (1, ''standard'', '''', ''Standard'', ''ezcontentnavigationpart''),
  (2, ''users'', '''', ''Users'', ''ezusernavigationpart''), (3, ''media'', '''', ''Media'', ''ezmedianavigationpart''),
  (4, ''setup'', '''', ''Setup'', ''ezsetupnavigationpart''),
  (5, ''design'', '''', ''Design'', ''ezvisualnavigationpart'');
/*!40000 ALTER TABLE `ezsection`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsession`
--

DROP TABLE IF EXISTS `ezsession`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsession` (
  `data`            LONGTEXT    NOT NULL,
  `expiration_time` INT(11)     NOT NULL DEFAULT ''0'',
  `session_key`     VARCHAR(32) NOT NULL DEFAULT '''',
  `user_hash`       VARCHAR(32) NOT NULL DEFAULT '''',
  `user_id`         INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`session_key`),
  KEY `expiration_time` (`expiration_time`),
  KEY `ezsession_user_id` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsession`
--

LOCK TABLES `ezsession` WRITE;
/*!40000 ALTER TABLE `ezsession`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsession`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsite_data`
--

DROP TABLE IF EXISTS `ezsite_data`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsite_data` (
  `name`  VARCHAR(60) NOT NULL DEFAULT '''',
  `value` LONGTEXT    NOT NULL,
  PRIMARY KEY (`name`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsite_data`
--

LOCK TABLES `ezsite_data` WRITE;
/*!40000 ALTER TABLE `ezsite_data`
  DISABLE KEYS */;
INSERT INTO `ezsite_data` VALUES (''ezpublish - RELEASE '', ''1''), (''ezpublish - version'', ''5.90.0alpha1'');
/*!40000 ALTER TABLE `ezsite_data`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating`
--

DROP TABLE IF EXISTS `ezstarrating`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating` (
  `contentobject_id`           INT(11) NOT NULL,
  `contentobject_attribute_id` INT(11) NOT NULL,
  `rating_average`             FLOAT   NOT NULL,
  `rating_count`               INT(11) NOT NULL,
  PRIMARY KEY (`contentobject_id`, `contentobject_attribute_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating`
--

LOCK TABLES `ezstarrating` WRITE;
/*!40000 ALTER TABLE `ezstarrating`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezstarrating_data`
--

DROP TABLE IF EXISTS `ezstarrating_data`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezstarrating_data` (
  `id`                         INT(11)     NOT NULL AUTO_INCREMENT,
  `created_at`                 INT(11)     NOT NULL,
  `user_id`                    INT(11)     NOT NULL,
  `session_key`                VARCHAR(32) NOT NULL,
  `rating`                     FLOAT       NOT NULL,
  `contentobject_id`           INT(11)     NOT NULL,
  `contentobject_attribute_id` INT(11)     NOT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id_session_key` (`user_id`, `session_key`),
  KEY `contentobject_id_contentobject_attribute_id` (`contentobject_id`, `contentobject_attribute_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezstarrating_data`
--

LOCK TABLES `ezstarrating_data` WRITE;
/*!40000 ALTER TABLE `ezstarrating_data`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezstarrating_data`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezsubtree_notification_rule`
--

DROP TABLE IF EXISTS `ezsubtree_notification_rule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezsubtree_notification_rule` (
  `id`         INT(11) NOT NULL AUTO_INCREMENT,
  `node_id`    INT(11) NOT NULL DEFAULT ''0'',
  `use_digest` INT(11)          DEFAULT ''0'',
  `user_id`    INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezsubtree_notification_rule_user_id` (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezsubtree_notification_rule`
--

LOCK TABLES `ezsubtree_notification_rule` WRITE;
/*!40000 ALTER TABLE `ezsubtree_notification_rule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezsubtree_notification_rule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_counter`
--

DROP TABLE IF EXISTS `eztipafriend_counter`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_counter` (
  `count`     INT(11) NOT NULL DEFAULT ''0'',
  `node_id`   INT(11) NOT NULL DEFAULT ''0'',
  `requested` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`node_id`, `requested`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_counter`
--

LOCK TABLES `eztipafriend_counter` WRITE;
/*!40000 ALTER TABLE `eztipafriend_counter`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_counter`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztipafriend_request`
--

DROP TABLE IF EXISTS `eztipafriend_request`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztipafriend_request` (
  `created`        INT(11)      NOT NULL DEFAULT ''0'',
  `email_receiver` VARCHAR(100) NOT NULL DEFAULT '''',
  KEY `eztipafriend_request_created` (`created`),
  KEY `eztipafriend_request_email_rec` (`email_receiver`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztipafriend_request`
--

LOCK TABLES `eztipafriend_request` WRITE;
/*!40000 ALTER TABLE `eztipafriend_request`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eztipafriend_request`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eztrigger`
--

DROP TABLE IF EXISTS `eztrigger`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eztrigger` (
  `connect_type`  CHAR(1)      NOT NULL DEFAULT '''',
  `function_name` VARCHAR(200) NOT NULL DEFAULT '''',
  `id`            INT(11)      NOT NULL AUTO_INCREMENT,
  `module_name`   VARCHAR(200) NOT NULL DEFAULT '''',
  `name`          VARCHAR(255)          DEFAULT NULL,
  `workflow_id`   INT(11)               DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `eztrigger_def_id` (`module_name`(50), `function_name`(50), `connect_type`),
  KEY `eztrigger_fetch` (`name`(25), `module_name`(50), `function_name`(50))
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eztrigger`
--

LOCK TABLES `eztrigger` WRITE;
/*!40000 ALTER TABLE `eztrigger`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `eztrigger`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl`
--

DROP TABLE IF EXISTS `ezurl`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl` (
  `created`          INT(11)     NOT NULL DEFAULT ''0'',
  `id`               INT(11)     NOT NULL AUTO_INCREMENT,
  `is_valid`         INT(11)     NOT NULL DEFAULT ''1'',
  `last_checked`     INT(11)     NOT NULL DEFAULT ''0'',
  `modified`         INT(11)     NOT NULL DEFAULT ''0'',
  `original_url_md5` VARCHAR(32) NOT NULL DEFAULT '''',
  `url`              LONGTEXT,
  PRIMARY KEY (`id`),
  KEY `ezurl_url` (`url`(255))
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 33
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl`
--

LOCK TABLES `ezurl` WRITE;
/*!40000 ALTER TABLE `ezurl`
  DISABLE KEYS */;
INSERT INTO `ezurl`
VALUES (1082368571, 4, 1, 0, 1082368571, ''41caff1d7f5ad51e70ad46abbcf28fb7'', ''http://ez.no/community/forum''),
  (1082368571, 8, 1, 0, 1082368571, ''dfcdb471b240d964dc3f57b998eb0533'', ''http:/ / ez.no''),
  (1301057834, 9, 1, 0, 1301057834, ''bb9c47d334fd775f1c54c45d460e6b2a'', ''http://doc.ez.no/''),
  (1301057834, 10, 1, 0, 1301057834, ''ae76fd1d17de21067cf13101f11689b1'', ''http://ez.no/eZPublish/eZ-Publish-Enterprise-Subscription/Support-Services''),
  (1301057834, 11, 1, 0, 1301057834, ''0c098a23ef9c7cae63ee8f85cf504b2d'', ''http://ez.no/Requests/Contact - Sales''),
  (1301057834, 12, 1, 0, 1301057834, ''6d8c164dd30423d9dcbc3fae1d64e25c'', ''http://ez.no/eZPublish/Training - AND - Certification''),
  (1301057836, 13, 1, 0, 1301057836, ''b13f5ff5cdcad2a4efb461e4edf6f718'', ''http://ez.no/Demos-videos/eZ-Publish-Administration-Interface-Video - Tutorial''),
  (1301057836, 14, 1, 0, 1301057836, ''7b133bbdf1d039979a973e5a697e3743'', ''http://ez.no/Demos-videos/eZ-Publish-Online-Editor-Video - Tutorial''),
  (1301057836, 15, 1, 0, 1301057836, ''4e75c83ab35d461f109ec959aa1c5e1d'', ''http://ez.no/Demos-videos / eZ - Flow - Video - Tutorial''),
  (1301057836, 16, 1, 0, 1301057836, ''215310c57a3d54ef1356c20855510357'', ''http:// SHARE.ez.no/learn/ez-publish/an-introduction- TO - developing - ez - publish - extensions''),
  (1301057836, 17, 1, 0, 1301057836, ''9ba078c54f33985da5bd1348a8f39741'', ''http:// SHARE.ez.no/learn/ez-publish/creating-a- SIMPLE - custom - workflow - EVENT ''),
  (1301057836, 18, 1, 0, 1301057836, ''eb3d19c36acbd41176094024d8fccfd5'', ''http://www.slideshare.net/ezcommunity/ole-marius-smestad-rest-api-how- TO -turn-ez-publish - INTO - a - multichannel - machine''),
  (1301057836, 19, 1, 0, 1301057836, ''1fea0fead02dfc550fbefa5c17acc94f'', ''http://www.slideshare.net/BertrandDunogier/presentation-winter-conference-2011-e - z - asynchronous - publishing''),
  (1301057836, 20, 1, 0, 1301057836, ''af8f8bdc5fac2f3ada6ad337adab04cb'', ''http://doc.ez.no/eZ-Publish/Upgrading/Upgrading- TO -4.5''),
  (1301057836, 21, 1, 0, 1301057836, ''3c6d6cfc2642951e9a946b697f84a306'', ''http:// SHARE.ez.no/learn''),
  (1301057836, 22, 1, 0, 1301057836, ''ac3ba54b44950b2d77fa42cc57dab914'', ''http://ez.no/Demos-videos''),
  (1511122018, 23, 1, 0, 1511122018, ''f61fbcc619f39a26240cc5841d42fe5d'', ''https://openclassrooms.com/course-certificates / 8052587421''),
  (1511122169, 24, 1, 0, 1511122169, ''528f863a6de65fdf6fc5a1e2416cc47c'', ''https://openclassrooms.com/course-certificates / 2454106413''),
  (1511122275, 25, 1, 0, 1511122275, ''0bee0566d689e5e80f68df6225e21ba1'', ''https://openclassrooms.com/course-certificates / 4650696197''),
  (1511122370, 26, 1, 0, 1511122370, ''83d8e6e57fa3b066743044ecde6b6be7'', ''https://openclassrooms.com/course-certificates / 2601242722''),
  (1511122448, 27, 1, 0, 1511122448, ''71b715178143e6f1b473987395efe65e'', ''https://openclassrooms.com/course-certificates / 7031871669''),
  (1511122595, 28, 1, 0, 1511122595, ''efc7b060368b8937ef4ee5dbcca5f301'',
   ''https://openclassrooms.com/course-certificates / 8353911714''),
  (1511122654, 29, 1, 0, 1511122654, ''789a5b2a99f5752315354bc00e792025'',
   ''https://openclassrooms.com/course-certificates / 4357299624''),
  (1511122726, 30, 1, 0, 1511122726, ''67a168663756a77f656c2ee85de7471b'',
   ''https://openclassrooms.com/course-certificates / 7707717623''),
  (1511122796, 31, 1, 0, 1511122796, ''1025a611ad4c46043f78de1fe8c8ae8c'',
   ''https://openclassrooms.com/course-certificates / 1482291439''),
  (1511122869, 32, 1, 0, 1511122869, ''d44d92db22f744914123310fad1f0fba'',
   ''https://openclassrooms.com/course-certificates / 7419339292'');
/*!40000 ALTER TABLE `ezurl`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurl_object_link`
--

DROP TABLE IF EXISTS `ezurl_object_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurl_object_link` (
  `contentobject_attribute_id`      INT(11) NOT NULL DEFAULT ''0'',
  `contentobject_attribute_version` INT(11) NOT NULL DEFAULT ''0'',
  `url_id`                          INT(11) NOT NULL DEFAULT ''0'',
  KEY `ezurl_ol_coa_id` (`contentobject_attribute_id`),
  KEY `ezurl_ol_coa_version` (`contentobject_attribute_version`),
  KEY `ezurl_ol_url_id` (`url_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurl_object_link`
--

LOCK TABLES `ezurl_object_link` WRITE;
/*!40000 ALTER TABLE `ezurl_object_link`
  DISABLE KEYS */;
INSERT INTO `ezurl_object_link`
VALUES (104, 6, 9), (104, 6, 4), (104, 6, 10), (104, 6, 11), (104, 6, 12), (104, 6, 8), (104, 6, 13), (104, 6, 14),
  (104, 6, 15), (104, 6, 16), (104, 6, 17), (104, 6, 18), (104, 6, 19), (104, 6, 20), (104, 6, 21), (104, 6, 22),
  (425, 1, 23), (429, 1, 24), (433, 1, 25), (437, 1, 26), (441, 1, 27), (445, 1, 27), (449, 1, 28), (453, 1, 29),
  (457, 1, 30), (461, 1, 31), (465, 1, 32);
/*!40000 ALTER TABLE `ezurl_object_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias`
--

DROP TABLE IF EXISTS `ezurlalias`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias` (
  `destination_url` LONGTEXT NOT NULL,
  `forward_to_id`   INT(11)  NOT NULL DEFAULT ''0'',
  `id`              INT(11)  NOT NULL AUTO_INCREMENT,
  `is_imported`     INT(11)  NOT NULL DEFAULT ''0'',
  `is_internal`     INT(11)  NOT NULL DEFAULT ''1'',
  `is_wildcard`     INT(11)  NOT NULL DEFAULT ''0'',
  `source_md5`      VARCHAR(32)       DEFAULT NULL,
  `source_url`      LONGTEXT NOT NULL,
  PRIMARY KEY (`id`),
  KEY `ezurlalias_desturl` (`destination_url`(200)),
  KEY `ezurlalias_forward_to_id` (`forward_to_id`),
  KEY `ezurlalias_imp_wcard_fwd` (`is_imported`, `is_wildcard`, `forward_to_id`),
  KEY `ezurlalias_source_md5` (`source_md5`),
  KEY `ezurlalias_source_url` (`source_url`(255)),
  KEY `ezurlalias_wcard_fwd` (`is_wildcard`, `forward_to_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 34
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias`
--

LOCK TABLES `ezurlalias` WRITE;
/*!40000 ALTER TABLE `ezurlalias`
  DISABLE KEYS */;
INSERT INTO `ezurlalias`
VALUES (''content / VIEW / FULL / 2'', 0, 12, 1, 1, 0, ''d41d8cd98f00b204e9800998ecf8427e'', ''''),
  (''content / VIEW / FULL / 5'', 0, 13, 1, 1, 0, ''9bc65c2abec141778ffaa729489f3e87'', ''users''),
  (''content / VIEW / FULL / 12'', 0, 15, 1, 1, 0, ''02d4e844e3a660857a3f81585995ffe1'', ''users / guest_accounts''),
  (''content / VIEW / FULL / 13'', 0, 16, 1, 1, 0, ''1b1d79c16700fd6003ea7be233e754ba'', ''users / administrator_users''),
  (''content / VIEW / FULL / 14'', 0, 17, 1, 1, 0, ''0bb9dd665c96bbc1cf36b79180786dea'', ''users / editors''),
  (''content / VIEW / FULL / 15'', 0, 18, 1, 1, 0, ''f1305ac5f327a19b451d82719e0c3f5d'', ''users / administrator_users / administrator_user''),
  (''content / VIEW / FULL / 43'', 0, 20, 1, 1, 0, ''62933a2951ef01f4eafd9bdf4d3cd2f0'', ''media''),
  (''content / VIEW / FULL / 44'', 0, 21, 1, 1, 0, ''3ae1aac958e1c82013689d917d34967a'', ''users / anonymous_users''),
  (''content / VIEW / FULL / 45'', 0, 22, 1, 1, 0, ''aad93975f09371695ba08292fd9698db'', ''users / anonymous_users / anonymous_user''),
  (''content / VIEW / FULL / 48'', 0, 25, 1, 1, 0, ''a0f848942ce863cf53c0fa6cc684007d'', ''setup''),
  (''content / VIEW / FULL / 50'', 0, 27, 1, 1, 0, ''c60212835de76414f9bfd21eecb8f221'', ''foo_bar_folder / images / vbanner''),
  (''content / VIEW / FULL / 51'', 0, 28, 1, 1, 0, ''38985339d4a5aadfc41ab292b4527046'', ''media / images''),
  (''content / VIEW / FULL / 52'', 0, 29, 1, 1, 0, ''ad5a8c6f6aac3b1b9df267fe22e7aef6'', ''media / files''),
  (''content / VIEW / FULL / 53'', 0, 30, 1, 1, 0, ''562a0ac498571c6c3529173184a2657c'', ''media / multimedia''),
  (''content / VIEW / FULL / 54'', 0, 31, 1, 1, 0, ''e501fe6c81ed14a5af2b322d248102d8'',
   ''setup / common_ini_settings''),
  (''content / VIEW / FULL / 56'', 0, 32, 1, 1, 0, ''2dd3db5dc7122ea5f3ee539bb18fe97d'', ''design / ez_publish''),
  (''content / VIEW / FULL / 58'', 0, 33, 1, 1, 0, ''31c13f47ad87dd7baa2d558a91e0fbb9'', ''design'');
/*!40000 ALTER TABLE `ezurlalias`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml`
--

DROP TABLE IF EXISTS `ezurlalias_ml`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml` (
  `action`          LONGTEXT    NOT NULL,
  `action_type`     VARCHAR(32) NOT NULL DEFAULT '''',
  `alias_redirects` INT(11)     NOT NULL DEFAULT ''1'',
  `id`              INT(11)     NOT NULL DEFAULT ''0'',
  `is_alias`        INT(11)     NOT NULL DEFAULT ''0'',
  `is_original`     INT(11)     NOT NULL DEFAULT ''0'',
  `lang_mask`       BIGINT(20)  NOT NULL DEFAULT ''0'',
  `link`            INT(11)     NOT NULL DEFAULT ''0'',
  `parent`          INT(11)     NOT NULL DEFAULT ''0'',
  `text`            LONGTEXT    NOT NULL,
  `text_md5`        VARCHAR(32) NOT NULL DEFAULT '''',
  PRIMARY KEY (`parent`, `text_md5`),
  KEY `ezurlalias_ml_act_org` (`action`(32), `is_original`),
  KEY `ezurlalias_ml_actt_org_al` (`action_type`, `is_original`, `is_alias`),
  KEY `ezurlalias_ml_id` (`id`),
  KEY `ezurlalias_ml_par_act_id_lnk` (`action`(32), `id`, `link`, `parent`),
  KEY `ezurlalias_ml_par_lnk_txt` (`parent`, `text`(32), `link`),
  KEY `ezurlalias_ml_text` (`text`(32), `id`, `link`),
  KEY `ezurlalias_ml_text_lang` (`text`(32), `lang_mask`, `parent`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml`
--

LOCK TABLES `ezurlalias_ml` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml`
  DISABLE KEYS */;
INSERT INTO `ezurlalias_ml`
VALUES (''nop:'', ''nop'', 1, 14, 0, 0, 1, 14, 0, ''foo_bar_folder'', ''0288b6883046492fa92e4a84eb67acc9''),
  (''eznode:60'', ''eznode'', 1, 39, 0, 1, 3, 39, 0, ''Contact - Us'', ''03f2197d47a602c679c5f667e3482855''),
  (''eznode:58'', ''eznode'', 1, 25, 0, 1, 3, 25, 0, ''Design'', ''31c13f47ad87dd7baa2d558a91e0fbb9''),
  (''eznode:61'', ''eznode'', 1, 41, 0, 1, 3, 41, 0, ''Projects'', ''35a2864c314e4367eb1684bfe126a967''),
  (''eznode:48'', ''eznode'', 1, 13, 0, 1, 3, 13, 0, ''Setup2'', ''475e97c0146bfb1c490339546d9e72ee''),
  (''nop:'', ''nop'', 1, 17, 0, 0, 1, 17, 0, ''media2'', ''50e2736330de124f6edea9b008556fe6''),
  (''eznode:117'', ''eznode'', 0, 113, 0, 1, 3, 113, 0, ''Certifications'', ''5abffac9b7a9b3a32f40536d897718c5''),
  (''eznode:43'', ''eznode'', 1, 9, 0, 1, 3, 9, 0, ''Media'', ''62933a2951ef01f4eafd9bdf4d3cd2f0''),
  (''nop:'', ''nop'', 1, 21, 0, 0, 1, 21, 0, ''setup3'', ''732cefcf28bf4547540609fb1a786a30''),
  (''nop:'', ''nop'', 1, 3, 0, 0, 1, 3, 0, ''users2'', ''86425c35a33507d479f71ade53a669aa''),
  (''eznode:5'', ''eznode'', 1, 2, 0, 1, 3, 2, 0, ''Users'', ''9bc65c2abec141778ffaa729489f3e87''),
  (''eznode:110'', ''eznode'', 0, 106, 0, 1, 3, 106, 0, ''Testimonials'', ''9c514e654794791493a9df6b627edc1b''),
  (''eznode:61'', ''eznode'', 0, 96, 0, 0, 3, 41, 0, ''Projectstest'', ''c937eae92e00dc0afb965deddec4dd3d''),
  (''eznode:2'', ''eznode'', 1, 1, 0, 1, 3, 1, 0, '''', ''d41d8cd98f00b204e9800998ecf8427e''),
  (''eznode:62'', ''eznode'', 1, 42, 0, 1, 3, 42, 0, ''Top - Stories'', ''f502218bbda546a7c0bb9614bfb2c8ca''),
  (''eznode:93'', ''eznode'', 0, 86, 0, 1, 3, 86, 0, ''Personal - RESUME '', ''fd62fced8846b33d3ea23de2b8e06347''),
  (''eznode:14'', ''eznode'', 1, 6, 0, 1, 3, 6, 2, ''Editors'', ''a147e136bfa717592f2bd70bd4b53b17''),
  (''eznode:44'', ''eznode'', 1, 10, 0, 1, 3, 10, 2, ''Anonymous - Users'', ''c2803c3fa1b0b5423237b4e018cae755''),
  (''eznode:12'', ''eznode'', 1, 4, 0, 1, 3, 4, 2, ''Guest - accounts'', ''e57843d836e3af8ab611fde9e2139b3a''),
  (''eznode:13'', ''eznode'', 1, 5, 0, 1, 3, 5, 2, ''Administrator - users'', ''f89fad7f8a3abc8c09e1deb46a420007''),
  (''nop:'', ''nop'', 1, 11, 0, 0, 1, 11, 3, ''anonymous_users2'', ''505e93077a6dde9034ad97a14ab022b1''),
  (''eznode:12'', ''eznode'', 1, 26, 0, 0, 1, 4, 3, ''guest_accounts'', ''70bb992820e73638731aa8de79b3329e''),
  (''eznode:14'', ''eznode'', 1, 29, 0, 0, 1, 6, 3, ''editors'', ''a147e136bfa717592f2bd70bd4b53b17''),
  (''nop:'', ''nop'', 1, 7, 0, 0, 1, 7, 3, ''administrator_users2'', ''a7da338c20bf65f9f789c87296379c2a''),
  (''eznode:13'', ''eznode'', 1, 27, 0, 0, 1, 5, 3, ''administrator_users'', ''aeb8609aa933b0899aa012c71139c58c''),
  (''eznode:44'', ''eznode'', 1, 30, 0, 0, 1, 10, 3, ''anonymous_users'', ''e9e5ad0c05ee1a43715572e5cc545926''),
  (''eznode:15'', ''eznode'', 1, 8, 0, 1, 3, 8, 5, ''Administrator - USER '', ''5a9d7b0ec93173ef4fedee023209cb61''),
  (''eznode:15'', ''eznode'', 1, 28, 0, 0, 0, 8, 7, ''administrator_user'', ''a3cca2de936df1e2f805710399989971''),
  (''eznode:53'', ''eznode'', 1, 20, 0, 1, 3, 20, 9, ''Multimedia'', ''2e5bc8831f7ae6a29530e7f1bbf2de9c''),
  (''eznode:52'', ''eznode'', 1, 19, 0, 1, 3, 19, 9, ''Files'', ''45b963397aa40d4a0063e0d85e4fe7a1''),
  (''eznode:51'', ''eznode'', 1, 18, 0, 1, 3, 18, 9, ''Images'', ''59b514174bffe4ae402b3d63aad79fe0''),
  (''eznode:45'', ''eznode'', 1, 12, 0, 1, 3, 12, 10, ''Anonymous - USER '', ''ccb62ebca03a31272430bc414bd5cd5b''),
  (''eznode:45'', ''eznode'', 1, 31, 0, 0, 1, 12, 11, ''anonymous_user'', ''c593ec85293ecb0e02d50d4c5c6c20eb''),
  (''eznode:54'', ''eznode'', 1, 22, 0, 1, 2, 22, 13, ''Common - INI - settings'', ''4434993ac013ae4d54bb1f51034d6401''),
  (''nop:'', ''nop'', 1, 15, 0, 0, 1, 15, 14, ''images'', ''59b514174bffe4ae402b3d63aad79fe0''),
  (''eznode:50'', ''eznode'', 1, 16, 0, 1, 2, 16, 15, ''vbanner'', ''c54e2d1b93642e280bdc5d99eab2827d''),
  (''eznode:53'', ''eznode'', 1, 34, 0, 0, 1, 20, 17, ''multimedia'', ''2e5bc8831f7ae6a29530e7f1bbf2de9c''),
  (''eznode:52'', ''eznode'', 1, 33, 0, 0, 1, 19, 17, ''files'', ''45b963397aa40d4a0063e0d85e4fe7a1''),
  (''eznode:51'', ''eznode'', 1, 32, 0, 0, 1, 18, 17, ''images'', ''59b514174bffe4ae402b3d63aad79fe0''),
  (''eznode:54'', ''eznode'', 1, 35, 0, 0, 1, 22, 21, ''common_ini_settings'', ''e59d6834e86cee752ed841f9cd8d5baf''),
  (''eznode:56'', ''eznode'', 1, 37, 0, 0, 2, 24, 25, ''eZ - publish'', ''10e4c3cb527fb9963258469986c16240''),
  (''eznode:56'', ''eznode'', 1, 24, 0, 1, 2, 24, 25, ''Plain - site'', ''49a39d99a955d95aa5d636275656a07a''),
  (''eznode:101'', ''eznode'', 1, 97, 0, 1, 3, 97, 41, ''Twicth - Stuff'', ''26f86094355cf5c407348ee0c8ccbdb3''),
  (''eznode:105'', ''eznode'', 0, 101, 0, 1, 3, 101, 41, ''Personnal - RESUME '', ''2ce965b32d862fb71034f5ca3cbf3732''),
  (''eznode:108'', ''eznode'', 0, 104, 0, 1, 3, 104, 41, ''PeePolls'', ''4f75aa4e10f68e60b7451fff89b9db34''),
  (''eznode:106'', ''eznode'', 0, 102, 0, 1, 3, 102, 41, ''Profesionnal - CV - Card'', ''50c5e2b6e46df3f11f2d34b550af541f''),
  (''eznode:109'', ''eznode'', 0, 105, 0, 1, 3, 105, 41, ''Canturla'', ''a96beb1e54e0668c4f0bc1fad3997584''),
  (''eznode:103'', ''eznode'', 1, 99, 0, 1, 3, 99, 41, ''CodeCademy'', ''b0251c99919ce5da8c1b10489b6286be''),
  (''eznode:102'', ''eznode'', 1, 98, 0, 1, 3, 98, 41, ''ISPConfig'', ''c5b016d807bfc66e43173c40bb488919''),
  (''eznode:107'', ''eznode'', 1, 103, 0, 1, 3, 103, 41, ''Torrent - Trader'', ''c7763b24c4eedc1314483a7bd5b73594''),
  (''eznode:104'', ''eznode'', 0, 100, 0, 1, 3, 100, 41, ''Conky - Ubuntu'', ''d1fc94b37b87130b714d43b94708753a''),
  (''eznode:87'', ''eznode'', 1, 78, 0, 1, 3, 78, 42, ''Build-a-better-performing-site- WITH - continuous - optimization'', ''1f456f6c56a19dd3ee0cf3bb57b61fee''),
  (''eznode:89'', ''eznode'', 1, 81, 0, 1, 3, 81, 42, ''eZ-Platform- AND -eZ-Studio-coming - soon'', ''91f415da1afe9552fe975dcdde1f1763''),
  (''eznode:88'', ''eznode'', 1, 80, 0, 1, 3, 80, 42, ''5-things- TO -consider- WHEN -making-a-multi- LANGUAGE -site- WITH -eZ-Publish'', ''dfeeafa3a32da9d6b7f2a4f5a90d2c5e''),
  (''eznode:87'', ''eznode'', 0, 79, 0, 0, 3, 78, 42, ''xxx'', ''f561aaf6ef0bf14d4208bb46a4ccb3ad''),
  (''eznode:96'', ''eznode'', 0, 91, 0, 0, 3, 89, 86, ''test'', ''098f6bcd4621d373cade4e832627b4f6''),
  (''eznode:96'', ''eznode'', 0, 90, 0, 0, 3, 89, 86, ''location_96'', ''121b929e95fbc99d31c10537e13d07b4''),
  (''eznode:98'', ''eznode'', 0, 93, 0, 1, 3, 93, 86, ''Geek - Avenue'', ''2d2c104a697c9e849d5a0e88e71e038a''),
  (''eznode:96'', ''eznode'', 0, 89, 0, 1, 3, 89, 86, ''Journal - Passe - l - info'', ''a3e36fe65efc146cceff079c5113a5e0''),
  (''eznode:100'', ''eznode'', 1, 95, 0, 1, 3, 95, 86, ''Kaliop'', ''acdc8c1b336c34677ffeb044b2f976f9''),
  (''eznode:97'', ''eznode'', 0, 92, 0, 1, 3, 92, 86, ''Arkadyss'', ''b0a02517e01983bca9e3498e4ee35978''),
  (''eznode:99'', ''eznode'', 0, 94, 0, 1, 3, 94, 86, ''CODA - BY - Simplon'', ''bfde78089356f61280b76c31e896f0e9''),
  (''eznode:114'', ''eznode'', 0, 110, 0, 1, 3, 110, 106, ''Samir - Ben - Sadi'', ''1e5e05894c1e308df62ec4809263602a''),
  (''eznode:115'', ''eznode'', 0, 111, 0, 1, 3, 111, 106, ''Morghadi - Patrick'', ''9177becef42a175f9e1a8f81d48a8a7a''),
  (''eznode:112'', ''eznode'', 1, 108, 0, 1, 3, 108, 106, ''Archilla - Sylvain'', ''a498c69e45b0b925eb95b732eb41ade8''),
  (''eznode:113'', ''eznode'', 0, 109, 0, 1, 3, 109, 106, ''Emilie - Robert'', ''ede3b0c79693eb907e9d7ce03fcdaa7e''),
  (''eznode:120'', ''eznode'', 0, 116, 0, 1, 3, 116, 113, ''WordPress'', ''1870a829d9bc69abf500eca6f00241fe''),
  (''eznode:119'', ''eznode'', 0, 115, 0, 1, 3, 115, 113, ''UPDATE'', ''3ac340832f29c11538fbe2d6f75e8bcc''),
  (''eznode:121'', ''eznode'', 0, 117, 0, 1, 3, 117, 113, ''CMS'', ''570d99e4c85914470d914170d1e95144''),
  (''eznode:128'', ''eznode'', 0, 124, 0, 1, 3, 124, 113, ''Symfony'', ''78d5167ff84ccbb91fd6211cedb45667''),
  (''eznode:122'', ''eznode'', 0, 118, 0, 1, 3, 118, 113, ''API - REST'', ''8351382755e0a945e951805aecec5590''),
  (''eznode:118'', ''eznode'', 0, 114, 0, 1, 3, 114, 113, ''Git'', ''ba9f11ecc3497d9993b933fdc2bd61e5''),
  (''eznode:123'', ''eznode'', 0, 119, 0, 1, 3, 119, 113, ''Bootstrap'', ''ca4c50b905dc21ea17a10549a6f5944f''),
  (''eznode:124'', ''eznode'', 0, 120, 0, 1, 3, 120, 113, ''jQuery'', ''d223e1439188e478349d52476506c22e''),
  (''eznode:126'', ''eznode'', 0, 122, 0, 1, 3, 122, 113, ''HTML - CSS'', ''d3183e154aca25f0d870eca2f6259e84''),
  (''eznode:125'', ''eznode'', 0, 121, 0, 1, 3, 121, 113, ''JavaScript'', ''de9b9ed78d7e2e1dceeffee780e2f919''),
  (''eznode:127'', ''eznode'', 0, 123, 0, 1, 3, 123, 113, ''PHP'', ''e1bfd762321e409cee4ac0b6e841963c'');
/*!40000 ALTER TABLE `ezurlalias_ml`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlalias_ml_incr`
--

DROP TABLE IF EXISTS `ezurlalias_ml_incr`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlalias_ml_incr` (
  `id` INT(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 125
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlalias_ml_incr`
--

LOCK TABLES `ezurlalias_ml_incr` WRITE;
/*!40000 ALTER TABLE `ezurlalias_ml_incr`
  DISABLE KEYS */;
INSERT INTO `ezurlalias_ml_incr`
VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9), (10), (11), (12), (13), (14), (15), (16), (17), (18), (19), (20),
  (21), (22), (24), (25), (26), (27), (28), (29), (30), (31), (32), (33), (34), (35), (36), (37), (38), (39), (40),
  (41), (42), (43), (44), (45), (46), (47), (48), (49), (50), (51), (52), (53), (54), (55), (56), (57), (58), (59),
  (60), (61), (62), (63), (64), (65), (66), (67), (68), (69), (70), (71), (72), (73), (74), (75), (76), (77), (78),
  (79), (80), (81), (82), (83), (84), (85), (86), (87), (88), (89), (90), (91), (92), (93), (94), (95), (96), (97),
  (98), (99), (100), (101), (102), (103), (104), (105), (106), (107), (108), (109), (110), (111), (112), (113), (114),
  (115), (116), (117), (118), (119), (120), (121), (122), (123), (124);
/*!40000 ALTER TABLE `ezurlalias_ml_incr`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezurlwildcard`
--

DROP TABLE IF EXISTS `ezurlwildcard`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezurlwildcard` (
  `destination_url` LONGTEXT NOT NULL,
  `id`              INT(11)  NOT NULL AUTO_INCREMENT,
  `source_url`      LONGTEXT NOT NULL,
  `type`            INT(11)  NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezurlwildcard`
--

LOCK TABLES `ezurlwildcard` WRITE;
/*!40000 ALTER TABLE `ezurlwildcard`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezurlwildcard`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser`
--

DROP TABLE IF EXISTS `ezuser`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser` (
  `contentobject_id`   INT(11)      NOT NULL DEFAULT ''0'',
  `email`              VARCHAR(150) NOT NULL DEFAULT '''',
  `login`              VARCHAR(150) NOT NULL DEFAULT '''',
  `password_hash`      VARCHAR(255)          DEFAULT NULL,
  `password_hash_type` INT(11)      NOT NULL DEFAULT ''1'',
  PRIMARY KEY (`contentobject_id`),
  UNIQUE KEY `ezuser_login` (`login`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser`
--

LOCK TABLES `ezuser` WRITE;
/*!40000 ALTER TABLE `ezuser`
  DISABLE KEYS */;
INSERT INTO `ezuser` VALUES (10, ''nospam@ez.no'', ''anonymous'', ''4e6f6184135228ccd45f8233d72a0363'', 2),
  (14, ''nospam@ez.no'', ''admin'', ''$2y$10$i9LmVGjuvWikEMMPneQwa.fkLkY.igk4eG8NIXsNXwOqBQ13z6A / K'', 7);
/*!40000 ALTER TABLE `ezuser`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_accountkey`
--

DROP TABLE IF EXISTS `ezuser_accountkey`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_accountkey` (
  `hash_key` VARCHAR(32) NOT NULL DEFAULT '''',
  `id`       INT(11)     NOT NULL AUTO_INCREMENT,
  `time`     INT(11)     NOT NULL DEFAULT ''0'',
  `user_id`  INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `hash_key` (`hash_key`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_accountkey`
--

LOCK TABLES `ezuser_accountkey` WRITE;
/*!40000 ALTER TABLE `ezuser_accountkey`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_accountkey`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_discountrule`
--

DROP TABLE IF EXISTS `ezuser_discountrule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_discountrule` (
  `contentobject_id` INT(11) DEFAULT NULL,
  `discountrule_id`  INT(11) DEFAULT NULL,
  `id`               INT(11)      NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     AUTO_INCREMENT,
  `name`             VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_discountrule`
--

LOCK TABLES `ezuser_discountrule` WRITE;
/*!40000 ALTER TABLE `ezuser_discountrule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezuser_discountrule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_role`
--

DROP TABLE IF EXISTS `ezuser_role`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_role` (
  `contentobject_id` INT(11)          DEFAULT NULL,
  `id`               INT(11) NOT NULL AUTO_INCREMENT,
  `limit_identifier` VARCHAR(255)     DEFAULT '''',
  `limit_value`      VARCHAR(255)     DEFAULT '''',
  `role_id`          INT(11)          DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `ezuser_role_contentobject_id` (`contentobject_id`),
  KEY `ezuser_role_role_id` (`role_id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 35
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_role`
--

LOCK TABLES `ezuser_role` WRITE;
/*!40000 ALTER TABLE `ezuser_role`
  DISABLE KEYS */;
INSERT INTO `ezuser_role` VALUES (12, 25, '''', '''', 2), (11, 28, '''', '''', 1), (42, 31, '''', '''', 1),
  (13, 32, ''Subtree'', '' / 1 / 2 / '', 3), (13, 33, ''Subtree'', '' / 1 / 43 / '', 3), (13, 34, '''', '''', 4);
/*!40000 ALTER TABLE `ezuser_role`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuser_setting`
--

DROP TABLE IF EXISTS `ezuser_setting`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuser_setting` (
  `is_enabled` INT(11) NOT NULL DEFAULT ''0'',
  `max_login`  INT(11)          DEFAULT NULL,
  `user_id`    INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuser_setting`
--

LOCK TABLES `ezuser_setting` WRITE;
/*!40000 ALTER TABLE `ezuser_setting`
  DISABLE KEYS */;
INSERT INTO `ezuser_setting` VALUES (1, 1000, 10), (1, 10, 14);
/*!40000 ALTER TABLE `ezuser_setting`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezuservisit`
--

DROP TABLE IF EXISTS `ezuservisit`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezuservisit` (
  `current_visit_timestamp` INT(11) NOT NULL DEFAULT ''0'',
  `failed_login_attempts`   INT(11) NOT NULL DEFAULT ''0'',
  `last_visit_timestamp`    INT(11) NOT NULL DEFAULT ''0'',
  `login_count`             INT(11) NOT NULL DEFAULT ''0'',
  `user_id`                 INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`user_id`),
  KEY `ezuservisit_co_visit_count` (`current_visit_timestamp`, `login_count`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezuservisit`
--

LOCK TABLES `ezuservisit` WRITE;
/*!40000 ALTER TABLE `ezuservisit`
  DISABLE KEYS */;
INSERT INTO `ezuservisit` VALUES (1448665576, 0, 1448654409, 4, 14);
/*!40000 ALTER TABLE `ezuservisit`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule`
--

DROP TABLE IF EXISTS `ezvatrule`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule` (
  `country_code` VARCHAR(255) NOT NULL DEFAULT '''',
  `id`           INT(11)      NOT NULL AUTO_INCREMENT,
  `vat_type`     INT(11)      NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule`
--

LOCK TABLES `ezvatrule` WRITE;
/*!40000 ALTER TABLE `ezvatrule`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvatrule_product_category`
--

DROP TABLE IF EXISTS `ezvatrule_product_category`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvatrule_product_category` (
  `product_category_id` INT(11) NOT NULL DEFAULT ''0'',
  `vatrule_id`          INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`vatrule_id`, `product_category_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvatrule_product_category`
--

LOCK TABLES `ezvatrule_product_category` WRITE;
/*!40000 ALTER TABLE `ezvatrule_product_category`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezvatrule_product_category`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezvattype`
--

DROP TABLE IF EXISTS `ezvattype`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezvattype` (
  `id`         INT(11)      NOT NULL AUTO_INCREMENT,
  `name`       VARCHAR(255) NOT NULL DEFAULT '''',
  `percentage` FLOAT                 DEFAULT NULL,
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezvattype`
--

LOCK TABLES `ezvattype` WRITE;
/*!40000 ALTER TABLE `ezvattype`
  DISABLE KEYS */;
INSERT INTO `ezvattype` VALUES (1, ''Std'', 0);
/*!40000 ALTER TABLE `ezvattype`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezview_counter`
--

DROP TABLE IF EXISTS `ezview_counter`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezview_counter` (
  `count`   INT(11) NOT NULL DEFAULT ''0'',
  `node_id` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`node_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezview_counter`
--

LOCK TABLES `ezview_counter` WRITE;
/*!40000 ALTER TABLE `ezview_counter`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezview_counter`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwaituntildatevalue`
--

DROP TABLE IF EXISTS `ezwaituntildatevalue`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwaituntildatevalue` (
  `contentclass_attribute_id` INT(11) NOT NULL DEFAULT ''0'',
  `contentclass_id`           INT(11) NOT NULL DEFAULT ''0'',
  `id`                        INT(11) NOT NULL AUTO_INCREMENT,
  `workflow_event_id`         INT(11) NOT NULL DEFAULT ''0'',
  `workflow_event_version`    INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`, `workflow_event_id`, `workflow_event_version`),
  KEY `ezwaituntildateevalue_wf_ev_id_wf_ver` (`workflow_event_id`, `workflow_event_version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwaituntildatevalue`
--

LOCK TABLES `ezwaituntildatevalue` WRITE;
/*!40000 ALTER TABLE `ezwaituntildatevalue`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwaituntildatevalue`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezwishlist`
--

DROP TABLE IF EXISTS `ezwishlist`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezwishlist` (
  `id`                   INT(11) NOT NULL AUTO_INCREMENT,
  `productcollection_id` INT(11) NOT NULL DEFAULT ''0'',
  `user_id`              INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezwishlist`
--

LOCK TABLES `ezwishlist` WRITE;
/*!40000 ALTER TABLE `ezwishlist`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezwishlist`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow`
--

DROP TABLE IF EXISTS `ezworkflow`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow` (
  `created`              INT(11)      NOT NULL DEFAULT ''0'',
  `creator_id`           INT(11)      NOT NULL DEFAULT ''0'',
  `id`                   INT(11)      NOT NULL AUTO_INCREMENT,
  `is_enabled`           INT(11)      NOT NULL DEFAULT ''0'',
  `modified`             INT(11)      NOT NULL DEFAULT ''0'',
  `modifier_id`          INT(11)      NOT NULL DEFAULT ''0'',
  `name`                 VARCHAR(255) NOT NULL DEFAULT '''',
  `version`              INT(11)      NOT NULL DEFAULT ''0'',
  `workflow_type_string` VARCHAR(50)  NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`, `version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow`
--

LOCK TABLES `ezworkflow` WRITE;
/*!40000 ALTER TABLE `ezworkflow`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_assign`
--

DROP TABLE IF EXISTS `ezworkflow_assign`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_assign` (
  `access_type` INT(11) NOT NULL DEFAULT ''0'',
  `as_tree`     INT(11) NOT NULL DEFAULT ''0'',
  `id`          INT(11) NOT NULL AUTO_INCREMENT,
  `node_id`     INT(11) NOT NULL DEFAULT ''0'',
  `workflow_id` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_assign`
--

LOCK TABLES `ezworkflow_assign` WRITE;
/*!40000 ALTER TABLE `ezworkflow_assign`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_assign`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_event`
--

DROP TABLE IF EXISTS `ezworkflow_event`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_event` (
  `data_int1`            INT(11)              DEFAULT NULL,
  `data_int2`            INT(11)              DEFAULT NULL,
  `data_int3`            INT(11)              DEFAULT NULL,
  `data_int4`            INT(11)              DEFAULT NULL,
  `data_text1`           VARCHAR(255)         DEFAULT NULL,
  `data_text2`           VARCHAR(255)         DEFAULT NULL,
  `data_text3`           VARCHAR(255)         DEFAULT NULL,
  `data_text4`           VARCHAR(255)         DEFAULT NULL,
  `data_text5`           LONGTEXT,
  `description`          VARCHAR(50) NOT NULL DEFAULT '''',
  `id`                   INT(11)     NOT NULL AUTO_INCREMENT,
  `placement`            INT(11)     NOT NULL DEFAULT ''0'',
  `version`              INT(11)     NOT NULL DEFAULT ''0'',
  `workflow_id`          INT(11)     NOT NULL DEFAULT ''0'',
  `workflow_type_string` VARCHAR(50) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`, `version`),
  KEY `wid_version_placement` (`workflow_id`, `version`, `placement`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_event`
--

LOCK TABLES `ezworkflow_event` WRITE;
/*!40000 ALTER TABLE `ezworkflow_event`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_event`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group`
--

DROP TABLE IF EXISTS `ezworkflow_group`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group` (
  `created`     INT(11)      NOT NULL DEFAULT ''0'',
  `creator_id`  INT(11)      NOT NULL DEFAULT ''0'',
  `id`          INT(11)      NOT NULL AUTO_INCREMENT,
  `modified`    INT(11)      NOT NULL DEFAULT ''0'',
  `modifier_id` INT(11)      NOT NULL DEFAULT ''0'',
  `name`        VARCHAR(255) NOT NULL DEFAULT '''',
  PRIMARY KEY (`id`)
)
  ENGINE = InnoDB
  AUTO_INCREMENT = 2
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group`
--

LOCK TABLES `ezworkflow_group` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group`
  DISABLE KEYS */;
INSERT INTO `ezworkflow_group` VALUES (1024392098, 14, 1, 1024392098, 14, ''Standard'');
/*!40000 ALTER TABLE `ezworkflow_group`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_group_link`
--

DROP TABLE IF EXISTS `ezworkflow_group_link`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_group_link` (
  `group_id`         INT(11) NOT NULL DEFAULT ''0'',
  `group_name`       VARCHAR(255)     DEFAULT NULL,
  `workflow_id`      INT(11) NOT NULL DEFAULT ''0'',
  `workflow_version` INT(11) NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`workflow_id`, `group_id`, `workflow_version`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_group_link`
--

LOCK TABLES `ezworkflow_group_link` WRITE;
/*!40000 ALTER TABLE `ezworkflow_group_link`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_group_link`
  ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ezworkflow_process`
--

DROP TABLE IF EXISTS `ezworkflow_process`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ezworkflow_process` (
  `activation_date`     INT(11) DEFAULT NULL,
  `content_id`          INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `content_version`     INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `created`             INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `event_id`            INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `event_position`      INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `event_state`         INT(11) DEFAULT NULL,
  `event_status`        INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `id`                  INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 AUTO_INCREMENT,
  `last_event_id`       INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `last_event_position` INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `last_event_status`   INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `memento_key`         VARCHAR(32) DEFAULT NULL,
  `modified`            INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `node_id`             INT(11)     NOT NULL                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                 DEFAULT ''0'',
  `parameters`          LONGTEXT,
  `process_key`         VARCHAR(32) NOT NULL DEFAULT '''',
  `session_key`         VARCHAR(32) NOT NULL DEFAULT ''0'',
  `status`              INT(11) DEFAULT NULL,
  `user_id`             INT(11)     NOT NULL DEFAULT ''0'',
  `workflow_id`         INT(11)     NOT NULL DEFAULT ''0'',
  PRIMARY KEY (`id`),
  KEY `ezworkflow_process_process_key` (`process_key`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ezworkflow_process`
--

LOCK TABLES `ezworkflow_process` WRITE;
/*!40000 ALTER TABLE `ezworkflow_process`
  DISABLE KEYS */;
/*!40000 ALTER TABLE `ezworkflow_process`
  ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2017-11-19 21:52:11
