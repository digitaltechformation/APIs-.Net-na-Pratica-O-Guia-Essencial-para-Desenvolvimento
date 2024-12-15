CREATE DATABASE  IF NOT EXISTS `recadosapi` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `recadosapi`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: recadosapi
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `recados`
--

DROP TABLE IF EXISTS `recados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(100) NOT NULL,
  `mensagem` text NOT NULL,
  `data` timestamp NOT NULL,
  `leitura` tinyint(1) NOT NULL,
  `remetente_id` int NOT NULL,
  `destinatario_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_remetente_id_idx` (`remetente_id`),
  KEY `fk_destinatario_id_idx` (`destinatario_id`),
  CONSTRAINT `fk_destinatario_id` FOREIGN KEY (`destinatario_id`) REFERENCES `usuarios` (`id`),
  CONSTRAINT `fk_remetente_id` FOREIGN KEY (`remetente_id`) REFERENCES `usuarios` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=168 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recados`
--

LOCK TABLES `recados` WRITE;
/*!40000 ALTER TABLE `recados` DISABLE KEYS */;
INSERT INTO `recados` VALUES (1,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-29 01:32:24',1,1,2),(2,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-28 01:32:24',1,1,2),(3,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-27 01:32:24',1,1,2),(4,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-28 01:32:24',1,2,3),(5,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-26 01:32:24',0,2,3),(6,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-24 01:32:24',1,2,3),(7,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-27 01:32:24',1,3,4),(8,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-24 01:32:24',0,3,4),(9,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-21 01:32:24',1,3,4),(10,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-26 01:32:24',1,4,5),(11,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-22 01:32:24',0,4,5),(12,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-18 01:32:24',1,4,5),(13,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-25 01:32:24',1,5,6),(14,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-20 01:32:24',0,5,6),(15,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-15 01:32:24',1,5,6),(16,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-24 01:32:24',1,6,7),(17,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-18 01:32:24',0,6,7),(18,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-12 01:32:24',1,6,7),(19,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-23 01:32:24',1,7,8),(20,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-16 01:32:24',0,7,8),(21,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-09 01:32:24',1,7,8),(22,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-22 01:32:24',1,8,9),(23,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-14 01:32:24',0,8,9),(24,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-06 01:32:24',1,8,9),(25,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-21 01:32:24',1,9,10),(26,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-12 01:32:24',0,9,10),(27,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-11-03 01:32:24',1,9,10),(28,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-20 01:32:24',1,10,11),(29,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-10 01:32:24',0,10,11),(30,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-31 01:32:24',1,10,11),(31,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-19 01:32:24',1,11,12),(32,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-08 01:32:24',0,11,12),(33,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-28 01:32:24',1,11,12),(34,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-18 01:32:24',1,12,13),(35,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-06 01:32:24',0,12,13),(36,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-25 01:32:24',1,12,13),(37,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-17 01:32:24',1,13,14),(38,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-04 01:32:24',0,13,14),(39,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-22 01:32:24',1,13,14),(40,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-16 01:32:24',1,14,15),(41,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-11-02 01:32:24',0,14,15),(42,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-19 01:32:24',1,14,15),(43,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-15 01:32:24',1,15,16),(44,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-31 01:32:24',0,15,16),(45,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-16 01:32:24',1,15,16),(46,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-14 01:32:24',1,16,17),(47,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-29 01:32:24',0,16,17),(48,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-13 01:32:24',1,16,17),(49,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-13 01:32:24',1,17,18),(50,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-27 01:32:24',0,17,18),(51,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-10 01:32:24',1,17,18),(52,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-12 01:32:24',1,18,19),(53,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-25 01:32:24',0,18,19),(54,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-07 01:32:24',1,18,19),(55,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-11 01:32:24',1,19,20),(56,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-23 01:32:24',0,19,20),(57,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-04 01:32:24',1,19,20),(58,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-10 01:32:24',1,20,21),(59,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-21 01:32:24',0,20,21),(60,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-10-01 01:32:24',1,20,21),(61,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-09 01:32:24',1,21,22),(62,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-19 01:32:24',0,21,22),(63,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-28 01:32:24',1,21,22),(64,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-08 01:32:24',1,22,23),(65,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-17 01:32:24',0,22,23),(66,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-25 01:32:24',1,22,23),(67,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-07 01:32:24',1,23,24),(68,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-15 01:32:24',0,23,24),(69,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-22 01:32:24',1,23,24),(70,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-06 01:32:24',1,24,25),(71,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-13 01:32:24',0,24,25),(72,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-19 01:32:24',1,24,25),(73,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-05 01:32:24',1,25,26),(74,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-11 01:32:24',0,25,26),(75,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-16 01:32:24',1,25,26),(76,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-04 01:32:24',1,26,27),(77,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-09 01:32:24',0,26,27),(78,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-13 01:32:24',1,26,27),(79,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-03 01:32:24',1,27,28),(80,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-07 01:32:24',0,27,28),(81,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-10 01:32:24',1,27,28),(82,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-02 01:32:24',1,28,29),(83,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-05 01:32:24',0,28,29),(84,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-07 01:32:24',1,28,29),(85,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-11-01 01:32:24',1,29,30),(86,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-03 01:32:24',0,29,30),(87,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-04 01:32:24',1,29,30),(88,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-31 01:32:24',1,30,31),(89,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-10-01 01:32:24',0,30,31),(90,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-09-01 01:32:24',1,30,31),(91,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-30 01:32:24',1,31,32),(92,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-29 01:32:24',0,31,32),(93,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-29 01:32:24',1,31,32),(94,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-29 01:32:24',1,32,33),(95,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-27 01:32:24',0,32,33),(96,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-26 01:32:24',1,32,33),(97,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-28 01:32:24',1,33,34),(98,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-25 01:32:24',0,33,34),(99,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-23 01:32:24',1,33,34),(100,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-27 01:32:24',1,34,35),(101,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-23 01:32:24',0,34,35),(102,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-20 01:32:24',1,34,35),(103,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-26 01:32:24',1,35,36),(104,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-21 01:32:24',0,35,36),(105,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-17 01:32:24',1,35,36),(106,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-25 01:32:24',1,36,37),(107,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-19 01:32:24',0,36,37),(108,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-14 01:32:24',1,36,37),(109,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-24 01:32:24',1,37,38),(110,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-17 01:32:24',0,37,38),(111,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-11 01:32:24',1,37,38),(112,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-23 01:32:24',1,38,39),(113,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-15 01:32:24',0,38,39),(114,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-08 01:32:24',1,38,39),(115,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-22 01:32:24',1,39,40),(116,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-13 01:32:24',0,39,40),(117,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-05 01:32:24',1,39,40),(118,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-21 01:32:24',1,40,41),(119,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-11 01:32:24',0,40,41),(120,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-08-02 01:32:24',1,40,41),(121,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-20 01:32:24',1,41,42),(122,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-09 01:32:24',0,41,42),(123,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-30 01:32:24',1,41,42),(124,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-19 01:32:24',1,42,43),(125,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-07 01:32:24',0,42,43),(126,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-27 01:32:24',1,42,43),(127,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-18 01:32:24',1,43,44),(128,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-05 01:32:24',0,43,44),(129,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-24 01:32:24',1,43,44),(130,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-17 01:32:24',1,44,45),(131,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-03 01:32:24',0,44,45),(132,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-21 01:32:24',1,44,45),(133,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-16 01:32:24',1,45,46),(134,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-09-01 01:32:24',0,45,46),(135,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-18 01:32:24',1,45,46),(136,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-15 01:32:24',1,46,47),(137,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-08-30 01:32:24',0,46,47),(138,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-15 01:32:24',1,46,47),(139,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-14 01:32:24',1,47,48),(140,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-08-28 01:32:24',0,47,48),(141,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-12 01:32:24',1,47,48),(142,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-13 01:32:24',1,48,49),(143,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-08-26 01:32:24',0,48,49),(144,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-09 01:32:24',1,48,49),(145,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-12 01:32:24',1,49,50),(146,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-08-24 01:32:24',0,49,50),(147,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-06 01:32:24',1,49,50),(148,'Lembrete de reunião','Lembre-se da reunião agendada para amanhã às 14h.','2024-10-11 01:32:24',1,50,1),(149,'Atualização do projeto','O projeto foi atualizado com novos requisitos. Por favor, revise.','2024-08-22 01:32:24',0,50,1),(150,'Mensagem importante','Por favor, entre em contato para tratar de um assunto urgente.','2024-07-03 01:32:24',1,50,1);
/*!40000 ALTER TABLE `recados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=79 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES (1,'Ana Maria'),(2,'João Santos'),(3,'Maria Oliveira'),(4,'Carlos Souza'),(5,'Fernanda Lima'),(6,'José Pereira'),(7,'Paula Costa'),(8,'Marcos Vieira'),(9,'Luciana Alves'),(10,'Pedro Rocha'),(11,'Juliana Melo'),(12,'Rafael Martins'),(13,'Camila Andrade'),(14,'Bruno Ferreira'),(15,'Gabriela Monteiro'),(16,'Leonardo Barbosa'),(17,'Tatiana Cardoso'),(18,'Renato Ribeiro'),(19,'Cláudia Freitas'),(20,'Rodrigo Moraes'),(21,'Simone Duarte'),(22,'Thiago Carvalho'),(23,'Vanessa Batista'),(24,'Fábio Gomes'),(25,'Patrícia Dias'),(26,'Ricardo Correia'),(27,'Adriana Pinto'),(28,'Felipe Nunes'),(29,'Mariana Teixeira'),(30,'André Almeida'),(31,'Raquel Mendes'),(32,'Vitor Fonseca'),(33,'Elaine Rodrigues'),(34,'Diego Monteiro'),(35,'Sofia Moreira'),(36,'Alexandre Araujo'),(37,'Isabela Farias'),(38,'Douglas Pereira'),(39,'Laura Cavalcante'),(40,'Lucas Guimarães'),(41,'Natália Santos'),(42,'Henrique Mendes'),(43,'Aline Borges'),(44,'Bruna Oliveira'),(45,'Vinícius Castro'),(46,'Letícia Silva'),(47,'Hugo Ramos'),(48,'Mônica Carvalho'),(49,'Julio Machado'),(50,'Carolina Neves');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'recadosapi'
--
/*!50003 DROP PROCEDURE IF EXISTS `Inserir150RecadosReais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir150RecadosReais`()
BEGIN
DECLARE i INT DEFAULT 1;
    DECLARE recado_por_usuario INT DEFAULT 1;
    DECLARE leitura_status TINYINT(1);

    WHILE i <= 50 DO
        SET recado_por_usuario = 1;
        WHILE recado_por_usuario <= 3 DO
            -- Alterna entre lido (1) e não lido (0)
            SET leitura_status = recado_por_usuario % 2;

            INSERT INTO recados (titulo, mensagem, data, leitura, remetente_id, destinatario_id)
            VALUES (
                CASE recado_por_usuario
                    WHEN 1 THEN 'Lembrete de reunião'
                    WHEN 2 THEN 'Atualização do projeto'
                    WHEN 3 THEN 'Mensagem importante'
                END,
                CASE recado_por_usuario
                    WHEN 1 THEN 'Lembre-se da reunião agendada para amanhã às 14h.'
                    WHEN 2 THEN 'O projeto foi atualizado com novos requisitos. Por favor, revise.'
                    WHEN 3 THEN 'Por favor, entre em contato para tratar de um assunto urgente.'
                END,
                NOW() - INTERVAL (i * recado_por_usuario) DAY,
                leitura_status,
                i,  -- remetente_id
                IF(i = 50, 1, i + 1) -- destinatario_id (se remetente for 50, destinatário será 1; caso contrário, próximo usuário)
            );

            SET recado_por_usuario = recado_por_usuario + 1;
        END WHILE;
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir50RecadosReais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir50RecadosReais`()
BEGIN
DECLARE i INT DEFAULT 1;
    DECLARE recado_por_usuario INT DEFAULT 1;
    DECLARE leitura_status TINYINT(1);

    WHILE i <= 50 DO
        SET recado_por_usuario = 1;
        WHILE recado_por_usuario <= 3 DO
            -- Alterna entre lido (1) e não lido (0)
            SET leitura_status = recado_por_usuario % 2;

            INSERT INTO recados (titulo, mensagem, data, leitura, remetente_id, destinatario_id)
            VALUES (
                CASE recado_por_usuario
                    WHEN 1 THEN 'Lembrete de reunião'
                    WHEN 2 THEN 'Atualização do projeto'
                    WHEN 3 THEN 'Mensagem importante'
                END,
                CASE recado_por_usuario
                    WHEN 1 THEN 'Lembre-se da reunião agendada para amanhã às 14h.'
                    WHEN 2 THEN 'O projeto foi atualizado com novos requisitos. Por favor, revise.'
                    WHEN 3 THEN 'Por favor, entre em contato para tratar de um assunto urgente.'
                END,
                NOW() - INTERVAL (i * recado_por_usuario) DAY,
                leitura_status,
                i,  -- remetente_id
                IF(i = 50, 1, i + 1) -- destinatario_id (se remetente for 50, destinatário será 1; caso contrário, próximo usuário)
            );

            SET recado_por_usuario = recado_por_usuario + 1;
        END WHILE;
        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Inserir50UsuariosReais` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Inserir50UsuariosReais`()
BEGIN
DECLARE i INT DEFAULT 1;

    WHILE i <= 50 DO
        CASE i
            WHEN 1 THEN INSERT INTO usuarios (nome) VALUES ('Ana Silva');
            WHEN 2 THEN INSERT INTO usuarios (nome) VALUES ('João Santos');
            WHEN 3 THEN INSERT INTO usuarios (nome) VALUES ('Maria Oliveira');
            WHEN 4 THEN INSERT INTO usuarios (nome) VALUES ('Carlos Souza');
            WHEN 5 THEN INSERT INTO usuarios (nome) VALUES ('Fernanda Lima');
            WHEN 6 THEN INSERT INTO usuarios (nome) VALUES ('José Pereira');
            WHEN 7 THEN INSERT INTO usuarios (nome) VALUES ('Paula Costa');
            WHEN 8 THEN INSERT INTO usuarios (nome) VALUES ('Marcos Vieira');
            WHEN 9 THEN INSERT INTO usuarios (nome) VALUES ('Luciana Alves');
            WHEN 10 THEN INSERT INTO usuarios (nome) VALUES ('Pedro Rocha');
            WHEN 11 THEN INSERT INTO usuarios (nome) VALUES ('Juliana Melo');
            WHEN 12 THEN INSERT INTO usuarios (nome) VALUES ('Rafael Martins');
            WHEN 13 THEN INSERT INTO usuarios (nome) VALUES ('Camila Andrade');
            WHEN 14 THEN INSERT INTO usuarios (nome) VALUES ('Bruno Ferreira');
            WHEN 15 THEN INSERT INTO usuarios (nome) VALUES ('Gabriela Monteiro');
            WHEN 16 THEN INSERT INTO usuarios (nome) VALUES ('Leonardo Barbosa');
            WHEN 17 THEN INSERT INTO usuarios (nome) VALUES ('Tatiana Cardoso');
            WHEN 18 THEN INSERT INTO usuarios (nome) VALUES ('Renato Ribeiro');
            WHEN 19 THEN INSERT INTO usuarios (nome) VALUES ('Cláudia Freitas');
            WHEN 20 THEN INSERT INTO usuarios (nome) VALUES ('Rodrigo Moraes');
            WHEN 21 THEN INSERT INTO usuarios (nome) VALUES ('Simone Duarte');
            WHEN 22 THEN INSERT INTO usuarios (nome) VALUES ('Thiago Carvalho');
            WHEN 23 THEN INSERT INTO usuarios (nome) VALUES ('Vanessa Batista');
            WHEN 24 THEN INSERT INTO usuarios (nome) VALUES ('Fábio Gomes');
            WHEN 25 THEN INSERT INTO usuarios (nome) VALUES ('Patrícia Dias');
            WHEN 26 THEN INSERT INTO usuarios (nome) VALUES ('Ricardo Correia');
            WHEN 27 THEN INSERT INTO usuarios (nome) VALUES ('Adriana Pinto');
            WHEN 28 THEN INSERT INTO usuarios (nome) VALUES ('Felipe Nunes');
            WHEN 29 THEN INSERT INTO usuarios (nome) VALUES ('Mariana Teixeira');
            WHEN 30 THEN INSERT INTO usuarios (nome) VALUES ('André Almeida');
            WHEN 31 THEN INSERT INTO usuarios (nome) VALUES ('Raquel Mendes');
            WHEN 32 THEN INSERT INTO usuarios (nome) VALUES ('Vitor Fonseca');
            WHEN 33 THEN INSERT INTO usuarios (nome) VALUES ('Elaine Rodrigues');
            WHEN 34 THEN INSERT INTO usuarios (nome) VALUES ('Diego Monteiro');
            WHEN 35 THEN INSERT INTO usuarios (nome) VALUES ('Sofia Moreira');
            WHEN 36 THEN INSERT INTO usuarios (nome) VALUES ('Alexandre Araujo');
            WHEN 37 THEN INSERT INTO usuarios (nome) VALUES ('Isabela Farias');
            WHEN 38 THEN INSERT INTO usuarios (nome) VALUES ('Douglas Pereira');
            WHEN 39 THEN INSERT INTO usuarios (nome) VALUES ('Laura Cavalcante');
            WHEN 40 THEN INSERT INTO usuarios (nome) VALUES ('Lucas Guimarães');
            WHEN 41 THEN INSERT INTO usuarios (nome) VALUES ('Natália Santos');
            WHEN 42 THEN INSERT INTO usuarios (nome) VALUES ('Henrique Mendes');
            WHEN 43 THEN INSERT INTO usuarios (nome) VALUES ('Aline Borges');
            WHEN 44 THEN INSERT INTO usuarios (nome) VALUES ('Bruna Oliveira');
            WHEN 45 THEN INSERT INTO usuarios (nome) VALUES ('Vinícius Castro');
            WHEN 46 THEN INSERT INTO usuarios (nome) VALUES ('Letícia Silva');
            WHEN 47 THEN INSERT INTO usuarios (nome) VALUES ('Hugo Ramos');
            WHEN 48 THEN INSERT INTO usuarios (nome) VALUES ('Mônica Carvalho');
            WHEN 49 THEN INSERT INTO usuarios (nome) VALUES ('Julio Machado');
            WHEN 50 THEN INSERT INTO usuarios (nome) VALUES ('Carolina Neves');
        END CASE;

        SET i = i + 1;
    END WHILE;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-05  2:45:45
