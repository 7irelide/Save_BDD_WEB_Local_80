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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(19,35,'Informations sur l’incident\r\nType d’incident \r\nMatériel (autre)\r\nSystème d’exploitation \r\nWindows 11\r\nVersion du système d’exploitation \r\nNiveau de gravité \r\nHigh\r\nNº de référence/de BC \r\nType de réparation préféré \r\nOnsite Tech\r\nNom du contact \r\nZERABI Mohamed El Hadi\r\nE-mail du contact pour le bon de commande \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international du contact \r\n+33\r\nNuméro de téléphone du contact \r\n0806000140\r\nIndicatif téléphonique du contact \r\nRemarques à l’attention du technicien sur site \r\nCode d’erreur : 0333 Code de validation : 80680 Service Tag : 4BRCV04\r\nDétails du problème \r\nNous rencontrons un problème matériel critique sur un PC portable DELL Precision 3581 (Service Tag 4BRCV04, Asset 9418206964) de l\'Administrateur TOIP au Conseil Départemental 13. Une réinstallation complète de Windows a été effectuée, mais le problème persiste : après environ 10 minutes d\'utilisation, le PC se met à ventiler fortement, s’éteint brutalement et ne redémarre plus immédiatement. Il ne peut être rallumé qu\'après un temps de refroidissement. Le poste s’arrête régulièrement suite à une surchauffe. Un diagnostic pré-démarrage (ePSA) a été réalisé, et a retourné les erreurs suivantes : Code d’erreur : 0333 / Code de validation : 80680 / Service Tag : 4BRCV04\r\nePSA (PC) or Server error code \r\n0333\r\nePSA (PC-only) validation code \r\n80680\r\nPièce(s) jointe(s) \r\n Coordonnées\r\nPrénom \r\nMohamed El Hadi\r\nNom \r\nZERABI\r\nAdresse courriel \r\nsupport@eduprovence.fr\r\nIndicatif téléphonique international principal \r\n+33\r\nNuméro de téléphone principal \r\n0806000140\r\nExtension du téléphone principal \r\nPreferred Contact Method \r\nTéléphone\r\nData Center \r\nNon\r\nIdentifiant adresse \r\nCONSEIL DEPARTEMENTAL 13\r\nLieu \r\nFrance, FR\r\nAdresse \r\nEspace NOBEL PF SIC 11 Rue Frédéric Joliot Curie\r\nVille \r\nmarseille\r\nÉtat/Province \r\nProvence-Alpes-Côte d\'Azur, PAC\r\nCode postal \r\n13013','2025-04-18 12:35:59','terminee'),
(20,35,'Un dossier a été ouvert auprès du support DELL concernant le PC portable en panne.\r\nUn technicien DELL prendra prochainement contact avec vous par e-mail, à l’adresse que vous avez communiquée, afin de réaliser des tests complémentaires.\r\n\r\nRéférence du dossier : Service Request 208738086\r\n\r\nNous restons à votre disposition pour assurer le suivi de l’intervention.\r\n\r\ncordialement,','2025-04-18 12:42:34','commentaire'),
(22,36,'Récupération OK','2025-04-22 08:49:16','commentaire'),
(23,41,'Recherche PC INV + REcherche PC stock\r\n---\r\nLENOVO Thinkbook 15 G1 i5 8Go RAM / 256Go SSD Thinkbook 15 G1 i5	HW180000200	LENOVO	20SM000FFR	LR0EDT52\r\n\r\nLENOVO ThinkBook 15-IIL Laptop - Type 20SM	HW180000170	LENOVO	20SM000FFR	LR0DWT16\r\n\r\nLENOVO ThinkBook 15-IIL i5 / 8Go RAM / 256Go SSD	HW180000119	LENOVO	20SM000FFR	LR0DWSR5\r\n\r\nLENOVO ThinkBook 15-IIL Laptop - Type 20SM i5 / 8Go RAM / 256Go SSD	HW180000104	LENOVO	20SM000FFR	LR0D8QFK\r\n---','2025-04-22 08:53:41','commentaire'),
(24,42,'Actions réalisées : \r\n\r\nDIAG \r\nLe PC se connecte bien au Wi-Fi, mais le DHCP ne semble pas fonctionner\r\nReste à faire : \r\n\r\nTransfert la demande au responssable commercial','2025-04-22 11:57:51','commentaire'),
(25,42,'Envoie ail à  JB  + Victorin','2025-04-22 11:58:19','commentaire'),
(26,43,'Problème N2 \r\n\r\nLes flèches de directions ne fonctionne pas que ce soit un clavier interne qu\'externe.\r\nActions réalisées : \r\n\r\nDIAG N1 \r\nProblème identique sur un clavier Externe \r\nLe problème est pas HardWare mais Software \r\nPMAD \r\nLes fleches de direction ne fonctionne sur le bureau las pas sous Excel\r\nAnalyse du fichier Excel \r\nErreur dans la MACRO \r\nDébeugage de la Macro \r\nIntervention OK / Fonctionnement OK \r\n\r\n \r\n\r\nProblème N2 \r\n\r\nL\'utilisatrice souhaite revenirsur l\'anciènne interface de OUTLOOCK \r\nActions réalisées : \r\n\r\nDans les Setting, \r\nSélection de l\'affichage Classique \r\nIntervention OK / FOnctionnement OK','2025-04-22 12:34:07','commentaire'),
(27,41,'Préparation postes','2025-04-22 13:35:11','commentaire'),
(28,41,'Transfert à la logistique pour envoie au client','2025-04-23 05:58:41','commentaire'),
(29,44,'Je comprends votre surprise concernant la réinstallation du système d\'exploitation, malgré la présence d\'une étiquette demandant de ne pas toucher au disque dur.\r\nToutefois, il est important de noter que lors des interventions en atelier au près du constructeur (en l\'occurrence DELL) se dernier se réserve le droit d\'effectuer les opérations jugées nécessaires pour garantir la remise en conformité du matériel, même si cela implique une réinstallation du système.\r\n\r\nDELL envoie systématiquement un mail avant toute prise en charge, rappelant qu\'il est impératif d\'effectuer une sauvegarde des données.\r\n\r\nDans le cadre du support constructeur, cette démarche est tout à fait conforme aux procédures DELL.\r\nMalheureusement, nous n\'avons aucun contrôle sur les actions menées une fois le matériel pris en charge par leurs services techniques.\r\n\r\nSi vous le souhaitez, je peux bien réouvrir le dossier auprès du support DELL, toutefois cela ne permettra pas de récupérer des données perdues.\r\n\r\nPour éviter ce type de situation, il est essentiel d\'effectuer des sauvegardes régulières, notamment avant tout envoi en atelier chez un autre prestataire.','2025-04-23 06:41:34','terminee'),
(30,42,'Actions réalisées :\r\n\r\nRéception d’un appel entrant de LOPEZ concernant une autre demmande d\'assistance.\r\nRelevé de la configuration WIFI du PC effectué\r\nOK\r\nPrise de contact avec JB \r\nDdossier en cours de traitement de sa part. pour plus de  complément d\'information il me demande de me rapproché auy prèqs de Moutaz.\r\n\r\nPrise de contact avec Moutaz.\r\n\r\nOrganisation d’un rendez-vous avec le client pour une vérification de la configuration du PC à distance, prévue le 24/04/2025 au matin.\r\n\r\nReste à faire :\r\n\r\nRDV télémaintenance avec le client pour vérification de la configuration du poste.\r\nEffectuer la vérification de la configuration du PC avec le client lors du rendez-vous prévu.\r\nClôturer le ticket ou faire un suivi si une action complémentaire est nécessaire après le RDV.\r\n\r\nDate de prochaine action : 24/04/2025 (matin) ','2025-04-23 08:45:37','en_cours'),
(31,46,'Actions réalisées : \r\n\r\nAugmentation de la luminosité de l\'ecran \r\n\r\n \r\n\r\nModification de la résolution \r\n\r\n\r\nModificatrion de la mise a l\'echèle \r\n\r\n\r\nEpeinglage de capture dans le menue démarer \r\n\r\n\r\nEpeinglage de outloock, dans la barre des taches \r\n\r\nDesactivage de copilote au démmarage \r\n\r\n\r\nIntervention OK / Fonctinnement OK \r\n\r\nRelevé d\'information sur l\'incident 11580pour résolution','2025-04-23 08:50:28','terminee'),
(32,48,'JB, le PRJ vient à peine d’etre crée sur MY portal (CMD SE2025-1219 Projet : 1x Pc Occaz HW)…\r\nA l’avenir, il faut penser \r\n1)	A laisser un minimum de temps pour la prep… \r\n2)	A donner un minimum d’info à l’équipe comme le PRJ par ex…\r\n\r\nEt petite précision win 10 du coup comme indiqué sur My portal ou 11 comme dans ton mail ?...','2025-04-23 14:53:13','commentaire'),
(33,42,'Actions réalisées : \r\n\r\nPréparation de l\'intervention \r\n\r\n\r\n\r\nRElevé de la config dur le poste de dominique : \r\n\r\n------------------------------------------------------------------\r\n\r\nFiche de configuration – Réseau Wi-Fi : PROCONSERVIT\r\n1. Informations générales\r\n\r\nNom du réseau (SSID) : PROCONSERVIT\r\n\r\nType de réseau : Point d’accès (Infrastructure ESS)\r\n\r\nDisponibilité : Le réseau est accessible à tous les utilisateurs du poste.\r\n\r\nConnexion automatique : Activée – le système se connectera automatiquement dès que le réseau sera détecté.\r\n\r\nConnexion au SSID même s’il est masqué : Désactivée – le poste ne tentera pas de se connecter si le SSID n’est pas visible.\r\n\r\nRecherche d’autres réseaux Wi-Fi pendant la connexion : Désactivée – évite les bascules automatiques.\r\n\r\n2. Paramètres de sécurité\r\n\r\nAuthentification : WPA2-Personal (WPA2-PSK)\r\n\r\nChiffrement : AES (Advanced Encryption Standard)\r\n\r\nMot de passe : Proconserv1808!\r\n\r\nUtilisation de 802.1X : Non (le réseau n’utilise pas de serveur RADIUS)\r\n\r\nMot de passe visible dans le fichier de configuration XML : Oui, en clair (non chiffré, nécessite des précautions de diffusion)\r\n\r\n3. Configuration IP et DNS\r\n\r\nAttribution de l’adresse IP : Automatique via DHCP\r\n\r\nAttribution du serveur DNS : Automatique via DHCP également\r\n\r\nReste à faire : \r\n\r\nIntervention \r\n\r\n ','2025-04-24 06:11:10','en_cours'),
(34,48,'préparation par tonny + préparation en parralèle d\'un nouveaux PRJ','2025-04-25 06:16:58','terminee'),
(35,49,'Bonjour Fabien,\r\n\r\nSuite à la présentation rapide que je t\'ai faite hier ; \r\nJe te transmets les éléments concernant ta mission Helpdesk dans le cadre du projet de déploiement First Stop Ayme ;\r\nDossier : PRJ2025-0435\r\nÉgalement pour te donner plus d\'infos avant notre échange tout à l\'heure avec M. Sébastien Quidet, qui travaille au Helpdesk côté client.\r\n\r\nContexte de la mission\r\nDu 28 avril au 28 mai, tu seras le point de contact principal de certains utilisateurs en agences First Stop, pour les accompagner sur leur 1ère connexion Windows 11 et leur \"nouvel\" environnement de travail.\r\n\r\nFirst Stop souhaite que nous utilisions leur GLPI (si possible) et leur solution VOIP pour le traitement des demandes.\r\nLa prestation se concentre sur du support niveau 1, en journée uniquement (8h–17h), avec relais possible par le CDS si besoin.\r\n\r\nTypes de sollicitations attendues :\r\n- 1ère connexion utilisateur (Windows 11, Webmail Outlook, Microsoft Edge)\r\n- Connexion et usage de Parallels (applications métiers) --> logiciel basique \r\n- Ajout d’imprimantes via l’outil \"Autoprint\" --> plutôt simple également \r\n- Pb techniques de base : branchement, etc. \r\n\r\nTu interviendras en priorité sur les appels liés à ces points.\r\nSi une demande dépasse ton périmètre (droits, problème technique sur Parallels, réseau), on transfère le ticket à l\'équipe SI. \r\n\r\nAutres infos ; \r\n- Je serai en contact avec les équipes sur place également et l\'équipe SI / je reste joignable à tout moment et tu devrais pouvoir me transférer les appels.\r\n- Le CDS devrait pouvoir intervenir si nous avons trop de flux (j\'ai un point avec Hervé Talbot à 11h pour leur expliquer le déploiement). \r\n- Le client est conscient des délais courts et il sait que nous aurons besoin d\'un temps d\'adaptation. \r\n- Je ferais un process / checklist pour toi et pour le CDS avant lundi. \r\n- Environ 3,5 à 7,5 jours vendus au client de technicien M&D pour cette mission 👍. \r\n\r\n1er rendez-vous aujourd’hui : \r\nLe RDV avec M. Sébastien QUIDET servira à faire un point sur GLPI et la VOIP. \r\nIl te montrera potentiellement le fonctionnement de leur GLPI. \r\n\r\nJe te joins le mode opératoire des techniciens sur site (doc provisoire), qui te donnera une 1ère vision du déploiement.\r\nN’hésite pas à m’appeler si tu as des questions ou me les formuler par mail. \r\n\r\nÀ tout à l’heure,  \r\nCordialement, \r\n 	Victorin MONNOT\r\n\r\nChef de Projet Digital Workspace & Infrastructure\r\n\r\nvictorin.monnot@reelit.fr\r\n\r\n\r\n06 46 56 96 27\r\n\r\n\r\nSiège : 260 rue Denis Papin, 13290 Aix en Provence\r\nAgence Occitanie : 198 rue Etienne Lenoir ZAC Fréjorgues Est II, 34130 Mauguio\r\nAgence Île de France : 4 rue de la Pompe, 75016 Paris\r\n \r\nSuivez-nous sur LinkedIn !','2025-04-25 06:20:24','commentaire'),
(36,42,'Tentative de réparation +G du problème . \r\nPas de DHCP qui remonte','2025-04-25 06:21:52','commentaire'),
(37,42,'Intervention annulé par le CDS','2025-04-25 06:22:12','commentaire'),
(38,50,'Hello, \r\n\r\nJe vous contacte concernant une demmande d’assistance INT – 337619 pour le le  CD13  ‘COLLEGE PESQUIER – GARDANNE) concernant une DOC STATION i-tec. \r\n\r\nJ’ai une question simple, mais je ne trouve pas la réponse car il n’y a pas de service direct joignable via la hotline du constructeur.\r\nLe client a été livré en décembre 2023 : est-ce que l’appareil est toujours sous garantie ? Quelle est la durée de garantie prévue pour ce type d’équipement ? \r\n\r\nCordialement,','2025-04-25 06:58:56','en_cours'),
(39,24,'A confirmer avec la RH si prépa PC ou pas. Juste on le donne pas de remonté d\'image','2025-04-25 07:28:43','commentaire'),
(40,35,'suivi d\'incident : le support DELL emande une MAJ de la CM et en attente du retour de l\'utilisateur','2025-04-25 09:05:59','en_cours'),
(41,42,'Intervention plannifier pour MARDI','2025-04-25 09:23:40','commentaire'),
(42,51,'Erreur','2025-04-29 07:34:08','commentaire'),
(43,50,'Après vérification de la facture, la station d\'accueil livrée est une \"Station d’accueil i-tec USB B5 W-5x Ports USB 2.0 – 2x Ports USB3.0\", fournie sans adaptateur secteur.\r\n\r\nVous utilisez un chargeur Dell de 65W, qui n’est pas assez puissant pour alimenter correctement l\'ordinateur et la station d\'accueil en même temps.\r\nCela explique les pertes d\'affichage et de charge constatées.\r\n\r\nNous vous conseillons d\'arrêter l\'utilisation dans ces conditions pour éviter d’endommager le matériel.\r\nCes dommages ne seraient pas couverts par la garantie constructeur.\r\n\r\nMerci de prévoir un chargeur plus puissant pour une utilisation correcte.','2025-04-29 07:35:27','commentaire'),
(44,42,'Transfert sujet CDS','2025-04-29 07:36:06','commentaire'),
(45,52,'Installation de Windows','2025-04-29 09:06:59','terminee'),
(46,52,'Démmarage en mode Audit + MAJ','2025-04-29 09:07:31','en_cours'),
(47,53,'Intervention OK','2025-04-29 09:09:35','commentaire'),
(48,35,'[[-- [DATE[29/04/2025 10:46:55]] --- [ACTION[Ajout de notes]] --- [PAR[ ZERABI Mohamed El Hadi]] --]]\r\nMail de DELL : 28/04/2025 17:33\r\nNous avons le plaisir de vous informer que votre envoi d\'assemblage de dissipateur thermique a été traité avec succès. Vous pouvez facilement suivre l\'état de votre envoi en utilisant le lien suivant :\r\nSuivez votre envoi en ligne\r\nNuméro DPS : 459465147','2025-04-29 09:18:16','en_cours'),
(49,52,'Préparation du PC (S/N : 5CD926837C) terminée.\r\nInstallation de base réalisée avec Windows Update OK.\r\nLa configuration OOBE reste à finaliser par l\'utilisateur.','2025-04-29 12:44:40','commentaire'),
(50,58,'Actions réalisées :\r\n\r\nDétection du matériel à installer\r\n\r\nScanner concerné : Epson WorkForce DS-780N\r\n\r\nAjout manuel du scanner dans l’outil EPSON\r\n\r\nL’application EPSON ne permet pas la gestion simultanée de deux scanners USB connectés sur le même poste\r\n\r\nRecherche et tentative d’installation du pilote\r\n\r\nDrivers récupérés sur le site officiel Epson\r\n\r\nL’installation échoue car le programme demande de remplacer le pilote de l’imprimante-scanner déjà en place\r\n\r\nInstallation annulée pour éviter tout conflit de périphérique\r\n\r\nExtraction manuelle des fichiers INF nécessaires à l’installation\r\n\r\nImpossible d’extraire les fichiers INF directement depuis le poste utilisateur\r\n\r\nNouvelle tentative réalisée depuis un poste REEL IT\r\n\r\nAucun fichier INF trouvé dans le répertoire d’installation principal\r\n\r\nAnalyse plus poussée du setup.exe\r\n\r\nUn second install.exe est détecté à l’intérieur du premier\r\n\r\nExtraction réussie des fichiers INF à partir de ce second exécutable\r\n\r\nInstallation du pilote via la session d’installation\r\n\r\nConnexion à la session .\\SCV_Install\r\n\r\nInstallation manuelle du pilote via fichier INF : succès\r\n\r\nTests de bon fonctionnement\r\n\r\nLancement de l’outil de scan EPSON : le nouveau scanner n’est pas détecté\r\n\r\nInstallation de l’application Scanner via le Microsoft Store\r\n\r\nLes deux scanners sont reconnus\r\n\r\nTest de numérisation réalisé avec les deux périphériques : fonctionnel\r\n\r\nIntervention OK / Fonctionnement OK','2025-05-06 11:46:00','terminee'),
(51,59,'Préparation des postes OK // Activation Office + RGSYSTEM OK // SN : 5CD450DTJ7 / 5CD450DTRQ','2025-05-06 11:49:53','commentaire'),
(52,57,'Bonjour,\r\n\r\nNous souhaitons vous informer que votre Demande #11490 a été traité avec succès.\r\n\r\nNous espérons que la solution fournie répond à vos attentes.\r\n\r\nSi vous avez des questions ou des préoccupations supplémentaires, n\'hésitez pas à répondre à ce message ou à ouvrir un nouveau ticket. Nous serons heureux de vous aider.','2025-05-06 11:52:27','commentaire');
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
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(14,36,3,'2025-04-22 10:49:16','Récupération OK',10),
(15,41,3,'2025-04-22 10:53:41','Recherche PC INV + REcherche PC stock\r\n---\r\nLENOVO Thinkbook 15 G1 i5 8Go RAM / 256Go SSD Thinkbook 15 G1 i5	HW180000200	LENOVO	20SM000FFR	LR0EDT52\r\n\r\nLENOVO ThinkBook 15-IIL Laptop - Type 20SM	HW180000170	LENOVO	20SM000FFR	LR0DWT16\r\n\r\nLENOVO ThinkBook 15-IIL i5 / 8Go RAM / 256Go SSD	HW180000119	LENOVO	20SM000FFR	LR0DWSR5\r\n\r\nLENOVO ThinkBook 15-IIL Laptop - Type 20SM i5 / 8Go RAM / 256Go SSD	HW180000104	LENOVO	20SM000FFR	LR0D8QFK\r\n---',30),
(16,42,3,'2025-04-22 13:57:51','Actions réalisées : \r\n\r\nDIAG \r\nLe PC se connecte bien au Wi-Fi, mais le DHCP ne semble pas fonctionner\r\nReste à faire : \r\n\r\nTransfert la demande au responssable commercial',30),
(17,43,3,'2025-04-22 14:34:07','Problème N2 \r\n\r\nLes flèches de directions ne fonctionne pas que ce soit un clavier interne qu\'externe.\r\nActions réalisées : \r\n\r\nDIAG N1 \r\nProblème identique sur un clavier Externe \r\nLe problème est pas HardWare mais Software \r\nPMAD \r\nLes fleches de direction ne fonctionne sur le bureau las pas sous Excel\r\nAnalyse du fichier Excel \r\nErreur dans la MACRO \r\nDébeugage de la Macro \r\nIntervention OK / Fonctionnement OK \r\n\r\n \r\n\r\nProblème N2 \r\n\r\nL\'utilisatrice souhaite revenirsur l\'anciènne interface de OUTLOOCK \r\nActions réalisées : \r\n\r\nDans les Setting, \r\nSélection de l\'affichage Classique \r\nIntervention OK / FOnctionnement OK',30),
(18,41,3,'2025-04-22 15:35:11','Préparation postes',240),
(19,41,3,'2025-04-23 07:58:41','Transfert à la logistique pour envoie au client',15),
(20,44,3,'2025-04-23 08:41:34','Je comprends votre surprise concernant la réinstallation du système d\'exploitation, malgré la présence d\'une étiquette demandant de ne pas toucher au disque dur.\r\nToutefois, il est important de noter que lors des interventions en atelier au près du constructeur (en l\'occurrence DELL) se dernier se réserve le droit d\'effectuer les opérations jugées nécessaires pour garantir la remise en conformité du matériel, même si cela implique une réinstallation du système.\r\n\r\nDELL envoie systématiquement un mail avant toute prise en charge, rappelant qu\'il est impératif d\'effectuer une sauvegarde des données.\r\n\r\nDans le cadre du support constructeur, cette démarche est tout à fait conforme aux procédures DELL.\r\nMalheureusement, nous n\'avons aucun contrôle sur les actions menées une fois le matériel pris en charge par leurs services techniques.\r\n\r\nSi vous le souhaitez, je peux bien réouvrir le dossier auprès du support DELL, toutefois cela ne permettra pas de récupérer des données perdues.\r\n\r\nPour éviter ce type de situation, il est essentiel d\'effectuer des sauvegardes régulières, notamment avant tout envoi en atelier chez un autre prestataire.',25),
(21,42,3,'2025-04-23 10:45:37','Actions réalisées :\r\n\r\nRéception d’un appel entrant de LOPEZ concernant une autre demmande d\'assistance.\r\nRelevé de la configuration WIFI du PC effectué\r\nOK\r\nPrise de contact avec JB \r\nDdossier en cours de traitement de sa part. pour plus de  complément d\'information il me demande de me rapproché auy prèqs de Moutaz.\r\n\r\nPrise de contact avec Moutaz.\r\n\r\nOrganisation d’un rendez-vous avec le client pour une vérification de la configuration du PC à distance, prévue le 24/04/2025 au matin.\r\n\r\nReste à faire :\r\n\r\nRDV télémaintenance avec le client pour vérification de la configuration du poste.\r\nEffectuer la vérification de la configuration du PC avec le client lors du rendez-vous prévu.\r\nClôturer le ticket ou faire un suivi si une action complémentaire est nécessaire après le RDV.\r\n\r\nDate de prochaine action : 24/04/2025 (matin) ',45),
(22,46,3,'2025-04-23 10:50:28','Actions réalisées : \r\n\r\nAugmentation de la luminosité de l\'ecran \r\n\r\n \r\n\r\nModification de la résolution \r\n\r\n\r\nModificatrion de la mise a l\'echèle \r\n\r\n\r\nEpeinglage de capture dans le menue démarer \r\n\r\n\r\nEpeinglage de outloock, dans la barre des taches \r\n\r\nDesactivage de copilote au démmarage \r\n\r\n\r\nIntervention OK / Fonctinnement OK \r\n\r\nRelevé d\'information sur l\'incident 11580pour résolution',45),
(23,48,3,'2025-04-23 16:53:13','JB, le PRJ vient à peine d’etre crée sur MY portal (CMD SE2025-1219 Projet : 1x Pc Occaz HW)…\r\nA l’avenir, il faut penser \r\n1)	A laisser un minimum de temps pour la prep… \r\n2)	A donner un minimum d’info à l’équipe comme le PRJ par ex…\r\n\r\nEt petite précision win 10 du coup comme indiqué sur My portal ou 11 comme dans ton mail ?...',20),
(24,42,3,'2025-04-24 08:11:10','Actions réalisées : \r\n\r\nPréparation de l\'intervention \r\n\r\n\r\n\r\nRElevé de la config dur le poste de dominique : \r\n\r\n------------------------------------------------------------------\r\n\r\nFiche de configuration – Réseau Wi-Fi : PROCONSERVIT\r\n1. Informations générales\r\n\r\nNom du réseau (SSID) : PROCONSERVIT\r\n\r\nType de réseau : Point d’accès (Infrastructure ESS)\r\n\r\nDisponibilité : Le réseau est accessible à tous les utilisateurs du poste.\r\n\r\nConnexion automatique : Activée – le système se connectera automatiquement dès que le réseau sera détecté.\r\n\r\nConnexion au SSID même s’il est masqué : Désactivée – le poste ne tentera pas de se connecter si le SSID n’est pas visible.\r\n\r\nRecherche d’autres réseaux Wi-Fi pendant la connexion : Désactivée – évite les bascules automatiques.\r\n\r\n2. Paramètres de sécurité\r\n\r\nAuthentification : WPA2-Personal (WPA2-PSK)\r\n\r\nChiffrement : AES (Advanced Encryption Standard)\r\n\r\nMot de passe : Proconserv1808!\r\n\r\nUtilisation de 802.1X : Non (le réseau n’utilise pas de serveur RADIUS)\r\n\r\nMot de passe visible dans le fichier de configuration XML : Oui, en clair (non chiffré, nécessite des précautions de diffusion)\r\n\r\n3. Configuration IP et DNS\r\n\r\nAttribution de l’adresse IP : Automatique via DHCP\r\n\r\nAttribution du serveur DNS : Automatique via DHCP également\r\n\r\nReste à faire : \r\n\r\nIntervention \r\n\r\n ',15),
(25,48,3,'2025-04-25 08:16:58','préparation par tonny + préparation en parralèle d\'un nouveaux PRJ',180),
(26,49,3,'2025-04-25 08:20:24','Bonjour Fabien,\r\n\r\nSuite à la présentation rapide que je t\'ai faite hier ; \r\nJe te transmets les éléments concernant ta mission Helpdesk dans le cadre du projet de déploiement First Stop Ayme ;\r\nDossier : PRJ2025-0435\r\nÉgalement pour te donner plus d\'infos avant notre échange tout à l\'heure avec M. Sébastien Quidet, qui travaille au Helpdesk côté client.\r\n\r\nContexte de la mission\r\nDu 28 avril au 28 mai, tu seras le point de contact principal de certains utilisateurs en agences First Stop, pour les accompagner sur leur 1ère connexion Windows 11 et leur \"nouvel\" environnement de travail.\r\n\r\nFirst Stop souhaite que nous utilisions leur GLPI (si possible) et leur solution VOIP pour le traitement des demandes.\r\nLa prestation se concentre sur du support niveau 1, en journée uniquement (8h–17h), avec relais possible par le CDS si besoin.\r\n\r\nTypes de sollicitations attendues :\r\n- 1ère connexion utilisateur (Windows 11, Webmail Outlook, Microsoft Edge)\r\n- Connexion et usage de Parallels (applications métiers) --> logiciel basique \r\n- Ajout d’imprimantes via l’outil \"Autoprint\" --> plutôt simple également \r\n- Pb techniques de base : branchement, etc. \r\n\r\nTu interviendras en priorité sur les appels liés à ces points.\r\nSi une demande dépasse ton périmètre (droits, problème technique sur Parallels, réseau), on transfère le ticket à l\'équipe SI. \r\n\r\nAutres infos ; \r\n- Je serai en contact avec les équipes sur place également et l\'équipe SI / je reste joignable à tout moment et tu devrais pouvoir me transférer les appels.\r\n- Le CDS devrait pouvoir intervenir si nous avons trop de flux (j\'ai un point avec Hervé Talbot à 11h pour leur expliquer le déploiement). \r\n- Le client est conscient des délais courts et il sait que nous aurons besoin d\'un temps d\'adaptation. \r\n- Je ferais un process / checklist pour toi et pour le CDS avant lundi. \r\n- Environ 3,5 à 7,5 jours vendus au client de technicien M&D pour cette mission 👍. \r\n\r\n1er rendez-vous aujourd’hui : \r\nLe RDV avec M. Sébastien QUIDET servira à faire un point sur GLPI et la VOIP. \r\nIl te montrera potentiellement le fonctionnement de leur GLPI. \r\n\r\nJe te joins le mode opératoire des techniciens sur site (doc provisoire), qui te donnera une 1ère vision du déploiement.\r\nN’hésite pas à m’appeler si tu as des questions ou me les formuler par mail. \r\n\r\nÀ tout à l’heure,  \r\nCordialement, \r\n 	Victorin MONNOT\r\n\r\nChef de Projet Digital Workspace & Infrastructure\r\n\r\nvictorin.monnot@reelit.fr\r\n\r\n\r\n06 46 56 96 27\r\n\r\n\r\nSiège : 260 rue Denis Papin, 13290 Aix en Provence\r\nAgence Occitanie : 198 rue Etienne Lenoir ZAC Fréjorgues Est II, 34130 Mauguio\r\nAgence Île de France : 4 rue de la Pompe, 75016 Paris\r\n \r\nSuivez-nous sur LinkedIn !',180),
(27,42,3,'2025-04-25 08:21:52','Tentative de réparation +G du problème . \r\nPas de DHCP qui remonte',45),
(28,42,3,'2025-04-25 08:22:12','Intervention annulé par le CDS',10),
(29,50,3,'2025-04-25 08:58:56','Hello, \r\n\r\nJe vous contacte concernant une demmande d’assistance INT – 337619 pour le le  CD13  ‘COLLEGE PESQUIER – GARDANNE) concernant une DOC STATION i-tec. \r\n\r\nJ’ai une question simple, mais je ne trouve pas la réponse car il n’y a pas de service direct joignable via la hotline du constructeur.\r\nLe client a été livré en décembre 2023 : est-ce que l’appareil est toujours sous garantie ? Quelle est la durée de garantie prévue pour ce type d’équipement ? \r\n\r\nCordialement,',15),
(30,24,3,'2025-04-25 09:28:43','A confirmer avec la RH si prépa PC ou pas. Juste on le donne pas de remonté d\'image',5),
(31,35,3,'2025-04-25 11:05:59','suivi d\'incident : le support DELL emande une MAJ de la CM et en attente du retour de l\'utilisateur',15),
(32,50,3,'2025-04-29 09:35:27','Après vérification de la facture, la station d\'accueil livrée est une \"Station d’accueil i-tec USB B5 W-5x Ports USB 2.0 – 2x Ports USB3.0\", fournie sans adaptateur secteur.\r\n\r\nVous utilisez un chargeur Dell de 65W, qui n’est pas assez puissant pour alimenter correctement l\'ordinateur et la station d\'accueil en même temps.\r\nCela explique les pertes d\'affichage et de charge constatées.\r\n\r\nNous vous conseillons d\'arrêter l\'utilisation dans ces conditions pour éviter d’endommager le matériel.\r\nCes dommages ne seraient pas couverts par la garantie constructeur.\r\n\r\nMerci de prévoir un chargeur plus puissant pour une utilisation correcte.',40),
(33,42,3,'2025-04-29 09:36:06','Transfert sujet CDS',30),
(34,52,3,'2025-04-29 11:06:59','Installation de Windows',30),
(35,52,3,'2025-04-29 11:07:31','Démmarage en mode Audit + MAJ',120),
(36,53,3,'2025-04-29 11:09:35','Intervention OK',30),
(37,35,3,'2025-04-29 11:18:16','[[-- [DATE[29/04/2025 10:46:55]] --- [ACTION[Ajout de notes]] --- [PAR[ ZERABI Mohamed El Hadi]] --]]\r\nMail de DELL : 28/04/2025 17:33\r\nNous avons le plaisir de vous informer que votre envoi d\'assemblage de dissipateur thermique a été traité avec succès. Vous pouvez facilement suivre l\'état de votre envoi en utilisant le lien suivant :\r\nSuivez votre envoi en ligne\r\nNuméro DPS : 459465147',10),
(38,52,3,'2025-04-29 14:44:40','Préparation du PC (S/N : 5CD926837C) terminée.\r\nInstallation de base réalisée avec Windows Update OK.\r\nLa configuration OOBE reste à finaliser par l\'utilisateur.',120),
(39,58,3,'2025-05-06 13:46:00','Actions réalisées :\r\n\r\nDétection du matériel à installer\r\n\r\nScanner concerné : Epson WorkForce DS-780N\r\n\r\nAjout manuel du scanner dans l’outil EPSON\r\n\r\nL’application EPSON ne permet pas la gestion simultanée de deux scanners USB connectés sur le même poste\r\n\r\nRecherche et tentative d’installation du pilote\r\n\r\nDrivers récupérés sur le site officiel Epson\r\n\r\nL’installation échoue car le programme demande de remplacer le pilote de l’imprimante-scanner déjà en place\r\n\r\nInstallation annulée pour éviter tout conflit de périphérique\r\n\r\nExtraction manuelle des fichiers INF nécessaires à l’installation\r\n\r\nImpossible d’extraire les fichiers INF directement depuis le poste utilisateur\r\n\r\nNouvelle tentative réalisée depuis un poste REEL IT\r\n\r\nAucun fichier INF trouvé dans le répertoire d’installation principal\r\n\r\nAnalyse plus poussée du setup.exe\r\n\r\nUn second install.exe est détecté à l’intérieur du premier\r\n\r\nExtraction réussie des fichiers INF à partir de ce second exécutable\r\n\r\nInstallation du pilote via la session d’installation\r\n\r\nConnexion à la session .\\SCV_Install\r\n\r\nInstallation manuelle du pilote via fichier INF : succès\r\n\r\nTests de bon fonctionnement\r\n\r\nLancement de l’outil de scan EPSON : le nouveau scanner n’est pas détecté\r\n\r\nInstallation de l’application Scanner via le Microsoft Store\r\n\r\nLes deux scanners sont reconnus\r\n\r\nTest de numérisation réalisé avec les deux périphériques : fonctionnel\r\n\r\nIntervention OK / Fonctionnement OK',180),
(40,59,3,'2025-05-06 13:49:53','Préparation des postes OK // Activation Office + RGSYSTEM OK // SN : 5CD450DTJ7 / 5CD450DTRQ',180),
(41,57,3,'2025-05-06 13:52:27','Bonjour,\r\n\r\nNous souhaitons vous informer que votre Demande #11490 a été traité avec succès.\r\n\r\nNous espérons que la solution fournie répond à vos attentes.\r\n\r\nSi vous avez des questions ou des préoccupations supplémentaires, n\'hésitez pas à répondre à ce message ou à ouvrir un nouveau ticket. Nous serons heureux de vous aider.',45);
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
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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
(31,3,'2025-04-17','RDV : CFC D&D FINANCE','Config DS Agent et Scan to folder','in_progress','2025-04-17 12:24:17','basse','2025-04-22','maintenance',NULL),
(32,3,'2025-04-17','[Communication] - BRUNET Manon- [30/04/2025]','[Communication] - BRUNET Manon- [30/04/2025]','completed','2025-04-17 13:33:14','moyenne','2025-04-30','preparation_postes','2025-04-22 15:36:01'),
(33,3,'2025-04-17','Problème de son sur sa WEBCAM (11454)','Problème de son sur sa WEBCAM (11454)','completed','2025-04-17 14:03:53','moyenne','2025-04-17','standard','2025-04-17 16:10:55'),
(35,3,'2025-04-18','CD13 -  INC - 149155/Arrêt suite à surchauffe','A Surveiller','in_progress','2025-04-18 06:37:04','basse','2025-04-25','traitement_incident',NULL),
(36,3,'2025-04-18','Pret de postes HW180000502','Pret de PC Corinne	LOUIRAZIN - Oublie P¨C maison','completed','2025-04-18 06:53:27','moyenne','2025-04-21','Demande de service','2025-04-22 10:49:46'),
(37,1,'2025-04-18','TACHE DE TEST','TACHE DE TEST','pending','2025-04-18 12:03:46','critique','2025-04-21','standard',NULL),
(41,3,'2025-04-22','PRJ2025-0508 - Loc courte durée 1 mois - 4x PC','Loc courte durée 1 mois - 4x PC','completed','2025-04-22 08:53:01','moyenne',NULL,'preparation_postes','2025-04-23 07:33:54'),
(42,3,'2025-04-22','PROCONSERV-IT','Le PC se connecte bien au Wi-Fi, internet ne fonctionne pas,','completed','2025-04-22 11:57:10','critique',NULL,'traitement_incident','2025-04-29 07:36:17'),
(43,3,'2025-04-22','HORNETWORK - COORDEF INGENIERIE','La touche flèche de gauche et de droite ne fonctionne plus sur le clavier','completed','2025-04-22 12:33:37','moyenne',NULL,'Traitement d\'incident','2025-04-22 14:34:32'),
(44,3,'2025-04-23','CD13 - INC - 147253/Panne Portable Getionnaire (acte III)','Perte des données suite à l\'intervention DELL','completed','2025-04-23 06:40:58','moyenne',NULL,'Traitement d\'incident','2025-04-23 08:41:55'),
(45,3,'2025-04-23','Loc courte durée 1 mois - 4x PC','Envoyer mail au client avec les identifiant et MDP','completed','2025-04-23 07:33:34','moyenne',NULL,'Non catégorisé','2025-04-23 13:01:31'),
(46,3,'2025-04-23','HorNetwork Incident 11594	- 	Problème d\'affichage','Problème d\'affichage','completed','2025-04-23 08:49:50','moyenne',NULL,'Traitement d\'incident','2025-04-23 08:50:40'),
(47,3,'2025-04-23','11 314	Problème sur le Scan to Folder','Tout le monde serra présent pour le parramétrage des imprimantes','pending','2025-04-23 09:05:40','basse','2025-04-29','traitement_incident',NULL),
(48,3,'2025-04-23','COMMANDE SE2025-1219 (PRJ2025-0530)','Vente PC Client','completed','2025-04-23 14:51:54','critique','2025-04-24','preparation_postes','2025-04-25 06:17:42'),
(49,3,'2025-04-24','Réunion PRJ2025-0435','Suite à la présentation rapide que je t\'ai faite hier ; \r\nJe te transmets les éléments concernant ta mission Helpdesk dans le cadre du projet de déploiement First Stop Ayme ;\r\nDossier : PRJ2025-0435\r\nÉgalement pour te donner plus d\'infos avant notre échange tout à l\'heure avec M. Sébastien Quidet, qui travaille au Helpdesk côté client.','completed','2025-04-25 06:19:55','moyenne','2025-04-24','Réunion','2025-04-25 06:20:37'),
(50,3,'2025-04-25','CD13 - INT - 337619  - dock i-tec','Matériel/PDT - Poste de travail/UC Portable/Panne / - dock i-tec','completed','2025-04-25 06:29:14','haute','2025-04-30','traitement_incident','2025-04-29 07:35:34'),
(51,3,'2025-04-25','Récupération d’un poste de location à réintégrer dans le stock.','HW180000646\r\nà faire \r\nMAJ HECTOR \r\nSUPPR GRSYSTEM\r\nNetoyage \r\nRangement placard','completed','2025-04-25 08:47:06','basse',NULL,'preparation_postes','2025-04-29 07:34:16'),
(52,3,'2025-04-29','PRJ2025-0564 - Préparation PC','Ci-joint le PRJ : PRJ2025-0564 a préparé si possible aujourd’hui pour Léa M qui le remettra au client SPIGOL en main propre.','completed','2025-04-29 09:06:23','moyenne','2025-04-29','preparation_postes','2025-04-29 12:44:55'),
(53,3,'2025-04-29','11 644	 Entité Racine CLIENTS HORNETWORK PROCONSERV-IT','Windows ne démmare pas','completed','2025-04-29 09:09:14','moyenne',NULL,'Traitement d\'incident','2025-04-29 09:09:48'),
(54,3,'2025-05-05','FICHE D’ENTRÉE COLLABORATEUR - CASTRO Joris','Ajouter dans le TRELLO','pending','2025-05-05 06:42:22','haute','2025-05-12','preparation_postes',NULL),
(55,3,'2025-05-05','FICHE D’ENTRÉE COLLABORATEUR - NIEDZWESKI Alexandre','Demandeur : Hervé TALBOT / Entité Com Network','pending','2025-05-05 06:45:51','moyenne','2025-05-12','preparation_postes',NULL),
(56,3,'2025-05-05','FICHE D’ENTRÉE COLLABORATEUR - NIEDZWESKI  Alexandre','Demandeur :  Hervé TALBOT','pending','2025-05-05 06:48:21','moyenne','2025-05-12','preparation_postes',NULL),
(57,3,'2025-05-05','GLPI : 11490Paramétrage du scan pour le PC HW180000847','Paramétrer le SCAN TO FOLDER','completed','2025-05-05 07:15:50','moyenne','2025-05-08','Traitement d\'incident','2025-05-06 11:52:35'),
(58,3,'2025-05-06','HorNetwork - Demande d\'installation des drivers d\'un Scanner (11752)','Installation de SCAN','completed','2025-05-06 11:45:25','haute','2025-05-06','Traitement d\'incident','2025-05-06 11:46:34'),
(59,3,'2025-05-06','EDITION COMMANDE SE2025-0890 (PRJ2025-0556)','Projet : 2x PC + Access + Garantie 3 ans + SAV 2 ans - vente','completed','2025-05-06 11:49:11','moyenne','2025-05-06','preparation_postes','2025-05-06 11:50:11');
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

-- Dump completed on 2025-05-11  0:00:01
