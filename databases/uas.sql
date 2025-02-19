-- MariaDB dump 10.19  Distrib 10.4.25-MariaDB, for Linux (x86_64)
--
<<<<<<< HEAD
-- Host: localhost    Database: uas
-- ------------------------------------------------------
-- Server version	10.4.25-MariaDB
=======
-- Host: localhost
-- Waktu pembuatan: 23 Nov 2022 pada 18.42
-- Versi server: 10.4.25-MariaDB
-- Versi PHP: 8.1.10



SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

>>>>>>> c135754 (konfilk)

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
-- Current Database: `uas`
--
create database uas;
use uas;

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `uas` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `uas`;

--
-- Table structure for table `dosen`
--

<<<<<<< HEAD
DROP TABLE IF EXISTS `dosen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
=======


>>>>>>> c135754 (konfilk)
CREATE TABLE `dosen` (
  `nip` varchar(10) NOT NULL,
  `nama_dosen` varchar(45) NOT NULL,
  `login_id_login` int(11) NOT NULL,
  PRIMARY KEY (`nama_dosen`,`login_id_login`),
  KEY `fk_dosen_login1_idx` (`login_id_login`),
  CONSTRAINT `dosen_ibfk_1` FOREIGN KEY (`login_id_login`) REFERENCES `login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_dosen_login1` FOREIGN KEY (`login_id_login`) REFERENCES `login` (`id_login`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dosen`
--

LOCK TABLES `dosen` WRITE;
/*!40000 ALTER TABLE `dosen` DISABLE KEYS */;
INSERT INTO `dosen` VALUES ('8120938098','Bayu Al Ghazali S.Pd. M.T',2),('7682936543','Hari Wijayantol S.Pd. M.T',2),('8757906543','Lil Bimo Nus Nus S.E N.uk ',2),('7682936547','Prof. Bayu TOT S.Pd. M.T',2),('7682936580','Prof. Irfan Azizuzizuy S.Pd. M.T',3),('7682936546','Surya Adi S.Pd. M.T',2);
/*!40000 ALTER TABLE `dosen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `id_login` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(45) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `jabatan` varchar(45) NOT NULL,
  PRIMARY KEY (`id_login`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'admin abc','admin','0192023a7bbd73250516f069df18b500','admin'),(2,'tendik','tendik','b8f8d5eba982ebdb42956582a429524f','tendik'),(3,'tendik2','tendik2','672feb69fd27f91e69718084264528d1','tendik');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `matkul`
--

DROP TABLE IF EXISTS `matkul`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `matkul` (
  `kode_matkul` varchar(5) NOT NULL,
  `nama_matkul` varchar(45) NOT NULL,
  `jadwal_matkul` date NOT NULL,
  `dosen_nama_dosen` varchar(45) NOT NULL,
  `login_id_login` int(11) NOT NULL,
  PRIMARY KEY (`kode_matkul`,`dosen_nama_dosen`,`login_id_login`),
  KEY `fk_matkul_dosen_idx` (`dosen_nama_dosen`),
  KEY `fk_matkul_login1_idx` (`login_id_login`),
  CONSTRAINT `fk_matkul_login` FOREIGN KEY (`login_id_login`) REFERENCES `login` (`id_login`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `matkul_ibfk_1` FOREIGN KEY (`dosen_nama_dosen`) REFERENCES `dosen` (`nama_dosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `matkul_ibfk_2` FOREIGN KEY (`login_id_login`) REFERENCES `login` (`id_login`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `matkul`
--

LOCK TABLES `matkul` WRITE;
/*!40000 ALTER TABLE `matkul` DISABLE KEYS */;
INSERT INTO `matkul` VALUES ('BI067','Bahasa Indonesia','2023-02-15','Agus Marno S.Pd. M.T',2),('JM8UT','Bahasa Jawa','2022-11-24','Lil Bimo Nus Nus S.E N.uk ',2),('PK069','Pendidikan Konservasi','2023-02-17','Hari Wijayanto S.Pd. M.T',2),('PW070','Pemrograman Web','2023-02-15','Surya Adi S.Pd. M.T',2),('SC069','Sistem Cerdas','2023-02-18','Prof. Irfan Azizuzizuy S.Pd. M.T',3);
/*!40000 ALTER TABLE `matkul` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-24 10:52:28
