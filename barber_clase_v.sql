-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: barber_clase_v
-- ------------------------------------------------------
-- Server version	8.0.43

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add user',4,'add_user'),(14,'Can change user',4,'change_user'),(15,'Can delete user',4,'delete_user'),(16,'Can view user',4,'view_user'),(17,'Can add content type',5,'add_contenttype'),(18,'Can change content type',5,'change_contenttype'),(19,'Can delete content type',5,'delete_contenttype'),(20,'Can view content type',5,'view_contenttype'),(21,'Can add session',6,'add_session'),(22,'Can change session',6,'change_session'),(23,'Can delete session',6,'delete_session'),(24,'Can view session',6,'view_session'),(25,'Can add task',7,'add_task'),(26,'Can change task',7,'change_task'),(27,'Can delete task',7,'delete_task'),(28,'Can view task',7,'view_task'),(29,'Can add Token',8,'add_token'),(30,'Can change Token',8,'change_token'),(31,'Can delete Token',8,'delete_token'),(32,'Can view Token',8,'view_token'),(33,'Can add Token',9,'add_tokenproxy'),(34,'Can change Token',9,'change_tokenproxy'),(35,'Can delete Token',9,'delete_tokenproxy'),(36,'Can view Token',9,'view_tokenproxy'),(37,'Can add barber',10,'add_barber'),(38,'Can change barber',10,'change_barber'),(39,'Can delete barber',10,'delete_barber'),(40,'Can view barber',10,'view_barber'),(41,'Can add turno',11,'add_turno'),(42,'Can change turno',11,'change_turno'),(43,'Can delete turno',11,'delete_turno'),(44,'Can view turno',11,'view_turno'),(45,'Can add servicio',12,'add_servicio'),(46,'Can change servicio',12,'change_servicio'),(47,'Can delete servicio',12,'delete_servicio'),(48,'Can view servicio',12,'view_servicio'),(49,'Can add task',13,'add_task'),(50,'Can change task',13,'change_task'),(51,'Can delete task',13,'delete_task'),(52,'Can view task',13,'view_task'),(53,'Can add Servicio',14,'add_servicio'),(54,'Can change Servicio',14,'change_servicio'),(55,'Can delete Servicio',14,'delete_servicio'),(56,'Can view Servicio',14,'view_servicio'),(57,'Can add Reserva',15,'add_reserva'),(58,'Can change Reserva',15,'change_reserva'),(59,'Can delete Reserva',15,'delete_reserva'),(60,'Can view Reserva',15,'view_reserva'),(61,'Can add Perfil de Usuario',16,'add_userprofile'),(62,'Can change Perfil de Usuario',16,'change_userprofile'),(63,'Can delete Perfil de Usuario',16,'delete_userprofile'),(64,'Can view Perfil de Usuario',16,'view_userprofile'),(65,'Can add Movimiento de Caja',17,'add_movimientocaja'),(66,'Can change Movimiento de Caja',17,'change_movimientocaja'),(67,'Can delete Movimiento de Caja',17,'delete_movimientocaja'),(68,'Can view Movimiento de Caja',17,'view_movimientocaja'),(69,'Can add Proveedor',18,'add_proveedor'),(70,'Can change Proveedor',18,'change_proveedor'),(71,'Can delete Proveedor',18,'delete_proveedor'),(72,'Can view Proveedor',18,'view_proveedor'),(73,'Can add Cierre de Caja',19,'add_cierrecaja'),(74,'Can change Cierre de Caja',19,'change_cierrecaja'),(75,'Can delete Cierre de Caja',19,'delete_cierrecaja'),(76,'Can view Cierre de Caja',19,'view_cierrecaja'),(77,'Can add Turno de Caja',20,'add_turnocaja'),(78,'Can change Turno de Caja',20,'change_turnocaja'),(79,'Can delete Turno de Caja',20,'delete_turnocaja'),(80,'Can view Turno de Caja',20,'view_turnocaja'),(81,'Can add Intento de Login',21,'add_loginattempt'),(82,'Can change Intento de Login',21,'change_loginattempt'),(83,'Can delete Intento de Login',21,'delete_loginattempt'),(84,'Can view Intento de Login',21,'view_loginattempt');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user` (
  `id` int NOT NULL AUTO_INCREMENT,
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
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$1000000$XGvA03h9NxK8qtRMQp8U35$yVM85oa+JYIAajBZ9Vx9M4YhDeNvcdFLgAvp0c0GEpE=','2025-10-13 05:58:58.732698',1,'fabri','','','fabrigonzalez081@gmail.com',1,1,'2025-09-28 00:00:46.780746'),(2,'pbkdf2_sha256$1000000$045xccJ7hMcXQMWlEmeqfW$fvQqcICEnQ9fsRGly0LpDxke/1Fe+nzC0bP3pc8EfcY=','2025-09-28 01:51:08.795523',0,'agustin','','','1agustin7@gmail.com',0,1,'2025-09-28 01:50:45.683137'),(3,'pbkdf2_sha256$1000000$pJ2W3dHWHn57vJ0m37lRlU$1Z77L9QqHZ+eBIW+szgR+RPZUd/wv6DgIrlK6rs2Ans=','2025-09-28 02:08:30.609757',0,'juan','','','juampa@gmail.com',0,1,'2025-09-28 02:08:19.954526'),(4,'pbkdf2_sha256$1000000$PXq6e8WgRfv0IAvN2oCJEJ$R+tzqJWQ3Zf1X1B6BqnCy5PI3JixnyFMbJG1+yXM++k=',NULL,0,'fabricio','','','fabrigonza777@gmail.com',0,1,'2025-09-28 18:04:46.378827'),(5,'pbkdf2_sha256$1000000$msrb00Y2sERdVHd7hjBUSz$E7fVrFeD0Kw5DMtdiWc+WSiByIjhUM0HS5W/XNvolRg=',NULL,0,'bastian@gmail.com','','','bastian123@gmail.com',0,1,'2025-09-28 22:33:02.251615'),(6,'pbkdf2_sha256$1000000$prXCagCOxTTwoKI6z7CqBI$J47IljdeinSbwg0Wy2NC50h8jJl8dezl+PhFk1brhNM=',NULL,0,'gaston','','','gaston@gmail.com',0,1,'2025-09-28 23:06:53.490174'),(7,'pbkdf2_sha256$1000000$Bo1V7uOiP2IoRhgTgG0Byy$DLeNxNItzEKYAvxLEN9Wn6mlL0tBJbW2kSegAHILsdc=',NULL,0,'joaquin','','','joaquin02@gmail.com',0,1,'2025-09-29 03:09:19.656098'),(8,'pbkdf2_sha256$1000000$lMBMNAbFaaxppPwgqMyOIO$rMVZ6dT4S7LUo+DIK4J3d+hydVqyf2pwvj1ZeQVfD8Q=',NULL,0,'adus','','','damiancruz@gmail.com',0,1,'2025-10-25 06:02:28.698332'),(9,'pbkdf2_sha256$1000000$ooC37cf5MvuY7dxsy40UQy$RylEDGHd8rEZPPaupdQcs8YqN07U1lBUzgr7P6BUOfA=',NULL,0,'Agus','Agustin','Merlo','merloa061@gmail.com',0,1,'2025-11-11 02:38:16.518116');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `authtoken_token`
--

