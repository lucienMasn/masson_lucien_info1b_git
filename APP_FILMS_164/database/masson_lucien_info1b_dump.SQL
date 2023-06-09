-- OM 2021.02.17
-- FICHIER MYSQL POUR FAIRE FONCTIONNER LES EXEMPLES
-- DE REQUETES MYSQL
-- Database: masson_lucien_info1b_m164_db

-- Destruction de la BD si elle existe.
-- Pour être certain d'avoir la dernière version des données

DROP DATABASE IF EXISTS masson_lucien_info1b_m164_db;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS masson_lucien_info1b_m164_db;

-- Utilisation de cette base de donnée

USE masson_lucien_info1b_m164_db;
-- MySQL dump 10.13  Distrib 5.1.72, for Win32 (ia32)
--
-- Host: localhost    Database: masson_lucien_info1b_m164_db
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_adresse`
--

DROP TABLE IF EXISTS `t_adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_adresse` (
  `id_adresse` int NOT NULL AUTO_INCREMENT,
  `rue_adresse` varchar(50) DEFAULT NULL,
  `no_rue_adresse` char(10) DEFAULT NULL,
  `ville_adresse` varchar(50) DEFAULT NULL,
  `npa_adresse` char(10) DEFAULT NULL,
  `pays_adresse` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_adresse`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_adresse`
--

LOCK TABLES `t_adresse` WRITE;
/*!40000 ALTER TABLE `t_adresse` DISABLE KEYS */;
INSERT INTO `t_adresse` VALUES (1,'Rue des moulins','4','Yverdon','1401','Suisse'),(2,'Rue des Tuileries','12','Yverdon','1401','Suisse'),(3,'Rue du Milieu','5','Villars-Epeney','1404','Suisse'),(4,'Av. de sévelin','46','Lausanne','1003','Suisse'),(5,'Rue du Jura','12','Granson','1422','Suisse'),(6,'Rte du Signal','2','Orbe','1350','Suisse'),(7,'Grande-Rue','1','Molondin','1415','Suisse'),(8,'Rte Du crêt','3','Cronay','1406','Suisse');
/*!40000 ALTER TABLE `t_adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_contact`
--

DROP TABLE IF EXISTS `t_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_contact` (
  `id_contact` int NOT NULL AUTO_INCREMENT,
  `mail_contact` varchar(80) NOT NULL,
  `telephone_contact` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_contact`
--

