create database jadak; 
use jadak;


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
-- Table structure for table `tbladmin`
--

DROP TABLE IF EXISTS `tbladmin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbladmin` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbladmin`
--

LOCK TABLES `tbladmin` WRITE;
/*!40000 ALTER TABLE `tbladmin` DISABLE KEYS */;
INSERT INTO `tbladmin` VALUES (1,'admin','admin',1234567890,'admin@mail.com','admin@2021');
/*!40000 ALTER TABLE `tbladmin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblparkingseatcapacity`
--

DROP TABLE IF EXISTS `tblparkingseatcapacity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblparkingseatcapacity` (
  `parking_seat` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblparkingseatcapacity`
--

LOCK TABLES `tblparkingseatcapacity` WRITE;
/*!40000 ALTER TABLE `tblparkingseatcapacity` DISABLE KEYS */;
INSERT INTO `tblparkingseatcapacity` VALUES (25);
/*!40000 ALTER TABLE `tblparkingseatcapacity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbluser`
--

DROP TABLE IF EXISTS `tbluser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbluser` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `registrationno` varchar(100) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `cpassword` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbluser`
--

LOCK TABLES `tbluser` WRITE;
/*!40000 ALTER TABLE `tbluser` DISABLE KEYS */;
INSERT INTO `tbluser` VALUES (1,'Dhruv','Agrawal','8448976379','adhruv856@gmail.com','Dwarka,Delhi','DL9CAQ5551','hirsuitedevil','dhruv@2021','dhruv@2021'),(2,'Jeet','Shah','9998976965','jeetashah25@gmail.com','Bharuch,Gujarat','GJ16AJ4528','jeet007','jeet@2021','jeet@2021'),(3,'Abhiraj','Khare','8423556906','abhiraj@gmail.com','Jhansi,Uttar Pradesh','UP15AA2345','khare','abhi@2021','abhi@2021'),(4,'Kamal','Aditya','7337080910','kamal.aditya@yahoo.com','Hyderabad,Telangana','TS09AB7890','kamaladi','kamal@2021','kamal@2021'),(5,'Aarnav','Sanghavi','7990676221','aarnav.s@gmail.com','Ahmedabad,Gujarat','GJ01AC4567','aarnav.04','aaranav@2021','aarnav@2021'),(6,'Samarth','Singh Parihar','8529098708','parihar@gmail.com','Raipur,Chhatisgarh','CG04LG1007','rogueking','parihar@2021','parihar@2021');
/*!40000 ALTER TABLE `tbluser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tblvehicle`
--

DROP TABLE IF EXISTS `tblvehicle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblvehicle` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `ParkingNumber` varchar(120) DEFAULT NULL,
  `VehicleCompanyname` varchar(120) DEFAULT NULL,
  `RegistrationNumber` varchar(120) DEFAULT NULL,
  `OwnerName` varchar(120) DEFAULT NULL,
  `OwnerContactNumber` bigint DEFAULT NULL,
  `service` varchar(400) DEFAULT NULL,
  `InTime` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `OutTime` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `parkingcharge` varchar(120) DEFAULT NULL,
  `rating` mediumtext,
  `status` varchar(5) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tblvehicle`
--

LOCK TABLES `tblvehicle` WRITE;
/*!40000 ALTER TABLE `tblvehicle` DISABLE KEYS */;
INSERT INTO `tblvehicle` VALUES (1,'1234567','Toyota','DL9CAQ5551','Dhruv Agrawal',8448976379,'Car Wash','2021-12-03 14:10:33','2021-12-03 15:10:33','125','5','Out'),(2,'7100365','Honda','GJ16AJ4528','Jeet Shah',9998976965,'Car Repair','2021-12-04 14:12:59','2021-12-04 17:03:37','175','4','Out'),(3,'1648760','Maruti Suzuki','UP15AA2345','Abhiraj Khare',8423556906,'Dry Clean','2021-12-03 14:15:00','2021-12-03 19:15:00','225','3','Out'),(4,'4285240','Hyundai','TS09AB7890','Kamal Aditya Madakasira',7337080910,'Car Wash','2021-12-04 03:03:17','2021-12-04 07:04:51','200','4','Out');
/*!40000 ALTER TABLE `tblvehicle` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

--
-- Worker table 
--

DROP TABLE IF EXISTS `tblworker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tblworker` (
  `id` int NOT NULL AUTO_INCREMENT,
  `fname` varchar(100) DEFAULT NULL,
  `lname` varchar(100) DEFAULT NULL,
  `mobile` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `address` varchar(400) DEFAULT NULL,
  `service` varchar(400) DEFAULT NULL,
  `uname` varchar(45) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `cpassword` varchar(100) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

LOCK TABLES `tblworker` WRITE;
/*!40000 ALTER TABLE `tblworker` DISABLE KEYS */;
INSERT INTO `tblworker` VALUES (1,'Suresh','S','1245783690','suresh.s@gmail.com','Dwarka,Delhi','Car Wash','suresh','suresh@2021','suresh@2021'),(2,'Ramesh','R','0987654321','ramesh.r@gmail.com','Bharuch,Gujarat','Car Repair','ramesh','ramesh@2021','ramesh@2021'),(3,'Dinesh','D','5432109876','dinesh.d@gmail.com','Jhansi,Uttar Pradesh','Dry Clean','dinesh','dinesh@2021','dinesh@2021'),(4,'Jignesh','J','6789054321','jignesh.j@yahoo.com','Hyderabad,Telangana','Car Wash','jignesh','jignesh@2021','jignesh@2021'),(5,'Mukesh','M','3456789012','mukesh.m@gmail.com','Ahmedabad,Gujarat','Car Repair','mukesh','mukesh@2021','mukesh@2021'),(6,'Kamlesh','K','3456127890','kamlesh.k@gmail.com','Raipur,Chattisgarh','Dry Clean','kamlesh','kamlesh@2021','kamlesh@2021');
/*!40000 ALTER TABLE `tblworker` ENABLE KEYS */;
UNLOCK TABLES;



CREATE TABLE `jadak`.`tblservice` (
  `id` INT NOT NULL,
  `fname` VARCHAR(45) NOT NULL,
  `service` VARCHAR(45) NOT NULL,
  `mobileno` VARCHAR(10) NOT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `id`
    FOREIGN KEY (`id`)
    REFERENCES `jadak`.`tblworker` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);
    
insert into tblservice values (1,'Suresh','Car Wash','1245783690'),(2,'Ramesh','Car Repair','0987654321'),(3,'Dinesh','Dry Clean','5432109876'),(4,'Jignesh','Car Wash','6789054321'),(5,'Mukesh','Car Repair','3456789012'),(6,'Kamlesh','Dry Clean','3456127890');

