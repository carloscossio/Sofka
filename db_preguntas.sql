/*
SQLyog Community v13.1.5  (32 bit)
MySQL - 5.7.35-log : Database - db_preguntas
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_preguntas` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `db_preguntas`;

/*Table structure for table `jugadores` */

DROP TABLE IF EXISTS `jugadores`;

CREATE TABLE `jugadores` (
  `id_jugador` varchar(255) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jugadores` */

/*Table structure for table `opciones` */

DROP TABLE IF EXISTS `opciones`;

CREATE TABLE `opciones` (
  `tipo` tinyint(1) NOT NULL,
  `id_pregunta` int(11) NOT NULL,
  `opcion` varchar(255) NOT NULL,
  KEY `id_pregunta` (`id_pregunta`),
  CONSTRAINT `opciones_ibfk_1` FOREIGN KEY (`id_pregunta`) REFERENCES `preguntas` (`id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `opciones` */

insert  into `opciones`(`tipo`,`id_pregunta`,`opcion`) values 
(0,1,'ese er'),
(0,2,'rrr'),
(0,2,'yyy'),
(0,2,'tttt'),
(0,2,'iiii'),
(0,4,'tttt'),
(1,4,'uiuiui'),
(1,4,'hghh'),
(1,4,'tttt'),
(0,5,'rerer'),
(0,5,'ytyty'),
(1,5,'ewew'),
(0,5,'uuuu'),
(0,6,'Decapitada'),
(0,6,'Ahogada'),
(0,6,'Envenenada'),
(1,6,'Quemada en la hoguera'),
(0,7,'Italia'),
(0,7,'Grecia'),
(0,7,'Rusia'),
(1,7,'Turquia'),
(0,8,'Gerundano'),
(0,8,'Gerundiano'),
(1,8,'Geronense'),
(0,8,'Gerundense'),
(0,9,'Pontevedra'),
(0,9,'Oviedo'),
(0,9,'La Coruna'),
(1,9,'Orense'),
(0,10,'Africa'),
(1,10,'Oceania'),
(0,10,'America'),
(0,10,'Europa'),
(1,11,'Berlin'),
(0,11,'Viena'),
(0,11,'Baku'),
(0,11,'Sofia'),
(0,12,'Mexico'),
(1,12,'Arizona'),
(0,12,'Nebraska'),
(0,12,'Canada'),
(1,13,'Varsovia'),
(0,13,'Oslo'),
(0,13,'Dublin'),
(0,13,'Budapest'),
(1,14,'Peru'),
(0,14,'Brasil'),
(0,14,'Bolivia'),
(0,14,'Colombia'),
(1,15,'Berna'),
(0,15,'Berlin'),
(0,15,'Dushanbe'),
(0,15,'Estocolmo'),
(1,16,'Bulgaria'),
(0,16,'Francia'),
(0,16,'Grecia'),
(0,16,'Italia');

/*Table structure for table `preguntas` */

DROP TABLE IF EXISTS `preguntas`;

CREATE TABLE `preguntas` (
  `id_pregunta` int(11) NOT NULL AUTO_INCREMENT,
  `enunciado` varchar(300) NOT NULL,
  `categoria` char(1) NOT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `preguntas` */

insert  into `preguntas`(`id_pregunta`,`enunciado`,`categoria`) values 
(1,'quien es','2'),
(2,'como es','1'),
(3,'rrrrr','2'),
(4,'rerer','3'),
(5,'rerer','4'),
(6,'como murio juana de arco','2'),
(7,'Donde se encuentra la iglesia de Santa Sofia','1'),
(8,'El gentilicio de la provincia de Gerona es:','1'),
(9,'La provincia de Lugo limita al sur con:','2'),
(10,'El continente mas pequeno del planeta Tierra es:','1'),
(11,'La capital de Alemania es:','1'),
(12,'El canon del Colorado se encuentra en:','2'),
(13,'La capital de Polonia es:','2'),
(14,'Machu Pichu se encuentra en:','2'),
(15,'La capital de Suiza es:','3'),
(16,'El Mar Negro bana las costas de:','3');

/*Table structure for table `rondas` */

DROP TABLE IF EXISTS `rondas`;

CREATE TABLE `rondas` (
  `id_jugador` varchar(255) NOT NULL,
  `nivel` tinyint(1) NOT NULL,
  `premio` bigint(20) NOT NULL,
  KEY `id_jugador` (`id_jugador`),
  CONSTRAINT `rondas_ibfk_1` FOREIGN KEY (`id_jugador`) REFERENCES `jugadores` (`id_jugador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `rondas` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
