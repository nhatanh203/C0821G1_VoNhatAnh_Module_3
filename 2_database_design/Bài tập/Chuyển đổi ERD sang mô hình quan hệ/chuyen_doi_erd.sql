-- MySQL dump 10.13  Distrib 8.0.11, for macos10.13 (x86_64)
--
-- Host: localhost    Database: chuyen_doi_erd
-- ------------------------------------------------------
-- Server version	8.0.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `chi_tiet_don_dat_hang`
--

DROP TABLE IF EXISTS `chi_tiet_don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chi_tiet_don_dat_hang` (
  `ma_vtu_vat_tu` varchar(20) NOT NULL,
  `so_dh_don_hang` int(11) NOT NULL,
  PRIMARY KEY (`ma_vtu_vat_tu`,`so_dh_don_hang`),
  KEY `so_dh_don_hang` (`so_dh_don_hang`),
  CONSTRAINT `chi_tiet_don_dat_hang_ibfk_1` FOREIGN KEY (`ma_vtu_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  CONSTRAINT `chi_tiet_don_dat_hang_ibfk_2` FOREIGN KEY (`so_dh_don_hang`) REFERENCES `don_dat_hang` (`so_don_hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_don_dat_hang`
--

LOCK TABLES `chi_tiet_don_dat_hang` WRITE;
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_nhap`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chi_tiet_phieu_nhap` (
  `don_gia_nhap` int(11) DEFAULT NULL,
  `so_luong_nhap` int(11) DEFAULT NULL,
  `ma_vt_vat_tu` varchar(20) NOT NULL,
  `so_pn_phieu_nhap` int(11) NOT NULL,
  PRIMARY KEY (`ma_vt_vat_tu`,`so_pn_phieu_nhap`),
  KEY `so_pn_phieu_nhap` (`so_pn_phieu_nhap`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_1` FOREIGN KEY (`ma_vt_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`),
  CONSTRAINT `chi_tiet_phieu_nhap_ibfk_2` FOREIGN KEY (`so_pn_phieu_nhap`) REFERENCES `phieu_nhap` (`so_phieu_nhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_nhap`
--

LOCK TABLES `chi_tiet_phieu_nhap` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `chi_tiet_phieu_xuat`
--

DROP TABLE IF EXISTS `chi_tiet_phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `chi_tiet_phieu_xuat` (
  `don_gia_xuat` int(11) DEFAULT NULL,
  `so_luong_xuat` int(11) DEFAULT NULL,
  `so_px_phieu_xuat` int(11) NOT NULL,
  `ma_vt_vat_tu` varchar(20) NOT NULL,
  PRIMARY KEY (`so_px_phieu_xuat`,`ma_vt_vat_tu`),
  KEY `ma_vt_vat_tu` (`ma_vt_vat_tu`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_1` FOREIGN KEY (`so_px_phieu_xuat`) REFERENCES `phieu_xuat` (`so_px`),
  CONSTRAINT `chi_tiet_phieu_xuat_ibfk_2` FOREIGN KEY (`ma_vt_vat_tu`) REFERENCES `vat_tu` (`ma_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chi_tiet_phieu_xuat`
--

LOCK TABLES `chi_tiet_phieu_xuat` WRITE;
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` DISABLE KEYS */;
/*!40000 ALTER TABLE `chi_tiet_phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `don_dat_hang`
--

DROP TABLE IF EXISTS `don_dat_hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `don_dat_hang` (
  `so_don_hang` int(11) NOT NULL,
  `ngay_dat_hang` datetime DEFAULT NULL,
  `ma_ncc_cung_cap` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`so_don_hang`),
  KEY `ma_ncc_cung_cap` (`ma_ncc_cung_cap`),
  CONSTRAINT `don_dat_hang_ibfk_1` FOREIGN KEY (`ma_ncc_cung_cap`) REFERENCES `nha_cung_cap` (`ma_nha_cung_cap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `don_dat_hang`
--

LOCK TABLES `don_dat_hang` WRITE;
/*!40000 ALTER TABLE `don_dat_hang` DISABLE KEYS */;
/*!40000 ALTER TABLE `don_dat_hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nha_cung_cap`
--

DROP TABLE IF EXISTS `nha_cung_cap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `nha_cung_cap` (
  `ma_nha_cung_cap` varchar(20) NOT NULL,
  `ten_nha_cung_cap` varchar(50) DEFAULT NULL,
  `dia_chi` varchar(50) DEFAULT NULL,
  `so_dt_dien_thoai` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`ma_nha_cung_cap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nha_cung_cap`
--

LOCK TABLES `nha_cung_cap` WRITE;
/*!40000 ALTER TABLE `nha_cung_cap` DISABLE KEYS */;
/*!40000 ALTER TABLE `nha_cung_cap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_nhap`
--

DROP TABLE IF EXISTS `phieu_nhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phieu_nhap` (
  `so_phieu_nhap` int(11) NOT NULL,
  `ngay_nhap` datetime DEFAULT NULL,
  PRIMARY KEY (`so_phieu_nhap`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_nhap`
--

LOCK TABLES `phieu_nhap` WRITE;
/*!40000 ALTER TABLE `phieu_nhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_nhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieu_xuat`
--

DROP TABLE IF EXISTS `phieu_xuat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `phieu_xuat` (
  `so_px` int(11) NOT NULL,
  `ngay_xuat` datetime DEFAULT NULL,
  PRIMARY KEY (`so_px`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieu_xuat`
--

LOCK TABLES `phieu_xuat` WRITE;
/*!40000 ALTER TABLE `phieu_xuat` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieu_xuat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat_tu`
--

DROP TABLE IF EXISTS `vat_tu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `vat_tu` (
  `ma_vat_tu` varchar(20) NOT NULL,
  `ten_vat_tu` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ma_vat_tu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat_tu`
--

LOCK TABLES `vat_tu` WRITE;
/*!40000 ALTER TABLE `vat_tu` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat_tu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-11-15 16:19:16
