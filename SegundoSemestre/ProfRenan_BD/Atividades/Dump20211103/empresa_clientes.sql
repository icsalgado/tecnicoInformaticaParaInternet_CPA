-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: empresa
-- ------------------------------------------------------
-- Server version	5.7.31

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `codCliente` int(3) NOT NULL AUTO_INCREMENT,
  `nome` varchar(50) NOT NULL,
  `endereco` varchar(30) NOT NULL,
  `cidade` varchar(20) NOT NULL,
  `estado` char(2) NOT NULL,
  `sexo` char(1) NOT NULL,
  `codClasse` int(2) NOT NULL,
  `id` varchar(5) DEFAULT NULL,
  `renda` double(7,2) NOT NULL DEFAULT '0.00',
  `sit` char(1) DEFAULT NULL,
  `idade` int(2) DEFAULT NULL,
  PRIMARY KEY (`codCliente`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'João','Rua Inácio\nMontanha-123','Porto Alegre','RS','M',1,'01',0.00,NULL,NULL),(3,'FulanoA','Rua CBA-123','Porto Alegre','RS','M',1,'02',0.00,NULL,NULL),(4,'FulanaB','RUA ABC-321','Gravatai','RS','F',2,'03',0.00,NULL,NULL),(5,'FulanoB','qualquer','Porto Alegre','RS','M',2,'04',0.00,NULL,NULL),(6,'FulanoC','br116','Canoas','RS','M',1,'05',0.00,NULL,NULL),(7,'FulanaC','Rua 2','Santa Maria','RS','F',1,'06',0.00,NULL,NULL),(8,'FulanaD','Rua sem nome','Florianopolis','SC','F',2,'07',0.00,NULL,NULL),(9,'FulanoD','Rua C','Rio de Janeiro','RJ','M',1,'08',0.00,NULL,NULL),(10,'FulanoE','br101','Curitiba','PR','M',3,'09',0.00,NULL,NULL),(11,'João da Silva','Rua Inácio\nMontanha-123','Porto Alegre','RS','M',1,'10',0.00,NULL,NULL),(12,'FulanaA Castro','Rua ABC-123','Gravatai','RS','F',2,'11',0.00,NULL,NULL),(13,'FulanoA Alves','Rua CBA-123','Porto Alegre','RS','M',1,'12',0.00,NULL,NULL),(14,'FulanaB Dornelles','RUA ABC-321','Gravatai','RS','F',2,'13',0.00,NULL,NULL),(15,'FulanoB Aguiar','qualquer','Porto Alegre','RS','M',2,'14',0.00,NULL,NULL),(16,'FulanoC Basilio','br116','Canoas','RS','M',1,'15',0.00,NULL,NULL),(17,'FulanaC Clemente','Rua 2','Santa Maria','RS','F',1,'16',0.00,NULL,NULL),(18,'FulanaD Figueredo','Rua sem nome','Florianopolis','SC','F',2,'17',0.00,NULL,NULL),(19,'FulanoD Carvalho','Rua C','Rio de Janeiro','RJ','M',1,'18',0.00,NULL,NULL),(20,'FulanoE Carvalho','br101','Curitiba','PR','M',3,'19',0.00,NULL,NULL);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-03 12:26:45
