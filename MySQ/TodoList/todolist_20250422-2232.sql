-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: todolist
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
-- Table structure for table `task_notes`
--

DROP TABLE IF EXISTS `task_notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_notes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `note_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `note_type` varchar(50) DEFAULT 'commentaire',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  CONSTRAINT `task_notes_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_notes`
--

LOCK TABLES `task_notes` WRITE;
/*!40000 ALTER TABLE `task_notes` DISABLE KEYS */;
INSERT INTO `task_notes` VALUES
(5,19,'Description\r\nModifier\r\n❇️ DOTATION DE MATÉRIEL ❇️\r\n💻 Pack demandé :\r\n\r\nMTM / Modèle :\r\n\r\nNuméro d’inventaire et de série :\r\n\r\nAccessoires :\r\n\r\nL\'utilisateur est responsable de l\'intégrité de son matériel. **Si vous prenez soin de vos affaires, faites comme si ce matériel était le votre. Sinon, rappelez vous qu’il appartient à Reel IT. **(Pas de stickers non plus)\r\n\r\n🔲 Je m\'engage à prendre soin du matériel que l’on me confie ce jour.\r\n\r\n📑 Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service Informatique :\r\n\r\n\r\n\r\n‌.\r\n.\r\n_______________________________________________________\r\n🕐 RESTITUTION DU MATÉRIEL 🕐\r\nDate de restitution : ___/___/______\r\n\r\nMatériel complet ? 🔲 Oui 🔲 Non\r\n\r\nCommentaire :\r\n\r\n📑  Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service RH:\r\n\r\n\r\n\r\n‌.\r\n.','2025-04-16 06:37:01','commentaire'),
(6,23,'❇️ DOTATION DE MATÉRIEL ❇️\r\n💻 Pack demandé :\r\n\r\nMTM / Modèle :\r\n\r\nNuméro d’inventaire et de série :\r\n\r\nAccessoires :\r\n\r\nL\'utilisateur est responsable de l\'intégrité de son matériel. **Si vous prenez soin de vos affaires, faites comme si ce matériel était le votre. Sinon, rappelez vous qu’il appartient à Reel IT. **(Pas de stickers non plus)\r\n\r\n🔲 Je m\'engage à prendre soin du matériel que l’on me confie ce jour.\r\n\r\n📑 Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service Informatique :\r\n\r\n\r\n\r\n‌.\r\n.\r\n_______________________________________________________\r\n🕐 RESTITUTION DU MATÉRIEL 🕐\r\nDate de restitution : ___/___/______\r\n\r\nMatériel complet ? 🔲 Oui 🔲 Non\r\n\r\nCommentaire :\r\n\r\n📑  Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service RH:\r\n\r\n\r\n\r\n‌.\r\n.','2025-04-16 06:39:37','commentaire'),
(7,17,'- Verif le bon Fonctionnement \r\n- Envoie fiche d\'inter au client \r\n- une fois signé la publier sur MYPORTAL','2025-04-16 06:46:43','commentaire'),
(8,17,'Dominique DRUESNE\r\nDirecteur Général\r\nd.druesne@cfccredit.fr \r\nTel : 06 37 69 49 62 \r\n1 rue Louis Duvant\r\n59220 ROUVIGNIES\r\nwww.cfccredit.fr','2025-04-16 07:13:58','commentaire'),
(9,26,'Compréenssion du portail + inscription + Cours Module 1, 2;3','2025-04-16 16:50:42','commentaire'),
(10,18,'3 colis expédiés :\r\n1Z984RF96831577069\r\n1Z984RF96820905073\r\n1Z984RF96820159488','2025-04-17 06:25:15','commentaire'),
(11,27,'Réparation OK en attente validation du client','2025-04-17 12:13:18','commentaire'),
(12,33,'Actions réalisées : \r\n\r\nMise a jours des drivers \r\nPB non résolu\r\nRéparation de Windows \r\nPB résolu temporairement \r\nTentative re ré-installation des drivers \r\nPB non résolu \r\nReste à faire : \r\n\r\nrestauration d\'un Windows d\'origine propre a lenovo pour résoudre le problème. \r\nLe problème c\'est que nous devons avant configurer un PC de prets à Mounir afin qu\'il puisse toujours travailler \r\nDate de prochaine action : \r\n\r\nPC en cours de préparation','2025-04-17 14:10:46','commentaire'),
(15,36,'Prépa','2025-04-18 06:57:34','commentaire'),
(16,27,'---\r\nVérification du bon fonctionnement général du poste.\r\n\r\nValidation de la suite Office : fonctionnement confirmé.\r\n\r\nMises à jour Windows effectuées avec succès.\r\n\r\nDésactivation des comptes de test et de secours identifiés lors du diagnostic.\r\n\r\nRecommandations communiquées à l’utilisateur pour éviter la récurrence du problème.','2025-04-18 07:36:59','commentaire'),
(17,31,'Attendre que les nouveaux arrivé rentre - En attente retour Demazure','2025-04-18 07:42:45','commentaire'),
(18,35,'Espace NOBEL PF SIC 11 Rue Frédéric Joliot Curie Agent : ZERABI Mohamed El Hadi - Support PF SIC Du Lundi au Vendredi 8h30 - 12h30 et 13h30 - 17h00','2025-04-18 11:53:51','commentaire'),
(19,35,'Informations sur l’incident\r\nType d’incident \r\nMatériel (autre)\r\nSystème d’exploitation \r\nWindows 11\r\nVersion du système d’exploitation \r\nNiveau de gravité \r\nHigh\r\nNº de référence/de BC \r\nType de réparation préféré \r\nOnsite Tech\r\nNom du contact \r\nZERABI Mohamed El Hadi\r\nE-mail du contact pour le bon de commande \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international du contact \r\n+33\r\nNuméro de téléphone du contact \r\n0806000140\r\nIndicatif téléphonique du contact \r\nRemarques à l’attention du technicien sur site \r\nCode d’erreur : 0333 Code de validation : 80680 Service Tag : 4BRCV04\r\nDétails du problème \r\nNous rencontrons un problème matériel critique sur un PC portable DELL Precision 3581 (Service Tag 4BRCV04, Asset 9418206964) de l\'Administrateur TOIP au Conseil Départemental 13. Une réinstallation complète de Windows a été effectuée, mais le problème persiste : après environ 10 minutes d\'utilisation, le PC se met à ventiler fortement, s’éteint brutalement et ne redémarre plus immédiatement. Il ne peut être rallumé qu\'après un temps de refroidissement. Le poste s’arrête régulièrement suite à une surchauffe. Un diagnostic pré-démarrage (ePSA) a été réalisé, et a retourné les erreurs suivantes : Code d’erreur : 0333 / Code de validation : 80680 / Service Tag : 4BRCV04\r\nePSA (PC) or Server error code \r\n0333\r\nePSA (PC-only) validation code \r\n80680\r\nPièce(s) jointe(s) \r\n Coordonnées\r\nPrénom \r\nMohamed El Hadi\r\nNom \r\nZERABI\r\nAdresse courriel \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international principal \r\n+33\r\nNuméro de téléphone principal \r\n0806000140\r\nExtension du téléphone principal \r\nPreferred Contact Method \r\nTéléphone\r\nData Center \r\nNon\r\nIdentifiant adresse \r\nCONSEIL DEPARTEMENTAL 13\r\nLieu \r\nFrance, FR\r\nAdresse \r\nEspace NOBEL PF SIC 11 Rue Frédéric Joliot Curie\r\nVille \r\nmarseille\r\nÉtat/Province \r\nProvence-Alpes-Côte d\'Azur, PAC\r\nCode postal \r\n13013','2025-04-18 12:35:59','commentaire'),
(20,35,'Un dossier a été ouvert auprès du support DELL concernant le PC portable en panne.\r\nUn technicien DELL prendra prochainement contact avec vous par e-mail, à l’adresse que vous avez communiquée, afin de réaliser des tests complémentaires.\r\n\r\nRéférence du dossier : Service Request 208738086\r\n\r\nNous restons à votre disposition pour assurer le suivi de l’intervention.\r\n\r\ncordialement,','2025-04-18 12:42:34','commentaire'),
(23,32,'annulation de la préparation du poste','2025-04-22 06:15:56','commentaire'),
(24,46,'Relevé d\'activité','2025-04-22 06:28:38','commentaire'),
(25,31,'De : SAV REEL-IT <sav@reelit.fr> \r\nEnvoyé : lundi 14 avril 2025 15:29\r\nÀ : Ameline DEMASURE <a.demasure@cfccredit.fr>; SAV REEL-IT <sav@reelit.fr>; Tony JIMENEZ <tony.jimenez@reelit.fr>\r\nCc : Victorin MONNOT <victorin.monnot@reelit.fr>; Jean-Bernard ASSE <jean-bernard.asse@reelit.fr>; Dominique DRUESNE <d.druesne@cfccredit.fr>\r\nObjet : RE: Nouvel Arrivant - Thibaud LIAGRE\r\n\r\nBonjour,\r\n\r\nLe poste HW180000854/ YX080E9K a été configuré pour M. Liagre.\r\n\r\n•	Les outils office sont connectés avec le compte thibaud.liagre@hnwcfc.onmicrosoft.com\r\n•	Outlook est bien synchronisé avec son compte t.liagre@cfccredit.fr.\r\n•	Le DS Agent est installé, il restera à le configurer avec l’utilisateur dès qu’il aura l’imprimante ainsi que le scan to folder.\r\n•	Le mot de passe pour sa session est hornetwork, il est provisoire et il devra le changer à la première ouverture.\r\n\r\nNous ajoutons au poste une sacoche et une souris sans fil.\r\n\r\n•	Le colis vous sera expédié demain dans vos locaux (1 rue Louis Duvant, 59220 ROUVIGNIES), nous vous communiquerons le tracking.\r\n\r\nCordialement,','2025-04-22 06:46:24','commentaire'),
(26,47,'Traitement en interne','2025-04-22 07:04:42','commentaire'),
(27,47,'Le support SAV prend en charge uniquement les pannes matérielles.\r\nConcernant les problèmes liés à l\'inventaire ou à un étiquetage incorrect, il convient de vous rapprocher de votre responsable référent. C\'est à lui de faire le nécessaire en interne auprès de nos responsables concernés pour corriger ce type d\'erreur.','2025-04-22 07:04:45','commentaire'),
(28,49,'Mise a jours de la base HECTOR \r\nHP Elitebook X360 830 G6 i5 / 8Go RAM/ 256Go SSD	HW180000929 SN 5CG03764R3\r\nHP EliteBook x360 830 G6 (7KP41EA)	HW180000620 SN 	5CG0289G24','2025-04-22 07:46:44','commentaire');
/*!40000 ALTER TABLE `task_notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `task_suivi`
--

DROP TABLE IF EXISTS `task_suivi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `task_suivi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `suivi_date` datetime NOT NULL DEFAULT current_timestamp(),
  `suivi_note` text DEFAULT NULL,
  `time_spent` int(11) DEFAULT 0 COMMENT 'Temps passé en minutes',
  PRIMARY KEY (`id`),
  KEY `task_id` (`task_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `task_suivi_ibfk_1` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`) ON DELETE CASCADE,
  CONSTRAINT `task_suivi_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `task_suivi`
--

LOCK TABLES `task_suivi` WRITE;
/*!40000 ALTER TABLE `task_suivi` DISABLE KEYS */;
INSERT INTO `task_suivi` VALUES
(1,19,3,'2025-04-17 15:31:07','Annulation',10),
(2,33,3,'2025-04-17 16:10:46','Actions réalisées : \r\n\r\nMise a jours des drivers \r\nPB non résolu\r\nRéparation de Windows \r\nPB résolu temporairement \r\nTentative re ré-installation des drivers \r\nPB non résolu \r\nReste à faire : \r\n\r\nrestauration d\'un Windows d\'origine propre a lenovo pour résoudre le problème. \r\nLe problème c\'est que nous devons avant configurer un PC de prets à Mounir afin qu\'il puisse toujours travailler \r\nDate de prochaine action : \r\n\r\nPC en cours de préparation',120),
(5,36,3,'2025-04-18 08:57:34','Prépa',45),
(6,27,3,'2025-04-18 09:36:59','---\r\nVérification du bon fonctionnement général du poste.\r\n\r\nValidation de la suite Office : fonctionnement confirmé.\r\n\r\nMises à jour Windows effectuées avec succès.\r\n\r\nDésactivation des comptes de test et de secours identifiés lors du diagnostic.\r\n\r\nRecommandations communiquées à l’utilisateur pour éviter la récurrence du problème.',270),
(7,31,3,'2025-04-18 09:42:45','Attendre que les nouveaux arrivé rentre - En attente retour Demazure',15),
(8,35,3,'2025-04-18 13:53:51','Espace NOBEL PF SIC 11 Rue Frédéric Joliot Curie Agent : ZERABI Mohamed El Hadi - Support PF SIC Du Lundi au Vendredi 8h30 - 12h30 et 13h30 - 17h00',30),
(9,35,3,'2025-04-18 14:35:59','Informations sur l’incident\r\nType d’incident \r\nMatériel (autre)\r\nSystème d’exploitation \r\nWindows 11\r\nVersion du système d’exploitation \r\nNiveau de gravité \r\nHigh\r\nNº de référence/de BC \r\nType de réparation préféré \r\nOnsite Tech\r\nNom du contact \r\nZERABI Mohamed El Hadi\r\nE-mail du contact pour le bon de commande \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international du contact \r\n+33\r\nNuméro de téléphone du contact \r\n0806000140\r\nIndicatif téléphonique du contact \r\nRemarques à l’attention du technicien sur site \r\nCode d’erreur : 0333 Code de validation : 80680 Service Tag : 4BRCV04\r\nDétails du problème \r\nNous rencontrons un problème matériel critique sur un PC portable DELL Precision 3581 (Service Tag 4BRCV04, Asset 9418206964) de l\'Administrateur TOIP au Conseil Départemental 13. Une réinstallation complète de Windows a été effectuée, mais le problème persiste : après environ 10 minutes d\'utilisation, le PC se met à ventiler fortement, s’éteint brutalement et ne redémarre plus immédiatement. Il ne peut être rallumé qu\'après un temps de refroidissement. Le poste s’arrête régulièrement suite à une surchauffe. Un diagnostic pré-démarrage (ePSA) a été réalisé, et a retourné les erreurs suivantes : Code d’erreur : 0333 / Code de validation : 80680 / Service Tag : 4BRCV04\r\nePSA (PC) or Server error code \r\n0333\r\nePSA (PC-only) validation code \r\n80680\r\nPièce(s) jointe(s) \r\n Coordonnées\r\nPrénom \r\nMohamed El Hadi\r\nNom \r\nZERABI\r\nAdresse courriel \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international principal \r\n+33\r\nNuméro de téléphone principal \r\n0806000140\r\nExtension du téléphone principal \r\nPreferred Contact Method \r\nTéléphone\r\nData Center \r\nNon\r\nIdentifiant adresse \r\nCONSEIL DEPARTEMENTAL 13\r\nLieu \r\nFrance, FR\r\nAdresse \r\nEspace NOBEL PF SIC 11 Rue Frédéric Joliot Curie\r\nVille \r\nmarseille\r\nÉtat/Province \r\nProvence-Alpes-Côte d\'Azur, PAC\r\nCode postal \r\n13013',60),
(10,35,3,'2025-04-18 14:42:34','Un dossier a été ouvert auprès du support DELL concernant le PC portable en panne.\r\nUn technicien DELL prendra prochainement contact avec vous par e-mail, à l’adresse que vous avez communiquée, afin de réaliser des tests complémentaires.\r\n\r\nRéférence du dossier : Service Request 208738086\r\n\r\nNous restons à votre disposition pour assurer le suivi de l’intervention.\r\n\r\ncordialement,',5),
(12,26,3,'2025-04-20 14:16:15','Compréenssion du portail + inscription + Cours Module 1, 2;3',240),
(13,23,3,'2025-04-20 14:20:10','❇️ DOTATION DE MATÉRIEL ❇️\r\n💻 Pack demandé :\r\n\r\nMTM / Modèle :\r\n\r\nNuméro d’inventaire et de série :\r\n\r\nAccessoires :\r\n\r\nL\'utilisateur est responsable de l\'intégrité de son matériel. **Si vous prenez soin de vos affaires, faites comme si ce matériel était le votre. Sinon, rappelez vous qu’il appartient à Reel IT. **(Pas de stickers non plus)\r\n\r\n🔲 Je m\'engage à prendre soin du matériel que l’on me confie ce jour.\r\n\r\n📑 Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service Informatique :\r\n\r\n\r\n\r\n‌.\r\n.\r\n_______________________________________________________\r\n🕐 RESTITUTION DU MATÉRIEL 🕐\r\nDate de restitution : ___/___/______\r\n\r\nMatériel complet ? 🔲 Oui 🔲 Non\r\n\r\nCommentaire :\r\n\r\n📑  Date et Signature du Collaborateur :\r\n\r\n\r\n\r\n‌.\r\n.\r\n📑  Date et Signature du Service RH:\r\n\r\n\r\n\r\n‌.\r\n.',30),
(14,32,3,'2025-04-22 08:15:56','annulation de la préparation du poste',15),
(15,46,3,'2025-04-22 08:28:38','Relevé d\'activité',10),
(16,47,3,'2025-04-22 09:04:42','Traitement en interne',20),
(17,49,3,'2025-04-22 09:46:44','Mise a jours de la base HECTOR \r\nHP Elitebook X360 830 G6 i5 / 8Go RAM/ 256Go SSD	HW180000929 SN 5CG03764R3\r\nHP EliteBook x360 830 G6 (7KP41EA)	HW180000620 SN 	5CG0289G24',30);
/*!40000 ALTER TABLE `task_suivi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tasks`
--

DROP TABLE IF EXISTS `tasks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tasks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `task_date` date NOT NULL,
  `task_title` varchar(255) DEFAULT NULL,
  `task_description` text NOT NULL,
  `task_status` enum('pending','in_progress','completed') DEFAULT 'pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `urgency` enum('basse','moyenne','haute','critique') DEFAULT 'moyenne',
  `deadline` date DEFAULT NULL,
  `category` varchar(50) DEFAULT 'standard',
  `completed_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tasks`
--

LOCK TABLES `tasks` WRITE;
/*!40000 ALTER TABLE `tasks` DISABLE KEYS */;
INSERT INTO `tasks` VALUES
(14,1,'2025-04-16','verif le bon fonctionnement du domaine','verif le bon fonctionnement du domaine','pending','2025-04-16 04:35:54','critique','2025-04-16','standard',NULL),
(15,1,'2025-04-16','CHECK la boit mail','CHECK la boit mail','pending','2025-04-16 04:38:54','moyenne','2025-04-16','standard',NULL),
(17,3,'2025-04-16','MODIF DNS CDF FINANCE','TICJET 1190 - Création d\'un utilisateur@asdepret (CFC)','completed','2025-04-16 06:33:41','critique','2025-04-16','0','2025-04-17 09:46:33'),
(18,3,'2025-04-16','Livraison PC','11 468	Création d\'un nouvel utilisateur CFC','completed','2025-04-16 06:34:45','basse','2025-04-23','0','2025-04-17 14:13:46'),
(19,3,'2025-04-16','[LOCKSIGHT] - LARAB Ali - [22/04/2025]','[LOCKSIGHT] - LARAB Ali - [22/04/2025]','completed','2025-04-16 06:36:46','haute','2025-04-22','preparation_postes','2025-04-17 15:31:32'),
(23,3,'2025-04-16','[BU] - Joseph Mondesir Gerald - [12/05/25]','[BU] - Joseph Mondesir Gerald - [12/05/25]','pending','2025-04-16 06:39:22','moyenne','2025-05-12','preparation_postes',NULL),
(24,3,'2025-04-16','[LOCKSIGHT] - KALOUSTIAN Joris - [12/05/2025]','[LOCKSIGHT] - KALOUSTIAN Joris - [12/05/2025]','pending','2025-04-16 06:40:08','moyenne','2025-05-12','preparation_postes',NULL),
(26,3,'2025-04-16','Passage Certification DELL','Passage Certification DELL','in_progress','2025-04-16 16:49:02','basse','2025-04-30','formation',NULL),
(27,3,'2025-04-17','SFC DESIGN - Word Excel ne répond plus','HW180000866 / Louvet Antoine /  06-74-75-84-94','completed','2025-04-17 06:23:26','moyenne','2025-04-25','standard','2025-04-18 09:37:20'),
(31,3,'2025-04-17','RDV : CFC D&D FINANCE','Config DS Agent et Scan to folder','in_progress','2025-04-17 12:24:17','moyenne','2025-05-16','maintenance',NULL),
(32,3,'2025-04-17','[Communication] - BRUNET Manon- [30/04/2025]','[Communication] - BRUNET Manon- [30/04/2025]','completed','2025-04-17 13:33:14','moyenne','2025-04-30','preparation_postes','2025-04-22 06:16:03'),
(33,3,'2025-04-17','Problème de son sur sa WEBCAM (11454)','Problème de son sur sa WEBCAM (11454)','completed','2025-04-17 14:03:53','moyenne','2025-04-17','standard','2025-04-17 16:10:55'),
(35,3,'2025-04-18','CD13 -  INC - 149155/Arrêt suite à surchauffe','A Surveiller','in_progress','2025-04-18 06:37:04','basse','2025-04-25','Traitement d\'incident',NULL),
(36,3,'2025-04-18','Pret de postes HW180000502','Pret de PC Corinne	LOUIRAZIN - Oublie P¨C maison','in_progress','2025-04-18 06:53:27','critique','2025-04-22','preparation_postes',NULL),
(37,1,'2025-04-18','TACHE DE TEST','TACHE DE TEST','pending','2025-04-18 12:03:46','critique','2025-04-21','standard',NULL),
(46,3,'2025-04-22','Relevé d\'activité','Relevé d\'activité','completed','2025-04-22 06:28:17','moyenne','2025-04-21','Non catégorisé','2025-04-22 06:28:48'),
(47,3,'2025-04-22','CD13 INT - 336343 - [SAV] - EB-W49/X8B84800541/24CVP00340 - étiquette erronée','[SAV] - EB-W49/X8B84800541/24CVP00340 - étiquette erronée (340)','completed','2025-04-22 07:03:11','moyenne',NULL,'traitement_incident','2025-04-22 07:05:07'),
(48,3,'2025-04-22','Préparation de postes','On a recup les deux HP de LOCKSIGHT PRJ2025-0152 OK.','pending','2025-04-22 07:41:02','moyenne',NULL,'Traitement d\'incident',NULL),
(49,3,'2025-04-22','HP de LOCKSIGHT PRJ2025-0152','On a recup les deux HP A réintégrer au stock occasion.','completed','2025-04-22 07:41:29','basse',NULL,'preparation_postes','2025-04-22 07:47:15');
/*!40000 ALTER TABLE `tasks` ENABLE KEYS */;
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
  `email` varchar(100) NOT NULL,
  `is_admin` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES
(1,'utilisateur','$2y$10$pCjZaqpFJbiaNfhmCv/DSO9mXu9LyIn6jCG.P27JoeJgQeAFdNga.','utilisateur@example.com',0,'2025-04-15 20:15:11'),
(2,'admin','$2y$10$.7GhZONLzqmJKY.X4v0gQOqb2AnWTpVD4QCN5Xtc9I7/utC7sraMC','admin@example.com',1,'2025-04-15 20:15:11'),
(3,'fabien','$2y$10$b6uyJd0vI42q3OPPrPW56uuynpIi3knPrrDTrFo30dYUzmUkpWJti','fabien.lieutaud@reelit.fr',0,'2025-04-16 04:42:03');
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

-- Dump completed on 2025-04-22 22:32:52