DROP TABLE IF EXISTS `authtoken_token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `authtoken_token` (
  `key` varchar(40) NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`key`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `authtoken_token_user_id_35299eff_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authtoken_token`
--

LOCK TABLES `authtoken_token` WRITE;
/*!40000 ALTER TABLE `authtoken_token` DISABLE KEYS */;
INSERT INTO `authtoken_token` VALUES ('402c4fb6ab30cde07fc9c026feffa27393af6546','2025-10-25 06:02:29.093360',8),('45f02a96032d0a9e1c37a9c4a2be549e2848da9f','2025-10-13 05:59:29.065711',1),('9f8cde70c4062afce990c786d115ff3cd0806fc8','2025-09-28 22:33:02.912165',5),('d32bc3eb4f85e054c4a04c89533c2a8308bdc9e2','2025-09-28 18:05:07.802522',4),('fb91b0c26c24c59e5696b5ce8925bf20a9f1b8c9','2025-09-28 23:06:54.125996',6),('fc4c1351084c1447e44bacc2d9e22d101f69aa1e','2025-11-11 02:44:56.411051',9),('fd354fc9dcbe12e2f0dc2af17cb148624b2f519a','2025-09-29 03:09:20.307836',7);
/*!40000 ALTER TABLE `authtoken_token` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbers_barber`
--

DROP TABLE IF EXISTS `barbers_barber`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barbers_barber` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `specialty` varchar(200) NOT NULL,
  `work_schedule` varchar(200) NOT NULL,
  `is_deleted` tinyint(1) NOT NULL,
  `deleted_at` datetime(6) DEFAULT NULL,
  `photo` varchar(100) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `barbers_barber_user_id_e2b0fddc_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbers_barber`
--

LOCK TABLES `barbers_barber` WRITE;
/*!40000 ALTER TABLE `barbers_barber` DISABLE KEYS */;
INSERT INTO `barbers_barber` VALUES (7,'Agustin Merlo','Fade','Lun-Sab 9a13 17a21',0,NULL,'barbers/133885586890518314.jpg','2025-11-11 02:38:17.228855','2025-11-25 03:18:29.426991',9);
/*!40000 ALTER TABLE `barbers_barber` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `barbers_turno`
--

DROP TABLE IF EXISTS `barbers_turno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `barbers_turno` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `cliente_nombre` varchar(120) NOT NULL,
  `cliente_telefono` varchar(30) NOT NULL,
  `servicio` varchar(120) NOT NULL,
  `fecha` date NOT NULL,
  `hora_inicio` time(6) NOT NULL,
  `hora_fin` time(6) NOT NULL,
  `estado` varchar(12) NOT NULL,
  `notas` longtext NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL,
  `barber_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `barbers_turno_barber_id_fecha_hora_inicio_eac7e0d0_uniq` (`barber_id`,`fecha`,`hora_inicio`),
  CONSTRAINT `barbers_turno_barber_id_a9766ea3_fk_barbers_barber_id` FOREIGN KEY (`barber_id`) REFERENCES `barbers_barber` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `barbers_turno`
--

LOCK TABLES `barbers_turno` WRITE;
/*!40000 ALTER TABLE `barbers_turno` DISABLE KEYS */;
/*!40000 ALTER TABLE `barbers_turno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja`
--

DROP TABLE IF EXISTS `caja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja` (
  `id_movimiento` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL,
  `tipo` enum('ingreso','egreso') NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `id_venta` int DEFAULT NULL,
  `id_compra` int DEFAULT NULL,
  PRIMARY KEY (`id_movimiento`),
  KEY `fk_caja_venta` (`id_venta`),
  KEY `fk_caja_compra` (`id_compra`),
  CONSTRAINT `fk_caja_compra` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_caja_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `caja_chk_1` CHECK ((`monto` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja`
--

