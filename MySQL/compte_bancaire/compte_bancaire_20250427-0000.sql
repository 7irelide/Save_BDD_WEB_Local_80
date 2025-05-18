-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: compte_bancaire
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `automatic_payments`
--

DROP TABLE IF EXISTS `automatic_payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `automatic_payments` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `magasin` varchar(255) NOT NULL,
  `montant` decimal(10,2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `frequency` enum('monthly','quarterly','yearly') NOT NULL DEFAULT 'monthly',
  `payment_day` int(11) NOT NULL DEFAULT 1,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `first_payment_date` date DEFAULT curdate(),
  `manual_type` enum('loisir','vie_courante') DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `automatic_payments_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `automatic_payments_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `automatic_payments`
--

LOCK TABLES `automatic_payments` WRITE;
/*!40000 ALTER TABLE `automatic_payments` DISABLE KEYS */;
INSERT INTO `automatic_payments` VALUES
(7,1,'Assurance maison + Assurance Voiture','PREL DE MATMUT ROUEN',114.81,524,'monthly',7,1,'2025-03-29 23:33:44','2025-03-30','vie_courante'),
(8,1,'Credit la banque postale','PREL DE LA BANQUE POSTALE C',80.00,624,'monthly',7,1,'2025-03-29 23:37:09','2025-03-30','vie_courante'),
(9,1,'GMPA','PREL DE ALLIANZ VIE',7.00,524,'monthly',1,1,'2025-03-29 23:39:14','2025-03-30','vie_courante'),
(10,1,'APPLE - montre + assurance TEL + Cloude','PREL DE PAYPAL EUROPE S.A.R',11.99,524,'monthly',30,1,'2025-03-29 23:42:29','2025-03-30','vie_courante'),
(11,1,'CREDIT VAPOTEUR','PREL DE PAYPAL (EUROPE) S.A',39.85,19,'monthly',28,1,'2025-03-29 23:46:21','2025-03-30','loisir'),
(12,1,'Loyer','PRELEVEMENT DE CITYA MARINE PDB',702.23,549,'monthly',10,1,'2025-03-30 00:00:53','2025-03-30','vie_courante'),
(13,1,'Engy','PRELEVEMENT DE ENGIE S.A.',183.81,2,'monthly',19,1,'2025-03-30 00:03:19','2025-03-30','vie_courante'),
(15,1,'Prélèvement Loisir Mensuel','Club Loisirs',50.00,6,'monthly',30,1,'2025-03-30 00:36:26','2025-03-30',NULL);
/*!40000 ALTER TABLE `automatic_payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `type` enum('loisir','vie_courante','revenu') DEFAULT NULL,
  `description` text DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=636 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES
(2,'Électricité','vie_courante','Facture d\'électricité'),
(4,'Alimentation','vie_courante','Courses alimentaires'),
(6,'Restaurant','loisir','Sorties au restaurant'),
(7,'Cinéma','loisir','Sorties au cinéma'),
(8,'Shopping','loisir','Achats divers'),
(9,'Sport','loisir','Activités sportives'),
(10,'Voyage','loisir','Frais de voyage'),
(12,'famille','loisir',NULL),
(13,'Salaire','revenu',NULL),
(14,'Virement','revenu',NULL),
(15,'Remboursement','revenu',NULL),
(16,'Allocation','revenu',NULL),
(17,'Prime','revenu',NULL),
(18,'Intérêts','vie_courante',NULL),
(19,'Autre revenu','vie_courante',NULL),
(524,'Assurence','vie_courante',NULL),
(525,'Internet','vie_courante',NULL),
(526,'Téléphone portable','vie_courante',NULL),
(527,'Mutuel','vie_courante',NULL),
(549,'Loyer','vie_courante',NULL),
(550,'Chèque','vie_courante',NULL),
(624,'Credit','vie_courante',NULL),
(628,'PAYE','revenu',NULL),
(629,'cheque','revenu',NULL),
(630,'cheque','revenu',NULL),
(631,'Téléphone','vie_courante',NULL),
(632,'Assurance','vie_courante',NULL),
(633,'Santé','vie_courante',NULL),
(634,'sigarette electronique','loisir',NULL),
(635,'VOYAGE','loisir',NULL);
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `libelle` varchar(255) NOT NULL,
  `magasin` varchar(100) DEFAULT NULL,
  `montant` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `automatic_payment_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `category_id` (`category_id`),
  KEY `user_id` (`user_id`),
  KEY `transactions_automatic_payment_id_fk` (`automatic_payment_id`),
  CONSTRAINT `transactions_automatic_payment_id_fk` FOREIGN KEY (`automatic_payment_id`) REFERENCES `automatic_payments` (`id`) ON DELETE SET NULL,
  CONSTRAINT `transactions_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`),
  CONSTRAINT `transactions_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
INSERT INTO `transactions` VALUES
(26,'2025-03-29','Salaire REELIT','',1550.00,13,1,'2025-03-29 22:52:37',NULL),
(28,'2025-03-30','APPLE - montre + assurance TEL + Cloude','PREL DE PAYPAL EUROPE S.A.R',-11.99,524,1,'2025-03-29 23:51:43',10),
(29,'2025-03-30','Découvvert','Découvvert',-70.79,624,1,'2025-03-30 00:07:41',NULL),
(34,'2025-03-30','Prélèvement Loisir Mensuel','Club Loisirs',-50.00,6,1,'2025-03-30 00:39:40',15);
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'admin','$2y$10$Sb/kktJDE8kZ96zI5clKzuQwzx4hrAkxRACYRhjPA0kxhdigNebEi','2025-03-29 18:24:42');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-27  0:00:01
