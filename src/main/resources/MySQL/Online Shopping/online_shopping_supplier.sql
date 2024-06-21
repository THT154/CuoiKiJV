-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: online_shopping
-- ------------------------------------------------------
-- Server version	8.0.35

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
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `sid` int NOT NULL,
  `sname` varchar(200) NOT NULL,
  `semail` varchar(200) DEFAULT NULL,
  `spassword` varchar(100) DEFAULT NULL,
  `sphone` varchar(10) DEFAULT NULL,
  `saddress1` text,
  `saddress2` text,
  PRIMARY KEY (`sname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (5,'Ánh Kim ','ak.sup@gmail.com','202cb962ac59075b964b07152d234b70','0976331229','Gia Lai','29 Bà Triệu'),(4,'Hoàng Hải Khanh','hhk.sup@gmail.com','202cb962ac59075b964b07152d234b70','0848924111','Gia Lai','125 Nguyễn Thế Lịch'),(2,'Hoành Văn Hà','hvh.sup@gmail.com','202cb962ac59075b964b07152d234b70','0848197521','Gia Lai','28 Trần Hưng Đạo'),(1,'Người vận chuyển','supplier@gmail.com','202cb962ac59075b964b07152d234b70','0848229555','Gia Lai','125 Trần Đại Nghĩa'),(6,'Phan Thị Hải','pth.sup@gmail.com','202cb962ac59075b964b07152d234b70','0967229551','Gia Lai','167 Hùng Vương'),(3,'Văn Khánh Hoàng','vkh.sup@gmail.com','202cb962ac59075b964b07152d234b70','0982447221','Gia Lai','21 Lê Duẫn');
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-06-21 21:40:18
