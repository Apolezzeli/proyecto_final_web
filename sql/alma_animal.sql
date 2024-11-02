-- MySQL dump 10.13  Distrib 8.0.39, for Linux (x86_64)
--
-- Host: localhost    Database: alma_animal
-- ------------------------------------------------------
-- Server version	8.0.39-0ubuntu0.20.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `novedades`
--

DROP TABLE IF EXISTS `novedades`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `novedades`
--

LOCK TABLES `novedades` WRITE;
/*!40000 ALTER TABLE `novedades` DISABLE KEYS */;
INSERT INTO `novedades` VALUES (2,'Breve Historia de la Comunicación Telepática entre Especies','Spoiler: Los seres humanos somos animales.','En 1971, Penelope Smith convirtió la comunicación telepática con animales en una profesión, promoviendo\n                la idea de que los seres humanos pueden aprender (en verdad, recordar) a comunicarse intuitivamente con\n                ellos.\n\n                Sin embargo, esta forma de comunicación existe desde los inicios de la humanidad; todos tenemos\n                la capacidad innata de conectarnos intuitivamente con todas las especies.\n\n                El chamanismo desde tiempos prehistóricos está estrechamente vinculado con la comunicación interespecie.\n                Los chamanes poseen la habilidad para comunicarse tanto con animales como con espíritus y fuerzas de la\n                naturaleza.\n\n                La comunicación telepática entre especies nos ayuda a expandir nuestra conciencia, al comprender y\n                respetar a los animales como seres vivos pares e iguales. No te pierdas la oportunidad de hablar con tus\n                animales más queridos, conocerlos mejor, darles lugar para expresar sus deseos, fortalecer la relación,\n                transmitirles un mensaje o simplemente todo tu amor.'),(6,'prueba de video','algo','abcvdfj'),(7,'El Gobierno buscará destruir las bases de datos de las 300.000 cuentas de argentinos que blanquearon USD 19.000 millones','Lo confirmó el Presidente Javier Milei a través de las redes sociales. El objetivo es proteger de la imposición de futuros impuestos a quienes accedieron a la exteriorización de activos','l mandatario nacional respondió a una publicación en X del periodista Lucas Morando, que dice: “Después de que hayan blanqueado 280 mil personas, el Gobierno analiza modificar la legislación para borrar las bases de datos de los que blanquearon. Es decir, eliminar los registros fiscales para evitar futuros impuestos”.'),(8,'En un gesto de unidad tras el fallo de Servini, Cristina Kirchner convocó a Quintela para reunirse el lunes','El secretario privado de la ex presidenta llamó al entorno del gobernador riojano para concretar el encuentro. No hubo ofrecimiento de cargos','Cristina Kirchner busca dejar atrás la resuelta disputa judicial que la enfrentó a Ricardo Quintela por la presidencia del PJ Nacional y, en un gesto para mostrar unidad, le pidió a su secretario privado, Mariano Cabral, que llame al entorno del gobernador de La Rioja para convocarlo a una reunión el próximo lunes.');
/*!40000 ALTER TABLE `novedades` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Almendra','81dc9bdb52d04dc20036dbd8313ed055'),(2,'Almen','81dc9bdb52d04dc20036dbd8313ed055');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-01 21:29:53