LOCK TABLES `t_contact` WRITE;
/*!40000 ALTER TABLE `t_contact` DISABLE KEYS */;
INSERT INTO `t_contact` VALUES (1,'matthieu@laseigne.ch','07987663465'),(2,'anais@laseigne.ch','0775328756'),(3,'laurence@laseigne.ch','0774560998'),(4,'leo@laseigne.ch','0766549009'),(5,'elea@laseigne.ch','0798767543'),(6,'romain@laseigne.ch','0788977865'),(7,'christine@laseigne.ch','0765378412'),(8,'karim@laseigne.ch','0778711243');
/*!40000 ALTER TABLE `t_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_licence`
--

DROP TABLE IF EXISTS `t_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_licence` (
  `id_licence` int NOT NULL AUTO_INCREMENT,
  `federation_licence` char(30) DEFAULT NULL,
  `code_digit_licence` char(6) DEFAULT NULL,
  PRIMARY KEY (`id_licence`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_licence`
--

LOCK TABLES `t_licence` WRITE;
/*!40000 ALTER TABLE `t_licence` DISABLE KEYS */;
INSERT INTO `t_licence` VALUES (1,'SwissArchery','24578'),(2,'FSAA','1447'),(3,'SwissArchery','45643'),(4,'SwissArchery','24769'),(5,'SwissArchery','45645'),(6,'FSAA','3464'),(7,'FSAA','3264'),(8,'SwissArchery','86338');
/*!40000 ALTER TABLE `t_licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pers_avoir_contact`
--

DROP TABLE IF EXISTS `t_pers_avoir_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pers_avoir_contact` (
  `id_pers_avoir_contact` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_contact` int DEFAULT NULL,
  `date_contact` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_pers_avoir_contact`),
  KEY `FK_t_pers_avoir_contact_t_contact` (`fk_contact`),
  KEY `FK_t_pers_avoir_contact_t_personne` (`fk_personne`),
  CONSTRAINT `FK_t_pers_avoir_contact_t_contact` FOREIGN KEY (`fk_contact`) REFERENCES `t_contact` (`id_contact`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_pers_avoir_contact_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pers_avoir_contact`
--

LOCK TABLES `t_pers_avoir_contact` WRITE;
/*!40000 ALTER TABLE `t_pers_avoir_contact` DISABLE KEYS */;
INSERT INTO `t_pers_avoir_contact` VALUES (6,1,1,'2023-06-10 10:27:35'),(7,2,5,'2023-06-10 10:27:47'),(8,3,3,'2023-06-10 10:27:59'),(9,4,4,'2023-06-10 10:28:07'),(10,5,6,'2023-06-10 10:28:14'),(11,6,2,'2023-06-10 10:28:26'),(12,12,7,'2023-06-10 10:28:50'),(13,13,8,'2023-06-10 10:28:58');
/*!40000 ALTER TABLE `t_pers_avoir_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pers_avoir_licence`
--

DROP TABLE IF EXISTS `t_pers_avoir_licence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pers_avoir_licence` (
  `id_pers_avoir_licence` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_licence` int DEFAULT NULL,
  PRIMARY KEY (`id_pers_avoir_licence`),
  KEY `FK_t_pers_avoir_licence_t_licence` (`fk_licence`),
  KEY `FK_t_pers_avoir_licence_t_personne` (`fk_personne`),
  CONSTRAINT `FK_t_pers_avoir_licence_t_licence` FOREIGN KEY (`fk_licence`) REFERENCES `t_licence` (`id_licence`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_pers_avoir_licence_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pers_avoir_licence`
--

LOCK TABLES `t_pers_avoir_licence` WRITE;
/*!40000 ALTER TABLE `t_pers_avoir_licence` DISABLE KEYS */;
INSERT INTO `t_pers_avoir_licence` VALUES (4,2,2),(5,3,3),(6,4,4),(7,5,5),(8,6,6),(9,12,7),(10,13,8);
/*!40000 ALTER TABLE `t_pers_avoir_licence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pers_habiter_adresse`
--

DROP TABLE IF EXISTS `t_pers_habiter_adresse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pers_habiter_adresse` (
  `id_pers_habiter_adresse` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_adresse` int DEFAULT NULL,
  PRIMARY KEY (`id_pers_habiter_adresse`),
  KEY `FK_t_pers_habiter_adresse_t_adresse` (`fk_adresse`),
  KEY `FK_t_pers_habiter_adresse_t_personne` (`fk_personne`),
  CONSTRAINT `FK_t_pers_habiter_adresse_t_adresse` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresse` (`id_adresse`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_pers_habiter_adresse_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pers_habiter_adresse`
--

LOCK TABLES `t_pers_habiter_adresse` WRITE;
/*!40000 ALTER TABLE `t_pers_habiter_adresse` DISABLE KEYS */;
INSERT INTO `t_pers_habiter_adresse` VALUES (4,1,1),(5,2,2),(6,3,3),(7,4,4),(8,5,5),(9,6,6),(10,12,7),(11,13,8);
/*!40000 ALTER TABLE `t_pers_habiter_adresse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_pers_participer_tournoi`
--

DROP TABLE IF EXISTS `t_pers_participer_tournoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_pers_participer_tournoi` (
  `id_pers_participer_tournoi` int NOT NULL AUTO_INCREMENT,
  `fk_personne` int DEFAULT NULL,
  `fk_tournoi` int DEFAULT NULL,
  `resultat_tournoi` char(10) DEFAULT NULL,
  `date_tournoi` date DEFAULT NULL,
  PRIMARY KEY (`id_pers_participer_tournoi`),
  KEY `FK_t_pers_participer_tournoi_t_tournoi` (`fk_tournoi`),
  KEY `FK_t_pers_participer_tournoi_t_personne` (`fk_personne`),
  CONSTRAINT `FK_t_pers_participer_tournoi_t_personne` FOREIGN KEY (`fk_personne`) REFERENCES `t_personne` (`id_personne`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `FK_t_pers_participer_tournoi_t_tournoi` FOREIGN KEY (`fk_tournoi`) REFERENCES `t_tournoi` (`id_tournoi`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_pers_participer_tournoi`
--

LOCK TABLES `t_pers_participer_tournoi` WRITE;
/*!40000 ALTER TABLE `t_pers_participer_tournoi` DISABLE KEYS */;
INSERT INTO `t_pers_participer_tournoi` VALUES (1,1,1,'1','2023-04-11'),(2,3,2,'2','2023-04-11'),(3,1,3,'3','2023-04-11'),(4,2,2,'12',NULL),(5,2,3,'7',NULL),(6,4,1,'12',NULL),(7,2,3,'13',NULL);
/*!40000 ALTER TABLE `t_pers_participer_tournoi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_personne`
--

DROP TABLE IF EXISTS `t_personne`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_personne` (
  `id_personne` int NOT NULL AUTO_INCREMENT,
  `nom_pers` char(30) DEFAULT NULL,
  `prenom_pers` char(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `date_naiss_pers` date DEFAULT NULL,
  `sexe_pers` char(1) DEFAULT NULL,
  `lieux_naiss_pers` char(30) DEFAULT NULL,
  PRIMARY KEY (`id_personne`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_personne`
--

LOCK TABLES `t_personne` WRITE;
/*!40000 ALTER TABLE `t_personne` DISABLE KEYS */;
INSERT INTO `t_personne` VALUES (1,'Matthieu','Gressly','1990-07-08','M','Yverdon'),(2,'Eléa','Duboi','1977-07-03','F','Genève'),(3,'Laurence','Limoniers','1998-03-04','F','Yverdon-les-bains'),(4,'Léo','Limoniers','1997-07-11','M',NULL),(5,'Romain','Mayor','1970-09-07','M',NULL),(6,'Anais','Baumer','2000-11-12','F',NULL),(12,'Christine','Puidoux','1970-06-04','F','Morges'),(13,'Karim','Berclez','1990-02-03','M','Moudon');
/*!40000 ALTER TABLE `t_personne` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_tournoi`
--

DROP TABLE IF EXISTS `t_tournoi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `t_tournoi` (
  `id_tournoi` int NOT NULL AUTO_INCREMENT,
  `nom_tournoi` varchar(50) DEFAULT NULL,
  `discipline_tournoi` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_tournoi`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_tournoi`
--

LOCK TABLES `t_tournoi` WRITE;
/*!40000 ALTER TABLE `t_tournoi` DISABLE KEYS */;
INSERT INTO `t_tournoi` VALUES (1,'Trn d\'hiver','3D'),(2,'trn Indoor','3D'),(3,'trn u20','3D'),(4,'European Youth Cup (2nd leg)','Indoor'),(5,'FITA Neuchâtel','Field'),(6,'Tournois Intern','3D'),(7,'Achers de la tour','Field'),(8,'Indoor 2023','Indoor');
/*!40000 ALTER TABLE `t_tournoi` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-11  9:54:29


