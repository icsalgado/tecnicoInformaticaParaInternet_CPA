/*
SQLyog Community v13.1.9 (64 bit)
MySQL - 5.7.17-13-log : Database - bancoaula2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bancoaula2` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_general_ci */;

USE `bancoaula2`;

/*Table structure for table `1_carrofernando` */

DROP TABLE IF EXISTS `1_carrofernando`;

CREATE TABLE `1_carrofernando` (
  `idcarro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  `marca` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cilindradas` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idcarro`),
  KEY `1_carrofernando_ibfk_1` (`idmodelo`),
  CONSTRAINT `1_carrofernando_ibfk_1` FOREIGN KEY (`idmodelo`) REFERENCES `1_modelofernando` (`idmodelo`) ON DELETE SET NULL ON UPDATE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `1_carrofernando` */

insert  into `1_carrofernando`(`idcarro`,`nome`,`idmodelo`,`marca`,`cilindradas`,`status`) values 
(1,'Cobalt',8,'Chevrolet','1000','I'),
(2,'Focus',4,'Ford','2000','A'),
(3,'Elantra',3,'Hyundai','2000','A'),
(4,'Spin',9,'Chevrolet','1000','A'),
(5,'TESTE',2,'TESTE','2000','A'),
(6,'X1',6,'BMW','3000','A'),
(8,'Uno',6,'Fiat','1500','A'),
(11,'teste1',8,'teste1','2000','I');

/*Table structure for table `1_modelofernando` */

DROP TABLE IF EXISTS `1_modelofernando`;

CREATE TABLE `1_modelofernando` (
  `idmodelo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `1_modelofernando` */

insert  into `1_modelofernando`(`idmodelo`,`nome`,`status`) values 
(2,'2015','A'),
(3,'2019','A'),
(4,'2017','A'),
(6,'2019','A'),
(8,'2020','A'),
(9,'2024','A'),
(10,'2025','A');

/*Table structure for table `1_pessoacomprafernando` */

DROP TABLE IF EXISTS `1_pessoacomprafernando`;

CREATE TABLE `1_pessoacomprafernando` (
  `idcomprapessoa` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) DEFAULT NULL,
  `idcarro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomprapessoa`),
  KEY `1_pessoacomprafernando_ibfk_1` (`idpessoa`),
  KEY `1_pessoacomprafernando_ibfk_2` (`idcarro`),
  CONSTRAINT `1_pessoacomprafernando_ibfk_1` FOREIGN KEY (`idpessoa`) REFERENCES `pessoateste` (`idpessoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `1_pessoacomprafernando_ibfk_2` FOREIGN KEY (`idcarro`) REFERENCES `1_carrofernando` (`idcarro`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `1_pessoacomprafernando` */

insert  into `1_pessoacomprafernando`(`idcomprapessoa`,`idpessoa`,`idcarro`) values 
(1,1,8),
(3,21,11);

/*Table structure for table `TB_PESSOA_BAK_FERNANDO` */

DROP TABLE IF EXISTS `TB_PESSOA_BAK_FERNANDO`;

CREATE TABLE `TB_PESSOA_BAK_FERNANDO` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `DtaNascimento` date DEFAULT NULL,
  `CPF` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `TB_PESSOA_BAK_FERNANDO` */

insert  into `TB_PESSOA_BAK_FERNANDO`(`idPessoa`,`Nome`,`DtaNascimento`,`CPF`) values 
(1,'Clebin','1996-08-01','11111'),
(2,'Thiago P.','2000-03-13','22222'),
(3,'Robert','1985-06-27','33333'),
(4,'Julia','1982-11-24','44444'),
(5,'Maria','1994-07-27','55555'),
(6,'Jenifer','1981-12-31','66666'),
(7,'Fernando','1994-01-01','77777'),
(8,'Pedro','1996-10-15','88888'),
(9,'Nilton','1990-04-11','99999'),
(10,'José','1990-04-05','10101');

/*Table structure for table `TB_PESSOA_BAK_marcio` */

DROP TABLE IF EXISTS `TB_PESSOA_BAK_marcio`;

CREATE TABLE `TB_PESSOA_BAK_marcio` (
  `id_pessoabak` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `dta_nascimento` date DEFAULT NULL,
  `cpf` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_pessoabak`)
) ENGINE=InnoDB AUTO_INCREMENT=611 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `TB_PESSOA_BAK_marcio` */

insert  into `TB_PESSOA_BAK_marcio`(`id_pessoabak`,`nome`,`dta_nascimento`,`cpf`) values 
(601,'Marcio','1970-01-06','4587695'),
(602,'Silvana Gomes','1984-10-19','45587695'),
(603,'Joel Caldas','1994-02-19','548745'),
(604,'Thais Lima','1990-01-05','549863200'),
(605,'Tadeu Gonçalves','1968-06-09','56987421'),
(606,'Ernesto Che','1961-12-04','2514789'),
(607,'Afondo Ribeiro','1981-03-16','2516346'),
(608,'Amadeu Mozart','1947-11-27','3541526'),
(609,'Hélio La Pena','1968-04-12','4512658'),
(610,'Marina Silva','1997-08-26','99784512');

/*Table structure for table `carro` */

DROP TABLE IF EXISTS `carro`;

