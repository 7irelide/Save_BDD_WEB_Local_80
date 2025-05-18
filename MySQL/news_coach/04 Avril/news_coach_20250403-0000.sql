-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: news_coach
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
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `setting_key` varchar(50) NOT NULL,
  `setting_value` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `setting_key` (`setting_key`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES
(1,'chatbot_enabled','1','Activer le chatbot pour tous les utilisateurs (1 = activé, 0 = désactivé)','2025-03-15 17:35:10','2025-03-29 08:48:40');
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  `adresse` varchar(255) NOT NULL,
  `ville` varchar(100) DEFAULT NULL,
  `code_postal` varchar(10) NOT NULL,
  `poids` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('admin','user') NOT NULL DEFAULT 'user',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `donnees_medicales` text DEFAULT NULL COMMENT 'Informations médicales importantes',
  `allergies` text DEFAULT NULL COMMENT 'Allergies alimentaires ou autres',
  `aliments_non_aimes` text DEFAULT NULL COMMENT 'Aliments que la personne n''aime pas',
  `repas1` text DEFAULT NULL,
  `repas2` text DEFAULT NULL,
  `repas3` text DEFAULT NULL,
  `etape_repas` enum('etape1','etape2','etape3') DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'Fabien','Lieutaud','06 23 14 59 50','11 rue Alphonce Daudet','','13180',116,'lieutaud.fabien@gmail.com','$2y$10$wKTCUbm/rhLSCwStosA2vuFSysHtT6066tRDHIwkXhk48lAtlyBa.','user','2025-03-08 13:45:53','2025-03-31 10:26:23',1,'','','','Matin \r\n4 œufs entier \r\n2 tranches pain complet \r\n1 demi avocat \r\nFruit rouge ou kiwi \r\nPoignet d\'amande noix noix de cajou noix du Brésil \r\n2 methadryne \r\n\r\n\r\n\r\nCollation\r\n1 whey \r\nPoigner d\'amande ou oléagineux \r\n\r\nMidi \r\nBlanc d\'œuf 6 ou poisson blanc 250gr ou 200 poulet \r\nOu 180gr saumon \r\nLegume vert a volonté champignon ratatouille \r\n1 cuillère à soupe d\'huile de colza \r\n300gr  de lentille ou poids chiche cuit ou flageolets ou boulgour quinoa semoule \r\nOu 150gr pâtes ou riz complète \r\n1 tisane grenade hibiscus\r\n1 compote sans sucre \r\n2 omega 3 \r\n2 methadryne \r\n\r\nCollation \r\nPomme ou poire \r\nPoignée d\'amande \r\n1 whey \r\n\r\nSoir \r\n200/300gr poisson blanc ou 180 gr poulet \r\nFilet de citron \r\n1 cuillère à café d\'huile d\'olive \r\nasperge ou  andive ou poireau ou mache ou laitue courgette ratatouille soupe maison brocolis champignon epinard salsifie aubergine \r\n2 omega 3 \r\n100gr asperge','Matin \r\n\r\n\r\n\r\n150gr riz complet cuit ou pâtes complète \r\n\r\n3 œufs dont 1 jaune 2 blanc \r\n\r\nKiwi ou orange \r\n\r\n1 thé vert \r\n\r\n1 azinc\r\n\r\n\r\n\r\nOption possible \r\n\r\n\r\n\r\n1 ou 2 Wrap blé complet saumon ou poulet + demi avocat (2 x par semaine ) fromage de chèvre . \r\n\r\nKiwi orange \r\n\r\n1 thé vert \r\n\r\n1 azinc\r\n\r\n\r\n\r\n\r\n\r\nOption possible \r\n\r\n\r\n\r\n200gr de skyr \r\n\r\n100gr de flocon d’avoine \r\n\r\n1 demi banane 1 cuillère à soupe de graine de chia\r\n\r\nKiwi orange \r\n\r\n1 thé vert \r\n\r\n1 azinc\r\n\r\n\r\n\r\n+ 2 methadryne  pour tout type de diet \r\n\r\n\r\n\r\n10h \r\n\r\n\r\n\r\n1 pomme\r\n\r\n1whey \r\n\r\nUne poignée d’amande \r\n\r\n\r\n\r\nRepas du midi \r\n\r\n\r\n\r\nPoulet 180g\r\n\r\nPoisson gras 150gr\r\n\r\nPoisson blanc 200gr \r\n\r\nOu omelette 4 œuf 2 jaune 2 blanc \r\n\r\n\r\n\r\nUne portion 150gr 200gr cuit de riz pâte pomme de terre patate douce \r\n\r\nLentille poids chiche quinoa maïs semoule haricot rouge flageolet \r\n\r\n\r\n\r\nUne portion de légume vert \r\n\r\n\r\n\r\nCourgette aubergine ratatouille haricot vert mâche champignons épinard brocolis \r\n\r\n\r\n\r\n1cuillere a soupe d’huile d’olive \r\n\r\n1 compote allégé \r\n\r\n\r\n\r\n\r\n\r\n16h17h \r\n\r\n\r\n\r\n200gr d’haricot vert ou courgette brocolis \r\n\r\n120gr de poulet \r\n\r\n1 fromage blanc \r\n\r\n\r\n\r\nOu 1 whey \r\n\r\nPomme poire \r\n\r\nPoignet d’amande \r\n\r\nThé vert \r\n\r\n\r\n\r\nSoir \r\n\r\n\r\n\r\nPoisson blanc 200gr ou 4 blanc d’œufs \r\n\r\nRatatouille ou légume vert à volonté \r\n\r\n2 tranches de pains complet \r\n\r\n1 cuillère d’huile soupe de colza \r\n\r\n\r\n\r\nCouché \r\n\r\nPoignet noix ou amande\r\n\r\n1 tisane ou infusion \r\n\r\n\r\n\r\nPré training \r\n\r\n\r\n\r\n1 thé vert \r\n\r\n1 shot de carnitine\r\n\r\n1 orange \r\n\r\n\r\n\r\nPendant la séance bien s’hydrater beaucoup d’eau \r\n\r\nPrendre pompotte si baisse d’énergie \r\n\r\n\r\n\r\nPost training \r\n\r\n\r\n\r\n1 scoop de whey clear Shake \r\n\r\nUne pomme ou fruit rouge \r\n\r\n\r\n\r\nTout les compléments sont au studio hormis lazinc \r\n\r\n\r\n\r\nViande rouge 5% 1x semaine \r\n\r\n\r\n\r\nPas de sel \r\n\r\nFavoriser les épices \r\n\r\nManger doucement \r\n\r\nBoire beaucoup d’eau \r\n\r\nÉviter l’eau gazeuse ou juste post training ou en digestif avec le moin',NULL,'etape2'),
