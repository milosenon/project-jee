-- Create the database
CREATE DATABASE IF NOT EXISTS musicdb;
USE musicdb;

-- Host: localhost    Database: musicdb
-- ------------------------------------------------------
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
-- Table structure for table `artists`
--
DROP TABLE IF EXISTS artist;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE artist (
                          `id` bigint(20) NOT NULL,
                          `firstname` varchar(255) DEFAULT NULL,
                          `lastname` varchar(255) DEFAULT NULL,
                          `nationality` varchar(255) DEFAULT NULL,
                          PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `artists`
--
LOCK TABLES artist WRITE;
/*!40000 ALTER TABLE artist DISABLE KEYS */;
-- Insert sample artist data into the "artists" table
INSERT INTO artist (id, firstname, lastname, nationality) VALUES (1,'John', 'Smith', 'American'), (2,'Emily', 'Johnson', 'British'), (3, 'Michael', 'Brown', 'Canadian'), (4, 'David', 'Wilson', 'German'), (5,'William Kalubi', 'Mwamba', 'French');
/*!40000 ALTER TABLE artist ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `albums`
--
DROP TABLE IF EXISTS album;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE album (
                         `id` bigint(20) NOT NULL,
                         `title` varchar(255) DEFAULT NULL,
                         `release_year` int(11) DEFAULT NULL,
                         `duration` int(11) DEFAULT NULL,
                         `artist_id` bigint(20) DEFAULT NULL,
                         PRIMARY KEY (`id`),
                         KEY `artist_id` (`artist_id`),
                         CONSTRAINT `albums_ibfk_1` FOREIGN KEY (`artist_id`) REFERENCES artist (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `albums`
--
LOCK TABLES album WRITE;
/*!40000 ALTER TABLE album DISABLE KEYS */;
-- Insert sample artist data into the "artists" table
INSERT INTO album (id, title, release_year, duration, artist_id) VALUES (1, 'Hummingbird', 2018, 41, 1), (2, 'Ministry', 2023, 03, 2), (3, 'F.A.M.E. (Expanded Edition)', 2011, 72, 3), (4, 'Fortune (Expanded Edition)', 2012, 86, 3), (5, 'Indigo (Extended)', 2019, 128, 3), (6, 'Mommas Favorites', 2023, 44, 4), (7, 'Batterie faible', 2016, 38, 5), (8, 'Ipseite', 2017, 49, 5), (9, 'Lithopedion', 2018, 55, 5);
/*!40000 ALTER TABLE album ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `artists`
--
DROP TABLE IF EXISTS `music`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `music` (
                        `id` bigint(20) NOT NULL,
                        `album_id` bigint(20) DEFAULT NULL,
                        `title` varchar(255) DEFAULT NULL,
                        `duration` TIME DEFAULT NULL,
                        `artist_id` bigint(20) DEFAULT NULL,
                        PRIMARY KEY (`id`),
                        KEY `album_id` (`album_id`),
                        KEY `artist_id` (`artist_id`),
                        CONSTRAINT `music_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES album (`id`),
                        CONSTRAINT `music_ibfk_2` FOREIGN KEY (`artist_id`) REFERENCES artist (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `music`
--
LOCK TABLES music WRITE;
/*!40000 ALTER TABLE music DISABLE KEYS */;
-- Insert sample artist data into the "artists" table
INSERT INTO music (id, album_id, title, duration, artist_id) VALUES (1, 1,'1. Hummingbird', '00:05:17', 1), (2, 1,'2. Lowlands of Holland', '00:03:52', 1), (3, 1,'3. Boudica', '00:03:52', 1), (4, 2,'1. Ministry (Original mix)', '00:01:52', 2), (5, 2,'2. Warp Speed (Original mix)', '00:04:03', 2), (6, 3,'1. Deuces (feat. Tyga & Kevin McCall)', '00:03:11', 3), (7, 3,'2. Up To You', '00:04:03', 3), (8, 4,'1. Turn Up the Music', '00:03:11', 3), (9, 4,'2. Bassline', '00:04:03', 3), (10, 5,'1. Lower Body (feat. Davido)', '00:03:11', 3), (11, 5,'2. Overtime', '00:04:03', 3), (12, 5,'3. Under The Influence', '00:04:12', 3), (13, 6,'1. Healer In The House', '00:03:11', 4), (14, 6,'2. Oasis', '00:04:03', 4), (15, 7,'1. Périscope', '00:02:30', 5), (16, 7,'2. Débrouillard', '00:04:03', 5), (17, 8,'1. Α. Nwaar Is The New Black', '00:02:03', 5), (18, 8,'2. B. #QuedusaalVie', '00:04:04', 5), (19, 9,'1. Introduction (Damso / Lithopédion)', '00:01:50', 5), (20, 9,'2. Festival de rêves', '00:03:25', 5), (21, 9,'3. Baltringue', '00:04:48', 5);
/*!40000 ALTER TABLE music ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `hibernate_sequence`
--

DROP TABLE IF EXISTS `hibernate_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hibernate_sequence` (
    `next_val` bigint(20) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hibernate_sequence`
--

LOCK TABLES `hibernate_sequence` WRITE;
/*!40000 ALTER TABLE `hibernate_sequence` DISABLE KEYS */;
INSERT INTO `hibernate_sequence` VALUES (358),(358),(358);
/*!40000 ALTER TABLE `hibernate_sequence` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Dumping events for database 'musicdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;