LOCK TABLES `caja` WRITE;
/*!40000 ALTER TABLE `caja` DISABLE KEYS */;
INSERT INTO `caja` VALUES (1,'2025-08-18 12:00:00','ingreso',4500.00,1,NULL),(2,'2025-08-18 10:00:00','egreso',5000.00,NULL,1),(3,'2025-08-18 12:00:00','ingreso',4500.00,1,NULL),(4,'2025-08-18 10:00:00','egreso',5000.00,NULL,1),(5,'2025-08-18 01:40:49','ingreso',3000.00,3,NULL),(6,'2025-08-18 01:40:53','ingreso',2000.00,4,NULL),(7,'2025-08-18 01:41:45','egreso',20000.00,NULL,3);
/*!40000 ALTER TABLE `caja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_cierrecaja`
--

DROP TABLE IF EXISTS `caja_cierrecaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_cierrecaja` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `fecha_apertura` datetime(6) NOT NULL,
  `fecha_cierre` datetime(6) NOT NULL,
  `monto_inicial` decimal(10,2) NOT NULL,
  `total_ingresos_efectivo` decimal(10,2) NOT NULL,
  `total_egresos_efectivo` decimal(10,2) NOT NULL,
  `total_ingresos_otros` decimal(10,2) NOT NULL,
  `total_egresos_otros` decimal(10,2) NOT NULL,
  `efectivo_esperado` decimal(10,2) NOT NULL,
  `efectivo_real` decimal(10,2) NOT NULL,
  `diferencia` decimal(10,2) NOT NULL,
  `desglose_metodos` json NOT NULL,
  `desglose_categorias` json NOT NULL,
  `cantidad_movimientos` int NOT NULL,
  `cantidad_ingresos` int NOT NULL,
  `cantidad_egresos` int NOT NULL,
  `observaciones` longtext,
  `esta_cerrado` tinyint(1) NOT NULL,
  `usuario_apertura_id` int DEFAULT NULL,
  `usuario_cierre_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caja_cierre_fecha_c_4a05ed_idx` (`fecha_cierre` DESC),
  KEY `caja_cierrecaja_usuario_apertura_id_c702248b_fk_auth_user_id` (`usuario_apertura_id`),
  KEY `caja_cierrecaja_usuario_cierre_id_91b4cf06_fk_auth_user_id` (`usuario_cierre_id`),
  CONSTRAINT `caja_cierrecaja_usuario_apertura_id_c702248b_fk_auth_user_id` FOREIGN KEY (`usuario_apertura_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `caja_cierrecaja_usuario_cierre_id_91b4cf06_fk_auth_user_id` FOREIGN KEY (`usuario_cierre_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_cierrecaja`
--

LOCK TABLES `caja_cierrecaja` WRITE;
/*!40000 ALTER TABLE `caja_cierrecaja` DISABLE KEYS */;
/*!40000 ALTER TABLE `caja_cierrecaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_movimientocaja`
--

DROP TABLE IF EXISTS `caja_movimientocaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_movimientocaja` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `tipo` varchar(10) NOT NULL,
  `monto` decimal(10,2) NOT NULL,
  `descripcion` longtext,
  `metodo_pago` varchar(20) NOT NULL,
  `categoria` varchar(50) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time(6) NOT NULL,
  `comprobante` varchar(100) DEFAULT NULL,
  `es_editable` tinyint(1) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `barbero_id` int DEFAULT NULL,
  `cierre_caja_id` bigint DEFAULT NULL,
  `reserva_id` bigint DEFAULT NULL,
  `usuario_registro_id` int DEFAULT NULL,
  `turno_id` bigint DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caja_movimi_fecha_c_89b466_idx` (`fecha_creacion` DESC),
  KEY `caja_movimi_tipo_643bb4_idx` (`tipo`,`categoria`),
  KEY `caja_movimi_cierre__a591d2_idx` (`cierre_caja_id`),
  KEY `caja_movimi_turno_i_74a451_idx` (`turno_id`),
  KEY `caja_movimientocaja_barbero_id_6e347a8b_fk_auth_user_id` (`barbero_id`),
  KEY `caja_movimientocaja_reserva_id_8a1feed6_fk_reservas_reserva_id` (`reserva_id`),
  KEY `caja_movimientocaja_usuario_registro_id_4255117e_fk_auth_user_id` (`usuario_registro_id`),
  CONSTRAINT `caja_movimientocaja_barbero_id_6e347a8b_fk_auth_user_id` FOREIGN KEY (`barbero_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `caja_movimientocaja_cierre_caja_id_7d55bbf8_fk_caja_cier` FOREIGN KEY (`cierre_caja_id`) REFERENCES `caja_cierrecaja` (`id`),
  CONSTRAINT `caja_movimientocaja_reserva_id_8a1feed6_fk_reservas_reserva_id` FOREIGN KEY (`reserva_id`) REFERENCES `reservas_reserva` (`id`),
  CONSTRAINT `caja_movimientocaja_turno_id_f9bad641_fk_caja_turnocaja_id` FOREIGN KEY (`turno_id`) REFERENCES `caja_turnocaja` (`id`),
  CONSTRAINT `caja_movimientocaja_usuario_registro_id_4255117e_fk_auth_user_id` FOREIGN KEY (`usuario_registro_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_movimientocaja`
--

LOCK TABLES `caja_movimientocaja` WRITE;
/*!40000 ALTER TABLE `caja_movimientocaja` DISABLE KEYS */;
INSERT INTO `caja_movimientocaja` VALUES (1,'ingreso',1200.00,'Seña de reserva #16 - agus agys','mercadopago','sena_reserva','2025-11-17','15:26:16.926704','',0,'2025-11-17 18:26:16.926377','2025-11-17 18:26:16.926891',NULL,NULL,16,NULL,1),(2,'ingreso',1200.00,'Seña reserva #16 - agus agys - barba','seña','servicios','2025-11-17','15:26:16.940303','comprobantes/2025/10/27/fo_h6b3E14.jfif',0,'2025-11-17 18:26:16.940185','2025-11-17 18:26:16.940336',NULL,NULL,16,NULL,1),(3,'ingreso',1200.00,'Seña reserva #15 - fewf fewe - barba','seña','servicios','2025-11-17','15:33:22.952115','comprobantes/2025/10/27/completo_TBqqeoB.jfif',0,'2025-11-17 18:33:22.951855','2025-11-17 18:33:22.952166',NULL,NULL,15,NULL,1),(4,'ingreso',2800.00,'Saldo reserva #16 - agus agys - barba','efectivo','servicios','2025-11-17','15:33:47.102856','',0,'2025-11-17 18:33:47.102699','2025-11-17 18:33:47.102893',NULL,NULL,16,NULL,1),(5,'ingreso',2800.00,'Saldo reserva #15 - fewf fewe - barba','efectivo','servicios','2025-11-17','15:34:10.973922','',0,'2025-11-17 18:34:10.973771','2025-11-17 18:34:10.973961',NULL,NULL,15,NULL,1),(6,'ingreso',1200.00,'Seña reserva #14 - gre reg - barba','seña','servicios','2025-11-17','15:35:59.749552','comprobantes/2025/10/27/cejas.jfif',0,'2025-11-17 18:35:59.749309','2025-11-17 18:35:59.749606',NULL,NULL,14,NULL,2),(7,'egreso',3000.00,'Pago Barbero Agus','efectivo','sueldos','2025-11-17','15:37:20.112875','',0,'2025-11-17 18:37:20.112677','2025-11-17 18:37:20.112932',NULL,NULL,NULL,NULL,2),(8,'ingreso',1200.00,'Seña reserva #13 - feee eeee - barba','seña','servicios','2025-11-17','16:20:33.789694','comprobantes/2025/10/27/mov.png',0,'2025-11-17 19:20:33.789460','2025-11-17 19:20:33.789746',NULL,NULL,13,NULL,2),(9,'ingreso',2800.00,'Saldo reserva #14 - gre reg - barba','efectivo','servicios','2025-11-17','16:21:43.182481','',0,'2025-11-17 19:21:43.182141','2025-11-17 19:21:43.182563',NULL,NULL,14,NULL,2),(10,'ingreso',4500.00,'Seña reserva #26 - Bastian Gonzalez - corte + barba','seña','servicios','2025-11-17','17:11:55.375773','comprobantes/2025/11/17/images.png',0,'2025-11-17 20:11:55.375483','2025-11-17 20:11:55.375873',7,NULL,26,NULL,3),(11,'ingreso',10500.00,'Saldo reserva #26 - Bastian Gonzalez - corte + barba','efectivo','servicios','2025-11-17','17:13:23.409526','',0,'2025-11-17 20:13:23.409202','2025-11-17 20:13:23.409602',7,NULL,26,NULL,3),(12,'egreso',3000.00,'pago a barbero','efectivo','sueldos','2025-11-17','17:15:23.102414','',0,'2025-11-17 20:15:23.102131','2025-11-17 20:15:23.102490',NULL,NULL,NULL,NULL,3);
/*!40000 ALTER TABLE `caja_movimientocaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `caja_turnocaja`
--

DROP TABLE IF EXISTS `caja_turnocaja`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `caja_turnocaja` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `estado` varchar(10) NOT NULL,
  `fecha_apertura` datetime(6) NOT NULL,
  `monto_apertura` decimal(10,2) NOT NULL,
  `fecha_cierre` datetime(6) DEFAULT NULL,
  `observaciones_cierre` longtext,
  `efectivo_esperado` decimal(10,2) NOT NULL,
  `transferencia_esperada` decimal(10,2) NOT NULL,
  `mercadopago_esperado` decimal(10,2) NOT NULL,
  `seña_esperada` decimal(10,2) NOT NULL,
  `monto_cierre_efectivo` decimal(10,2) DEFAULT NULL,
  `monto_cierre_transferencia` decimal(10,2) DEFAULT NULL,
  `monto_cierre_mercadopago` decimal(10,2) DEFAULT NULL,
  `monto_cierre_seña` decimal(10,2) DEFAULT NULL,
  `diferencia_efectivo` decimal(10,2) NOT NULL,
  `diferencia_transferencia` decimal(10,2) NOT NULL,
  `diferencia_mercadopago` decimal(10,2) NOT NULL,
  `diferencia_seña` decimal(10,2) NOT NULL,
  `diferencia_total` decimal(10,2) NOT NULL,
  `total_ingresos_efectivo` decimal(10,2) NOT NULL,
  `total_egresos_efectivo` decimal(10,2) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_actualizacion` datetime(6) NOT NULL,
  `usuario_apertura_id` int DEFAULT NULL,
  `usuario_cierre_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `caja_turnocaja_usuario_apertura_id_d4871ba5_fk_auth_user_id` (`usuario_apertura_id`),
  KEY `caja_turnocaja_usuario_cierre_id_edca7c5a_fk_auth_user_id` (`usuario_cierre_id`),
  CONSTRAINT `caja_turnocaja_usuario_apertura_id_d4871ba5_fk_auth_user_id` FOREIGN KEY (`usuario_apertura_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `caja_turnocaja_usuario_cierre_id_edca7c5a_fk_auth_user_id` FOREIGN KEY (`usuario_cierre_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `caja_turnocaja`
--

LOCK TABLES `caja_turnocaja` WRITE;
/*!40000 ALTER TABLE `caja_turnocaja` DISABLE KEYS */;
INSERT INTO `caja_turnocaja` VALUES (1,'cerrado','2025-11-17 18:26:05.547395',2000.00,'2025-11-17 18:34:36.646718','',7600.00,0.00,1200.00,2400.00,7600.00,0.00,0.00,2400.00,0.00,0.00,-1200.00,0.00,-1200.00,5600.00,0.00,'2025-11-17 18:26:05.550604','2025-11-17 18:34:36.646874',NULL,NULL),(2,'cerrado','2025-11-17 18:35:56.578524',2000.00,'2025-11-17 19:22:31.036845','',1800.00,0.00,0.00,2400.00,1800.00,0.00,0.00,2400.00,0.00,0.00,0.00,0.00,0.00,2800.00,3000.00,'2025-11-17 18:35:56.581482','2025-11-17 19:22:31.036957',NULL,NULL),(3,'cerrado','2025-11-17 20:11:50.883374',10000.00,'2025-11-17 20:15:39.011465','',17500.00,0.00,0.00,4500.00,17500.00,0.00,0.00,4500.00,0.00,0.00,0.00,0.00,0.00,10500.00,3000.00,'2025-11-17 20:11:50.886971','2025-11-17 20:15:39.011642',NULL,NULL);
/*!40000 ALTER TABLE `caja_turnocaja` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `dni` varchar(20) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `correo` varchar(100) DEFAULT NULL,
  `direccion` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `dni` (`dni`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Juan','Arias','12345678','3875816783','yovnghta@gmail.com','Barrio Santa Cecilia'),(2,'Joaquin','Corbalan','87654321','3876149304','kako10@gmail.com','Rosario de lerma'),(4,'Ivan','Gutierrez','23456789','387654321','ivangut12@gmail.com','Zona Centro');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `compras`
--

DROP TABLE IF EXISTS `compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `compras` (
  `id_compra` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_proveedor` int NOT NULL,
  PRIMARY KEY (`id_compra`),
  KEY `fk_compra_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_compra_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `compras`
--

LOCK TABLES `compras` WRITE;
/*!40000 ALTER TABLE `compras` DISABLE KEYS */;
INSERT INTO `compras` VALUES (1,'2025-08-18 00:00:00',50000.00,1),(2,'2025-08-18 00:00:00',5000.00,1),(3,'2025-08-18 01:41:07',100000.00,1),(4,'2025-09-10 00:00:00',6000.00,1);
/*!40000 ALTER TABLE `compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detallecompras`
--

DROP TABLE IF EXISTS `detallecompras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detallecompras` (
  `id_det_compra` int NOT NULL AUTO_INCREMENT,
  `id_compra` int NOT NULL,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_det_compra`),
  KEY `fk_detcompra_compra` (`id_compra`),
  KEY `fk_detcompra_producto` (`id_producto`),
  CONSTRAINT `fk_detcompra_compra` FOREIGN KEY (`id_compra`) REFERENCES `compras` (`id_compra`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_detcompra_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `detallecompras_chk_1` CHECK ((`cantidad` > 0)),
  CONSTRAINT `detallecompras_chk_2` CHECK ((`precio_unitario` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detallecompras`
--

LOCK TABLES `detallecompras` WRITE;
/*!40000 ALTER TABLE `detallecompras` DISABLE KEYS */;
INSERT INTO `detallecompras` VALUES (1,1,1,5,1200.00),(2,1,2,3,5500.00),(3,2,1,2,4500.00),(4,2,3,1,7000.00);
/*!40000 ALTER TABLE `detallecompras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalleventas`
--

DROP TABLE IF EXISTS `detalleventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalleventas` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_venta` int NOT NULL,
  `id_producto` int DEFAULT NULL,
  `id_servicio` int DEFAULT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detventa_venta` (`id_venta`),
  KEY `fk_detventa_producto` (`id_producto`),
  KEY `fk_detventa_servicio` (`id_servicio`),
  CONSTRAINT `fk_detventa_producto` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_detventa_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_detventa_venta` FOREIGN KEY (`id_venta`) REFERENCES `ventas` (`id_venta`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `detalleventas_chk_1` CHECK ((`cantidad` > 0)),
  CONSTRAINT `detalleventas_chk_2` CHECK ((`precio_unitario` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalleventas`
--

LOCK TABLES `detalleventas` WRITE;
/*!40000 ALTER TABLE `detalleventas` DISABLE KEYS */;
INSERT INTO `detalleventas` VALUES (1,1,NULL,1,1,3000.00),(2,1,NULL,2,1,1500.00),(3,1,NULL,1,1,3000.00),(4,1,NULL,2,1,1500.00),(5,3,1,NULL,1,3000.00),(6,4,NULL,2,1,2000.00);
/*!40000 ALTER TABLE `detalleventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(8,'authtoken','token'),(9,'authtoken','tokenproxy'),(10,'barbers','barber'),(12,'barbers','servicio'),(11,'barbers','turno'),(19,'caja','cierrecaja'),(17,'caja','movimientocaja'),(20,'caja','turnocaja'),(5,'contenttypes','contenttype'),(18,'proveedores','proveedor'),(15,'reservas','reserva'),(14,'servicios','servicio'),(6,'sessions','session'),(7,'tasks','task'),(21,'usuarios','loginattempt'),(13,'usuarios','task'),(16,'usuarios','userprofile');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2025-09-27 23:56:21.902662'),(2,'auth','0001_initial','2025-09-27 23:56:22.446468'),(3,'admin','0001_initial','2025-09-27 23:56:22.579468'),(4,'admin','0002_logentry_remove_auto_add','2025-09-27 23:56:22.584466'),(5,'admin','0003_logentry_add_action_flag_choices','2025-09-27 23:56:22.590470'),(6,'contenttypes','0002_remove_content_type_name','2025-09-27 23:56:22.682905'),(7,'auth','0002_alter_permission_name_max_length','2025-09-27 23:56:22.739907'),(8,'auth','0003_alter_user_email_max_length','2025-09-27 23:56:22.763905'),(9,'auth','0004_alter_user_username_opts','2025-09-27 23:56:22.768901'),(10,'auth','0005_alter_user_last_login_null','2025-09-27 23:56:22.822727'),(11,'auth','0006_require_contenttypes_0002','2025-09-27 23:56:22.824602'),(12,'auth','0007_alter_validators_add_error_messages','2025-09-27 23:56:22.829598'),(13,'auth','0008_alter_user_username_max_length','2025-09-27 23:56:22.891629'),(14,'auth','0009_alter_user_last_name_max_length','2025-09-27 23:56:22.944753'),(15,'auth','0010_alter_group_name_max_length','2025-09-27 23:56:22.962810'),(16,'auth','0011_update_proxy_permissions','2025-09-27 23:56:22.968805'),(17,'auth','0012_alter_user_first_name_max_length','2025-09-27 23:56:23.031430'),(18,'sessions','0001_initial','2025-09-27 23:56:23.061817'),(19,'tasks','0001_initial','2025-09-27 23:56:23.078816'),(20,'authtoken','0001_initial','2025-09-28 17:08:32.301877'),(21,'authtoken','0002_auto_20160226_1747','2025-09-28 17:08:32.318752'),(22,'authtoken','0003_tokenproxy','2025-09-28 17:08:32.321408'),(23,'authtoken','0004_alter_tokenproxy_options','2025-09-28 17:08:32.326274'),(24,'barbers','0001_initial','2025-10-10 06:23:13.558718'),(25,'barbers','0002_barber_photo','2025-10-13 03:38:43.932296'),(26,'barbers','0003_turno','2025-10-14 16:09:39.631391'),(27,'barbers','0002_barber_delete_servicio','2025-10-26 23:32:59.796425'),(28,'reservas','0001_initial','2025-10-26 23:33:10.486358'),(29,'reservas','0002_reserva_delete_servicio','2025-10-26 23:33:10.524367'),(30,'servicios','0001_initial','2025-10-26 23:33:10.548372'),(31,'servicios','0002_alter_servicio_options_remove_servicio_imagen_and_more','2025-10-26 23:33:10.831696'),(32,'usuarios','0001_initial','2025-10-26 23:33:10.859702'),(33,'barbers','0003_add_timestamps','2025-10-27 01:57:58.044466'),(34,'barbers','0004_alter_barber_created_at_alter_barber_updated_at','2025-10-27 03:25:28.607837'),(35,'barbers','0005_barber_user','2025-11-10 02:05:23.634688'),(36,'reservas','0002_remove_reserva_barbero_id_reserva_barbero_and_more','2025-11-10 02:06:59.467407'),(37,'reservas','0003_reserva_fecha_pago_reserva_metodo_pago_and_more','2025-11-10 02:06:59.538424'),(38,'usuarios','0002_userprofile_delete_task','2025-11-10 02:08:16.036606'),(40,'proveedores','0001_initial','2025-11-12 03:45:57.464505'),(41,'proveedores','0002_remove_proveedor_proveedores_active_764457_idx_and_more','2025-11-12 03:45:57.590802'),(42,'proveedores','0003_proveedor_direccion_alter_proveedor_tipo','2025-11-12 03:45:57.630607'),(43,'proveedores','0004_alter_proveedor_tipo','2025-11-12 03:45:57.633751'),(44,'reservas','0004_reserva_estado_pago_alter_reserva_comprobante_and_more','2025-11-12 05:35:09.820519'),(50,'caja','0001_initial','2025-11-17 18:24:53.084087'),(51,'servicios','0003_servicio_imagen','2025-11-24 21:07:32.589184'),(52,'usuarios','0003_loginattempt_alter_userprofile_options_and_more','2025-11-25 02:08:09.314288');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('22bljuq7keiiis1leezvbuoemnk41ssa','.eJxVjDsOwjAQBe_iGln-JGtMSZ8zWLvrBQeQI8VJhbg7iZQC2pl5760SrktJa5M5jVldlFWnX0bIT6m7yA-s90nzVJd5JL0n-rBND1OW1_Vo_w4KtrKtO0sC6DiQILCJ2UZwHjpjHHpiEN6o-IgQAgZgZJvjjdn1_dkQefX5Au6nOEs:1v2uPN:XoN_4CzSr-oIBfBnimHBJsrmdAa_L1rYQHHMguO6c9Q','2025-10-12 16:37:57.290116'),('dzglxcydv0svc1nyzpbscpv0xkjimyxj','.eJxVjDsOwjAQBe_iGln-JGtMSZ8zWLvrBQeQI8VJhbg7iZQC2pl5760SrktJa5M5jVldlFWnX0bIT6m7yA-s90nzVJd5JL0n-rBND1OW1_Vo_w4KtrKtO0sC6DiQILCJ2UZwHjpjHHpiEN6o-IgQAgZgZJvjjdn1_dkQefX5Au6nOEs:1v8BaE:p4pEWuu3rotMe7T-5EjQkCChr4tTcLWVtpQBhtKWtYM','2025-10-27 05:58:58.735702');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `id_empleado` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `especialidad` varchar(100) DEFAULT NULL,
  `rol` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_empleado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Agustin','Merlo','Mullet','Barbero'),(2,'Fabricio','GOnzazlez','Taper Fade','Barbero'),(3,'Alejandra','Guzman',NULL,'Recepcionista'),(4,'Juan Pablo','Arias',NULL,'Administrador');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `precio` decimal(10,2) NOT NULL,
  `id_proveedor` int DEFAULT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `fk_producto_proveedor` (`id_proveedor`),
  CONSTRAINT `fk_producto_proveedor` FOREIGN KEY (`id_proveedor`) REFERENCES `proveedores` (`id_proveedor`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `chk_producto_stock_nonneg` CHECK ((`stock` >= 0)),
  CONSTRAINT `productos_chk_1` CHECK ((`precio` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Shampoo',49,3500.00,1),(2,'Crema de afeitar',30,2500.00,1),(3,'Polvo Texturizante',50,8000.00,1);
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `id_proveedor` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `contacto` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_proveedor`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Rafeeli','CLaudia','387-555-1234'),(2,'Redfel','Raul Perez','3875551234'),(3,'Clippers','Rodrigo Amaya','3876000000');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `proveedores_proveedor`
--

DROP TABLE IF EXISTS `proveedores_proveedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores_proveedor` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `company` varchar(200) NOT NULL,
  `email` varchar(254) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `notes` longtext NOT NULL,
  `active` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `tipo` varchar(50) NOT NULL,
  `direccion` varchar(300) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores_proveedor`
--

LOCK TABLES `proveedores_proveedor` WRITE;
/*!40000 ALTER TABLE `proveedores_proveedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `proveedores_proveedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservas_reserva`
--

DROP TABLE IF EXISTS `reservas_reserva`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservas_reserva` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre_cliente` varchar(100) NOT NULL,
  `apellido_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(20) NOT NULL,
  `email_cliente` varchar(254) NOT NULL,
  `fecha` date NOT NULL,
  `horario` time(6) NOT NULL,
  `barbero_nombre` varchar(100) NOT NULL,
  `servicios` json NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `seña` decimal(10,2) NOT NULL,
  `duracion_total` int NOT NULL,
  `comprobante` varchar(100) DEFAULT NULL,
  `estado` varchar(20) NOT NULL,
  `fecha_creacion` datetime(6) NOT NULL,
  `fecha_confirmacion` datetime(6) DEFAULT NULL,
  `notas_admin` longtext NOT NULL,
  `barbero_id` int DEFAULT NULL,
  `fecha_pago` datetime(6) DEFAULT NULL,
  `metodo_pago` varchar(20) NOT NULL,
  `saldo_pagado` decimal(10,2) NOT NULL,
  `estado_pago` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `reservas_reserva_barbero_id_20fe23b5_fk_auth_user_id` (`barbero_id`),
  KEY `reservas_re_fecha_9c6f76_idx` (`fecha`,`barbero_id`),
  KEY `reservas_re_email_c_b373e7_idx` (`email_cliente`),
  KEY `reservas_re_estado_7c17e1_idx` (`estado`),
  KEY `reservas_re_estado__fac4b1_idx` (`estado_pago`),
  CONSTRAINT `reservas_reserva_barbero_id_20fe23b5_fk_auth_user_id` FOREIGN KEY (`barbero_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservas_reserva`
--

LOCK TABLES `reservas_reserva` WRITE;
/*!40000 ALTER TABLE `reservas_reserva` DISABLE KEYS */;
INSERT INTO `reservas_reserva` VALUES (9,'fabri','brr','+544554567543','favrt6@gmail.com','2025-10-31','14:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}, {\"id\": 3, \"activo\": true, \"nombre\": \"corte\", \"precio\": \"10000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"duracion_display\": \"60 min\"}, {\"id\": 2, \"activo\": true, \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',29000.00,8700.00,180,'comprobantes/2025/10/27/fo.jfif','confirmada','2025-10-27 03:43:41.110456','2025-10-27 03:44:22.317252','',NULL,'2025-11-14 05:22:41.747000','efectivo',20300.00,'pagado'),(10,'juas','adw','123233332','aeee@gmail.com','2025-10-31','11:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/completo.jfif','confirmada','2025-10-27 04:00:06.570872','2025-10-27 04:32:07.351240','',NULL,'2025-11-14 05:21:06.427000','efectivo',2800.00,'pagado'),(11,'jhas','adsss','433434434','gaa@gmail.com','2025-10-30','14:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/fo_zXORzto.jfif','confirmada','2025-10-27 04:34:07.629195','2025-10-27 04:34:19.490169','',NULL,'2025-11-14 05:13:31.738000','efectivo',2800.00,'pagado'),(12,'aleeee','fef','32433434343','adw@gmail.com','2025-10-30','10:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/44.png','pendiente','2025-10-27 05:00:39.444266',NULL,'',NULL,NULL,'',0.00,'sin_pagar'),(13,'feee','eeee','2423434443','asdd@gmail.com','2025-10-30','11:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/mov.png','confirmada','2025-10-27 05:06:52.128681','2025-11-17 19:20:33.737325','',NULL,NULL,'',0.00,'parcial'),(14,'gre','reg','5454545532','grgg@gmail.com','2025-10-30','18:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/cejas.jfif','confirmada','2025-10-27 05:19:06.546359','2025-11-17 18:35:59.728794','',NULL,'2025-11-17 19:21:43.103000','efectivo',2800.00,'pagado'),(15,'fewf','fewe','32342443432','few@gmail.com','2025-11-01','11:00:00.000000','FAbri','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/completo_TBqqeoB.jfif','confirmada','2025-10-27 06:12:06.583666','2025-11-17 18:33:22.900786','',NULL,'2025-11-17 18:34:10.931000','efectivo',2800.00,'pagado'),(16,'agus','agys','232323233','agu@gmail.com','2025-11-01','09:00:00.000000','juan','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/fo_h6b3E14.jfif','confirmada','2025-10-27 06:19:43.081242','2025-11-17 18:26:16.870838','',NULL,'2025-11-17 18:33:46.997000','efectivo',2800.00,'pagado'),(17,'ahhh','asass','32334343443','ajjnsj@gmail.com','2025-11-01','10:00:00.000000','juan','[{\"id\": 4, \"activo\": true, \"nombre\": \"barba\", \"precio\": \"4000.00\", \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,1200.00,60,'comprobantes/2025/10/27/Screenshot_5.png','confirmada','2025-10-27 06:21:38.756874','2025-10-29 01:53:24.833816','',NULL,'2025-11-14 04:52:56.051000','efectivo',2800.00,'pagado'),(18,'JUAN','OES','123133232','ALE@gmail.com','2025-10-31','09:00:00.000000','juan','[{\"id\": 3, \"activo\": true, \"nombre\": \"corte\", \"precio\": \"10000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"duracion_display\": \"60 min\"}]',10000.00,3000.00,60,'comprobantes/2025/10/28/fo.jfif','confirmada','2025-10-29 01:55:00.346300','2025-10-29 01:55:15.253683','',NULL,'2025-11-14 04:20:17.814000','efectivo',7000.00,'pagado'),(19,'hoak','juaf','3873233232','damiancruz@gmail.com','2025-11-10','10:00:00.000000','juan','[{\"id\": 4, \"activo\": true, \"imagen\": \"\", \"nombre\": \"barba\", \"precio\": \"4000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:09:15.391662-03:00\", \"duracion_display\": \"60 min\"}]',4000.00,2400.00,60,'comprobantes/2025/11/09/web1.png','confirmada','2025-11-10 02:19:37.280478','2025-11-10 02:20:28.353453','',6,'2025-11-14 04:15:29.151000','efectivo',1600.00,'pagado'),(20,'joaquin','corbalan','+54 9 387 614 9304','kakex@gmail.com','2025-11-12','19:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/10/Imagen2.png','confirmada','2025-11-11 02:51:05.737334','2025-11-12 14:45:15.447570','',7,'2025-11-14 04:07:12.871000','efectivo',10500.00,'pagado'),(21,'Bastian','Gonzalez','+54 9 387 614 9304','Bastian123@gmail.com','2025-11-12','21:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/12/Imagen1.png','confirmada','2025-11-12 05:15:18.812601','2025-11-12 05:16:20.249290','',7,'2025-11-12 05:36:14.041000','efectivo',10500.00,'pagado'),(22,'Bastian','Gonzalez','+54 9 387 614 9304','Bastian123@gmail.com','2025-11-13','11:00:00.000000','Agustin Merlo','[{\"id\": 3, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte\", \"precio\": \"10000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:08:54.042171-03:00\", \"duracion_display\": \"60 min\"}]',10000.00,3000.00,60,'comprobantes/2025/11/12/Imagen3.png','confirmada','2025-11-12 14:38:43.919129','2025-11-12 14:39:05.823717','',7,'2025-11-12 14:39:39.621000','efectivo',7000.00,'pagado'),(23,'Bastian','Gonzalez','+54 9 387 614 9304','Bastian123@gmail.com','2025-11-14','12:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/14/Imagen3.png','rechazada','2025-11-14 05:00:55.284899',NULL,'dadawd',7,NULL,'',0.00,'parcial'),(24,'Bastian','Gonzalez','+54 9 387 614 9304','Bastian123@gmail.com','2025-11-14','12:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/14/Imagen2.png','confirmada','2025-11-14 05:03:24.595761','2025-11-14 05:03:45.360616','',7,'2025-11-14 05:04:43.895000','efectivo',10500.00,'pagado'),(25,'Bastian','Gonzalez','+54 9 387 614 9304','Bastian123@gmail.com','2025-11-14','20:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/14/Imagen3_iEjgtHg.png','confirmada','2025-11-14 11:26:25.628537','2025-11-14 11:27:38.553905','',7,'2025-11-14 11:30:15.747000','efectivo',10500.00,'pagado'),(26,'Bastian','Gonzalez','3874631483','Bastian123@gmail.com','2025-11-18','21:00:00.000000','Agustin Merlo','[{\"id\": 2, \"activo\": true, \"imagen\": \"\", \"nombre\": \"corte + barba\", \"precio\": \"15000.00\", \"cantidad\": 1, \"duracion\": \"60 min\", \"creado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"descripcion\": \"\", \"actualizado_en\": \"2025-10-26T22:04:05.695896-03:00\", \"duracion_display\": \"60 min\"}]',15000.00,4500.00,60,'comprobantes/2025/11/17/images.png','confirmada','2025-11-17 19:57:09.164142','2025-11-17 20:11:55.360466','',7,'2025-11-17 20:13:23.317000','efectivo',10500.00,'pagado');
/*!40000 ALTER TABLE `reservas_reserva` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `id_empleado` int NOT NULL,
  `id_tipo_rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `fk_roles_empleado` (`id_empleado`),
  CONSTRAINT `fk_roles_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,1,'Barbero'),(2,2,'Barbero'),(3,3,'Recepcionista'),(4,4,'Administrador');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rolesxempleados`
--

DROP TABLE IF EXISTS `rolesxempleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rolesxempleados` (
  `id_rolxempleado` int NOT NULL AUTO_INCREMENT,
  `id_rol` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_tipo_rol` varchar(100) NOT NULL,
  PRIMARY KEY (`id_rolxempleado`),
  KEY `fk_rolesxempleados_rol` (`id_rol`),
  KEY `fk_rolesxempleados_empleado` (`id_empleado`),
  CONSTRAINT `fk_rolesxempleados_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_rolesxempleados_rol` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rolesxempleados`
--

LOCK TABLES `rolesxempleados` WRITE;
/*!40000 ALTER TABLE `rolesxempleados` DISABLE KEYS */;
INSERT INTO `rolesxempleados` VALUES (1,1,1,'Barbero'),(2,2,2,'Barbero'),(3,3,3,'Recepcionista'),(4,4,4,'Administrador');
/*!40000 ALTER TABLE `rolesxempleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios`
--

DROP TABLE IF EXISTS `servicios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id_servicio`),
  CONSTRAINT `servicios_chk_1` CHECK ((`precio` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios`
--

LOCK TABLES `servicios` WRITE;
/*!40000 ALTER TABLE `servicios` DISABLE KEYS */;
INSERT INTO `servicios` VALUES (1,'Corte de pelo',10000.00),(2,'Afeitado completo',8000.00),(3,'Arreglo de barba',1500.00);
/*!40000 ALTER TABLE `servicios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicios_servicio`
--

DROP TABLE IF EXISTS `servicios_servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicios_servicio` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `duracion` int NOT NULL,
  `activo` tinyint(1) NOT NULL,
  `actualizado_en` datetime(6) NOT NULL,
  `creado_en` datetime(6) NOT NULL,
  `descripcion` longtext,
  `imagen` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicios_servicio`
--

LOCK TABLES `servicios_servicio` WRITE;
/*!40000 ALTER TABLE `servicios_servicio` DISABLE KEYS */;
INSERT INTO `servicios_servicio` VALUES (2,'corte + barba',15000.00,60,1,'2025-11-24 21:29:08.327218','2025-10-27 01:04:05.695896','','servicios/WhatsApp_Image_2025-11-24_at_18_hliHu0Y.22.35.jpeg'),(3,'corte',10000.00,45,1,'2025-11-25 01:18:46.003588','2025-10-27 01:08:54.042171','','servicios/WhatsApp_Image_2025-11-24_at_18_56bfDDC.22.36_1.jpeg'),(4,'barba',4000.00,20,1,'2025-11-25 01:19:02.152585','2025-10-27 01:09:15.391662','','servicios/images.jpg'),(5,'Global',70000.00,180,1,'2025-11-24 21:36:11.859474','2025-11-24 21:23:41.124306','','servicios/WhatsApp_Image_2025-11-24_at_18.22.36.jpeg'),(6,'Tintura Mechas',50000.00,90,1,'2025-11-24 21:40:13.726249','2025-11-24 21:30:45.740551','','servicios/WhatsApp_Image_2025-11-24_at_18.42.54.jpeg'),(7,'Perfilado de cejas',3000.00,20,1,'2025-11-24 21:36:36.496871','2025-11-24 21:32:43.234803','','servicios/WhatsApp_Image_2025-11-24_at_18_IEm10ym.22.36_2.jpeg');
/*!40000 ALTER TABLE `servicios_servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks_task`
--

DROP TABLE IF EXISTS `tasks_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tasks_task` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `title` varchar(200) NOT NULL,
  `description` longtext NOT NULL,
  `done` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks_task`
--

LOCK TABLES `tasks_task` WRITE;
/*!40000 ALTER TABLE `tasks_task` DISABLE KEYS */;
/*!40000 ALTER TABLE `tasks_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `turnos`
--

DROP TABLE IF EXISTS `turnos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `turnos` (
  `id_turno` int NOT NULL AUTO_INCREMENT,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `estado` enum('confirmado','atendido','no-show') NOT NULL DEFAULT 'confirmado',
  `seña` decimal(10,2) DEFAULT '0.00',
  `monto` decimal(10,2) DEFAULT '0.00',
  `id_cliente` int NOT NULL,
  `id_empleado` int NOT NULL,
  `id_servicio` int NOT NULL,
  PRIMARY KEY (`id_turno`),
  KEY `fk_turno_cliente` (`id_cliente`),
  KEY `fk_turno_empleado` (`id_empleado`),
  KEY `fk_turno_servicio` (`id_servicio`),
  CONSTRAINT `fk_turno_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_turno_empleado` FOREIGN KEY (`id_empleado`) REFERENCES `empleados` (`id_empleado`) ON DELETE RESTRICT ON UPDATE CASCADE,
  CONSTRAINT `fk_turno_servicio` FOREIGN KEY (`id_servicio`) REFERENCES `servicios` (`id_servicio`) ON DELETE RESTRICT ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `turnos`
--

LOCK TABLES `turnos` WRITE;
/*!40000 ALTER TABLE `turnos` DISABLE KEYS */;
INSERT INTO `turnos` VALUES (1,'2025-08-18','10:00:00','confirmado',0.00,0.00,1,1,1),(2,'2025-08-18','11:00:00','confirmado',0.00,0.00,2,2,3),(3,'2025-09-10','18:00:00','confirmado',0.00,0.00,1,2,1);
/*!40000 ALTER TABLE `turnos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_loginattempt`
--

DROP TABLE IF EXISTS `usuarios_loginattempt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_loginattempt` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(254) NOT NULL,
  `failed_attempts` int NOT NULL,
  `last_attempt` datetime(6) NOT NULL,
  `blocked_until` datetime(6) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_loginattempt`
--

LOCK TABLES `usuarios_loginattempt` WRITE;
/*!40000 ALTER TABLE `usuarios_loginattempt` DISABLE KEYS */;
INSERT INTO `usuarios_loginattempt` VALUES (1,'bastian123@gmail.com',0,'2025-11-25 04:28:13.190252',NULL),(2,'fabrigonzalez081@gmail.com',0,'2025-11-25 05:50:51.013884',NULL);
/*!40000 ALTER TABLE `usuarios_loginattempt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios_userprofile`
--

DROP TABLE IF EXISTS `usuarios_userprofile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios_userprofile` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `role` varchar(20) NOT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `direccion` longtext,
  `fecha_nacimiento` date DEFAULT NULL,
  `activo` tinyint(1) NOT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  CONSTRAINT `usuarios_userprofile_user_id_e7be0e00_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios_userprofile`
--

LOCK TABLES `usuarios_userprofile` WRITE;
/*!40000 ALTER TABLE `usuarios_userprofile` DISABLE KEYS */;
INSERT INTO `usuarios_userprofile` VALUES (1,'barbero','','',NULL,1,'2025-11-11 02:38:17.217850','2025-11-25 03:18:29.440983',9);
/*!40000 ALTER TABLE `usuarios_userprofile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_venta` int NOT NULL AUTO_INCREMENT,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `total` decimal(10,2) NOT NULL DEFAULT '0.00',
  `id_cliente` int DEFAULT NULL,
  PRIMARY KEY (`id_venta`),
  KEY `fk_venta_cliente` (`id_cliente`),
  CONSTRAINT `fk_venta_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `clientes` (`id_cliente`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2025-08-18 00:00:00',4500.00,1),(2,'2025-08-18 00:00:00',4500.00,1),(3,'2025-08-18 01:40:49',3000.00,1),(4,'2025-08-18 01:40:53',2000.00,2);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `vistabarberosturnos`
--

DROP TABLE IF EXISTS `vistabarberosturnos`;
/*!50001 DROP VIEW IF EXISTS `vistabarberosturnos`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `vistabarberosturnos` AS SELECT 
 1 AS `id_turno`,
 1 AS `fecha`,
 1 AS `hora`,
 1 AS `estado`,
 1 AS `cliente_nombre`,
 1 AS `cliente_apellido`,
 1 AS `barbero_nombre`,
 1 AS `barbero_apellido`,
 1 AS `servicio_nombre`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `vistabarberosturnos`
--

/*!50001 DROP VIEW IF EXISTS `vistabarberosturnos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = cp850 */;
/*!50001 SET character_set_results     = cp850 */;
/*!50001 SET collation_connection      = cp850_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vistabarberosturnos` AS select `t`.`id_turno` AS `id_turno`,`t`.`fecha` AS `fecha`,`t`.`hora` AS `hora`,`t`.`estado` AS `estado`,`c`.`nombre` AS `cliente_nombre`,`c`.`apellido` AS `cliente_apellido`,`e`.`nombre` AS `barbero_nombre`,`e`.`apellido` AS `barbero_apellido`,`s`.`descripcion` AS `servicio_nombre` from (((`turnos` `t` join `clientes` `c` on((`t`.`id_cliente` = `c`.`id_cliente`))) join `empleados` `e` on((`t`.`id_empleado` = `e`.`id_empleado`))) join `servicios` `s` on((`t`.`id_servicio` = `s`.`id_servicio`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-11-25 21:33:10