(2,'Admin','Admin','0123456789','Admin Address','','75000',70,'admin@admin.com','$2y$10$nO76WGxSucQaoVdjPz9HOuIFtKB65OfA/fIMFFvhsnjwNdGXFuy0a','admin','2025-03-08 14:02:16','2025-03-09 06:32:08',1,'','','',NULL,NULL,NULL,NULL),
(7,'Soler','Lucas','06 XX XX XX XX','31 Av. de Saint-Roch, ','Le Rove','13740 ',100,'solerlucas.coaching@gmail.com','$2y$10$gjY5x6WV8OXc0wxbHLBlMe/v3bCH.thLiPpdeOna./nSkVu3uPqgK','admin','2025-03-09 06:22:03','2025-03-09 06:39:35',1,'ADMIN','ADMIN','ADMIN',NULL,NULL,NULL,NULL),
(9,'SORROCHE','Marine','0659625792','21B chemin des coulets','LE ROVE','13740',64,'marine.sorroche@numericable.fr','$2y$10$GsaZOYUoUUEdSisvfbhnPOS8iJp0D8jM3RVot6uFkgB7V4H6./vX2','user','2025-03-09 22:17:42','2025-03-28 11:41:11',1,'','','',NULL,NULL,NULL,'etape1'),
(10,'SORROCHE','Mireille','0668105754','5 chemin de la pointe de Vella ','PORT DE BOUC','13110',56,'mireille.sorroche@gmail.com','$2y$10$xNFbPcQbXeBWhGskQ.jYXeQZmjx9oIWqHnyT.RrrgtPga71ftOKUa','user','2025-03-09 22:22:40','2025-03-09 22:39:31',1,'','','Choux Bruxelles, poivrons, fruits de mer',NULL,NULL,NULL,NULL),
(11,'LECROSNIER ','Julien ','0611774677','20 bis avenue Roland corrao ','Marignane ','13700',80,'jujupopo@msn.com','$2y$10$ZylmphCKXJefJ0IwGCMH1uuWDQUKiFdtlbi7wHs2keKFIBCGej/Hq','user','2025-03-09 22:27:03','2025-03-09 22:27:03',1,'Maladie des os de verre ','Aucun ','Épinard , chou-fleur ',NULL,NULL,NULL,NULL),
(12,'Poussin ','Victor ','+33 6 86 25 52 43','19 rue marcel pagnol ','Marignane ','13700',80,'victcoaching@gmail.com','$2y$10$UALc44PvL0liGznf9zyNjeBienXGxw/cNkpdD7Ka4XRBr9Kyw.wYK','admin','2025-03-10 12:34:22','2025-03-10 18:13:28',1,'','','',NULL,NULL,NULL,NULL),
(13,'CERAVOLO','Maxime','0674846820','21B chemin des coulets ','LE ROVE','13740',74,'Maxime.ceravolo2105@gmail.com','$2y$10$03sqbqeBtJ.cmJqNl7av6uMg59JKRGmnFylbN1drty.nAabk90yuW','user','2025-03-10 20:18:47','2025-03-10 20:18:47',1,'','','',NULL,NULL,NULL,NULL),
(14,'Narjais','Abidelli','0627341729','38 Rue Armand Guigue, Résidences De La Paix','Port-de-Bouc','13110',63,'narjaism@yahoo.fr','$2y$10$wtdBi9MliIrMoepKAssOwO4JYcz.2JaOaWzkrZNgFQMC2y.Fk58hq','user','2025-03-13 03:45:20','2025-03-13 03:45:20',1,'','','',NULL,NULL,NULL,NULL),
(15,'Esposito','Edith','0629435342','146, Av De La Gare De La Couronne Bat B Porte 2 ','Martigues ','13500 ',108,'edith.esposito13@gmail.com','$2y$10$21DRUjxKP3CUR.bk3ro8iuqy15UfH5PLH2nk0YJ5cWQCEeHBymAJe','user','2025-03-29 18:39:47','2025-03-29 18:39:47',1,'','','',NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `weight_records`
--

DROP TABLE IF EXISTS `weight_records`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `weight_records` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `weight_date` date NOT NULL,
  `weight` float NOT NULL,
  `comment` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `weight_records_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `weight_records`
--

LOCK TABLES `weight_records` WRITE;
/*!40000 ALTER TABLE `weight_records` DISABLE KEYS */;
INSERT INTO `weight_records` VALUES
(2,1,'2025-03-02',114.8,'poid de départ','2025-03-08 14:34:48'),
(117,1,'2025-03-09',111.6,'','2025-03-09 02:47:40'),
(120,7,'2025-03-09',100,'Poids initial lors de l\'inscription','2025-03-09 06:22:03'),
(122,9,'2025-03-01',64.3,'Poids initial lors de l\'inscription','2025-03-09 22:17:42'),
(123,10,'2025-03-01',56,'Poids initial lors de l\'inscription','2025-03-09 22:22:40'),
(124,11,'2025-03-01',80,'Poids initial lors de l\'inscription','2025-03-09 22:27:03'),
(125,12,'2025-03-10',80,'Poids initial lors de l\'inscription','2025-03-10 12:34:22'),
(126,13,'2025-03-01',74,'Poids début challenge du 28/02','2025-03-10 20:18:47'),
(129,10,'2025-03-11',56,'Poids de départ 56,7','2025-03-11 08:16:35'),
(130,9,'2025-03-11',61.8,'','2025-03-11 17:00:58'),
(132,1,'2025-03-12',110.5,'','2025-03-12 05:15:27'),
(134,14,'2025-02-28',63,'Poids initial lors de l\'inscription','2025-03-13 03:45:20'),
(135,1,'2025-03-13',109.9,'','2025-03-13 05:19:24'),
(136,9,'2025-03-17',61.6,'','2025-03-17 07:11:36'),
(137,10,'2025-03-17',55.5,'','2025-03-17 11:13:30'),
(138,1,'2025-03-18',109.9,'Pas de perte ','2025-03-18 18:10:42'),
(139,1,'2025-03-23',109.4,'','2025-03-23 06:09:17'),
(140,10,'2025-03-24',55.4,'','2025-03-24 06:51:25'),
(141,13,'2025-03-25',72.9,'','2025-03-25 09:36:34'),
(142,9,'2025-03-28',60.6,'','2025-03-28 07:35:38'),
(143,1,'2025-03-29',108.8,'','2025-03-29 06:29:08'),
(144,15,'2025-03-29',108,'Poids initial lors de l\'inscription','2025-03-29 18:39:47'),
(145,10,'2025-03-31',54.7,'','2025-03-31 05:41:57');
/*!40000 ALTER TABLE `weight_records` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-03  0:00:01
