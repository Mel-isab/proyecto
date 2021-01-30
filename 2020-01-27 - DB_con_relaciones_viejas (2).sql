CREATE DATABASE  IF NOT EXISTS `db_nac_merca` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `db_nac_merca`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: db_nac_merca
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `tbl_01_polizas`
--

DROP TABLE IF EXISTS `tbl_01_polizas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_01_polizas` (
  `Id_poliza` varchar(13) NOT NULL,
  `cod_aduana_ent` int NOT NULL,
  `cod_aduana_sal` int NOT NULL,
  `Id_almacen` int NOT NULL,
  `Id_cliente` int NOT NULL,
  `Cod_pais_org` varchar(2) NOT NULL,
  `Cod_pais_pro` varchar(2) NOT NULL,
  `Cod_pais_des` varchar(2) NOT NULL,
  `Cod_pais_pla` varchar(2) NOT NULL,
  `Cod_pais_furgon` varchar(2) NOT NULL,
  `usuario` varchar(15) NOT NULL,
  `Id_proveedor` int NOT NULL,
  `Id_proyecto` int NOT NULL,
  `Id_regimen` int NOT NULL,
  `serie` int NOT NULL,
  `fecha_registro` datetime NOT NULL,
  `fecha_fin` datetime NOT NULL,
  `manifiesto` varchar(17) NOT NULL,
  `Num_embarque` varchar(17) NOT NULL,
  `fecha_embarq` datetime NOT NULL,
  `Num_facturas` int NOT NULL,
  `cant_facturas` int NOT NULL,
  `fecha_cancel` datetime NOT NULL,
  `medio_trans` varchar(15) NOT NULL,
  `transportista` varchar(100) NOT NULL,
  `placa_cabez` varchar(10) NOT NULL,
  `num_contenedor` varchar(255) NOT NULL,
  `num_march_orig` varchar(255) NOT NULL,
  `num_march_adu` varchar(255) NOT NULL,
  `valor_fob` double NOT NULL,
  `flete` double NOT NULL,
  `seguro` double NOT NULL,
  `otros_gast` double NOT NULL,
  `valor_cif` double NOT NULL,
  `ajuste` double NOT NULL,
  `cif_imponible` double NOT NULL,
  `liqimporta` double NOT NULL,
  `liqexporta` double NOT NULL,
  `liqselect` double NOT NULL,
  `liqtasaadm` double NOT NULL,
  `liqmultas` double NOT NULL,
  `liqaerop` double NOT NULL,
  `liqalmacen` double NOT NULL,
  `liqdervial` double NOT NULL,
  `liqotros` double NOT NULL,
  `liqproduc` double NOT NULL,
  `liqimpvta` double NOT NULL,
  `liqcredito` double NOT NULL,
  `liqtotal` double NOT NULL,
  `noprinliq` tinyint NOT NULL,
  `noprinletras` tinyint NOT NULL,
  `noprinderechos` tinyint NOT NULL,
  `ultima_modificaion` datetime NOT NULL,
  `ultimo_editor` varchar(15) NOT NULL,
  `id_pago` varchar(4) NOT NULL,
  `id_condicion` varchar(4) NOT NULL,
  PRIMARY KEY (`Id_poliza`),
  KEY `cod_aduana_ent_idx` (`cod_aduana_ent`,`cod_aduana_sal`),
  KEY `almacen_idx` (`Id_almacen`),
  KEY `usuario` (`usuario`),
  KEY `cod_aduana_sal` (`cod_aduana_sal`),
  KEY `Id_cliente` (`Id_cliente`),
  KEY `Cod_pais_org` (`Cod_pais_org`),
  KEY `Cod_pais_pro` (`Cod_pais_pro`),
  KEY `Cod_pais_des` (`Cod_pais_des`),
  KEY `Cod_pais_pla` (`Cod_pais_pla`),
  KEY `Cod_pais_furgon` (`Cod_pais_furgon`),
  KEY `Id_proveedor` (`Id_proveedor`),
  KEY `Id_proyecto` (`Id_proyecto`),
  KEY `Id_regimen` (`Id_regimen`),
  KEY `fecha_fin` (`fecha_fin`),
  KEY `id_pago` (`id_pago`),
  KEY `id_condicion` (`id_condicion`),
  CONSTRAINT `tbl_01_polizas_ibfk_1` FOREIGN KEY (`usuario`) REFERENCES `tbl_02_usuarios` (`usuario`),
  CONSTRAINT `tbl_01_polizas_ibfk_10` FOREIGN KEY (`Cod_pais_furgon`) REFERENCES `tbl_10_paises` (`Cod_Pais`),
  CONSTRAINT `tbl_01_polizas_ibfk_11` FOREIGN KEY (`Id_proveedor`) REFERENCES `tbl_07_proveedores` (`Id_proveedor`),
  CONSTRAINT `tbl_01_polizas_ibfk_12` FOREIGN KEY (`Id_proyecto`) REFERENCES `tbl_13_proyectos` (`Id_proyecto`),
  CONSTRAINT `tbl_01_polizas_ibfk_13` FOREIGN KEY (`Id_regimen`) REFERENCES `tbl_12_regimen` (`Id_regimen`),
  CONSTRAINT `tbl_01_polizas_ibfk_14` FOREIGN KEY (`fecha_fin`) REFERENCES `tbl_09_dolar` (`Fecha`),
  CONSTRAINT `tbl_01_polizas_ibfk_15` FOREIGN KEY (`id_pago`) REFERENCES `tbl_15_forma_pago` (`nombre_pago`),
  CONSTRAINT `tbl_01_polizas_ibfk_16` FOREIGN KEY (`id_condicion`) REFERENCES `tbl_16_condicion_entrega` (`nombre_condicion`),
  CONSTRAINT `tbl_01_polizas_ibfk_2` FOREIGN KEY (`cod_aduana_ent`) REFERENCES `tbl_08_aduanas` (`ID_Aduana`),
  CONSTRAINT `tbl_01_polizas_ibfk_3` FOREIGN KEY (`cod_aduana_sal`) REFERENCES `tbl_08_aduanas` (`ID_Aduana`),
  CONSTRAINT `tbl_01_polizas_ibfk_4` FOREIGN KEY (`Id_almacen`) REFERENCES `tbl_11_almacenes` (`Id_almacen`),
  CONSTRAINT `tbl_01_polizas_ibfk_5` FOREIGN KEY (`Id_cliente`) REFERENCES `tbl_06_cliente` (`Id_cliente`),
  CONSTRAINT `tbl_01_polizas_ibfk_6` FOREIGN KEY (`Cod_pais_org`) REFERENCES `tbl_10_paises` (`Cod_Pais`),
  CONSTRAINT `tbl_01_polizas_ibfk_7` FOREIGN KEY (`Cod_pais_pro`) REFERENCES `tbl_10_paises` (`Cod_Pais`),
  CONSTRAINT `tbl_01_polizas_ibfk_8` FOREIGN KEY (`Cod_pais_des`) REFERENCES `tbl_10_paises` (`Cod_Pais`),
  CONSTRAINT `tbl_01_polizas_ibfk_9` FOREIGN KEY (`Cod_pais_pla`) REFERENCES `tbl_10_paises` (`Cod_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_01_polizas`
--

LOCK TABLES `tbl_01_polizas` WRITE;
/*!40000 ALTER TABLE `tbl_01_polizas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_01_polizas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_02_usuarios`
--

DROP TABLE IF EXISTS `tbl_02_usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_02_usuarios` (
  `id_usuario` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(15) NOT NULL,
  `nombre` varchar(150) NOT NULL,
  `estado` int NOT NULL,
  `clave` varchar(20) NOT NULL,
  `correo` varchar(50) DEFAULT NULL,
  `rol` int NOT NULL,
  `fecha_ultima_conexion` datetime DEFAULT NULL,
  `fecha_vencimiento` datetime DEFAULT NULL,
  `creado_por` varchar(15) DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `ultimo_editor` varchar(15) DEFAULT NULL,
  `fecha_modificacion` tinyint DEFAULT NULL,
  PRIMARY KEY (`usuario`),
  KEY `tbl_02_usuarios_ibfk_1_idx` (`rol`),
  KEY `usuario_estado_idx` (`estado`),
  KEY `id` (`id_usuario`),
  CONSTRAINT `tbl_02_usuarios_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `tbl_17_rol` (`id_rol`),
  CONSTRAINT `usuario_estado` FOREIGN KEY (`estado`) REFERENCES `tbl_21_estatus` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_02_usuarios`
--

LOCK TABLES `tbl_02_usuarios` WRITE;
/*!40000 ALTER TABLE `tbl_02_usuarios` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_02_usuarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_03_permisos`
--

DROP TABLE IF EXISTS `tbl_03_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_03_permisos` (
  `Id` int NOT NULL AUTO_INCREMENT,
  `Parametro` int NOT NULL,
  `Detalle_Parametro` varchar(255) NOT NULL,
  `rol` int NOT NULL,
  `permiso_insercion` tinyint NOT NULL,
  `permiso_eliminacion` tinyint NOT NULL,
  `permiso_actualizacion` tinyint NOT NULL,
  `permiso_consulta` tinyint NOT NULL,
  `id_objeto` int DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `idx_tbl_03_permisos_rol` (`rol`),
  KEY `tbl_03_permisos_idx` (`id_objeto`),
  CONSTRAINT `tbl_03_permisos` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_18_objetos` (`id_objeto`),
  CONSTRAINT `tbl_03_permisos_ibfk_1` FOREIGN KEY (`rol`) REFERENCES `tbl_17_rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_03_permisos`
--

LOCK TABLES `tbl_03_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_03_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_03_permisos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_06_cliente`
--

DROP TABLE IF EXISTS `tbl_06_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_06_cliente` (
  `Id_cliente` int NOT NULL,
  `Id_nivel_com` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion_domicilio` varchar(255) NOT NULL,
  `direccion_envio` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `telefono2` int DEFAULT NULL,
  `telefono3` int DEFAULT NULL,
  `fax` int NOT NULL,
  `email_personal` varchar(255) NOT NULL,
  `email_empresarial` varchar(255) DEFAULT NULL,
  `rtn_cli` varchar(14) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  `limitecr` double NOT NULL,
  `plazocr` int NOT NULL,
  `cod_pais` varchar(2) NOT NULL,
  PRIMARY KEY (`Id_cliente`),
  KEY `Id_nivel_com` (`Id_nivel_com`),
  KEY `cod_pais` (`cod_pais`),
  CONSTRAINT `tbl_06_cliente_ibfk_1` FOREIGN KEY (`Id_nivel_com`) REFERENCES `tbl_14_nivel_comercial` (`ID_com`),
  CONSTRAINT `tbl_06_cliente_ibfk_2` FOREIGN KEY (`cod_pais`) REFERENCES `tbl_10_paises` (`Cod_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_06_cliente`
--

LOCK TABLES `tbl_06_cliente` WRITE;
/*!40000 ALTER TABLE `tbl_06_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_06_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_07_proveedores`
--

DROP TABLE IF EXISTS `tbl_07_proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_07_proveedores` (
  `Id_proveedor` int NOT NULL,
  `Id_nivel_com` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `direccion_domicilio` varchar(255) NOT NULL,
  `direccion_envio` varchar(255) NOT NULL,
  `ciudad` varchar(50) NOT NULL,
  `telefono` int NOT NULL,
  `telefono2` int DEFAULT NULL,
  `telefono3` int DEFAULT NULL,
  `fax` int NOT NULL,
  `email_personal` varchar(255) NOT NULL,
  `email_empresarial` varchar(255) DEFAULT NULL,
  `rtn_proveedor` varchar(14) NOT NULL,
  `contacto` varchar(255) NOT NULL,
  `limitecr` double NOT NULL,
  `plazocr` int NOT NULL,
  `pais` varchar(2) NOT NULL,
  PRIMARY KEY (`Id_proveedor`),
  KEY `Id_nivel_com` (`Id_nivel_com`),
  KEY `pais` (`pais`),
  CONSTRAINT `tbl_07_proveedores_ibfk_1` FOREIGN KEY (`Id_nivel_com`) REFERENCES `tbl_14_nivel_comercial` (`ID_com`),
  CONSTRAINT `tbl_07_proveedores_ibfk_2` FOREIGN KEY (`pais`) REFERENCES `tbl_10_paises` (`Cod_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_07_proveedores`
--

LOCK TABLES `tbl_07_proveedores` WRITE;
/*!40000 ALTER TABLE `tbl_07_proveedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_07_proveedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_08_aduanas`
--

DROP TABLE IF EXISTS `tbl_08_aduanas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_08_aduanas` (
  `ID_Aduana` int NOT NULL,
  `Nombre_aduana` varchar(100) NOT NULL,
  `Contacto` varchar(100) NOT NULL,
  `Tel` int NOT NULL,
  `Ubicacion` varchar(255) NOT NULL,
  PRIMARY KEY (`ID_Aduana`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_08_aduanas`
--

LOCK TABLES `tbl_08_aduanas` WRITE;
/*!40000 ALTER TABLE `tbl_08_aduanas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_08_aduanas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_09_dolar`
--

DROP TABLE IF EXISTS `tbl_09_dolar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_09_dolar` (
  `ID_dolar` double NOT NULL,
  `Fecha` datetime NOT NULL,
  `Valor_compra` double NOT NULL,
  `valor_venta` double NOT NULL,
  PRIMARY KEY (`Fecha`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_09_dolar`
--

LOCK TABLES `tbl_09_dolar` WRITE;
/*!40000 ALTER TABLE `tbl_09_dolar` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_09_dolar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_10_paises`
--

DROP TABLE IF EXISTS `tbl_10_paises`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_10_paises` (
  `Id_Pais` int NOT NULL,
  `Cod_Pais` varchar(2) NOT NULL,
  `Nombre_Pais` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_Pais`),
  KEY `idx_tbl_10_paises_Cod_Pais` (`Cod_Pais`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_10_paises`
--

LOCK TABLES `tbl_10_paises` WRITE;
/*!40000 ALTER TABLE `tbl_10_paises` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_10_paises` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_11_almacenes`
--

DROP TABLE IF EXISTS `tbl_11_almacenes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_11_almacenes` (
  `Id_almacen` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Ubicación` varchar(255) NOT NULL,
  `Contacto` varchar(50) NOT NULL,
  `Tel` int NOT NULL,
  PRIMARY KEY (`Id_almacen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_11_almacenes`
--

LOCK TABLES `tbl_11_almacenes` WRITE;
/*!40000 ALTER TABLE `tbl_11_almacenes` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_11_almacenes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_12_regimen`
--

DROP TABLE IF EXISTS `tbl_12_regimen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_12_regimen` (
  `Id_regimen` int NOT NULL,
  `Regimen` varchar(100) NOT NULL,
  PRIMARY KEY (`Id_regimen`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_12_regimen`
--

LOCK TABLES `tbl_12_regimen` WRITE;
/*!40000 ALTER TABLE `tbl_12_regimen` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_12_regimen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_13_proyectos`
--

DROP TABLE IF EXISTS `tbl_13_proyectos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_13_proyectos` (
  `Id_proyecto` int NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Usuario` int NOT NULL,
  PRIMARY KEY (`Id_proyecto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_13_proyectos`
--

LOCK TABLES `tbl_13_proyectos` WRITE;
/*!40000 ALTER TABLE `tbl_13_proyectos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_13_proyectos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_14_nivel_comercial`
--

DROP TABLE IF EXISTS `tbl_14_nivel_comercial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_14_nivel_comercial` (
  `ID_com` int NOT NULL,
  `Tipo` varchar(50) NOT NULL,
  PRIMARY KEY (`ID_com`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_14_nivel_comercial`
--

LOCK TABLES `tbl_14_nivel_comercial` WRITE;
/*!40000 ALTER TABLE `tbl_14_nivel_comercial` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_14_nivel_comercial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_15_forma_pago`
--

DROP TABLE IF EXISTS `tbl_15_forma_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_15_forma_pago` (
  `id_pago` varchar(4) NOT NULL,
  `nombre_pago` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pago`),
  KEY `idx_tbl_15_forma_pago_nombre_pago` (`nombre_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_15_forma_pago`
--

LOCK TABLES `tbl_15_forma_pago` WRITE;
/*!40000 ALTER TABLE `tbl_15_forma_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_15_forma_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_16_condicion_entrega`
--

DROP TABLE IF EXISTS `tbl_16_condicion_entrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_16_condicion_entrega` (
  `id_condicion` varchar(4) NOT NULL,
  `nombre_condicion` varchar(50) NOT NULL,
  PRIMARY KEY (`id_condicion`),
  KEY `idx_tbl_16_condicion_entrega_nombre_condicion` (`nombre_condicion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_16_condicion_entrega`
--

LOCK TABLES `tbl_16_condicion_entrega` WRITE;
/*!40000 ALTER TABLE `tbl_16_condicion_entrega` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_16_condicion_entrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_17_rol`
--

DROP TABLE IF EXISTS `tbl_17_rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_17_rol` (
  `id_rol` int NOT NULL,
  `rol` varchar(30) NOT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_rol`),
  KEY `idx_tbl_17_rol_nombre_rol` (`rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_17_rol`
--

LOCK TABLES `tbl_17_rol` WRITE;
/*!40000 ALTER TABLE `tbl_17_rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_17_rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_18_objetos`
--

DROP TABLE IF EXISTS `tbl_18_objetos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_18_objetos` (
  `id_objeto` int NOT NULL,
  `objeto` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `tipo_objeto` varchar(15) NOT NULL,
  `creado_por` varchar(15) NOT NULL,
  `fecha_creacion` datetime NOT NULL,
  `ultimo_editor` varchar(15) NOT NULL,
  `fecha_modificacion` datetime NOT NULL,
  PRIMARY KEY (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_18_objetos`
--

LOCK TABLES `tbl_18_objetos` WRITE;
/*!40000 ALTER TABLE `tbl_18_objetos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_18_objetos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_19_bitacora`
--

DROP TABLE IF EXISTS `tbl_19_bitacora`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_19_bitacora` (
  `id_bitacora` int NOT NULL,
  `fecha` datetime NOT NULL,
  `id_usuario` varchar(15) NOT NULL,
  `id_objeto` int NOT NULL,
  `accion` varchar(100) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  PRIMARY KEY (`id_bitacora`),
  KEY `usuario_idx` (`id_usuario`),
  KEY `objeto_idx` (`id_objeto`),
  CONSTRAINT `objeto` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_18_objetos` (`id_objeto`),
  CONSTRAINT `usuario` FOREIGN KEY (`id_usuario`) REFERENCES `tbl_02_usuarios` (`usuario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_19_bitacora`
--

LOCK TABLES `tbl_19_bitacora` WRITE;
/*!40000 ALTER TABLE `tbl_19_bitacora` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_19_bitacora` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_20_configuracion`
--

DROP TABLE IF EXISTS `tbl_20_configuracion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_20_configuracion` (
  `nombre_proyecto` varchar(100) NOT NULL,
  `version` varchar(45) NOT NULL,
  `nombre_empresa` varchar(100) DEFAULT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `alias` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `rtn` varchar(14) DEFAULT NULL,
  `estado` int DEFAULT NULL,
  KEY `estado_idx` (`estado`),
  CONSTRAINT `estado` FOREIGN KEY (`estado`) REFERENCES `tbl_21_estatus` (`id_estado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_20_configuracion`
--

LOCK TABLES `tbl_20_configuracion` WRITE;
/*!40000 ALTER TABLE `tbl_20_configuracion` DISABLE KEYS */;
INSERT INTO `tbl_20_configuracion` VALUES ('Reg. Merca. HN','0.1',NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `tbl_20_configuracion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_21_estatus`
--

DROP TABLE IF EXISTS `tbl_21_estatus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_21_estatus` (
  `id_estado` int NOT NULL,
  `descripcion` varchar(25) DEFAULT NULL,
  `id_objeto` int DEFAULT NULL,
  PRIMARY KEY (`id_estado`),
  KEY `objetos_estado_idx` (`id_objeto`),
  CONSTRAINT `objetos_estado` FOREIGN KEY (`id_objeto`) REFERENCES `tbl_18_objetos` (`id_objeto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_21_estatus`
--

LOCK TABLES `tbl_21_estatus` WRITE;
/*!40000 ALTER TABLE `tbl_21_estatus` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_21_estatus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_22_historico_claves`
--

DROP TABLE IF EXISTS `tbl_22_historico_claves`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_22_historico_claves` (
  `id_historico` int NOT NULL AUTO_INCREMENT,
  `id_usuario` varchar(15) DEFAULT NULL,
  `calve` varchar(20) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  PRIMARY KEY (`id_historico`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_22_historico_claves`
--

LOCK TABLES `tbl_22_historico_claves` WRITE;
/*!40000 ALTER TABLE `tbl_22_historico_claves` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_22_historico_claves` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_23_parametros`
--

DROP TABLE IF EXISTS `tbl_23_parametros`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_23_parametros` (
  `id_parametro` int NOT NULL AUTO_INCREMENT,
  `parametro` varchar(50) DEFAULT NULL,
  `valor` varchar(100) DEFAULT NULL,
  `id_usuario_crea_modi` int DEFAULT NULL,
  `fecha_creacion` datetime DEFAULT NULL,
  `fecha_modificacion` datetime DEFAULT NULL,
  PRIMARY KEY (`id_parametro`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_23_parametros`
--

LOCK TABLES `tbl_23_parametros` WRITE;
/*!40000 ALTER TABLE `tbl_23_parametros` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_23_parametros` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_24_preguntas`
--

DROP TABLE IF EXISTS `tbl_24_preguntas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_24_preguntas` (
  `id_pregunta` int NOT NULL AUTO_INCREMENT,
  `pregunta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_24_preguntas`
--

LOCK TABLES `tbl_24_preguntas` WRITE;
/*!40000 ALTER TABLE `tbl_24_preguntas` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_24_preguntas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_25_preguntas_usuario`
--

DROP TABLE IF EXISTS `tbl_25_preguntas_usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_25_preguntas_usuario` (
  `id_pregunta` int NOT NULL,
  `id_usuario` int DEFAULT NULL,
  `respuesta` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id_pregunta`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_25_preguntas_usuario`
--

LOCK TABLES `tbl_25_preguntas_usuario` WRITE;
/*!40000 ALTER TABLE `tbl_25_preguntas_usuario` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_25_preguntas_usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_26_permisos`
--

DROP TABLE IF EXISTS `tbl_26_permisos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_26_permisos` (
  `id_rol` int NOT NULL,
  `id_objeto` varchar(45) DEFAULT NULL,
  `permiso_insertar` tinyint DEFAULT NULL,
  `permiso_eliminar` tinyint DEFAULT NULL,
  `permiso_actualizar` tinyint DEFAULT NULL,
  `permiso_consultar` tinyint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_26_permisos`
--

LOCK TABLES `tbl_26_permisos` WRITE;
/*!40000 ALTER TABLE `tbl_26_permisos` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_26_permisos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_1`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_10`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_11`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_12`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_13`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_14`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_15`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_16`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_2`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_3`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_4`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_5`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_6`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_7`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_8`;
ALTER TABLE `tbl_01_polizas` DROP FOREIGN KEY `tbl_01_polizas_ibfk_9`;

ALTER TABLE `tbl_02_usuarios` DROP FOREIGN KEY `tbl_02_usuarios_ibfk_1`;
ALTER TABLE `tbl_02_usuarios` DROP FOREIGN KEY `usuario_estado`;

ALTER TABLE `tbl_03_permisos` DROP FOREIGN KEY `tbl_03_permisos`;
ALTER TABLE `tbl_03_permisos` DROP FOREIGN KEY `tbl_03_permisos_ibfk_1`;

ALTER TABLE `tbl_06_cliente` DROP FOREIGN KEY `tbl_06_cliente_ibfk_1`;
ALTER TABLE `tbl_06_cliente` DROP FOREIGN KEY `tbl_06_cliente_ibfk_2`;

ALTER TABLE `tbl_19_bitacora` DROP FOREIGN KEY `objeto`;
ALTER TABLE `tbl_19_bitacora` DROP FOREIGN KEY `usuario`;

ALTER TABLE `tbl_20_configuracion` DROP FOREIGN KEY `estado`;

ALTER TABLE `tbl_21_estatus` DROP FOREIGN KEY `objetos_estado`;




-- Dump completed on 2021-01-27 20:14:15