CREATE TABLE `carro` (
  `ID` int(2) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `IDmodelo` int(2) DEFAULT NULL,
  `Marca` varchar(100) DEFAULT NULL,
  `Cilindradas` varchar(100) DEFAULT NULL,
  `status` char(8) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `IDmodelo` (`IDmodelo`),
  CONSTRAINT `carro_ibfk_1` FOREIGN KEY (`IDmodelo`) REFERENCES `modelo` (`IDmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `carro` */

/*Table structure for table `carroIuri` */

DROP TABLE IF EXISTS `carroIuri`;

CREATE TABLE `carroIuri` (
  `idcarro` int(10) NOT NULL AUTO_INCREMENT,
  `marca` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idmodelo` int(10) DEFAULT NULL,
  `cilindradas` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcarro`),
  KEY `idmodelo` (`idmodelo`),
  CONSTRAINT `carroIuri_ibfk_1` FOREIGN KEY (`idmodelo`) REFERENCES `modeloIuri` (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `carroIuri` */

insert  into `carroIuri`(`idcarro`,`marca`,`idmodelo`,`cilindradas`,`status`) values 
(2,'Mitsubishi',1,'150','a'),
(3,'Ford',2,'110','a'),
(4,'Citroen',3,'117','i'),
(10,'ford',2,'200','a'),
(13,'vw',5,'10','a'),
(14,'vw2',5,'23','s'),
(15,'vw',5,'123','a'),
(16,'vw',3,'123','a'),
(18,'teste0107',1,'0107','a');

/*Table structure for table `carro_marcio` */

DROP TABLE IF EXISTS `carro_marcio`;

CREATE TABLE `carro_marcio` (
  `idcarro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  `marca` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cilindradas` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcarro`),
  KEY `FK_id_modelo_modelo_marcio` (`idmodelo`),
  CONSTRAINT `FK_carro_modelo` FOREIGN KEY (`idmodelo`) REFERENCES `modelo_marcio` (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `carro_marcio` */

insert  into `carro_marcio`(`idcarro`,`nome`,`idmodelo`,`marca`,`cilindradas`,`status`) values 
(17,'Onix ',9,'GM','1000','A'),
(19,'Corcel',6,'Ford','1800','A'),
(21,'Kombi',4,'VW','1800','A'),
(22,'Go',4,'VW','1000','A'),
(23,'Fiesta Hatch',6,'Ford','1000','A'),
(24,'Cruze',9,'GM','1800','A');

/*Table structure for table `clientebakiuri` */

DROP TABLE IF EXISTS `clientebakiuri`;

CREATE TABLE `clientebakiuri` (
  `idcliente` int(11) NOT NULL DEFAULT '0',
  `nome` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dtanascimento` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `clientebakiuri` */

insert  into `clientebakiuri`(`idcliente`,`nome`,`cpf`,`rg`,`dtanascimento`) values 
(1,'Fulando de Tal.','1234','1234','1970-04-16'),
(2,'Ciclano de Tal','4563','156456','1970-02-04'),
(3,'Joao da Esquina','48656','126423','1970-03-05'),
(4,'Telmo Luiz','28495','12423543','2002-06-15'),
(5,'Maria de fatima','42354','5253654','1978-03-05'),
(696,'fulanonew','88888','888888','2022-01-04'),
(0,'Robertinho','4444','555555','2022-05-09'),
(0,'Fernando','77777','888888','2022-05-09'),
(7,'newfulano2','0000','0000','1989-01-01'),
(0,'Juliava','21546','456887','1990-01-09');

/*Table structure for table `clientebakmarcio` */

DROP TABLE IF EXISTS `clientebakmarcio`;

CREATE TABLE `clientebakmarcio` (
  `id_clientebak` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `cpf` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dtanascimento` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_clientebak`),
  KEY `id_clientebak` (`id_clientebak`),
  KEY `FK_idcliente_idcliente` (`idcliente`),
  CONSTRAINT `FK_idcliente_idcliente` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `clientebakmarcio` */

insert  into `clientebakmarcio`(`id_clientebak`,`nome`,`cpf`,`rg`,`dtanascimento`,`idcliente`) values 
(1,'Fulando de Tal','1234','1234','1970-04-16',NULL),
(2,'Ciclano de Tal','4563','156456','1970-02-04',NULL),
(3,'Joao da Esquina','48656','126423','1970-03-05',NULL),
(4,'Telmo Luiz','28495','12423543','2002-06-15',NULL),
(5,'Maria de fatima','42354','5253654','1978-03-05',NULL),
(6,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(7,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(8,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(9,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(10,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(11,'Marcio 0','2135468','4587695','2022-04-04',NULL),
(16,'Tadeu','5487','45325','1990-05-09',NULL),
(17,'Juliana','45879','54216','2000-05-09',NULL),
(18,'joaozinho','00000','0000000','2022-05-09',NULL),
(19,NULL,NULL,NULL,NULL,NULL),
(20,NULL,NULL,NULL,NULL,NULL),
(21,'Pedrinho','444444','444444','2022-05-09',NULL),
(22,'Teste','1234','123','2022-05-09',NULL),
(23,'Clebin','989898','898989','2022-05-09',NULL),
(24,'fulano2','88888','888888','2022-01-04',NULL),
(28,'newciente','0000222','0000222','2004-06-23',NULL),
(29,'Robertinho','4444','555555','2022-05-09',NULL),
(30,'Fernando','77777','888888','2022-05-09',NULL),
(31,'newfulano','0000','0000','1989-01-01',NULL),
(32,'Juliava','21546','456887','1990-01-09',NULL);

/*Table structure for table `clientes` */

DROP TABLE IF EXISTS `clientes`;

CREATE TABLE `clientes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  `sexo` varchar(1) NOT NULL,
  `email` varchar(45) NOT NULL,
  `telefone` varchar(12) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `clientes` */

/*Table structure for table `ednclientes` */

DROP TABLE IF EXISTS `ednclientes`;

CREATE TABLE `ednclientes` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `cep` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `rua` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `numero` varchar(8) CHARACTER SET utf8mb4 NOT NULL,
  `complemento` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `bairro` varchar(120) CHARACTER SET utf8mb4 NOT NULL,
  `estado` varchar(32) CHARACTER SET utf8mb4 NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `ednclientes` */

/*Table structure for table `guilhermeprofessor` */

DROP TABLE IF EXISTS `guilhermeprofessor`;

CREATE TABLE `guilhermeprofessor` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) NOT NULL,
  `CPF` varchar(11) NOT NULL,
  `Materia` varchar(100) NOT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `guilhermeprofessor` */

insert  into `guilhermeprofessor`(`Id`,`Nome`,`CPF`,`Materia`) values 
(1,'Naura','12345678910','Análise de projetos');

/*Table structure for table `guilhermeturma` */

DROP TABLE IF EXISTS `guilhermeturma`;

CREATE TABLE `guilhermeturma` (
  `Id` int(5) NOT NULL AUTO_INCREMENT,
  `Turma` varchar(100) NOT NULL,
  `Professor` varchar(100) NOT NULL,
  `idProfessor` int(5) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `ProfessorId` (`idProfessor`),
  CONSTRAINT `ProfessorId` FOREIGN KEY (`idProfessor`) REFERENCES `guilhermeprofessor` (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `guilhermeturma` */

insert  into `guilhermeturma`(`Id`,`Turma`,`Professor`,`idProfessor`) values 
(1,'2INFO1','Naura',NULL),
(3,'4INFO','Renan',NULL),
(4,'4INFO','Guilherme',NULL);

/*Table structure for table `modelo` */

DROP TABLE IF EXISTS `modelo`;

CREATE TABLE `modelo` (
  `IDmodelo` int(2) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) DEFAULT NULL,
  `Status` char(8) DEFAULT NULL,
  PRIMARY KEY (`IDmodelo`),
  CONSTRAINT `modelo_ibfk_1` FOREIGN KEY (`IDmodelo`) REFERENCES `carro` (`IDmodelo`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `modelo` */

/*Table structure for table `modeloIuri` */

DROP TABLE IF EXISTS `modeloIuri`;

CREATE TABLE `modeloIuri` (
  `idmodelo` int(10) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `modeloIuri` */

insert  into `modeloIuri`(`idmodelo`,`nome`,`status`) values 
(1,'Lancer','a'),
(2,'Focus','a'),
(3,'fusca2','a'),
(5,'uno','a');

/*Table structure for table `modelo_marcio` */

DROP TABLE IF EXISTS `modelo_marcio`;

CREATE TABLE `modelo_marcio` (
  `idmodelo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `modelo_marcio` */

insert  into `modelo_marcio`(`idmodelo`,`nome`,`status`) values 
(4,'VolksWagen','A'),
(5,'Fiat','A'),
(6,'Ford','A'),
(9,'Chevrolet','A'),
(11,'Mercedes','A');

/*Table structure for table `p_compra` */

DROP TABLE IF EXISTS `p_compra`;

CREATE TABLE `p_compra` (
  `idpessoacompra` int(11) NOT NULL,
  `idpessoa` int(11) DEFAULT NULL,
  `idcarro` int(11) DEFAULT NULL,
  KEY `idcarro` (`idcarro`),
  KEY `idpessoa` (`idpessoa`),
  CONSTRAINT `idcarro` FOREIGN KEY (`idcarro`) REFERENCES `carro` (`ID`),
  CONSTRAINT `idpessoa` FOREIGN KEY (`idpessoa`) REFERENCES `pessoateste` (`idpessoa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `p_compra` */

/*Table structure for table `pessoa` */

DROP TABLE IF EXISTS `pessoa`;

CREATE TABLE `pessoa` (
  `idpessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cpf` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pessoa` */

insert  into `pessoa`(`idpessoa`,`nome`,`rg`,`cpf`) values 
(1,'Teste Gilson','153135135','123-561-531/53');

/*Table structure for table `pessoaCompraIuri` */

DROP TABLE IF EXISTS `pessoaCompraIuri`;

CREATE TABLE `pessoaCompraIuri` (
  `idpessoacompra` int(10) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(10) DEFAULT NULL,
  `idcarro` int(10) DEFAULT NULL,
  PRIMARY KEY (`idpessoacompra`),
  KEY `idpessoa` (`idpessoa`),
  KEY `idcarro` (`idcarro`),
  CONSTRAINT `pessoaCompraIuri_ibfk_1` FOREIGN KEY (`idpessoa`) REFERENCES `pessoateste` (`idpessoa`),
  CONSTRAINT `pessoaCompraIuri_ibfk_2` FOREIGN KEY (`idcarro`) REFERENCES `carroIuri` (`idcarro`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pessoaCompraIuri` */

insert  into `pessoaCompraIuri`(`idpessoacompra`,`idpessoa`,`idcarro`) values 
(3,20,13),
(4,7,4);

/*Table structure for table `pessoaTeste` */

DROP TABLE IF EXISTS `pessoaTeste`;

CREATE TABLE `pessoaTeste` (
  `Id` int(10) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `RG` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `CPF` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pessoaTeste` */

insert  into `pessoaTeste`(`Id`,`Nome`,`RG`,`CPF`) values 
(1,'teste2','25245453','000.000.000-00'),
(2,'gdfhfdgh','234543','345.345.345-34'),
(3,'Iuri 1605','1605','   .   .   -  '),
(4,'Flavia','null','77777'),
(5,'','','   .   .   -  ');

/*Table structure for table `pessoacompra_marcio` */

DROP TABLE IF EXISTS `pessoacompra_marcio`;

CREATE TABLE `pessoacompra_marcio` (
  `idpessoacompra` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) DEFAULT NULL,
  `idcarro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpessoacompra`),
  KEY `FK_idcarro_carro_marcio` (`idcarro`),
  KEY `FK_compra_pessoa` (`idpessoa`),
  CONSTRAINT `FK_compra_carro` FOREIGN KEY (`idcarro`) REFERENCES `carro_marcio` (`idcarro`),
  CONSTRAINT `FK_compra_pessoa` FOREIGN KEY (`idpessoa`) REFERENCES `pessoateste` (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pessoacompra_marcio` */

insert  into `pessoacompra_marcio`(`idpessoacompra`,`idpessoa`,`idcarro`) values 
(4,4,22),
(7,20,17),
(8,18,22);

/*Table structure for table `pessoateste` */

DROP TABLE IF EXISTS `pessoateste`;

CREATE TABLE `pessoateste` (
  `idpessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cpf` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idpessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `pessoateste` */

insert  into `pessoateste`(`idpessoa`,`nome`,`rg`,`cpf`) values 
(1,'Fernando Souza e Silva','464564','152646456'),
(3,'Robertinho','444444','88888888'),
(4,'Jeferson','8888888','8888888'),
(7,'Jurandir Silva','5555555','   .   .   / '),
(18,'Cleberson','777777','88888888'),
(19,'Robervaldo','010101010','10101010'),
(20,'Tupac Shacur','0102030405','71177117'),
(21,'iuri2805','64654564654','6456456'),
(23,'iuri2605','1654962325','123456789'),
(24,'Teste teste','8888888888','999.999.999/99'),
(25,'gabriel','12543265423','87564432412'),
(27,'iuri01/07 alteração','7894651230','1234567890');

/*Table structure for table `professor_gabriel` */

DROP TABLE IF EXISTS `professor_gabriel`;

CREATE TABLE `professor_gabriel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(60) DEFAULT NULL,
  `cpf` int(11) DEFAULT NULL,
  `materia` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4;

/*Data for the table `professor_gabriel` */

insert  into `professor_gabriel`(`id`,`nome`,`cpf`,`materia`) values 
(2,'luis',873555123,'redes'),
(3,'Fernando Souza e Silva',152646456,''),
(5,'pedro',83647754,'historia'),
(6,'joao',865733857,'portugues'),
(7,'jose',864833621,'portugues');

/*Table structure for table `professor_gilson` */

DROP TABLE IF EXISTS `professor_gilson`;

CREATE TABLE `professor_gilson` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cpf` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `materia` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `professor_gilson` */

/*Table structure for table `tabelateste` */

DROP TABLE IF EXISTS `tabelateste`;

CREATE TABLE `tabelateste` (
  `idteste` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idteste`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tabelateste` */

insert  into `tabelateste`(`idteste`,`nome`) values 
(1,'Fulando de Tal'),
(2,'Ciclano de Tal'),
(3,'Joao da Esquina'),
(4,'Telmo Luiz'),
(5,'Fulando de Tal'),
(6,'Ciclano de Tal'),
(7,'Joao da Esquina'),
(8,'Telmo Luiz'),
(9,'Fulando de Tal'),
(10,'Ciclano de Tal'),
(11,'Joao da Esquina'),
(12,'Telmo Luiz'),
(13,'Fulando de Tal'),
(14,'Ciclano de Tal'),
(15,'Joao da Esquina'),
(16,'Telmo Luiz'),
(17,'Maria de fatima'),
(18,'Fulando de Tal'),
(19,'Ciclano de Tal'),
(20,'Joao da Esquina'),
(21,'Telmo Luiz'),
(22,'Maria de fatima'),
(23,'Fulando de Tal'),
(24,'Ciclano de Tal'),
(25,'Joao da Esquina'),
(26,'Telmo Luiz'),
(27,'Maria de fatima'),
(28,'Fulando de Tal'),
(29,'Ciclano de Tal'),
(30,'Joao da Esquina'),
(31,'Telmo Luiz'),
(32,'Maria de fatima');

/*Table structure for table `tbCapacidade_marcio` */

DROP TABLE IF EXISTS `tbCapacidade_marcio`;

CREATE TABLE `tbCapacidade_marcio` (
  `id_capacidade` int(11) NOT NULL AUTO_INCREMENT,
  `quant_maxima` int(11) DEFAULT NULL,
  `quant_vendida` int(11) DEFAULT NULL,
  `id_show` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_capacidade`),
  KEY `FK_capacidade_show` (`id_show`),
  CONSTRAINT `FK_capacidade_show` FOREIGN KEY (`id_show`) REFERENCES `tbShow_marcio` (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbCapacidade_marcio` */

insert  into `tbCapacidade_marcio`(`id_capacidade`,`quant_maxima`,`quant_vendida`,`id_show`) values 
(1,10000,10,1),
(2,15000,9,2),
(3,2000,9,3),
(4,4500,0,4),
(5,8000,0,5),
(6,7200,9,6),
(7,9000,9,7),
(8,48000,0,8),
(9,7500,0,9),
(10,5000,0,10);

/*Table structure for table `tbIngresso_marcio` */

DROP TABLE IF EXISTS `tbIngresso_marcio`;

CREATE TABLE `tbIngresso_marcio` (
  `id_ingresso` int(11) NOT NULL AUTO_INCREMENT,
  `valor` double(5,2) DEFAULT NULL,
  `id_show` int(11) DEFAULT NULL,
  `id_pessoa` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_ingresso`),
  KEY `FK_ingresso_show` (`id_show`),
  KEY `FK_ingresso_pessoa` (`id_pessoa`),
  CONSTRAINT `FK_ingresso_pessoa` FOREIGN KEY (`id_pessoa`) REFERENCES `tbPessoa_marcio` (`id_pessoa`),
  CONSTRAINT `FK_ingresso_show` FOREIGN KEY (`id_show`) REFERENCES `tbShow_marcio` (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbIngresso_marcio` */

insert  into `tbIngresso_marcio`(`id_ingresso`,`valor`,`id_show`,`id_pessoa`) values 
(1,250.00,1,2),
(2,250.00,1,3),
(3,250.00,1,2),
(4,210.00,2,2),
(5,300.00,3,5),
(6,300.00,3,7),
(7,120.00,2,7),
(8,500.00,6,8),
(9,500.00,6,9),
(10,180.00,7,10),
(11,180.00,7,10);

/*Table structure for table `tbPessoa_marcio` */

DROP TABLE IF EXISTS `tbPessoa_marcio`;

CREATE TABLE `tbPessoa_marcio` (
  `id_pessoa` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `dta_nascimento` date DEFAULT NULL,
  `cpf` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_pessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbPessoa_marcio` */

insert  into `tbPessoa_marcio`(`id_pessoa`,`nome`,`dta_nascimento`,`cpf`) values 
(1,'Marcio','1970-01-06','4587695'),
(2,'Silvana Gomes','1984-10-19','45587695'),
(3,'Joel Caldas','1994-02-19','548745'),
(4,'Thais Lima','1990-01-05','549863200'),
(5,'Tadeu Gonçalves','1968-06-09','56987421'),
(6,'Ernesto Che','1961-12-04','2514789'),
(7,'Afondo Ribeiro','1981-03-16','2516346'),
(8,'Amadeu Mozart','1947-11-27','3541526'),
(9,'Hélio La Pena','1968-04-12','4512658'),
(10,'Marina Silva','1997-08-26','99784512');

/*Table structure for table `tbShow_marcio` */

DROP TABLE IF EXISTS `tbShow_marcio`;

CREATE TABLE `tbShow_marcio` (
  `id_show` int(11) NOT NULL AUTO_INCREMENT,
  `nome_banda` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_show`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbShow_marcio` */

insert  into `tbShow_marcio`(`id_show`,`nome_banda`,`status`) values 
(1,'Queens of the Stone Age','A'),
(2,'Black Sabbath','A'),
(3,'Muse','A'),
(4,'Led Zeppelin','A'),
(5,'Rolling Stones','A'),
(6,'Aerosmith','A'),
(7,'Guns n\' Roses','A'),
(8,'Megadeth','A'),
(9,'ACDC','A'),
(10,'Stone Temple Pilots','A');

/*Table structure for table `tb_Capacidade_Fernando` */

DROP TABLE IF EXISTS `tb_Capacidade_Fernando`;

CREATE TABLE `tb_Capacidade_Fernando` (
  `idCapacidade` int(11) NOT NULL AUTO_INCREMENT,
  `QuantMaxima` int(12) DEFAULT NULL,
  `QuantVendida` int(12) DEFAULT NULL,
  `idShow` int(11) DEFAULT NULL,
  PRIMARY KEY (`idCapacidade`),
  KEY `idShow` (`idShow`),
  CONSTRAINT `tb_Capacidade_Fernando_ibfk_1` FOREIGN KEY (`idShow`) REFERENCES `tb_Show_Fernando` (`idShow`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_Capacidade_Fernando` */

insert  into `tb_Capacidade_Fernando`(`idCapacidade`,`QuantMaxima`,`QuantVendida`,`idShow`) values 
(1,10000,0,6),
(2,20000,0,10),
(3,15000,1,1),
(4,18000,1,3),
(5,10000,7,8),
(6,9000,1,2),
(7,45000,0,7),
(8,10000,0,9),
(9,20000,4,4),
(10,16000,0,5);

/*Table structure for table `tb_Ingresso_Fernando` */

DROP TABLE IF EXISTS `tb_Ingresso_Fernando`;

CREATE TABLE `tb_Ingresso_Fernando` (
  `idIngresso` int(11) NOT NULL AUTO_INCREMENT,
  `idPessoa` int(11) DEFAULT NULL,
  `valor` double(5,2) DEFAULT NULL,
  `idShow` int(11) DEFAULT NULL,
  PRIMARY KEY (`idIngresso`),
  KEY `idPessoa` (`idPessoa`),
  KEY `idShow` (`idShow`),
  CONSTRAINT `tb_Ingresso_Fernando_ibfk_1` FOREIGN KEY (`idPessoa`) REFERENCES `tb_Pessoa_Fernando` (`idPessoa`),
  CONSTRAINT `tb_Ingresso_Fernando_ibfk_2` FOREIGN KEY (`idShow`) REFERENCES `tb_Show_Fernando` (`idShow`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_Ingresso_Fernando` */

insert  into `tb_Ingresso_Fernando`(`idIngresso`,`idPessoa`,`valor`,`idShow`) values 
(1,1,250.00,2),
(2,2,300.00,1),
(3,3,400.00,3),
(4,4,200.00,4),
(5,5,100.00,6),
(6,6,230.50,5),
(7,7,100.80,7),
(8,8,500.00,10),
(9,9,200.00,8),
(10,10,250.80,9);

/*Table structure for table `tb_Pessoa_Fernando` */

DROP TABLE IF EXISTS `tb_Pessoa_Fernando`;

CREATE TABLE `tb_Pessoa_Fernando` (
  `idPessoa` int(11) NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `DtaNascimento` date DEFAULT NULL,
  `CPF` varchar(45) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idPessoa`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_Pessoa_Fernando` */

insert  into `tb_Pessoa_Fernando`(`idPessoa`,`Nome`,`DtaNascimento`,`CPF`) values 
(1,'Clebin','1996-08-01','11111'),
(2,'Thiago P.','2000-03-13','22222'),
(3,'Robert','1985-06-27','33333'),
(4,'Julia','1982-11-24','44444'),
(5,'Maria','1994-07-27','55555'),
(6,'Jenifer','1981-12-31','66666'),
(7,'Fernando','1994-01-01','77777'),
(8,'Pedro','1996-10-15','88888'),
(9,'Nilton','1990-04-11','99999'),
(10,'José','1990-04-05','10101');

/*Table structure for table `tb_Show_Fernando` */

DROP TABLE IF EXISTS `tb_Show_Fernando`;

CREATE TABLE `tb_Show_Fernando` (
  `idShow` int(11) NOT NULL AUTO_INCREMENT,
  `NomeBanda` varchar(45) COLLATE latin1_general_ci NOT NULL,
  `Status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idShow`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_Show_Fernando` */

insert  into `tb_Show_Fernando`(`idShow`,`NomeBanda`,`Status`) values 
(1,'Cachorro Grande','A'),
(2,'Roupa Nova','A'),
(3,'Malta','A'),
(4,'Natirruts','A'),
(5,'Caetano','A'),
(6,'Reação em Cadeia','A'),
(7,'Exaltasamba','A'),
(8,'Titãs','A'),
(9,'Detonautas','A'),
(10,'Bob Marley','A');

/*Table structure for table `tb_clientebakfernando` */

DROP TABLE IF EXISTS `tb_clientebakfernando`;

CREATE TABLE `tb_clientebakfernando` (
  `idclientebackfernando` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dtanascimento` date DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idclientebackfernando`),
  KEY `idcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tb_clientebakfernando` */

insert  into `tb_clientebakfernando`(`idclientebackfernando`,`nome`,`cpf`,`rg`,`dtanascimento`,`idcliente`) values 
(1,'Fulando de Tal','1234','1234','1970-04-16',NULL),
(2,'Ciclano de Tal','4563','156456','1970-02-04',NULL),
(3,'Joao da Esquina','48656','126423','1970-03-05',NULL),
(4,'Telmo Luiz','28495','12423543','2002-06-15',NULL),
(5,'Maria de fatima','42354','5253654','1978-03-05',NULL),
(6,'Clebin','989898','898989','2022-05-09',NULL),
(7,'fulano2','88888','888888','2022-01-04',NULL),
(11,'newfulano2','0000','0000','1989-01-01',7),
(12,'Robertinho','4444','555555','2022-05-09',0),
(13,'Fernando2','77777','888888','2022-05-09',6039),
(14,'newfulano2','0000','0000','1989-01-01',7),
(15,'Juliava','21546','456887','1990-01-09',6040);

/*Table structure for table `tbaniversariantemes` */

DROP TABLE IF EXISTS `tbaniversariantemes`;

CREATE TABLE `tbaniversariantemes` (
  `idaniversariante` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  `telefone` varchar(200) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idaniversariante`)
) ENGINE=InnoDB AUTO_INCREMENT=45 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbaniversariantemes` */

insert  into `tbaniversariantemes`(`idaniversariante`,`nome`,`telefone`) values 
(1,'Fulando de Tal',NULL),
(2,'Fulando de Tal',NULL),
(3,'Ciclano de Tal',NULL),
(4,'Joao da Esquina',NULL),
(5,'Telmo Luiz',NULL),
(6,'Maria de fatima',NULL),
(7,'Fulando de Tal',NULL),
(8,'Ciclano de Tal',NULL),
(9,'Joao da Esquina',NULL),
(10,'Telmo Luiz',NULL),
(11,'Maria de fatima',NULL),
(12,'Fulando de Tal',NULL),
(13,'Ciclano de Tal',NULL),
(14,'Joao da Esquina',NULL),
(15,'Telmo Luiz',NULL),
(16,'Maria de fatima',NULL),
(17,'Fulando de Tal',NULL),
(18,'Ciclano de Tal',NULL),
(19,'Joao da Esquina',NULL),
(20,'Telmo Luiz',NULL),
(21,'Maria de fatima',NULL),
(22,'Fulando de Tal',NULL),
(23,'Ciclano de Tal',NULL),
(24,'Joao da Esquina',NULL),
(25,'Telmo Luiz',NULL),
(26,'Maria de fatima',NULL),
(27,'Fulando de Tal',NULL),
(28,'Ciclano de Tal',NULL),
(29,'Joao da Esquina',NULL),
(30,'Telmo Luiz',NULL),
(31,'Maria de fatima',NULL),
(32,'Fulando de Tal',NULL),
(33,'Ciclano de Tal',NULL),
(34,'Joao da Esquina',NULL),
(35,'Telmo Luiz',NULL),
(36,'Maria de fatima',NULL),
(37,'Joao da Esquina',NULL),
(38,'Maria de fatima',NULL),
(39,'Joao da Esquina',NULL),
(40,'Maria de fatima',NULL),
(41,'Joao da Esquina',NULL),
(42,'Maria de fatima',NULL),
(43,'Joao da Esquina',NULL),
(44,'Maria de fatima',NULL);

/*Table structure for table `tbcidade` */

DROP TABLE IF EXISTS `tbcidade`;

CREATE TABLE `tbcidade` (
  `idcidade` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  `DDD` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcidade`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbcidade` */

insert  into `tbcidade`(`idcidade`,`nome`,`status`,`DDD`) values 
(1,'Porto Alegre','A','51'),
(2,'Florianopolis','A','48'),
(3,'Novo Hamburgo.','A','51');

/*Table structure for table `tbcliente` */

DROP TABLE IF EXISTS `tbcliente`;

CREATE TABLE `tbcliente` (
  `idcliente` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE latin1_general_ci NOT NULL,
  `cpf` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `dtanascimento` date DEFAULT NULL,
  PRIMARY KEY (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6041 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbcliente` */

insert  into `tbcliente`(`idcliente`,`nome`,`cpf`,`rg`,`dtanascimento`) values 
(1,'Fulando de Tal.','1234','1234','1970-04-16'),
(2,'Ciclano de Tal','4563','156456','1970-02-04'),
(3,'Joao da Esquina','48656','126423','1970-03-05'),
(4,'Telmo Luiz','28495','12423543','2002-06-15'),
(5,'Maria de fatima','42354','5253654','1978-03-05'),
(6,'Tadeua','5487','45325','1990-05-09'),
(7,'newfulano2','0000','0000','1989-01-01'),
(696,'fulanonew','88888','888888','2022-01-04'),
(6031,'Juliana','45879','54216','2000-05-09'),
(6034,'Joaozinho','000000','000000','2022-05-09'),
(6035,'Pedrinho','444444','444444','2022-05-09'),
(6036,'Teste','1234','123','2022-05-09'),
(6037,'Clebin','989898','898989','2022-05-09'),
(6038,'Robertinho2','66666','555555','2022-05-09'),
(6039,'Fernando2','77777','888888','2022-05-09'),
(6040,'Juliava','21546','456887','1990-01-09');

/*Table structure for table `tbcompra` */

DROP TABLE IF EXISTS `tbcompra`;

CREATE TABLE `tbcompra` (
  `idcompra` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `dtacompra` datetime DEFAULT CURRENT_TIMESTAMP,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idcompra`),
  KEY `FKcompracliente` (`idcliente`),
  CONSTRAINT `FKcompracliente` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbcompra` */

insert  into `tbcompra`(`idcompra`,`idcliente`,`dtacompra`,`status`) values 
(1,1,'2022-03-07 20:15:33','A'),
(2,2,'2022-03-07 20:15:49','A'),
(3,3,'2022-03-11 21:25:38','A');

/*Table structure for table `tbcompraproduto` */

DROP TABLE IF EXISTS `tbcompraproduto`;

CREATE TABLE `tbcompraproduto` (
  `idcompraproduto` int(11) NOT NULL AUTO_INCREMENT,
  `idcompra` int(11) DEFAULT NULL,
  `idproduto` int(11) DEFAULT NULL,
  `qtd` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcompraproduto`),
  KEY `FKcompraproduto` (`idcompra`),
  KEY `Fkcompraprodutoproduto` (`idproduto`),
  CONSTRAINT `FKcompraproduto` FOREIGN KEY (`idcompra`) REFERENCES `tbcompra` (`idcompra`),
  CONSTRAINT `Fkcompraprodutoproduto` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbcompraproduto` */

insert  into `tbcompraproduto`(`idcompraproduto`,`idcompra`,`idproduto`,`qtd`) values 
(1,1,1,3),
(2,1,2,4),
(3,2,2,21),
(4,3,1,6),
(5,3,2,7),
(7,3,3,8),
(8,2,3,10);

/*Table structure for table `tbemail` */

DROP TABLE IF EXISTS `tbemail`;

CREATE TABLE `tbemail` (
  `idemail` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idemail`),
  KEY `fkClienteEmail` (`idcliente`),
  CONSTRAINT `fkClienteEmail` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbemail` */

insert  into `tbemail`(`idemail`,`email`,`idcliente`,`status`) values 
(1,'teste@yahoo.com.br',1,'A'),
(2,'naosei@google.com.br',2,'A');

/*Table structure for table `tbendereco` */

DROP TABLE IF EXISTS `tbendereco`;

CREATE TABLE `tbendereco` (
  `idendereco` int(11) NOT NULL AUTO_INCREMENT,
  `idcliente` int(11) DEFAULT NULL,
  `endereco` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `numero` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `complemento` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  PRIMARY KEY (`idendereco`),
  KEY `fkclienteendereco` (`idcliente`),
  KEY `fkclientecidade` (`idcidade`),
  CONSTRAINT `fkclientecidade` FOREIGN KEY (`idcidade`) REFERENCES `tbcidade` (`idcidade`),
  CONSTRAINT `fkclienteendereco` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbendereco` */

insert  into `tbendereco`(`idendereco`,`idcliente`,`endereco`,`numero`,`complemento`,`idcidade`) values 
(1,1,'Rua Ipiranga','1234','Casa 1',1),
(2,2,'Rua São Jose','123',NULL,1),
(3,3,'Rua Bento Gonçalves','12345',NULL,1);

/*Table structure for table `tbfabricante` */

DROP TABLE IF EXISTS `tbfabricante`;

CREATE TABLE `tbfabricante` (
  `idfabricante` int(11) NOT NULL,
  `nome` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idfabricante`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbfabricante` */

insert  into `tbfabricante`(`idfabricante`,`nome`,`status`) values 
(1,'Knor','A'),
(2,'Iguacu','A'),
(3,'Matadoro Ze','A'),
(4,'Camiil','A');

/*Table structure for table `tbproduto` */

DROP TABLE IF EXISTS `tbproduto`;

CREATE TABLE `tbproduto` (
  `idproduto` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `descricao` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `qtd` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `idfabricante` int(11) DEFAULT NULL,
  `idtipoqtd` int(11) DEFAULT NULL,
  `qtdemestoque` int(11) DEFAULT NULL,
  PRIMARY KEY (`idproduto`),
  KEY `FkProdutoQTD` (`idtipoqtd`),
  KEY `FkFabricanteProduto` (`idfabricante`),
  CONSTRAINT `FkFabricanteProduto` FOREIGN KEY (`idfabricante`) REFERENCES `tbfabricante` (`idfabricante`),
  CONSTRAINT `FkProdutoQTD` FOREIGN KEY (`idtipoqtd`) REFERENCES `tbtipoqtd` (`idtipoqtd`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbproduto` */

insert  into `tbproduto`(`idproduto`,`nome`,`descricao`,`qtd`,`idfabricante`,`idtipoqtd`,`qtdemestoque`) values 
(1,'Caldo Knor','Carne','100',1,1,35),
(2,'Caldo Knor','Frango','100',1,1,205),
(3,'Carne Patinho','Carne Bovina','90',3,2,135),
(4,'Arroz','Arroz','100',4,1,197);

/*Table structure for table `tbprodutovalor` */

DROP TABLE IF EXISTS `tbprodutovalor`;

CREATE TABLE `tbprodutovalor` (
  `idprodutovalor` int(11) NOT NULL AUTO_INCREMENT,
  `idproduto` int(11) DEFAULT NULL,
  `valor` decimal(10,2) DEFAULT NULL,
  `dtainicial` date DEFAULT NULL,
  `dtafinal` date DEFAULT NULL,
  `ImpostoCOFINS` decimal(10,2) DEFAULT NULL,
  `ImpostoICMS` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`idprodutovalor`),
  KEY `FKProdutoValor` (`idproduto`),
  CONSTRAINT `FKProdutoValor` FOREIGN KEY (`idproduto`) REFERENCES `tbproduto` (`idproduto`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbprodutovalor` */

insert  into `tbprodutovalor`(`idprodutovalor`,`idproduto`,`valor`,`dtainicial`,`dtafinal`,`ImpostoCOFINS`,`ImpostoICMS`) values 
(1,1,3.00,'2022-02-07','2022-03-11',5.00,10.00),
(2,1,4.00,'2022-03-12','2022-03-14',5.00,10.00),
(3,2,5.50,'2022-03-07','2022-03-14',5.00,15.00),
(4,3,36.00,'2022-03-11','2022-03-30',5.00,20.00);

/*Table structure for table `tbtelefone` */

DROP TABLE IF EXISTS `tbtelefone`;

CREATE TABLE `tbtelefone` (
  `idtelefone` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  `idtipotelefone` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtelefone`),
  KEY `Fktelefonetipotelefone` (`idtipotelefone`),
  KEY `FkTelefoneCliente` (`idcliente`),
  CONSTRAINT `FkTelefoneCliente` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`),
  CONSTRAINT `Fktelefonetipotelefone` FOREIGN KEY (`idtipotelefone`) REFERENCES `tbtipotelefone` (`idtipotelefone`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbtelefone` */

insert  into `tbtelefone`(`idtelefone`,`numero`,`idcidade`,`idtipotelefone`,`idcliente`) values 
(1,'12343',1,1,1),
(2,'543654',1,2,2),
(4,'123512',1,2,5),
(5,'234235',1,2,3);

/*Table structure for table `tbtipoqtd` */

DROP TABLE IF EXISTS `tbtipoqtd`;

CREATE TABLE `tbtipoqtd` (
  `idtipoqtd` int(11) NOT NULL AUTO_INCREMENT,
  `descricao` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idtipoqtd`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbtipoqtd` */

insert  into `tbtipoqtd`(`idtipoqtd`,`descricao`,`status`) values 
(1,'Caixa','A'),
(2,'Kg','A');

/*Table structure for table `tbtipotelefone` */

DROP TABLE IF EXISTS `tbtipotelefone`;

CREATE TABLE `tbtipotelefone` (
  `idtipotelefone` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(1) COLLATE latin1_general_ci DEFAULT 'A',
  PRIMARY KEY (`idtipotelefone`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `tbtipotelefone` */

insert  into `tbtipotelefone`(`idtipotelefone`,`tipo`,`status`) values 
(1,'Residencial','A'),
(2,'Comercial','A'),
(3,'Recado','A');

/*Table structure for table `telefone_bakfernando` */

DROP TABLE IF EXISTS `telefone_bakfernando`;

CREATE TABLE `telefone_bakfernando` (
  `idtelefonebackfernando` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  `idtipotelefone` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`idtelefonebackfernando`),
  KEY `idcidade` (`idcidade`),
  KEY `idtipotelefone` (`idtipotelefone`),
  KEY `idcliente` (`idcliente`),
  CONSTRAINT `telefone_bakfernando_ibfk_1` FOREIGN KEY (`idcidade`) REFERENCES `tbcidade` (`idcidade`),
  CONSTRAINT `telefone_bakfernando_ibfk_2` FOREIGN KEY (`idtipotelefone`) REFERENCES `tbtipotelefone` (`idtipotelefone`),
  CONSTRAINT `telefone_bakfernando_ibfk_3` FOREIGN KEY (`idcliente`) REFERENCES `tbcliente` (`idcliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `telefone_bakfernando` */

insert  into `telefone_bakfernando`(`idtelefonebackfernando`,`numero`,`idcidade`,`idtipotelefone`,`idcliente`) values 
(1,'12343',1,1,1),
(2,'543654',1,2,2),
(3,'123512',1,2,5),
(4,'234235',1,2,3);

/*Table structure for table `telefone_bakmarcio` */

DROP TABLE IF EXISTS `telefone_bakmarcio`;

CREATE TABLE `telefone_bakmarcio` (
  `id_telefone` int(11) NOT NULL AUTO_INCREMENT,
  `numero` varchar(120) COLLATE latin1_general_ci DEFAULT NULL,
  `idcidade` int(11) DEFAULT NULL,
  `idtipotelefone` int(11) DEFAULT NULL,
  `idcliente` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_telefone`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `telefone_bakmarcio` */

insert  into `telefone_bakmarcio`(`id_telefone`,`numero`,`idcidade`,`idtipotelefone`,`idcliente`) values 
(29,'12343',1,1,1),
(30,'543654',1,2,2),
(31,'123512',1,2,5),
(32,'234235',1,2,3),
(36,'12343',1,1,1),
(37,'543654',1,2,2),
(38,'123512',1,2,5),
(39,'234235',1,2,3),
(43,'12343',1,1,1),
(44,'543654',1,2,2),
(45,'123512',1,2,5),
(46,'234235',1,2,3),
(50,'12343',1,1,1),
(51,'543654',1,2,2),
(52,'123512',1,2,5),
(53,'234235',1,2,3);

/*Table structure for table `turma_gabriel` */

DROP TABLE IF EXISTS `turma_gabriel`;

CREATE TABLE `turma_gabriel` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `turma` int(4) DEFAULT NULL,
  `professor` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `turma_gabriel` */

insert  into `turma_gabriel`(`id`,`turma`,`professor`) values 
(1,0,'pedro');

/*Table structure for table `usuarios` */

DROP TABLE IF EXISTS `usuarios`;

CREATE TABLE `usuarios` (
  `id` int(2) NOT NULL AUTO_INCREMENT,
  `nome` varchar(32) NOT NULL,
  `email` varchar(32) NOT NULL,
  `senha` varchar(255) NOT NULL,
  `nivel` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id`,`nome`,`email`,`senha`,`nivel`) values 
(1,'william martins','william@hmx.com','fd820a2b4461bddd116c1518bc4b0f77',1),
(2,'admin','admin@hmx.com','admin@admin',2);

/*Table structure for table `wcarro` */

DROP TABLE IF EXISTS `wcarro`;

CREATE TABLE `wcarro` (
  `idcarro` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `idmodelo` int(11) DEFAULT NULL,
  `marca` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cilindradas` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idcarro`),
  KEY `idmodelo` (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `wcarro` */

insert  into `wcarro`(`idcarro`,`nome`,`idmodelo`,`marca`,`cilindradas`,`status`) values 
(15,'nome',1,'marca','1600','Ativo'),
(16,'NOME',1,'MARCA','2000','Ativo'),
(17,'teste2',1,'tesete2','2002','Ativo');

/*Table structure for table `wmodelo` */

DROP TABLE IF EXISTS `wmodelo`;

CREATE TABLE `wmodelo` (
  `idmodelo` int(11) NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` char(6) COLLATE latin1_general_ci DEFAULT NULL,
  PRIMARY KEY (`idmodelo`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `wmodelo` */

insert  into `wmodelo`(`idmodelo`,`nome`,`status`) values 
(1,'GOLF','ATIVO');

/*Table structure for table `wp_compra` */

DROP TABLE IF EXISTS `wp_compra`;

CREATE TABLE `wp_compra` (
  `idcomprapessoa` int(11) NOT NULL AUTO_INCREMENT,
  `idpessoa` int(11) DEFAULT NULL,
  `idcarro` int(11) DEFAULT NULL,
  PRIMARY KEY (`idcomprapessoa`),
  KEY `1_pessoacomprafernando_ibfk_1` (`idpessoa`),
  KEY `1_pessoacomprafernando_ibfk_2` (`idcarro`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `wp_compra` */

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `log_clientes_marcio` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `log_clientes_marcio` BEFORE INSERT ON `tbcliente` FOR EACH ROW BEGIN
	insert into clientebakmarcio(nome,cpf,rg,dtanascimento)
	values(new.nome,new.cpf,new.rg,new.dtanascimento);
	
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `log_cliente_iuri` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `log_cliente_iuri` BEFORE INSERT ON `tbcliente` FOR EACH ROW BEGIN
	INSERT INTO clientebakiuri (idcliente, nome, cpf, rg, dtanascimento)
VALUES (new.idcliente, new.nome, new.cpf, new.rg, new.dtanascimento);
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Incluir_Cliente_Fernando` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `Incluir_Cliente_Fernando` AFTER INSERT ON `tbcliente` FOR EACH ROW BEGIN
          insert into tb_clientebakfernando(nome,cpf,rg,dtanascimento,idcliente) 
          values(new.nome,new.cpf,new.rg,new.dtanascimento,new.idcliente);
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_cliente_iuri` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `update_cliente_iuri` AFTER UPDATE ON `tbcliente` FOR EACH ROW BEGIN
	update clientebakiuri set
		idcliente = new.idcliente,
		nome = new.nome,
		cpf = new.cpf,
		rg = new.rg,
		dtanascimento = new.dtanascimento
	where old.idcliente = clientebakiuri.idcliente;
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Update_cliente_Fernando` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `Update_cliente_Fernando` AFTER UPDATE ON `tbcliente` FOR EACH ROW BEGIN
          update tb_clientebakfernando set nome = new.nome, cpf = new.cpf, rg = new.rg, dtanascimento = new.dtanascimento  
          where idcliente = old.idcliente;
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcliente` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `update_clientes_marcio` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `update_clientes_marcio` AFTER UPDATE ON `tbcliente` FOR EACH ROW BEGIN
	UPDATE clientebakmarcio SET
	idcliente = new.idcliente,
	nome = new.nome,
	cpf = new.cpf,
	rg = new.rg,
	dtanascimento = new.dtanascimento
	
	WHERE idcliente = old.idcliente;
	
    END */$$


DELIMITER ;

/* Trigger structure for table `tbcompraproduto` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `produto_itens_iuri` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `produto_itens_iuri` AFTER INSERT ON `tbcompraproduto` FOR EACH ROW BEGIN
	update tbproduto set 
		qtd = qtd - new.qtd
	where idproduto = new.idproduto;
    END */$$


DELIMITER ;

/* Trigger structure for table `tbproduto` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Produto_itens_marcio` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `Produto_itens_marcio` BEFORE INSERT ON `tbproduto` FOR EACH ROW BEGIN
	update tbproduto set
	 qtd = qtd - new.qtd
	where idproduto = new.idproduto;

    END */$$


DELIMITER ;

/* Trigger structure for table `tbproduto` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Produto_itens_Gilson` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `Produto_itens_Gilson` AFTER INSERT ON `tbproduto` FOR EACH ROW BEGIN
         update tbproduto set 
           qtd = qtd - new.qtd
         where idproduto = new.idproduto;
           
    END */$$


DELIMITER ;

/* Trigger structure for table `tbproduto` */

DELIMITER $$

/*!50003 DROP TRIGGER*//*!50032 IF EXISTS */ /*!50003 `Produto_itens_Fernando` */$$

/*!50003 CREATE */ /*!50017 DEFINER = 'bancoaula2'@'%' */ /*!50003 TRIGGER `Produto_itens_Fernando` AFTER INSERT ON `tbproduto` FOR EACH ROW BEGIN 
           UPDATE tbproduto SET 
           qtd = qtd - new.qtd 
           WHERE idproduto = new.idproduto;            
    END */$$


DELIMITER ;

/*!50106 set global event_scheduler = 1*/;

/* Event structure for event `ChamadaCadastroAluno` */

/*!50106 DROP EVENT IF EXISTS `ChamadaCadastroAluno`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `ChamadaCadastroAluno` ON SCHEDULE EVERY 1 MONTH STARTS '2021-11-03 19:56:04' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	     call CadastroAluno;
	END */$$
DELIMITER ;

/* Event structure for event `EventoBasico` */

/*!50106 DROP EVENT IF EXISTS `EventoBasico`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `EventoBasico` ON SCHEDULE EVERY 1 MINUTE STARTS '2021-11-03 19:37:37' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	    insert into tbLogEvento (DataHora,Evento)
	    values (now(), 'Evento Log Gilson');
	END */$$
DELIMITER ;

/* Event structure for event `EventoFelipe` */

/*!50106 DROP EVENT IF EXISTS `EventoFelipe`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `EventoFelipe` ON SCHEDULE EVERY 1 MINUTE STARTS '2021-11-03 20:04:29' ON COMPLETION NOT PRESERVE ENABLE DO INSERT bancoaula2.TbLogEvento SET DataHora = NOW(), Evento = "Felipe" */$$
DELIMITER ;

/* Event structure for event `EventoLimpeza` */

/*!50106 DROP EVENT IF EXISTS `EventoLimpeza`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `EventoLimpeza` ON SCHEDULE EVERY 1 DAY STARTS '2021-11-03 20:02:28' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	   call DelecaoTabelas;
	END */$$
DELIMITER ;

/* Event structure for event `EventoTeste` */

/*!50106 DROP EVENT IF EXISTS `EventoTeste`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `EventoTeste` ON SCHEDULE EVERY 1 MINUTE STARTS '2022-05-16 19:15:13' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	    insert into clientebakiuri (nome)
	    values (concate('teste-', now()));
	END */$$
DELIMITER ;

/* Event structure for event `evento_teste_marcio` */

/*!50106 DROP EVENT IF EXISTS `evento_teste_marcio`*/;

DELIMITER $$

/*!50106 CREATE DEFINER=`bancoaula2`@`%` EVENT `evento_teste_marcio` ON SCHEDULE EVERY 1 MINUTE STARTS '2022-05-16 19:17:00' ON COMPLETION NOT PRESERVE ENABLE DO BEGIN
	    insert into clientebakiuri (nome)
	    values (concate('teste-',now())); 
	END */$$
DELIMITER ;

/* Function  structure for function  `formatodataBrasil` */

/*!50003 DROP FUNCTION IF EXISTS `formatodataBrasil` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` FUNCTION `formatodataBrasil`(dataparametro DATETIME) RETURNS varchar(100) CHARSET latin1 COLLATE latin1_general_ci
BEGIN
     return date_format(dataparametro,'%d/%m/%Y');
    END */$$
DELIMITER ;

/* Function  structure for function  `Teste` */

/*!50003 DROP FUNCTION IF EXISTS `Teste` */;
DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` FUNCTION `Teste`(valor int) RETURNS varchar(100) CHARSET latin1 COLLATE latin1_general_ci
BEGIN
       return concat(valor, ' %');
    END */$$
DELIMITER ;

/* Procedure structure for procedure `22032022_atv_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `22032022_atv_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `22032022_atv_Fernando`()
BEGIN
       
       DECLARE nomelocal VARCHAR(200);   
       declare numerolocal varchar(120);       
       DECLARE done INT DEFAULT FALSE;
       DECLARE nomedocliente CURSOR FOR SELECT nome, tbtelefone.numero FROM tbcliente  
       inner join tbtelefone on tbtelefone.idcliente = tbcliente.idcliente
       WHERE MONTH(dtanascimento) = 3; 
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
      
       
       OPEN nomedocliente;
       read_loop: LOOP
       FETCH nomedocliente INTO nomelocal;       
       IF done THEN
       LEAVE read_loop;
       END IF;
       
       INSERT INTO tbaniversariantemes(nome)
       VALUES (nomelocal);             
       
       
      END LOOP;
      
      CLOSE nomedocliente;  
      
 END */$$
DELIMITER ;

/* Procedure structure for procedure `ajuste_de_estoque_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `ajuste_de_estoque_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `ajuste_de_estoque_marcio`(qtdvenda_recebida int, idproduto_recebida int)
BEGIN

		declare qtdestoquelocal int default 0;
		
		select qtdemestoque 
			into qtdestoquelocal
		from tbproduto
		where idproduto = idproduto_recebida;
		
		if qtdvenda_recebida <= qtdestoquelocal then
			update tbproduto set qtdemestoque = qtdemestoque - qtdvenda_recebida
			where idproduto = idproduto_recebida;
		end if;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `Ajuste_Estoque_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ajuste_Estoque_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Ajuste_Estoque_Fernando`(qtdvenda_recebida int, idproduto_recebida int)
BEGIN 
	    
	     declare qtdestoquelocal int default 0; 
	     
	     select qtdemestoque  
	     into qtdestoquelocal
	     from tbproduto 
	     where idproduto = idproduto_recebida;
             
             if qtdvenda_recebida <= qtdestoquelocal then 
                  update tbproduto set 
                  qtdemestoque = qtdemestoque - qtdvenda_recebida;             
             end if; 
       END */$$
DELIMITER ;

/* Procedure structure for procedure `Ajuste_Estoque_Gilson` */

/*!50003 DROP PROCEDURE IF EXISTS  `Ajuste_Estoque_Gilson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Ajuste_Estoque_Gilson`(qtdvenda_recebida int,
                                                   idproduto_recebida int)
BEGIN
    
       declare qtdestoquelocal int default 0;
       
       select qtdemestoque 
         into qtdestoquelocal
       from tbproduto
       where idproduto = idproduto_recebida;
       
       if qtdvenda_recebida <= qtdestoquelocal then
          update tbproduto set 
              qtdemestoque = qtdemestoque - qtdvenda_recebida
          where idproduto = idproduto_recebida;
       end if;
       

    END */$$
DELIMITER ;

/* Procedure structure for procedure `atualizar_PESSOA_BACK_FERNANDO` */

/*!50003 DROP PROCEDURE IF EXISTS  `atualizar_PESSOA_BACK_FERNANDO` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `atualizar_PESSOA_BACK_FERNANDO`()
BEGIN
       DECLARE nomelocal VARCHAR(45);   
       DECLARE dtalocal DATE;  
       DECLARE cpflocal VARCHAR(45);
       DECLARE done INT DEFAULT FALSE;      
       
       DECLARE nomedocliente CURSOR FOR 
       SELECT Nome,DtaNascimento,CPF FROM tb_Pessoa_Fernando;  
      
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
       
        -- Abrindo o cursor
        OPEN nomedocliente; 
     
        read_loop: LOOP
            
        FETCH nomedocliente INTO nomelocal,dtalocal,cpflocal; 
      
        IF done THEN
        LEAVE read_loop;
        END IF;
       
        INSERT INTO TB_PESSOA_BAK_FERNANDO(Nome,DtaNascimento,CPF)
        VALUES (nomelocal,dtalocal,cpflocal); 
        
        END LOOP;
      
      -- Fechando o CURSOR
      CLOSE nomedocliente;
      
END */$$
DELIMITER ;

/* Procedure structure for procedure `atualizar_qtdvenda_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `atualizar_qtdvenda_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `atualizar_qtdvenda_Fernando`(in idShowlocal int, IN QuantIngLocal int)
BEGIN
                UPDATE tb_Capacidade_Fernando c
		INNER JOIN tb_Ingresso_Fernando i ON i.idShow = c.idShow
		SET QuantVendida = QuantVendida + QuantIngLocal
		WHERE c.idShow = idShowlocal;
END */$$
DELIMITER ;

/* Procedure structure for procedure `atualizar_qtdvenda_ingressos` */

/*!50003 DROP PROCEDURE IF EXISTS  `atualizar_qtdvenda_ingressos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `atualizar_qtdvenda_ingressos`(in id_showlocal int)
BEGIN	
		
	UPDATE tbCapacidade_marcio tbc
		INNER JOIN tbIngresso_marcio tbi ON tbc.id_show = tbi.id_show
		SET quant_vendida = quant_vendida + 1
		WHERE tbc.id_show = id_showlocal;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `atualizar_TB_BAK_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `atualizar_TB_BAK_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `atualizar_TB_BAK_marcio`()
BEGIN

	DECLARE nomelocal VARCHAR(150);
	declare dta_nascimentolocal date;
	declare cpflocal int(11);
	DECLARE done INT DEFAULT FALSE; 
	DECLARE nomepessoa CURSOR FOR
	SELECT nome, dta_nascimento, cpf FROM tbPessoa_marcio;
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
	OPEN nomepessoa;
	read_loop: LOOP
        FETCH nomepessoa INTO nomelocal, dta_nascimentolocal, cpflocal;
		IF done THEN
		LEAVE read_loop;
		END IF;
		
	INSERT INTO TB_PESSOA_BAK_marcio(nome, dta_nascimento, cpf)
	values(nomelocal, dta_nascimentolocal, cpflocal);
	
	END LOOP;
	
	CLOSE nomepessoa;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `Aula21032022_Gilson` */

/*!50003 DROP PROCEDURE IF EXISTS  `Aula21032022_Gilson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Aula21032022_Gilson`(in valor1 int,
                                                 out valor2 int,
                                                 inout valor3 int)
BEGIN
    
       set valor2 = 4;
       set valor3 = 5;
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Aula21032022_Gilson2` */

/*!50003 DROP PROCEDURE IF EXISTS  `Aula21032022_Gilson2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Aula21032022_Gilson2`()
BEGIN
      DECLARE valor1 int ;
      Declare valor2 int;
      declare valor3 int;
      
      set valor1 = 1;
      
      call Aula21032022_Gilson(valor1, valor2, valor3);
      
      SET valor2 = valor2 + 1;     
      SET valor3 = valor3 + 1;       

    END */$$
DELIMITER ;

/* Procedure structure for procedure `Aula210322_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `Aula210322_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Aula210322_Fernando`(IN valor1 INT,
                                                 OUT valor2 INT,
                                                 INOUT valor3 INT)
BEGIN
                SET valor2 = 4;
                SET valor3 = 5;
    
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Aula210322_Fernando2` */

/*!50003 DROP PROCEDURE IF EXISTS  `Aula210322_Fernando2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Aula210322_Fernando2`()
BEGIN
               DECLARE valor1 INT ;
               DECLARE valor2 INT;
               DECLARE valor3 INT;
      
               SET valor1 = 1;
      
               CALL Aula210322_Fernando(valor1, valor2, valor3);
      
               SET valor2 = valor2 + 1;     
               SET valor3 = valor3 + 1;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `aula_21032022_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `aula_21032022_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `aula_21032022_marcio`(in valor1 int,
							out valor2 int,
							inout valor3 int
							)
BEGIN
	
		set valor2 = 4;
		SET valor3 = 5;
	

	END */$$
DELIMITER ;

/* Procedure structure for procedure `aula_21032022_marcio2` */

/*!50003 DROP PROCEDURE IF EXISTS  `aula_21032022_marcio2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `aula_21032022_marcio2`()
BEGIN
		DECLARE valor1 INT;
		DECLARE valor2 INT;
		DECLARE valor3 INT;

		set valor1 = 1;
		
		call aula_21032022_marcio(valor1, valor2, valor3);

		SET valor2 = valor2 + 1;
		SET valor3 = valor3 + 1;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `CadastroAluno` */

/*!50003 DROP PROCEDURE IF EXISTS  `CadastroAluno` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `CadastroAluno`()
BEGIN
   
   declare x int default 0;

   while x <= 1000 do 

     if mod(x,2) = 0 then
       
       insert into TbAluno (Nome,rg,cpf,idAlunoSituacao)
       values (concat('Teste Procedure Gilson',' ',x) , X, X, 1);
	 
     end if;
   
     set x = x + 1;
    
   end while;
    

    END */$$
DELIMITER ;

/* Procedure structure for procedure `Compre2_leve3_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `Compre2_leve3_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Compre2_leve3_Fernando`(qtdcomprapoduto_recebida INT,idcompraproduto_recebida INT)
BEGIN
               
              
              if qtdcomprapoduto_recebida > 3 then 
                 update tbcompraproduto set 
                 qtd = qtd - 1 where idcompraproduto = idcompraproduto_recebida; 
              end if;   
              
              
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Create_Produto_Gilson` */

/*!50003 DROP PROCEDURE IF EXISTS  `Create_Produto_Gilson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Create_Produto_Gilson`(in idfabricantelocal int ,out quantidade int)
BEGIN
    
      SELECT COUNT(*) as quantidade
       into quantidade
      FROM tbproduto
      WHERE idfabricante = idfabricantelocal;

	
    END */$$
DELIMITER ;

/* Procedure structure for procedure `Criacao_de_cursores_Fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `Criacao_de_cursores_Fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Criacao_de_cursores_Fernando`()
BEGIN
                DECLARE nomelocal VARCHAR(200);   
       DECLARE done INT DEFAULT FALSE;
       DECLARE nomedocliente CURSOR FOR 
         SELECT nome FROM tbcliente;
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
     
 
       
     
         
      OPEN nomedocliente;
      read_loop: LOOP
       FETCH nomedocliente INTO nomelocal;
       IF done THEN
          LEAVE read_loop;
       END IF;
       
       INSERT INTO tabelateste (nome)
       VALUES (nomelocal);             
       
       
      END LOOP;
      
      CLOSE nomedocliente;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Criacao_de_cursores_Gilson` */

/*!50003 DROP PROCEDURE IF EXISTS  `Criacao_de_cursores_Gilson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Criacao_de_cursores_Gilson`()
BEGIN
       DECLARE nomelocal VARCHAR(200);   
       DECLARE done INT DEFAULT FALSE;
       DECLARE nomedocliente CURSOR FOR 
       SELECT nome FROM tbcliente;
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
     
 
       
     
         
      OPEN nomedocliente;
      read_loop: LOOP
       FETCH nomedocliente INTO nomelocal;
       IF done THEN
          LEAVE read_loop;
       END IF;
       
       INSERT INTO tabelateste (nome)
       VALUES (nomelocal);             
       
       
      END LOOP;
      
      CLOSE nomedocliente;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `cursoresIuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `cursoresIuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `cursoresIuri`()
BEGIN
		DECLARE nomelocal VARCHAR(200);
		declare done int default false;
		/*Variavel para enquanto não tiver um erro notfound*/
		
		declare nomedocursor cursor for
			select nome from tbcliente;
			
		DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
			
		open nomedocursor;
			read_loop: loop
			fetch nomedocursor into nomelocal;/*Pega uma linha do select e coloca no nomelocal*/
			
				if done then/*se done = true*/
					leave read_loop;/*sai do loop*/
				end if;
				
				insert into tabelateste (nome)
				values (nomelocal);
			
			end loop;
		close nomedocursor;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `DelecaoTabelas` */

/*!50003 DROP PROCEDURE IF EXISTS  `DelecaoTabelas` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `DelecaoTabelas`()
BEGIN
	DELETE FROM TbLogEvento 
	WHERE datahora <= DATE_ADD(NOW(), INTERVAL -10 MINUTE);

            truncate TbPagamentoAluno;
    END */$$
DELIMITER ;

/* Procedure structure for procedure `delecao_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `delecao_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `delecao_marcio`()
BEGIN
	
	DELETE FROM tbcliente 
	WHERE nome LIKE '%Marcio%';

    END */$$
DELIMITER ;

/* Procedure structure for procedure `deletartabelatodafernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `deletartabelatodafernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `deletartabelatodafernando`()
BEGIN
             TRUNCATE TABLE TB_PESSOA_BAK_FERNANDO;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `Deletar_tbaniversariantes` */

/*!50003 DROP PROCEDURE IF EXISTS  `Deletar_tbaniversariantes` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Deletar_tbaniversariantes`()
BEGIN
	
	DELETE FROM tbaniversariantemes 
	WHERE nome LIKE '%Fulano%';

    END */$$
DELIMITER ;

/* Procedure structure for procedure `exercicio2_21022022_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `exercicio2_21022022_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `exercicio2_21022022_marcio`(in idfabricantelocal int,
				  	           out qtdprodutos int)
BEGIN

	SELECT COUNT(*) AS 'qtdprodutos'
	  into qtdprodutos
	FROM tbproduto
	INNER JOIN tbfabricante ON  tbproduto.idfabricante = tbproduto.idfabricante
	 where tbfabricante.idfabricante = idfabricantelocal;
	
 END */$$
DELIMITER ;

/* Procedure structure for procedure `inclusaoaniversariantes_Marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `inclusaoaniversariantes_Marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `inclusaoaniversariantes_Marcio`()
BEGIN
	
	DECLARE done INT DEFAULT FALSE;
	DECLARE nomelocal VARCHAR(200);
	DECLARE dtanascimentolocal DATE;
	DECLARE nomeaniversariante CURSOR FOR
	SELECT nome FROM tbcliente;

	
	DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
	
	OPEN nomeaniversariante;
	read_loop: LOOP
	FETCH nomeaniversariante INTO nomelocal;
	IF done THEN
		LEAVE read_loop;
	END IF;
		
	IF MONTH(dtanascimento)=3 THEN
		INSERT INTO tbaniversariantemes(nome)
		VALUES(nomelocal);
	END IF;
	
	END LOOP;
	
	CLOSE nomeaniversariante;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `inclusao_tbcliente_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `inclusao_tbcliente_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `inclusao_tbcliente_marcio`()
BEGIN

	INSERT INTO clientebakmarcio(nome,cpf,rg,dtanascimento)
	SELECT tbcliente.nome,tbcliente.cpf,tbcliente.rg,tbcliente.dtanascimento FROM tbcliente;
	

	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento2Iuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento2Iuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento2Iuri`()
BEGIN
		delete from tbcliente where nome like '%Fernando%';
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento3Iuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento3Iuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento3Iuri`(venda int, idprodutoRecebido int)
BEGIN
		/**/
		declare qntEstoqueLocal int default 0;
		
		select qtdemestoque into qntEstoqueLocal
		from tbproduto 
		where idproduto = idprodutoRecebido; 
		
		if venda <= qntEstoqueLocal then
			update tbproduto set qtdemestoque = qtdemestoque - venda
			where idproduto = idprodutoRecebido;
		end if;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento4Iuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento4Iuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento4Iuri`(idrecebido int, qntrecebida int)
BEGIN
		
		IF qntrecebida >= 3 THEN
			UPDATE tbcompraproduto SET qtd = qtd-1
			WHERE idcompraproduto = idrecebido;
		END IF;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento5Iuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento5Iuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento5Iuri`(produto int)
BEGIN
		
		declare valorProduto double(10,2);
		declare valorCofins double(10,2);
		declare valorIcms double(10,2);
		declare valorFinal double(10,2);
		declare COFINS double(10,2);
		DECLARE ICMS double(10,2);
	
		select valor, ImpostoCOFINS, ImpostoICMS 
		into valorFinal, COFINS, ICMS
		from tbprodutovalor
		where idprodutovalor = produto;
		
		set valorCofins = valorFinal*COFINS/100;
		set valorIcms = valorFinal*ICMS/100;
		set valorProduto = valorFinal - valorCofins - valorIcms;	
		
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento6Iuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento6Iuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento6Iuri`(fabrica int)
BEGIN
/*Procedimento que informe idfabricante e quantos produtos esse fabricante tem*/
		select count(*) as Produtos_por_Fabricante
		from tbfabricante
		inner join tbproduto on tbfabricante.idfabricante = tbproduto.idfabricante
		where tbfabricante.idfabricante = fabrica;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimentodofernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimentodofernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimentodofernando`()
BEGIN
        declare  valor int default 0; 
        
        while (valor < 1000) do 
               if(mod(valor,2) = 0) then 
                                 
                       insert into tbcliente(nome,cpf,rg,dtanascimento) 
                       values (concat('Fernando','  ',valor), '12345', '54321', now());
                 
               end if;                  
               SET valor = valor + 1;   
        end while;          
    
    END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimentoIuri` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimentoIuri` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimentoIuri`()
BEGIN
		/*Corpo da rotina*/
		
		declare valor int default 0;
		
		while (valor < 1000) do
		
			if (mod(valor,2) = 0) then
				insert into tbcliente(nome, cpf, rg, dtanascimento)
				values (concat('Iuri', ' ',valor), '54654654', '486518352', now());
			end if;
			set valor = valor + 1;
		end while;
		
	END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimentoiuri7` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimentoiuri7` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimentoiuri7`()
BEGIN
		/*create table if not exists clientebakiuri (
			idcliente int(11) not null auto_increment,
			nome varchar(120) not null,
			cpf varchar(50) not null,
			rg varchar(50) not null,
			dtanascimento date not null,
			primary key(idcliente));
		insert into clientebakiuri
			(select * from tbcliente);*/
			
		create table clientebakiuri select * from tbcliente;
	END */$$
DELIMITER ;

/* Procedure structure for procedure `ProcedimentoValor` */

/*!50003 DROP PROCEDURE IF EXISTS  `ProcedimentoValor` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `ProcedimentoValor`(in idprodutolocal int,
                                               out valorsemimposto double(10,2),
                                               OUT valorcofins DOUBLE(10,2),
                                               out valoricms DOUBLE(10,2),
                                               out valortotal DOUBLE(10,2))
BEGIN
       declare valorproduto double(10,2);
       declare  impostocofins double(10,2);
       Declare impostoICMS double(10,2);
       
        SELECT valor, 
              ImpostoCOFINS/100 impostoCOFINS, 
              ImpostoICMS/100 impostoICMS
        into valorproduto, impostocofins, impostoICMS 
       from tbprodutovalor
       where idproduto = idprodutolocal
        and  now() between dtainicial and dtafinal; 
         
       set valorsemimposto =  valorproduto;
       set valorcofins =  valorproduto * impostocofins;
       set valoricms = valorproduto * impostoICMS;
       set valortotal = valorproduto + (valorproduto * impostocofins) + (valorproduto * impostoICMS); 

    END */$$
DELIMITER ;

/* Procedure structure for procedure `Procedimento_Gilson` */

/*!50003 DROP PROCEDURE IF EXISTS  `Procedimento_Gilson` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `Procedimento_Gilson`()
BEGIN

   Declare valor int default 0;
   
   WHILE (valor < 1000) DO
    
      if (mod(valor,2) = 0) then
       insert into tbcliente(nome,cpf,rg,dtanascimento)
       values (CONCAT('Gilson',' ', valor), '21437', '256236', now());
      end if;    
    
       SET valor = valor + 1;       
       
    END WHILE;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `procedimento_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `procedimento_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procedimento_marcio`()
BEGIN

	declare valor int default 0;
	
	while (valor < 1000) do
	
	if( mod(valor,2) = 0) then

		insert into tbcliente(nome,cpf,rg,dtanascimento)
		values (concat ('Marcio',' ', valor),'2135468','4587695', now());

		set valor = valor + 1;
		
	end if;
		
	end while;

    END */$$
DELIMITER ;

/* Procedure structure for procedure `procs_040422_fernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `procs_040422_fernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procs_040422_fernando`()
BEGIN
       DECLARE nomelocal VARCHAR(200);   
       declare cpflocal varchar(50);      
       DECLARE rglocal VARCHAR(50);  
       DECLARE dtalocal date; 
       DECLARE done INT DEFAULT FALSE;      
       
       DECLARE nomedocliente CURSOR FOR 
       SELECT nome,cpf,rg,dtanascimento FROM tbcliente;  
      
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
       
      -- Abrindo o cursor
      OPEN nomedocliente; 
     
      read_loop: LOOP
            
      FETCH nomedocliente INTO nomelocal,cpflocal,rglocal,dtalocal; 
      
      IF done THEN
      LEAVE read_loop;
      END IF;
       
      INSERT INTO clientebakfernando(nome,cpf,rg,dtanascimento)
      VALUES (nomelocal,cpflocal,rglocal,dtalocal); 
        
      END LOOP;
      
      -- Fechando o CURSOR
      CLOSE nomedocliente;
      END */$$
DELIMITER ;

/* Procedure structure for procedure `procs_040422_fernando_atv2` */

/*!50003 DROP PROCEDURE IF EXISTS  `procs_040422_fernando_atv2` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `procs_040422_fernando_atv2`()
BEGIN
       DECLARE numerolocal VARCHAR(200);   
       declare idcidadelocal int(11); 
       DECLARE idtipotelefonelocal INT(11);
       DECLARE idclientelocal INT(11);
       DECLARE done INT DEFAULT FALSE;      
       
       DECLARE nomedocliente CURSOR FOR 
       SELECT numero, idcidade, idtipotelefone, idcliente FROM tbtelefone;  
      
       DECLARE CONTINUE HANDLER FOR NOT FOUND SET done = TRUE;
       
      -- Abrindo o cursor
      OPEN nomedocliente; 
     
      read_loop: LOOP
            
      FETCH nomedocliente INTO numerolocal, idcidadelocal,idtipotelefonelocal, idclientelocal; 
      
      IF done THEN
      LEAVE read_loop;
      END IF;
       
      INSERT INTO telefone_bakfernando(numero,idcidade,idtipotelefone, idcliente)
      VALUES (numerolocal,idcidadelocal,idtipotelefonelocal,idclientelocal); 
        
      END LOOP;
      
      -- Fechando o CURSOR
      CLOSE nomedocliente;
      END */$$
DELIMITER ;

/* Procedure structure for procedure `promocao_marcio` */

/*!50003 DROP PROCEDURE IF EXISTS  `promocao_marcio` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `promocao_marcio`(qtdcompra_recebida int, idcomprapoduto_recebida int)
BEGIN
	
	if qtdcompra_recebida > 3
		then update tbcompraproduto set qtd = qtd - 1
		where idcompraproduto = idcomprapoduto_recebida;
	end if;

	END */$$
DELIMITER ;

/* Procedure structure for procedure `segundoprocfernando` */

/*!50003 DROP PROCEDURE IF EXISTS  `segundoprocfernando` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `segundoprocfernando`()
BEGIN 
             delete from tbcliente 
             where nome like '%Fernando%'; 	   
	   

	END */$$
DELIMITER ;

/* Procedure structure for procedure `TotaldePagamentodosAlunos` */

/*!50003 DROP PROCEDURE IF EXISTS  `TotaldePagamentodosAlunos` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `TotaldePagamentodosAlunos`(in valordocurso int,
                                                                      OUT testesaida VARCHAR(50))
BEGIN
        
        Declare fim integer default 0;
        Declare idAlunoLocal int;  

        -- CURSOR -- 
        Declare CursoAlunos 
           cursor for
             SELECT idAluno FROM TbAluno
             WHERE STATUS='A';
    
        Declare continue Handler
        for not found set fim = 1;
        
        open CursoAlunos;
        
        getAluno: Loop
            Fetch CursoAlunos into idAlunoLocal;
	
	if fim = 1 then
	   leave getAluno;
	end if;
	
	call ValorPagoPorAluno(idAlunoLocal,valordocurso);
        
        end loop getAluno;
        
        Set testesaida := 'Teste de retorno';

    END */$$
DELIMITER ;

/* Procedure structure for procedure `ValorPagoPorAluno` */

/*!50003 DROP PROCEDURE IF EXISTS  `ValorPagoPorAluno` */;

DELIMITER $$

/*!50003 CREATE DEFINER=`bancoaula2`@`%` PROCEDURE `ValorPagoPorAluno`(in idalunoExterno int,
					  IN valordocustoturma int)
BEGIN
    
       Declare totalAtivo int default 0;
       Declare nomeAluno Varchar(100);
       DEclare totaisdeTurma int default 0;
    
       /* verificar se o aluno está ativo 
          into joga o valor de uma coluna do select para dentro de uma variavel
          só funcionar se retornar apenas uma linha
       */
        
       /* verifica se o aluno está ativo */      
       Select count(*)
         into totalAtivo
       from TbAluno 
       where idAluno = idalunoExterno
        and status = 'A';
        
       /* se o aluno estiver ativo entra no if */
       if totalAtivo >=1 then
        
          /* verifica as turma que ele está 
          escrito com status ativo*/
          SELECT count(*) into totaisdeTurma
          FROM TbTurmaAluno
          where idAluno = idalunoExterno
           and Status = 'A';
           
          /* coloca o valor a ser pago */
          insert into TbPagamentoAluno (idAluno, ValorTotal)
          values (idalunoExterno, totaisdeTurma * valordocustoturma);
          
       end if;         


    END */$$
DELIMITER ;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
