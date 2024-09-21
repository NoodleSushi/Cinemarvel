-- MySQL dump 10.13  Distrib 8.0.29, for Win64 (x86_64)
--
-- Host: localhost    Database: sql_cinemarvel
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Table structure for table `character_types`
--

DROP TABLE IF EXISTS `character_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `character_types` (
  `char_type_id` tinyint unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`char_type_id`),
  UNIQUE KEY `char_type_id_UNIQUE` (`char_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `character_types`
--

LOCK TABLES `character_types` WRITE;
/*!40000 ALTER TABLE `character_types` DISABLE KEYS */;
INSERT INTO `character_types` VALUES (1,'Avengers'),(2,'Guardians'),(3,'Eternals'),(4,'Villains');
/*!40000 ALTER TABLE `character_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `characters`
--

DROP TABLE IF EXISTS `characters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `characters` (
  `char_id` int unsigned NOT NULL AUTO_INCREMENT,
  `char_type_id` tinyint unsigned NOT NULL,
  `hero_name` varchar(45) NOT NULL,
  `real_name` varchar(45) DEFAULT NULL,
  `img_dir` varchar(45) NOT NULL,
  `is_alive` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`char_id`),
  UNIQUE KEY `char_id_UNIQUE` (`char_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `characters`
--

LOCK TABLES `characters` WRITE;
/*!40000 ALTER TABLE `characters` DISABLE KEYS */;
INSERT INTO `characters` VALUES (1,1,'The Hulk','Bruce Banner','img/chars/avengers/Bruce.png',1),(2,1,'The Winter Soldier','Bucky Barnes','img/chars/avengers/Bucky.png',1),(3,1,'Captain Marvel','Carol Danvers','img/chars/avengers/Carol.png',1),(4,1,'Hawkeye','Clint Barton','img/chars/avengers/Clint.png',1),(5,1,'The Wasp','Hope van Dyne','img/chars/avengers/Hope.png',1),(6,1,'War Machine','James Rhodes','img/chars/avengers/James.png',1),(7,1,'Black Widow','Natasha Romanoff','img/chars/avengers/Natasha.png',0),(8,1,'Nick Fury',NULL,'img/chars/avengers/Nick.png',1),(9,1,'Xu Shang-Chi',NULL,'img/chars/avengers/Shang-Chi.png',1),(10,1,'Spiderman','Peter Parker','img/chars/avengers/Peter.png',1),(11,1,'Quicksilver','Pietro Maximoff','img/chars/avengers/Pietro.png',0),(12,1,'The Falcon','Sam Wilson','img/chars/avengers/Sam.png',1),(13,1,'Ant-Man','Scott Lang','img/chars/avengers/Scott.png',1),(14,1,'Dr. Strange','Stephen Strange','img/chars/avengers/Stephen.png',1),(15,1,'Captain America','Steve Rogers','img/chars/avengers/Steve.png',0),(16,1,'Black Panther','King T\'Challa','img/chars/avengers/T\'Challa.png',1),(17,1,'Thor Odinson',NULL,'img/chars/avengers/Thor.png',1),(18,1,'Iron Man','Tony Stark','img/chars/avengers/Tony.png',0),(19,1,'Vision',NULL,'img/chars/avengers/Vision.png',0),(20,1,'Scarlet Witch','Wanda Maximoff','img/chars/avengers/Wanda.png',1),(21,2,'Drax the Destroyer',NULL,'img/chars/guardians/Drax.png',1),(22,2,'Gamora',NULL,'img/chars/guardians/Gamora.png',0),(23,2,'Groot',NULL,'img/chars/guardians/Groot.png',1),(24,2,'Mantis',NULL,'img/chars/guardians/Mantis.png',1),(25,2,'Nebula',NULL,'img/chars/guardians/Nebula.png',1),(26,2,'Star Lord','Peter Quill','img/chars/guardians/PeterQuill.png',1),(27,2,'Rocket Raccoon',NULL,'img/chars/guardians/Raccoon.png',1),(28,2,'Yondu Udonta',NULL,'img/chars/guardians/Yondu.png',0),(29,3,'Makkari',NULL,'img/chars/eternals/Makkari.png',1),(30,3,'Thena',NULL,'img/chars/eternals/Thena.png',1),(31,3,'Gilgamesh',NULL,'img/chars/eternals/Gilgamesh.png',1),(32,3,'Ikaris',NULL,'img/chars/eternals/Ikaris.png',1),(33,3,'Kingo',NULL,'img/chars/eternals/Kingo.png',1),(34,3,'Druig',NULL,'img/chars/eternals/Druig.png',1),(35,3,'Phastos',NULL,'img/chars/eternals/Phastos.png',1),(36,3,'Sprite',NULL,'img/chars/eternals/Sprite.png',1),(37,3,'Ajak',NULL,'img/chars/eternals/Ajak.png',1),(38,3,'Sersi',NULL,'img/chars/eternals/Sersi.png',1),(39,4,'Aldrich Killian',NULL,'img/chars/villains/Aldrich.png',0),(40,4,'Dormammu',NULL,'img/chars/villains/Dormammu.png',1),(41,4,'Ego',NULL,'img/chars/villains/Ego.png',0),(42,4,'Hela',NULL,'img/chars/villains/Hela.png',0),(43,4,'Kaecilius',NULL,'img/chars/villains/Kaecilius.png',1),(44,4,'Killmonger','Erik Stevens (Jadaka)','img/chars/villains/Killmonger.png',0),(45,4,'Loki Laufeyson',NULL,'img/chars/villains/Loki.png',0),(46,4,'Malekith',NULL,'img/chars/villains/Malekith.png',0),(47,4,'Mysterio','Quentin Beck','img/chars/villains/Mysterio.png',0),(48,4,'Iron Monger','Obadiah Stane','img/chars/villains/Obadiah.png',0),(49,4,'Red Skull','Johann Schmidt','img/chars/villains/RedSkull.png',1),(50,4,'Taskmaster','Antonia Dreykov','img/chars/villains/Taskmaster.png',1),(51,4,'Thanos',NULL,'img/chars/villains/Thanos.png',0),(52,4,'Ultron',NULL,'img/chars/villains/Ultron.png',0),(53,4,'Vulture','Adrian Toomes','img/chars/villains/Vulture.png',1),(54,4,'Xu Wenwu',NULL,'img/chars/villains/Wenwu.png',0),(55,4,'Whiplash','Ivan Vanko','img/chars/villains/Whiplash.png',0),(56,4,'Yellowjacket','Darren Cross','img/chars/villains/Yellowjacket.png',0),(57,4,'Yon-Rogg',NULL,'img/chars/villains/Yon-rogg.png',1),(58,4,'Agatha Harkness',NULL,'img/chars/villains/Agatha.png',1);
/*!40000 ALTER TABLE `characters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movies`
--

DROP TABLE IF EXISTS `movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movies` (
  `movie_id` int unsigned NOT NULL,
  `title` varchar(45) DEFAULT NULL,
  `img_dir` varchar(60) DEFAULT NULL,
  `year` year DEFAULT NULL,
  `chronology` int DEFAULT NULL,
  `imdb_url` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE KEY `movie_id_UNIQUE` (`movie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movies`
--

LOCK TABLES `movies` WRITE;
/*!40000 ALTER TABLE `movies` DISABLE KEYS */;
INSERT INTO `movies` VALUES (1,'Captain America: The First Avenger','img/movies/captain-america-the-first-avenger.jpg',2011,10,'https://www.imdb.com/title/tt0458339'),(2,'Captain Marvel','img/movies/captain-marvel.jpg',2019,20,'https://www.imdb.com/title/tt4154664'),(3,'Iron Man','img/movies/iron-man.jpg',2008,30,'https://www.imdb.com/title/tt0371746'),(4,'Iron Man 2','img/movies/iron-man-2.jpg',2010,40,'https://www.imdb.com/title/tt1228705'),(5,'The Incredible Hulk','img/movies/the-incredible-hulk.jpg',2008,50,'https://www.imdb.com/title/tt0800080'),(6,'Thor ','img/movies/thor.jpg',2011,60,'https://www.imdb.com/title/tt0800369'),(7,'The Avengers','img/movies/the-avengers.jpg',2012,70,'https://www.imdb.com/title/tt0848228'),(8,'Thor: The Dark World','img/movies/thor-the-dark-world.jpg',2013,80,'https://www.imdb.com/title/tt1981115'),(9,'Guardians of the Galaxy','img/movies/guardians-of-the-galaxy.jpg',2014,90,'https://www.imdb.com/title/tt2015381'),(10,'Guardians of the Galaxy Vol. 2','img/movies/guardians-of-the-galaxy-2.jpg',2017,100,'https://www.imdb.com/title/tt3896198'),(11,'Iron Man 3','img/movies/iron-man-3.jpg',2013,110,'https://www.imdb.com/title/tt1300854'),(12,'Captain America: The Winter Soldier','img/movies/captain-america-the-winter-soldier.jpg',2014,120,'https://www.imdb.com/title/tt0458339'),(13,'Avengers: Age of Ultron','img/movies/avengers-age-of-ultron.jpg',2015,130,'https://www.imdb.com/title/tt2395427'),(14,'Ant-Man','img/movies/ant-man.jpg',2015,140,'https://www.imdb.com/title/tt0478970'),(15,'Captain America: Civil War','img/movies/captain-america-civi-war.jpg',2016,150,'https://www.imdb.com/title/tt3498820'),(16,'Black Widow','img/movies/black-widow.jpg',2021,160,'https://www.imdb.com/title/tt3480822'),(17,'Black Panther','img/movies/black-panther.jpg',2018,170,'https://www.imdb.com/title/tt1825683'),(18,'Spider-Man: Homecoming','img/movies/spider-man-homecoming.jpg',2017,180,'https://www.imdb.com/title/tt2250912'),(19,'Doctor Strange','img/movies/doctor-strange.jpg',2016,190,'https://www.imdb.com/title/tt1211837'),(20,'Thor: Ragnarok','img/movies/thor-ragnarok.jpg',2017,200,'https://www.imdb.com/title/tt3501632');
/*!40000 ALTER TABLE `movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_types`
--

DROP TABLE IF EXISTS `project_types`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_types` (
  `proj_type_id` int unsigned NOT NULL,
  `name` varchar(45) NOT NULL,
  PRIMARY KEY (`proj_type_id`),
  UNIQUE KEY `proj_type_id_UNIQUE` (`proj_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_types`
--

LOCK TABLES `project_types` WRITE;
/*!40000 ALTER TABLE `project_types` DISABLE KEYS */;
INSERT INTO `project_types` VALUES (1,'Movies'),(2,'Series'),(3,'Video Games');
/*!40000 ALTER TABLE `project_types` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `projects`
--

DROP TABLE IF EXISTS `projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `projects` (
  `proj_id` int unsigned NOT NULL AUTO_INCREMENT,
  `proj_type_id` tinyint unsigned NOT NULL DEFAULT '1',
  `name` varchar(45) NOT NULL,
  `img_dir` varchar(45) NOT NULL,
  `is_img_wide` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`proj_id`),
  UNIQUE KEY `proj_id_UNIQUE` (`proj_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `projects`
--

LOCK TABLES `projects` WRITE;
/*!40000 ALTER TABLE `projects` DISABLE KEYS */;
INSERT INTO `projects` VALUES (1,1,'Dr. Strange: Multiverse of Madness','img/projs/movies/DrS-MoM.jpg',0),(2,1,'Thor: Love and Thunder','img/projs/movies/Thor4.jpg',0),(3,1,'Black Panther: Wakanda Forever','img/projs/movies/BlackPanther2.jpg',0),(4,1,'The Marvels','img/projs/movies/TheMarvels.jpg',0),(5,1,'Guardians of the Galaxy Vol. 3','img/projs/movies/GotGVol3.jpg',0),(6,1,'Ant-Man and the Wasp: Quantumania','img/projs/movies/AntMan3.jpg',0),(7,1,'Fantastic Four','img/projs/movies/FantasticFour.jpg',0),(8,1,'Blade','img/projs/movies/Blade.jpg',0),(9,2,'Moon Knight','img/projs/series/MoonKnight.jpg',0),(10,2,'Ms. Marvel','img/projs/series/MsMarvel.jpg',0),(11,2,'She-Hulk','img/projs/series/She-Hulk.jpg',0),(12,2,'What If...? Season 2','img/projs/series/WhatIf2.jpg',0),(13,2,'Guardians of the Galaxy: Holiday Special','img/projs/series/GotGHoliday.jpg',0),(14,2,'Secret Invasion','img/projs/series/SecretInvasion.jpg',0),(15,2,'Agatha: House of Harkness','img/projs/series/Agatha.png',0),(16,2,'Armor Wars','img/projs/series/ArmorWars.png',0),(17,2,'Echo','img/projs/series/Echo.png',0),(18,2,'Ironheart','img/projs/series/Ironheart.png',0),(19,3,"Marvel's Midnight Sons",'img/projs/games/MidnightSons.jpg',1),(20,3,'Spiderman 2','img/projs/games/Spiderman2.jpg',1);
/*!40000 ALTER TABLE `projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trivia`
--

DROP TABLE IF EXISTS `trivia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `trivia` (
  `trivia_id` int unsigned NOT NULL AUTO_INCREMENT,
  `description` varchar(60) NOT NULL,
  `img_dir` varchar(45) NOT NULL,
  PRIMARY KEY (`trivia_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trivia`
--

LOCK TABLES `trivia` WRITE;
/*!40000 ALTER TABLE `trivia` DISABLE KEYS */;
INSERT INTO `trivia` VALUES (1,'The people of Wakanda speak a real language.','img/trivia/wakanda.jpg'),(2,'Marvel almost bought DC.','img/trivia/marvelvsdc.jpg'),(3,'S.H.I.E.L.D began its operations in ancient Egypt.','img/trivia/shieldegypt.jpg'),(4,'Michael Jackson once tried to buy Marvel Comics.','img/trivia/michael.jpg'),(5,'There is a team of avengers made up of animals.','img/trivia/petavengers.jpg'),(6,'The Men in Black is owned by Marvel.','img/trivia/meninblack.jpg'),(7,'Kevin Feige created the Marvel Cinematic Universe.','img/trivia/kevinfeige.jpg'),(8,'The richest Marvel superhero is Thor.','img/trivia/thorrich.jpg'),(9,'The word \"Zombies\" was trademarked by Marvel Studios.','img/trivia/zombie.jpg'),(10,'Quiksilver once challenged The Flash to a race.','img/trivia/race.jpg'),(11,"Baby Groot\'s dance number took two years to conceptualize.",'img/trivia/grootdance.jpg');
/*!40000 ALTER TABLE `trivia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-01  3:23:11
