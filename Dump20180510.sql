CREATE DATABASE  IF NOT EXISTS `mercado` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `mercado`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mercado
-- ------------------------------------------------------
-- Server version	5.5.5-10.1.28-MariaDB

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
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `clientes` (
  `idCliente` int(11) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `nomeCompleto` varchar(45) NOT NULL,
  `credito` int(11) DEFAULT NULL,
  `devedor` int(11) DEFAULT NULL,
  `endereco` varchar(45) NOT NULL,
  `localicacao` varchar(45) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `cep` varchar(45) DEFAULT NULL,
  `numeroCasa` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fornecedores`
--

DROP TABLE IF EXISTS `fornecedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fornecedores` (
  `idfornecedor` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(50) DEFAULT NULL,
  `cidade` varchar(50) DEFAULT NULL,
  `cep` varchar(20) DEFAULT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `cnpj` varchar(50) DEFAULT NULL,
  `ie` int(40) DEFAULT NULL,
  `tel` varchar(30) DEFAULT NULL,
  `cel` varchar(30) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`idfornecedor`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fornecedores`
--

LOCK TABLES `fornecedores` WRITE;
/*!40000 ALTER TABLE `fornecedores` DISABLE KEYS */;
INSERT INTO `fornecedores` VALUES (124,'valdilandia','valdiando','123321','BA','1323131',123,'123','123','valdirrrr@PROF'),(127,'Rua Militão Santos','Nazaré','44400-00','BA','7876',876876868,'67868','678686','786'),(128,'1','2','3','BA','4',5,'6','7','@');
/*!40000 ALTER TABLE `fornecedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `funcionario`
--

DROP TABLE IF EXISTS `funcionario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `funcionario` (
  `cpf` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `usuario` varchar(40) DEFAULT NULL,
  `senha` varchar(40) DEFAULT NULL,
  `nivel` int(11) DEFAULT NULL,
  PRIMARY KEY (`cpf`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `funcionario`
--

LOCK TABLES `funcionario` WRITE;
/*!40000 ALTER TABLE `funcionario` DISABLE KEYS */;
INSERT INTO `funcionario` VALUES (1111110,'Edmario Barbosa','vendas','edmario01','12345678',1),(1231312,'valdir','12312','12312','1231',1),(20202020,'Daniel','Vendas','daniel','1234',1),(43883838,'Sergio','Vendas','sergio01','1234',1);
/*!40000 ALTER TABLE `funcionario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidocliente`
--

DROP TABLE IF EXISTS `pedidocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pedidocliente` (
  `idPedidoCliente` int(11) NOT NULL,
  `idSeuPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `idProduto` int(11) NOT NULL,
  `quantidade` int(11) NOT NULL,
  PRIMARY KEY (`idPedidoCliente`),
  KEY `seuPedido_idx` (`idSeuPedido`),
  KEY `cliente_idx` (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidocliente`
--

LOCK TABLES `pedidocliente` WRITE;
/*!40000 ALTER TABLE `pedidocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `pedidocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produtos` (
  `cod_produto` int(11) DEFAULT NULL,
  `produto` varchar(40) DEFAULT NULL,
  `grupo` varchar(20) DEFAULT NULL,
  `unidade` varchar(20) DEFAULT NULL,
  `estoque_minimo` int(20) DEFAULT NULL,
  `estoque_atual` int(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (2020,'Miojo','Consumo','CX',2,10),(202022,'Cafe','Consumo','CX',2,10),(98897,'Leite','Consumo','CX',2,20),(202030,'Pipoca','Consumo','FAR',2,10),(1929,'Margarina Qualy','Consumo','CX',4,10);
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seuspedidos`
--

DROP TABLE IF EXISTS `seuspedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `seuspedidos` (
  `idSeuPedido` int(11) NOT NULL,
  `idCliente` int(11) NOT NULL,
  `statusPedido` varchar(45) NOT NULL,
  `separador` varchar(45) DEFAULT NULL,
  `horarioEntrada` varchar(45) DEFAULT NULL,
  `horarioSaida` varchar(45) DEFAULT NULL,
  `nomePedido` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSeuPedido`),
  KEY `cliente_idx` (`idCliente`),
  CONSTRAINT `cliente` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seuspedidos`
--

LOCK TABLES `seuspedidos` WRITE;
/*!40000 ALTER TABLE `seuspedidos` DISABLE KEYS */;
/*!40000 ALTER TABLE `seuspedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuariocliente`
--

DROP TABLE IF EXISTS `usuariocliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usuariocliente` (
  `idCliente` int(11) NOT NULL AUTO_INCREMENT,
  `loginCliente` varchar(45) NOT NULL,
  `senhaCliente` varchar(45) NOT NULL,
  `endereço` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cep` varchar(45) NOT NULL,
  `coordenada` varchar(45) NOT NULL,
  `numeroCasa` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `nomeCliente` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuariocliente`
--

LOCK TABLES `usuariocliente` WRITE;
/*!40000 ALTER TABLE `usuariocliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `usuariocliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'mercado'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-10 20:10:05
