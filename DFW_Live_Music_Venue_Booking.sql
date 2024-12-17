-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- ------------------------------------------------------
-- Server version	8.4.3
/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */
;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */
;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */
;
/*!50503 SET NAMES utf8 */
;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */
;
/*!40103 SET TIME_ZONE='+00:00' */
;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */
;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */
;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */
;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */
;
SET @MYSQLDUMP_TEMP_LOG_BIN = @@SESSION.SQL_LOG_BIN;
SET @@SESSION.SQL_LOG_BIN = 0;
--
-- GTID state at the beginning of the backup 
--

SET @@GLOBAL.GTID_PURGED =
  /*!80000 '+'*/
  '';
--
-- Table structure for table `Artist`
--

DROP TABLE IF EXISTS `Artist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `Artist` (
  `artist_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `is_independent` tinyint(1) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  `label_id` int DEFAULT NULL,
  `image` varchar(2000) DEFAULT NULL,
  PRIMARY KEY (`artist_id`),
  KEY `fk_artist_label_id` (`label_id`),
  CONSTRAINT `fk_artist_label_id` FOREIGN KEY (`label_id`) REFERENCES `Record_Label` (`label_id`) ON DELETE
  SET NULL ON UPDATE CASCADE
) ENGINE = InnoDB AUTO_INCREMENT = 51 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `Artist`
--

LOCK TABLES `Artist` WRITE;
/*!40000 ALTER TABLE `Artist` DISABLE KEYS */
;
INSERT INTO `Artist`
VALUES (
    1,
    'Beyoncé',
    'Pop/R&B',
    0,
    '+1-939-679-4332',
    'beyoncé@beyoncé.com',
    'www.beyoncé.com',
    7,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5GOZt5AaHJH_m5G7u6yX0gHaE7%26pid%3DApi&f=1&ipt=725e911ec03a4f99b6c087262dc6d033507e3b2af0dd9e5e18f003094d62c253&ipo=images'
  ),
(
    2,
    'Drake',
    'Rap',
    0,
    '+1-773-774-1858',
    'drake@drake.com',
    'www.drake.com',
    21,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.HZ95huXtjJwoXMvUEMD19wHaKW%26pid%3DApi&f=1&ipt=05d32e98a072b03503bd493245c5a939e68f1d860036bd08311af8580b557317&ipo=images'
  ),
(
    3,
    'Taylor Swift',
    'Pop/Country',
    0,
    '+1-772-318-6890',
    'taylorswift@taylorswift.com',
    'www.taylorswift.com',
    21,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIF.D%252bCw8FrauEDfdfNzNkjVHQ%26pid%3DApi&f=1&ipt=2bfc24e84248ea3265a7f3854b04cc2712307be1621f9f3e39f930954594c745&ipo=images'
  ),
(
    4,
    'BTS',
    'K-Pop',
    0,
    '+1-670-799-2124',
    'bts@bts.com',
    'www.bts.com',
    5,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.XeGKVo_wqojgsDDF1ofvOgHaE8%26pid%3DApi&f=1&ipt=9169da86ca67c25214cb4dc55535ee3ba060e6810fc30425f9688ed4092430d6&ipo=images'
  ),
(
    5,
    'Adele',
    'Pop/Soul',
    0,
    '+1-965-925-3491',
    'adele@adele.com',
    'www.adele.com',
    7,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.bkmSXyf9QLoQvdU63144PwHaJ5%26pid%3DApi&f=1&ipt=faca70a952d8513bf6b4ea505faf9c19cd4723db3107bb6a9af576fa77146efb&ipo=images'
  ),
(
    6,
    'Kendrick Lamar',
    'Rap',
    0,
    '+1-244-746-3239',
    'kendricklamar@kendricklamar.com',
    'www.kendricklamar.com',
    15,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.i3vgYLR-iFw0rUHuoF4Q6QHaI6%26pid%3DApi&f=1&ipt=5ed104fae53d86a15dfd79b6259ee2c775b9b1195050d701d8f1dcf0d67244e7&ipo=images'
  ),
(
    7,
    'Billie Eilish',
    'Pop/Alternative',
    0,
    '+1-162-329-6190',
    'billieeilish@billieeilish.com',
    'www.billieeilish.com',
    15,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.f9AUDB4ynQ4AHnVR3AXGHwHaEs%26pid%3DApi&f=1&ipt=36ffbd2ec5ffbd6dce0f26bcae45638da3a0e1e14b6d772019b26130e8a5d075&ipo=images'
  ),
(
    8,
    'Ed Sheeran',
    'Pop/Folk',
    0,
    '+1-343-490-4653',
    'edsheeran@edsheeran.com',
    'www.edsheeran.com',
    3,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.yI-clH5nrDUfWFNgvJzHVQHaIr%26pid%3DApi&f=1&ipt=2be1de6898ed69cefbe52c2c0b366509613a2d5172e4e6a861a7236f9ca96e47&ipo=images'
  ),
(
    9,
    'The Weeknd',
    'R&B/Pop',
    0,
    '+1-394-388-1612',
    'theweeknd@theweeknd.com',
    'www.theweeknd.com',
    21,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.WUlj7AhN315srtSgU--uHwHaHa%26pid%3DApi&f=1&ipt=f480787dff5d52c365fd09b9b7e15dcd7ee84641cda498f68054621f94ad3f31&ipo=images'
  ),
(
    10,
    'Dua Lipa',
    'Pop',
    0,
    '+1-529-180-1409',
    'dualipa@dualipa.com',
    'www.dualipa.com',
    26,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.explicit.bing.net%2Fth%3Fid%3DOIP.q37s6xodgGugB2ypM7RxMgHaLH%26pid%3DApi&f=1&ipt=78de586e69696b2bafb8f1d31e3e994744897cb0ec38175e9307c5046871d7ae&ipo=images'
  ),
(
    11,
    'Bruno Mars',
    'Pop/R&B',
    0,
    '+1-963-658-3349',
    'brunomars@brunomars.com',
    'www.brunomars.com',
    3,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.explicit.bing.net%2Fth%3Fid%3DOIP.TSWKlR37Eb6jUVJKaBDt6AHaHa%26pid%3DApi&f=1&ipt=60523853e6fb4ccd403266969c45d800a71aa765a4f4006ff1f3e0f8ae2e3d18&ipo=images'
  ),
(
    12,
    'Ariana Grande',
    'Pop/R&B',
    0,
    '+1-226-479-4760',
    'arianagrande@arianagrande.com',
    'www.arianagrande.com',
    21,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.explicit.bing.net%2Fth%3Fid%3DOIP.0GByIvnZWyI3-AwfVS1txQHaI2%26pid%3DApi&f=1&ipt=fb675d2052657317c32a9dae84a2b4498b47e43049cf12e680b0d3fa3f793e11&ipo=images'
  ),
(
    13,
    'Post Malone',
    'Rap/Pop',
    0,
    '+1-988-406-1659',
    'postmalone@postmalone.com',
    'www.postmalone.com',
    21,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.SaX6a4MSP47JsA5EGV1fzgHaE5%26pid%3DApi&f=1&ipt=5920dc66c5f929da535f0710cf2a9ffc59146ae4e8451ff9287a8b9db8e3eacb&ipo=images'
  ),
(
    14,
    'Olivia Rodrigo',
    'Pop',
    0,
    '+1-784-248-6142',
    'oliviarodrigo@oliviarodrigo.com',
    'www.oliviarodrigo.com',
    14,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.0Nk2LZ_gtaNTuJqyDXE-8AHaLH%26pid%3DApi&f=1&ipt=00104a612af9487b380308f7cc8b1456c629bfeb6a9aa350cb34811623ee3f37&ipo=images'
  ),
(
    15,
    'Harry Styles',
    'Pop/Rock',
    0,
    '+1-346-795-9487',
    'harrystyles@harrystyles.com',
    'www.harrystyles.com',
    7,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.cl7XCuQgHqAQ8wL7mTn2KgHaLJ%26pid%3DApi&f=1&ipt=d03da76aa218a606b2d0f3c9cb3980a0fdb41a09a7d49236a88298a4427e1305&ipo=images'
  ),
(
    16,
    'Bad Bunny',
    'Reggaeton/Latin Trap',
    0,
    '+1-277-437-5887',
    'badbunny@badbunny.com',
    'www.badbunny.com',
    22,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.explicit.bing.net%2Fth%3Fid%3DOIP.F5ceEfQjiiE9qz2bggSawQHaLN%26pid%3DApi&f=1&ipt=194c1e5ff613ba453ce74f0d9e3928652c4dd6c7f8df6a155f0e025d22decfe8&ipo=images'
  ),
(
    17,
    'Lizzo',
    'Pop/R&B',
    0,
    '+1-427-612-6406',
    'lizzo@lizzo.com',
    'www.lizzo.com',
    3,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.QhvIyMlx3PoQUG5YWXLnSAHaLI%26pid%3DApi&f=1&ipt=85a9f877adbc740ddf8453baf5d66d906ad801af2f061a35a5c7a04557f6800b&ipo=images'
  ),
(
    18,
    'Doja Cat',
    'Rap/Pop',
    0,
    '+1-452-183-5859',
    'dojacat@dojacat.com',
    'www.dojacat.com',
    20,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.TDsMrRBKFw5dQvLDsTADyQHaHa%26pid%3DApi&f=1&ipt=332faf18a1a758ea4a4fd8d70ad949c704f8b6084ea8778ab920dd0273f0ae32&ipo=images'
  ),
(
    19,
    'Justin Bieber',
    'Pop/R&B',
    0,
    '+1-411-988-9804',
    'justinbieber@justinbieber.com',
    'www.justinbieber.com',
    9,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.Q9zr85cYoyebjNlwdL2E2AHaEK%26pid%3DApi&f=1&ipt=fd67aaaf41c9362e8920d5cf1c76d9546c7dc745749024207a597174dd9e4480&ipo=images'
  ),
(
    20,
    'Megan Thee Stallion',
    'Rap',
    0,
    '+1-671-975-1125',
    'megantheestallion@megantheestallion.com',
    'www.megantheestallion.com',
    1,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.Ji_2S-KTLCHAt5ontzKc3gHaFQ%26pid%3DApi&f=1&ipt=eeb078fdc9ad69f830d0deba8fb6a1cb5f7727b7f95f81e4abb7a918d57231d9&ipo=images'
  ),
(
    21,
    'H.E.R.',
    'R&B',
    0,
    '+1-812-954-2814',
    'her@her.com',
    'www.her.com',
    20,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.g3QoqyKYIOs4jNpIRpwV_wHaKD%26pid%3DApi&f=1&ipt=5bb01f09154feb41dc4df61065fa3e7fd9f14d3474d76038b7dc712da8fde728&ipo=images'
  ),
(
    22,
    'Lil Nas X',
    'Rap/Pop',
    0,
    '+1-365-525-5041',
    'lilnasx@lilnasx.com',
    'www.lilnasx.com',
    7,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.AMIXY0iObVvn9ivnZqsyTQHaJ2%26pid%3DApi&f=1&ipt=36488bbaa8095f1e81215b5030a5b52f994db521cbf4e1cdb066f6673e53b839&ipo=images'
  ),
(
    23,
    'Rosalía',
    'Flamenco/Pop',
    0,
    '+1-497-324-9161',
    'rosalía@rosalía.com',
    'www.rosalía.com',
    7,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.SKJjIxEjmnzyPmssq30LqQHaJQ%26pid%3DApi&f=1&ipt=226fda63a09a5b86809c0b182563292b53998c36e0d1faa17cc9d481ad56855d&ipo=images'
  ),
(
    24,
    'Travis Scott',
    'Rap',
    0,
    '+1-190-643-3051',
    'travisscott@travisscott.com',
    'www.travisscott.com',
    11,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.-y7SaiQzCA9gcXmWTm935gHaE7%26pid%3DApi&f=1&ipt=c56b9dbe43e7e6db7379f361846118b57ccf64e8658753246d0945e72d78581b&ipo=images'
  ),
(
    25,
    'BLACKPINK',
    'K-Pop',
    0,
    '+1-254-248-8927',
    'blackpink@blackpink.com',
    'www.blackpink.com',
    27,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.bc4TXRvr_7qsB3F9rP85-QHaHa%26pid%3DApi&f=1&ipt=10598c78a440156eafd2dd8cc1077477306c2b278612b70a5bd3bdaf24930a88&ipo=images'
  ),
(
    26,
    'Lana Del Rey',
    'Indie Pop',
    0,
    '+1-954-651-3543',
    'lanadelrey@lanadelrey.com',
    'www.lanadelrey.com',
    15,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.OAfEjuDgSG26RorsHnUXqgHaLH%26pid%3DApi&f=1&ipt=eb6f398a0c75f5125b065de9fdc2c000c4a93d9cf584da0b408a24a28e3a5747&ipo=images'
  ),
(
    27,
    'J Balvin',
    'Reggaeton',
    0,
    '+1-666-713-3607',
    'jbalvin@jbalvin.com',
    'www.jbalvin.com',
    25,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.0BEZVp7cipuI-i9FMnDIqgHaLH%26pid%3DApi&f=1&ipt=8de83e6441dfefd177225231a4a2b326d7ed15c3aea8337a58bbb039b8b731d9&ipo=images'
  ),
(
    28,
    'Shawn Mendes',
    'Pop',
    0,
    '+1-752-576-9079',
    'shawnmendes@shawnmendes.com',
    'www.shawnmendes.com',
    16,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.RVUN20PVTZA97l4WZGU3CAHaHa%26pid%3DApi&f=1&ipt=b43109420b0d0ca67243f74d2dcfeae40198a982d1582bb39e77dd3a481462f2&ipo=images'
  ),
(
    29,
    'SZA',
    'R&B',
    0,
    '+1-548-527-6075',
    'sza@sza.com',
    'www.sza.com',
    24,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.HTqDmQ2Klh7zHQXeTa2ssgHaHa%26pid%3DApi&f=1&ipt=93db866616861e035888c7cfacc6fb46186cf96fc6d8029069956ee417e71c5c&ipo=images'
  ),
(
    30,
    'Chance the Rapper',
    'Rap',
    1,
    '+1-948-941-3323',
    'chancetherapper@chancetherapper.com',
    'www.chancetherapper.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.3wZNd9R86KL-_HJE6bUfPgHaEK%26pid%3DApi&f=1&ipt=adc9cc7680449553590ae4015b0cbde5e9c46fc2eb120650a97dee485e91161a&ipo=images'
  ),
(
    31,
    'Macklemore',
    'Rap',
    1,
    '+1-990-541-6391',
    'macklemore@gmail.com',
    'www.macklemore.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.5kyTm2-0YPDLkbyV769GbQHaGL%26pid%3DApi&f=1&ipt=80af1d0688c8f582e4995aef44b9220d1748dca2b6969facbbb4d23313905bab&ipo=images'
  ),
(
    32,
    'Tash Sultana',
    'Indie/Alternative',
    0,
    '+1-804-847-3874',
    'tashsultana@gmail.com',
    'www.tashsultana.com',
    19,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.wuZQT74DR_PqBAtRILgGIQAAAA%26pid%3DApi&f=1&ipt=fd8c534898cf0528e81fc43b438b9fdd7e5b4fe444fc0cc6c6a68145fe97b25f&ipo=images'
  ),
(
    33,
    'Rina Sawayama',
    'Pop',
    0,
    '+1-866-731-6837',
    'rinasawayama@yahoo.com',
    'www.rinasawayama.com',
    10,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.p2XuJXGVqKCIzD3LgSdyUgHaDt%26pid%3DApi&f=1&ipt=f1e3905c2a70d15e7142b4dcd4d4713257c2c979bc1e8b61ba78fc3249edc32d&ipo=images'
  ),
(
    34,
    'Rex Orange County',
    'Indie Pop',
    1,
    '+1-475-394-3324',
    'rexorangecounty@hotmail.com',
    'www.rexorangecounty.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.-_T6HLltZjKqlPBFDV_tJAHaHa%26pid%3DApi&f=1&ipt=aad188ce4d5377956ae010dabb62f10e6fe61026b023050f3f0c18852dd1c4ae&ipo=images'
  ),
(
    35,
    'FKJ (French Kiwi Juice)',
    'Electronic',
    0,
    '+1-137-437-8268',
    'fkj(frenchkiwijuice)@hotmail.com',
    'www.fkj(frenchkiwijuice).com',
    23,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.41VhANEV9U5_pCAQzN5gsAAAAA%26pid%3DApi&f=1&ipt=f62937e584d598e081d65cb875d9ddda9b315e6de5c6b2f90ec5ad856ab1b610&ipo=images'
  ),
(
    36,
    'Tom Misch',
    'Jazz/Pop',
    0,
    '+1-851-143-7520',
    'tommisch@gmail.com',
    'www.tommisch.com',
    4,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse2.mm.bing.net%2Fth%3Fid%3DOIP.eatAOpEcKBSmNGD5JPgDaQHaEK%26pid%3DApi&f=1&ipt=660a1600855fee2fd7cc78a05e1eebf9ac100a8a13fc90d0e820f8272de28ad7&ipo=images'
  ),
(
    37,
    'Moses Sumney',
    'Indie/R&B',
    0,
    '+1-273-533-3622',
    'mosessumney@yahoo.com',
    'www.mosessumney.com',
    17,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.DoWdBzXKks7o-gsIoO7gvgHaKP%26pid%3DApi&f=1&ipt=a5263f70a472711f4f358f4de4d3431cfec1404f5d7bab3ecd252d126b1de74a&ipo=images'
  ),
(
    38,
    'Phoebe Bridgers',
    'Indie Rock',
    0,
    '+1-243-526-2304',
    'phoebebridgers@yahoo.com',
    'www.phoebebridgers.com',
    8,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.lgFv7GYtK-kty5QvCQfrNAHaHa%26pid%3DApi&f=1&ipt=09adf28763c3d1f9340522f3dd50248b138042c0fecd178edb182a8856e7293f&ipo=images'
  ),
(
    39,
    'Clairo',
    'Indie Pop',
    0,
    '+1-861-857-9148',
    'clairo@yahoo.com',
    'www.clairo.com',
    12,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.vNtHM2x1k1bM85djJoxubwHaFS%26pid%3DApi&f=1&ipt=1cb47b643e1f4f1b11cd24c4501534e16cb90ec0caf45200ce9e01defaee9063&ipo=images'
  ),
(
    40,
    'Mac DeMarco',
    'Indie Rock',
    0,
    '+1-623-292-4083',
    'macdemarco@gmail.com',
    'www.macdemarco.com',
    6,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.TVYDOOMRkMKh73tpeHmMlAHaE9%26pid%3DApi&f=1&ipt=97cda7e631c4522f590ea3811821fc9d87fcd17438bcbb3f8262dc982f084ca5&ipo=images'
  ),
(
    41,
    'King Princess',
    'Pop/Rock',
    0,
    '+1-521-245-7018',
    'kingprincess@hotmail.com',
    'www.kingprincess.com',
    28,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.vbEUEOhCCw8a0YP0A3eivgAAAA%26pid%3DApi&f=1&ipt=1dba20532c6684d38d488b3b87cfd36d8d091dbd02a0efa23db0e4096ed2d643&ipo=images'
  ),
(
    42,
    'Soccer Mommy',
    'Indie Rock',
    0,
    '+1-699-552-5060',
    'soccermommy@gmail.com',
    'www.soccermommy.com',
    13,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.8cfko1vzVowuxm0gneYIzAHaEs%26pid%3DApi&f=1&ipt=6ee44954b6a3e72f51c3bbc17c4ae310891fb3113671909770cc8b90c27ab7ef&ipo=images'
  ),
(
    43,
    'Japanese Breakfast',
    'Indie Pop',
    0,
    '+1-414-636-9032',
    'japanesebreakfast@gmail.com',
    'www.japanesebreakfast.com',
    8,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.I_AjfQw0rg5mOjUgM8HGAAHaGQ%26pid%3DApi&f=1&ipt=2eae5257ce5c12d118e47010ac99eb303aa06e12a74c0180cefc13558a77b0ad&ipo=images'
  ),
(
    44,
    'Snail Mail',
    'Indie Rock',
    0,
    '+1-218-438-5773',
    'snailmail@hotmail.com',
    'www.snailmail.com',
    18,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.P88RScGUMZNVrldogxGFEAHaE8%26pid%3DApi&f=1&ipt=55e26c74ddfd202f7baa50ff8473ea2d971b95de6f141554e2193a249c534400&ipo=images'
  ),
(
    45,
    'The Velvet Echoes',
    NULL,
    1,
    '+1-559-343-7808',
    'thevelvetechoes@gmail.com',
    'www.thevelvetechoes.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.I8YkayOYJ_sh8hxfZ9g9tgAAAA%26pid%3DApi&f=1&ipt=b609436eeb765bf8986b62c95b6184d4c28e761aed8a59a5d976469026073626&ipo=images'
  ),
(
    46,
    'Neon Harbor',
    NULL,
    1,
    '+1-993-341-9689',
    'neonharbor@yahoo.com',
    'www.neonharbor.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.mm.bing.net%2Fth%3Fid%3DOIP.YtSd5i7VtPwbZLf1CgEsgwHaD4%26pid%3DApi&f=1&ipt=107062929275088f7d43b6e6be644d2e616319139b3bffd86571985c4dd67483&ipo=images'
  ),
(
    47,
    'Crimson Alley',
    NULL,
    1,
    '+1-709-479-2814',
    'crimsonalley@yahoo.com',
    'www.crimsonalley.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.OFqxIpU-K89C1pwKdxBofwHaEP%26pid%3DApi&f=1&ipt=a915e23a0691fbd123d33e7fc6bd925fb3d3273c6f0bcbec14c674a389894a6c&ipo=images'
  ),
(
    48,
    'Silver Lining Syndicate',
    NULL,
    1,
    '+1-577-258-5769',
    'silverliningsyndicate@hotmail.com',
    'www.silverliningsyndicate.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse1.explicit.bing.net%2Fth%3Fid%3DOIP.Ek-kN_XuJrUcYP7ni598ZgAAAA%26pid%3DApi&f=1&ipt=ee19f544b574a79c8620d7b035628fcd936c68976947bdb744ee4f73e11833ac&ipo=images'
  ),
(
    49,
    'Midnight Paradox',
    NULL,
    1,
    '+1-253-280-7264',
    'midnightparadox@gmail.com',
    'www.midnightparadox.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.j4j5srYBc_Nr25Md7bLClwHaEK%26pid%3DApi&f=1&ipt=e067fa775a301ff7de697c9effe89d40500705736fd034b06ef85a797ad2dea1&ipo=images'
  ),
(
    50,
    'Echoes of Ember',
    NULL,
    1,
    '+1-629-668-9118',
    'echoesofember@yahoo.com',
    'www.echoesofember.com',
    NULL,
    'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse3.mm.bing.net%2Fth%3Fid%3DOIP.sELlP6TrBjYXhxNH9T1DngHaHw%26pid%3DApi&f=1&ipt=8bc9076e5f84a0d0da0eed6eee4036d4a4d0ef0a5599edb591adb0cb00442155&ipo=images'
  );
/*!40000 ALTER TABLE `Artist` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `Booking`
--

DROP TABLE IF EXISTS `Booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `Booking` (
  `booking_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int DEFAULT NULL,
  `talent` varchar(100) DEFAULT NULL,
  `venue_id` int DEFAULT NULL,
  `date` date NOT NULL,
  `status` enum('booked', 'available') NOT NULL,
  `artist_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `fk_booking_user_id` (`user_id`),
  KEY `fk_booking_venue_id` (`venue_id`),
  KEY `fk_booking_artist_id` (`artist_id`),
  CONSTRAINT `fk_booking_artist_id` FOREIGN KEY (`artist_id`) REFERENCES `Artist` (`artist_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_booking_user_id` FOREIGN KEY (`user_id`) REFERENCES `User` (`user_id`) ON DELETE
  SET NULL ON UPDATE CASCADE,
    CONSTRAINT `fk_booking_venue_id` FOREIGN KEY (`venue_id`) REFERENCES `Venue` (`venue_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 1038 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `Booking`
--

LOCK TABLES `Booking` WRITE;
/*!40000 ALTER TABLE `Booking` DISABLE KEYS */
;
INSERT INTO `Booking`
VALUES (
    1,
    NULL,
    'Rex Orange County',
    3,
    '2025-09-04',
    'available',
    34
  ),
(2, 9, 'Lana Del Rey', 11, '2025-09-04', 'booked', 26),
(3, 246, 'Soccer Mommy', 18, '2026-01-03', 'booked', 42),
(
    4,
    NULL,
    'Bruno Mars',
    NULL,
    '2026-01-03',
    'available',
    11
  ),
(5, 301, 'Lana Del Rey', 11, '2024-02-03', 'booked', 26),
(6, 240, 'Post Malone', 1, '2024-10-26', 'booked', 13),
(7, 291, 'Lana Del Rey', 2, '2025-08-06', 'booked', 26),
(8, 185, 'Harry Styles', 13, '2025-08-06', 'booked', 15),
(9, 113, 'Shawn Mendes', 19, '2025-07-31', 'booked', 28),
(10, 5, 'Travis Scott', 40, '2025-12-11', 'booked', 24),
(11, 138, 'Doja Cat', 32, '2025-08-08', 'booked', 18),
(12, 302, 'H.E.R.', 17, '2025-08-08', 'booked', 21),
(
    13,
    112,
    'Travis Scott',
    39,
    '2025-01-18',
    'booked',
    24
  ),
(
    14,
    202,
    'Rex Orange County',
    28,
    '2025-01-18',
    'booked',
    34
  ),
(15, 272, 'Adele', 33, '2025-02-05', 'booked', 5),
(16, 79, 'Snail Mail', 8, '2025-04-25', 'booked', 44),
(17, 283, 'Dua Lipa', 13, '2026-11-25', 'booked', 10),
(
    18,
    NULL,
    'Crimson Alley',
    26,
    '2025-10-16',
    'available',
    47
  ),
(
    19,
    304,
    'Justin Bieber',
    33,
    '2025-01-11',
    'booked',
    19
  ),
(
    20,
    78,
    'Soccer Mommy',
    NULL,
    '2026-03-20',
    'available',
    NULL
  ),
(21, 370, 'Ed Sheeran', 4, '2025-01-15', 'booked', 8),
(
    22,
    68,
    'Snail Mail',
    NULL,
    '2026-10-21',
    'available',
    NULL
  ),
(23, 315, 'Clairo', 32, '2025-07-24', 'booked', 39),
(
    24,
    NULL,
    'J Balvin',
    NULL,
    '2026-08-27',
    'available',
    27
  ),
(
    25,
    302,
    'Rina Sawayama',
    17,
    '2025-07-19',
    'booked',
    33
  ),
(
    26,
    325,
    'Midnight Paradox',
    3,
    '2024-02-29',
    'booked',
    49
  ),
(
    27,
    301,
    'Soccer Mommy',
    29,
    '2024-08-30',
    'booked',
    42
  ),
(28, NULL, 'BTS', 39, '2026-05-20', 'available', NULL),
(
    29,
    55,
    'Rosalía',
    NULL,
    '2026-05-20',
    'available',
    NULL
  ),
(30, 320, 'Mac DeMarco', 25, '2025-07-02', 'booked', 40),
(
    31,
    258,
    'Phoebe Bridgers',
    39,
    '2025-07-02',
    'booked',
    38
  ),
(
    32,
    269,
    'Rina Sawayama',
    22,
    '2025-02-12',
    'booked',
    33
  ),
(
    33,
    10,
    'Justin Bieber',
    36,
    '2025-02-12',
    'booked',
    19
  ),
(
    34,
    191,
    'Soccer Mommy',
    16,
    '2025-03-29',
    'booked',
    42
  ),
(
    35,
    NULL,
    'The Weeknd',
    3,
    '2026-11-21',
    'available',
    9
  ),
(
    36,
    NULL,
    'Taylor Swift',
    15,
    '2026-11-21',
    'available',
    3
  ),
(37, 18, 'Kendrick Lamar', 6, '2025-03-27', 'booked', 6),
(
    38,
    206,
    'Midnight Paradox',
    40,
    '2024-07-24',
    'booked',
    49
  ),
(39, 296, 'H.E.R.', 22, '2024-01-12', 'booked', 21),
(40, 249, 'Mac DeMarco', 32, '2024-01-12', 'booked', 40),
(
    41,
    344,
    'Echoes of Ember',
    NULL,
    '2025-11-22',
    'available',
    50
  ),
(42, 179, 'Macklemore', 39, '2025-11-22', 'booked', 31),
(43, 261, 'Snail Mail', 11, '2025-01-09', 'booked', 44),
(
    44,
    101,
    'Olivia Rodrigo',
    NULL,
    '2026-03-11',
    'available',
    14
  ),
(45, 266, 'H.E.R.', 4, '2026-03-11', 'booked', 21),
(
    46,
    216,
    'Billie Eilish',
    22,
    '2025-10-03',
    'booked',
    7
  ),
(47, 115, NULL, 14, '2025-10-03', 'available', NULL),
(48, 166, 'J Balvin', 32, '2025-05-15', 'booked', 27),
(
    49,
    206,
    'Lizzo',
    NULL,
    '2026-06-20',
    'available',
    NULL
  ),
(
    50,
    NULL,
    'The Weeknd',
    39,
    '2026-02-04',
    'available',
    9
  ),
(51, 62, 'Post Malone', 3, '2024-07-17', 'booked', 13),
(52, 105, 'Snail Mail', 25, '2025-01-30', 'booked', 44),
(53, 377, 'The Weeknd', 25, '2024-06-12', 'booked', 9),
(
    54,
    154,
    'Lana Del Rey',
    18,
    '2024-06-12',
    'booked',
    26
  ),
(55, 83, 'Adele', 27, '2024-06-12', 'booked', 5),
(
    56,
    210,
    'Phoebe Bridgers',
    1,
    '2026-08-07',
    'available',
    38
  ),
(
    57,
    NULL,
    'Adele',
    NULL,
    '2026-08-07',
    'available',
    NULL
  ),
(
    58,
    NULL,
    'Bruno Mars',
    NULL,
    '2026-08-07',
    'available',
    NULL
  ),
(59, 97, 'Beyoncé', 4, '2025-01-31', 'booked', 1),
(
    60,
    254,
    'Phoebe Bridgers',
    6,
    '2025-07-03',
    'booked',
    38
  ),
(
    61,
    NULL,
    'Japanese Breakfast',
    25,
    '2026-01-07',
    'available',
    43
  ),
(62, 84, 'BLACKPINK', 40, '2025-01-04', 'booked', 25),
(
    63,
    375,
    'Japanese Breakfast',
    22,
    '2026-06-27',
    'available',
    NULL
  ),
(
    64,
    308,
    'Rina Sawayama',
    NULL,
    '2026-06-27',
    'available',
    NULL
  ),
(65, 349, 'Post Malone', 3, '2026-08-05', 'booked', 13),
(
    66,
    NULL,
    'Billie Eilish',
    11,
    '2026-08-05',
    'available',
    7
  ),
(67, 278, 'Mac DeMarco', 21, '2025-06-05', 'booked', 40),
(68, 241, 'Post Malone', 6, '2025-06-05', 'booked', 13),
(69, 126, 'Taylor Swift', 13, '2025-06-05', 'booked', 3),
(70, 251, 'Adele', 34, '2025-06-06', 'booked', 5),
(
    71,
    NULL,
    'FKJ (French Kiwi Juice)',
    40,
    '2026-11-06',
    'available',
    NULL
  ),
(
    72,
    342,
    'Japanese Breakfast',
    3,
    '2026-07-22',
    'booked',
    43
  ),
(
    73,
    185,
    'Kendrick Lamar',
    22,
    '2024-11-06',
    'booked',
    6
  ),
(
    74,
    183,
    'Japanese Breakfast',
    6,
    '2024-11-06',
    'booked',
    43
  ),
(
    75,
    NULL,
    'Megan Thee Stallion',
    NULL,
    '2026-06-05',
    'available',
    NULL
  ),
(
    76,
    272,
    'Rex Orange County',
    12,
    '2024-03-27',
    'booked',
    34
  ),
(77, 302, 'The Weeknd', 13, '2024-10-19', 'booked', 9),
(
    78,
    NULL,
    'Post Malone',
    NULL,
    '2026-05-28',
    'available',
    NULL
  ),
(
    79,
    NULL,
    'The Weeknd',
    14,
    '2026-05-28',
    'available',
    NULL
  ),
(
    80,
    382,
    'Harry Styles',
    40,
    '2026-04-24',
    'available',
    NULL
  ),
(
    81,
    385,
    'Billie Eilish',
    38,
    '2026-04-24',
    'booked',
    7
  ),
(
    82,
    NULL,
    'Mac DeMarco',
    NULL,
    '2026-04-24',
    'available',
    NULL
  ),
(
    83,
    288,
    'Japanese Breakfast',
    32,
    '2026-04-24',
    'booked',
    43
  ),
(
    84,
    NULL,
    'Rosalía',
    NULL,
    '2026-11-20',
    'available',
    NULL
  ),
(
    85,
    325,
    'Chance the Rapper',
    36,
    '2024-08-21',
    'booked',
    30
  ),
(
    86,
    211,
    'Soccer Mommy',
    18,
    '2025-07-17',
    'booked',
    42
  ),
(87, 284, 'Snail Mail', 31, '2024-06-19', 'booked', 44),
(88, 281, 'The Weeknd', 39, '2024-06-19', 'booked', 9),
(89, 121, 'J Balvin', 34, '2024-06-19', 'booked', 27),
(90, 307, 'Adele', 27, '2025-07-12', 'booked', 5),
(91, 26, 'Neon Harbor', 4, '2024-06-20', 'booked', 46),
(
    92,
    202,
    'Rex Orange County',
    23,
    '2024-10-30',
    'booked',
    34
  ),
(
    93,
    177,
    'Echoes of Ember',
    26,
    '2025-07-30',
    'booked',
    50
  ),
(
    94,
    NULL,
    'Billie Eilish',
    NULL,
    '2026-06-13',
    'available',
    7
  ),
(95, 31, 'Travis Scott', 26, '2024-12-04', 'booked', 24),
(
    96,
    8,
    'Justin Bieber',
    16,
    '2026-12-12',
    'available',
    19
  ),
(
    97,
    313,
    'The Velvet Echoes',
    40,
    '2024-09-20',
    'booked',
    45
  ),
(
    98,
    377,
    'Japanese Breakfast',
    13,
    '2024-09-20',
    'booked',
    43
  ),
(
    99,
    49,
    'King Princess',
    15,
    '2024-09-20',
    'booked',
    41
  ),
(100, 34, 'Harry Styles', 1, '2024-10-12', 'booked', 15),
(101, 280, 'Doja Cat', 32, '2024-10-12', 'booked', 18),
(102, 69, 'Mac DeMarco', 33, '2024-10-12', 'booked', 40),
(
    103,
    NULL,
    'Bad Bunny',
    26,
    '2026-10-22',
    'available',
    NULL
  ),
(
    104,
    16,
    'Megan Thee Stallion',
    1,
    '2024-01-24',
    'booked',
    20
  ),
(105, 107, 'Bad Bunny', 40, '2024-01-24', 'booked', 16),
(
    106,
    268,
    'Billie Eilish',
    3,
    '2026-11-04',
    'available',
    7
  ),
(
    107,
    275,
    'Shawn Mendes',
    2,
    '2026-09-03',
    'available',
    28
  ),
(
    108,
    397,
    'Billie Eilish',
    25,
    '2024-08-24',
    'booked',
    7
  ),
(109, 302, 'J Balvin', 32, '2024-12-18', 'booked', 27),
(110, NULL, 'BTS', 15, '2025-10-29', 'available', 4),
(
    111,
    115,
    'Lana Del Rey',
    3,
    '2025-05-29',
    'booked',
    26
  ),
(112, NULL, 'Adele', NULL, '2026-07-11', 'available', 5),
(113, 262, 'Rosalía', 7, '2025-08-13', 'booked', 23),
(
    114,
    106,
    'Justin Bieber',
    12,
    '2025-08-13',
    'booked',
    19
  ),
(115, 193, 'Drake', 40, '2026-10-07', 'booked', 2),
(
    116,
    318,
    'Doja Cat',
    14,
    '2026-10-07',
    'available',
    NULL
  ),
(
    117,
    NULL,
    'Justin Bieber',
    23,
    '2026-04-17',
    'available',
    NULL
  ),
(118, 240, 'Adele', 36, '2026-04-17', 'booked', 5),
(
    119,
    NULL,
    'Bruno Mars',
    23,
    '2026-04-17',
    'available',
    NULL
  ),
(120, 3, 'Mac DeMarco', 24, '2024-08-09', 'booked', 40),
(121, 71, 'Mac DeMarco', 30, '2025-08-07', 'booked', 40),
(
    122,
    337,
    'Silver Lining Syndicate',
    5,
    '2025-07-16',
    'booked',
    48
  ),
(
    123,
    216,
    'Shawn Mendes',
    5,
    '2025-07-16',
    'booked',
    28
  ),
(
    124,
    300,
    'The Velvet Echoes',
    17,
    '2024-11-28',
    'booked',
    45
  ),
(
    125,
    NULL,
    'Rina Sawayama',
    6,
    '2026-07-02',
    'available',
    33
  ),
(
    126,
    NULL,
    'Neon Harbor',
    15,
    '2026-07-18',
    'available',
    NULL
  ),
(
    127,
    333,
    'Post Malone',
    36,
    '2026-07-18',
    'booked',
    13
  ),
(
    128,
    NULL,
    'Beyoncé',
    NULL,
    '2026-01-28',
    'available',
    NULL
  ),
(129, 29, 'The Weeknd', 3, '2024-02-14', 'booked', 9),
(
    130,
    340,
    'Travis Scott',
    4,
    '2026-02-27',
    'booked',
    24
  ),
(
    131,
    344,
    'Rex Orange County',
    34,
    '2025-09-27',
    'booked',
    34
  ),
(
    132,
    343,
    'Billie Eilish',
    32,
    '2025-03-14',
    'booked',
    7
  ),
(133, 223, 'H.E.R.', 39, '2025-03-14', 'booked', 21),
(
    134,
    197,
    'Echoes of Ember',
    13,
    '2025-04-18',
    'booked',
    50
  ),
(
    135,
    381,
    'FKJ (French Kiwi Juice)',
    1,
    '2026-01-15',
    'available',
    35
  ),
(136, 384, 'Doja Cat', 19, '2025-04-02', 'booked', 18),
(137, 303, 'Bruno Mars', 27, '2025-04-02', 'booked', 11),
(
    138,
    337,
    'Lana Del Rey',
    27,
    '2025-04-02',
    'booked',
    26
  ),
(139, 54, 'J Balvin', 23, '2026-07-25', 'booked', 27),
(
    140,
    353,
    'Lana Del Rey',
    27,
    '2024-02-17',
    'booked',
    26
  ),
(
    141,
    209,
    'FKJ (French Kiwi Juice)',
    26,
    '2024-02-17',
    'booked',
    35
  ),
(142, 44, 'Adele', 19, '2024-03-29', 'booked', 5),
(
    143,
    340,
    'Justin Bieber',
    34,
    '2024-08-23',
    'booked',
    19
  ),
(144, 31, 'Neon Harbor', 15, '2024-08-23', 'booked', 46),
(
    145,
    130,
    'Post Malone',
    NULL,
    '2025-11-27',
    'available',
    13
  ),
(
    146,
    295,
    'Soccer Mommy',
    5,
    '2025-02-19',
    'booked',
    42
  ),
(
    147,
    110,
    'Megan Thee Stallion',
    1,
    '2025-02-19',
    'booked',
    20
  ),
(
    148,
    NULL,
    'Chance the Rapper',
    3,
    '2026-05-21',
    'available',
    30
  ),
(
    149,
    186,
    'Macklemore',
    40,
    '2026-05-21',
    'available',
    NULL
  ),
(
    150,
    NULL,
    'Echoes of Ember',
    NULL,
    '2026-05-21',
    'available',
    50
  ),
(151, 50, 'Bruno Mars', 12, '2024-06-26', 'booked', 11),
(152, 256, 'Doja Cat', 10, '2024-06-26', 'booked', 18),
(
    153,
    247,
    'Billie Eilish',
    NULL,
    '2026-10-14',
    'available',
    NULL
  ),
(
    154,
    290,
    'Phoebe Bridgers',
    NULL,
    '2026-10-14',
    'available',
    38
  ),
(
    155,
    351,
    'Echoes of Ember',
    15,
    '2026-10-14',
    'booked',
    50
  ),
(
    156,
    NULL,
    'The Weeknd',
    NULL,
    '2026-10-14',
    'available',
    NULL
  ),
(157, 282, 'Mac DeMarco', 5, '2024-03-08', 'booked', 40),
(158, 128, 'Clairo', 32, '2026-10-16', 'booked', 39),
(
    159,
    NULL,
    'SZA',
    NULL,
    '2026-10-16',
    'available',
    NULL
  ),
(
    160,
    NULL,
    'Phoebe Bridgers',
    NULL,
    '2026-10-16',
    'available',
    38
  ),
(
    161,
    NULL,
    'The Weeknd',
    NULL,
    '2026-10-17',
    'available',
    NULL
  ),
(
    162,
    374,
    'Olivia Rodrigo',
    4,
    '2024-03-28',
    'booked',
    14
  ),
(
    163,
    36,
    'Billie Eilish',
    10,
    '2025-10-22',
    'booked',
    7
  ),
(
    164,
    NULL,
    'Japanese Breakfast',
    26,
    '2026-05-06',
    'available',
    NULL
  ),
(
    165,
    151,
    'Kendrick Lamar',
    34,
    '2026-05-06',
    'available',
    6
  ),
(166, 145, 'Snail Mail', 27, '2024-10-16', 'booked', 44),
(167, 87, 'Adele', 35, '2024-10-16', 'booked', 5),
(
    168,
    237,
    'Kendrick Lamar',
    40,
    '2024-09-14',
    'booked',
    6
  ),
(
    169,
    347,
    'Harry Styles',
    13,
    '2024-05-30',
    'booked',
    15
  ),
(
    170,
    50,
    'Japanese Breakfast',
    5,
    '2024-05-30',
    'booked',
    43
  ),
(171, 263, 'BLACKPINK', 17, '2024-10-09', 'booked', 25),
(
    172,
    320,
    'Silver Lining Syndicate',
    26,
    '2024-10-09',
    'booked',
    48
  ),
(173, 209, 'Rosalía', 3, '2024-06-28', 'booked', 23),
(
    174,
    352,
    'Crimson Alley',
    6,
    '2024-11-30',
    'booked',
    47
  ),
(175, 180, 'Post Malone', 2, '2026-04-30', 'booked', 13),
(
    176,
    369,
    'Bruno Mars',
    NULL,
    '2025-09-06',
    'available',
    11
  ),
(177, 276, NULL, 19, '2025-11-20', 'available', NULL),
(178, 145, NULL, 34, '2025-11-20', 'available', NULL),
(
    179,
    NULL,
    'Clairo',
    22,
    '2026-12-16',
    'available',
    NULL
  ),
(
    180,
    NULL,
    'Japanese Breakfast',
    NULL,
    '2026-12-16',
    'available',
    NULL
  ),
(
    181,
    148,
    'Doja Cat',
    NULL,
    '2025-10-09',
    'available',
    18
  ),
(
    182,
    289,
    'Neon Harbor',
    22,
    '2025-10-09',
    'booked',
    46
  ),
(
    183,
    231,
    'Ed Sheeran',
    NULL,
    '2026-09-10',
    'available',
    8
  ),
(
    184,
    285,
    'Japanese Breakfast',
    13,
    '2026-01-30',
    'available',
    43
  ),
(
    185,
    NULL,
    'Shawn Mendes',
    NULL,
    '2026-01-30',
    'available',
    28
  ),
(
    186,
    205,
    'FKJ (French Kiwi Juice)',
    39,
    '2025-06-20',
    'booked',
    35
  ),
(187, 78, 'Post Malone', 25, '2024-10-03', 'booked', 13),
(188, 158, 'Dua Lipa', 1, '2024-10-03', 'booked', 10),
(189, 66, 'Bruno Mars', 30, '2024-10-03', 'booked', 11),
(
    190,
    NULL,
    'Bruno Mars',
    12,
    '2026-05-27',
    'available',
    NULL
  ),
(
    191,
    241,
    'Olivia Rodrigo',
    14,
    '2025-06-14',
    'booked',
    14
  ),
(
    192,
    5,
    'Megan Thee Stallion',
    32,
    '2025-02-20',
    'booked',
    20
  ),
(193, 192, 'Ed Sheeran', 6, '2024-12-07', 'booked', 8),
(194, 54, 'Rosalía', 24, '2024-08-15', 'booked', 23),
(
    195,
    NULL,
    'Post Malone',
    NULL,
    '2026-06-24',
    'available',
    NULL
  ),
(
    196,
    NULL,
    'Rosalía',
    19,
    '2026-06-24',
    'available',
    23
  ),
(
    197,
    200,
    'Bruno Mars',
    NULL,
    '2025-10-08',
    'available',
    11
  ),
(198, 114, 'Bad Bunny', 40, '2025-12-12', 'booked', 16),
(
    199,
    340,
    'Chance the Rapper',
    14,
    '2025-12-12',
    'booked',
    30
  ),
(
    200,
    309,
    'Lana Del Rey',
    29,
    '2026-01-22',
    'booked',
    26
  ),
(
    201,
    NULL,
    'H.E.R.',
    NULL,
    '2026-01-22',
    'available',
    NULL
  ),
(
    202,
    268,
    'Soccer Mommy',
    NULL,
    '2026-01-10',
    'available',
    42
  ),
(
    203,
    45,
    'Snail Mail',
    NULL,
    '2026-01-10',
    'available',
    44
  ),
(
    204,
    NULL,
    'Justin Bieber',
    12,
    '2026-12-10',
    'available',
    NULL
  ),
(205, 73, 'Neon Harbor', 40, '2024-04-26', 'booked', 46),
(206, 50, 'Rosalía', 37, '2025-08-09', 'booked', 23),
(207, 46, 'Doja Cat', 21, '2025-08-09', 'booked', 18),
(208, 304, 'Post Malone', 3, '2025-08-09', 'booked', 13),
(
    209,
    101,
    'Crimson Alley',
    NULL,
    '2026-03-06',
    'available',
    NULL
  ),
(210, 149, 'Clairo', 15, '2024-05-16', 'booked', 39),
(
    211,
    48,
    'Olivia Rodrigo',
    6,
    '2024-05-16',
    'booked',
    14
  ),
(
    212,
    79,
    'Rina Sawayama',
    39,
    '2024-05-16',
    'booked',
    33
  ),
(
    213,
    77,
    'Midnight Paradox',
    18,
    '2024-03-02',
    'booked',
    49
  ),
(214, 268, 'Snail Mail', 16, '2024-03-02', 'booked', 44),
(215, 33, 'Neon Harbor', 18, '2025-04-19', 'booked', 46),
(
    216,
    270,
    'Mac DeMarco',
    22,
    '2025-04-19',
    'booked',
    40
  ),
(
    217,
    NULL,
    'Kendrick Lamar',
    6,
    '2026-09-30',
    'available',
    6
  ),
(
    218,
    279,
    'Post Malone',
    36,
    '2024-03-30',
    'booked',
    13
  ),
(
    219,
    271,
    'Neon Harbor',
    18,
    '2024-03-30',
    'booked',
    46
  ),
(220, 64, 'Bruno Mars', 16, '2025-08-30', 'booked', 11),
(221, 38, 'Adele', 21, '2024-05-09', 'booked', 5),
(
    222,
    313,
    'Midnight Paradox',
    18,
    '2026-03-21',
    'available',
    49
  ),
(223, 144, 'Adele', 23, '2024-03-21', 'booked', 5),
(224, 330, 'Ed Sheeran', 22, '2025-07-05', 'booked', 8),
(
    225,
    6,
    'Megan Thee Stallion',
    40,
    '2026-04-25',
    'available',
    NULL
  ),
(
    226,
    271,
    'Snail Mail',
    NULL,
    '2025-11-06',
    'available',
    44
  ),
(227, 124, 'Rosalía', 28, '2025-11-06', 'booked', 23),
(228, 130, 'Lil Nas X', 1, '2024-01-11', 'booked', 22),
(
    229,
    329,
    'Lana Del Rey',
    20,
    '2026-02-28',
    'booked',
    26
  ),
(
    230,
    333,
    'Mac DeMarco',
    37,
    '2025-07-18',
    'booked',
    40
  ),
(
    231,
    121,
    'Billie Eilish',
    NULL,
    '2026-02-12',
    'available',
    NULL
  ),
(
    232,
    336,
    'Bruno Mars',
    NULL,
    '2026-07-24',
    'available',
    11
  ),
(
    233,
    194,
    'Post Malone',
    14,
    '2026-06-03',
    'available',
    13
  ),
(
    234,
    302,
    'Soccer Mommy',
    8,
    '2026-06-03',
    'available',
    42
  ),
(
    235,
    NULL,
    'Justin Bieber',
    NULL,
    '2026-06-03',
    'available',
    NULL
  ),
(
    236,
    266,
    'Billie Eilish',
    33,
    '2025-08-15',
    'booked',
    7
  ),
(
    237,
    119,
    'Soccer Mommy',
    21,
    '2025-08-15',
    'booked',
    42
  ),
(238, 299, 'Bruno Mars', 11, '2025-08-15', 'booked', 11),
(
    239,
    NULL,
    'Clairo',
    5,
    '2026-09-02',
    'available',
    NULL
  ),
(
    240,
    NULL,
    'Justin Bieber',
    NULL,
    '2026-09-02',
    'available',
    NULL
  ),
(
    241,
    354,
    'Megan Thee Stallion',
    NULL,
    '2025-12-26',
    'available',
    20
  ),
(242, 292, 'Bruno Mars', 8, '2026-01-08', 'booked', 11),
(
    243,
    123,
    'Ariana Grande',
    NULL,
    '2026-01-08',
    'available',
    NULL
  ),
(
    244,
    NULL,
    'King Princess',
    NULL,
    '2026-03-05',
    'available',
    41
  ),
(245, 94, 'Ed Sheeran', 1, '2026-02-07', 'booked', 8),
(
    246,
    377,
    'Shawn Mendes',
    33,
    '2025-06-07',
    'booked',
    28
  ),
(
    247,
    242,
    'Justin Bieber',
    11,
    '2024-09-07',
    'booked',
    19
  ),
(
    248,
    140,
    'Rina Sawayama',
    NULL,
    '2026-12-02',
    'available',
    33
  ),
(
    249,
    305,
    'Rex Orange County',
    22,
    '2024-02-08',
    'booked',
    34
  ),
(
    250,
    263,
    'Bad Bunny',
    39,
    '2026-05-14',
    'available',
    16
  ),
(
    251,
    NULL,
    'Billie Eilish',
    37,
    '2026-05-14',
    'available',
    NULL
  ),
(
    252,
    291,
    'Tom Misch',
    NULL,
    '2026-05-14',
    'available',
    36
  ),
(253, 340, 'Clairo', 3, '2024-07-05', 'booked', 39),
(254, 338, 'Doja Cat', 16, '2024-01-26', 'booked', 18),
(
    255,
    96,
    'FKJ (French Kiwi Juice)',
    17,
    '2024-09-21',
    'booked',
    35
  ),
(
    256,
    184,
    'Olivia Rodrigo',
    17,
    '2024-09-21',
    'booked',
    14
  ),
(
    257,
    386,
    'Shawn Mendes',
    27,
    '2024-09-21',
    'booked',
    28
  ),
(
    258,
    249,
    'Shawn Mendes',
    NULL,
    '2026-03-07',
    'available',
    28
  ),
(259, 56, 'Bruno Mars', 36, '2026-03-07', 'booked', 11),
(260, 231, 'The Weeknd', 1, '2024-08-31', 'booked', 9),
(
    261,
    NULL,
    'Midnight Paradox',
    NULL,
    '2026-02-26',
    'available',
    NULL
  ),
(
    262,
    70,
    'Phoebe Bridgers',
    NULL,
    '2026-08-01',
    'available',
    NULL
  ),
(
    263,
    143,
    'Japanese Breakfast',
    NULL,
    '2025-09-13',
    'available',
    43
  ),
(
    264,
    334,
    'Megan Thee Stallion',
    4,
    '2024-05-31',
    'booked',
    20
  ),
(265, 112, 'Post Malone', 2, '2024-11-20', 'booked', 13),
(266, 246, 'Clairo', 40, '2024-04-13', 'booked', 39),
(
    267,
    10,
    'Lana Del Rey',
    34,
    '2024-04-13',
    'booked',
    26
  ),
(
    268,
    148,
    'Rina Sawayama',
    40,
    '2024-12-05',
    'booked',
    33
  ),
(269, 34, 'Bruno Mars', 36, '2024-04-04', 'booked', 11),
(270, 287, 'Clairo', 1, '2026-12-03', 'available', NULL),
(
    271,
    200,
    'Lana Del Rey',
    32,
    '2025-06-04',
    'booked',
    26
  ),
(
    272,
    NULL,
    'Lil Nas X',
    NULL,
    '2026-09-12',
    'available',
    NULL
  ),
(273, 35, 'Adele', NULL, '2026-09-12', 'available', 5),
(274, 266, 'J Balvin', 34, '2026-09-12', 'booked', 27),
(
    275,
    104,
    'Megan Thee Stallion',
    NULL,
    '2025-11-15',
    'available',
    20
  ),
(
    276,
    220,
    'Chance the Rapper',
    25,
    '2025-06-13',
    'booked',
    30
  ),
(
    277,
    NULL,
    'Soccer Mommy',
    19,
    '2026-08-15',
    'available',
    NULL
  ),
(
    278,
    226,
    'Lana Del Rey',
    11,
    '2026-03-19',
    'available',
    26
  ),
(
    279,
    NULL,
    'Billie Eilish',
    29,
    '2026-03-19',
    'available',
    7
  ),
(
    280,
    105,
    'Billie Eilish',
    34,
    '2025-08-16',
    'booked',
    7
  ),
(281, 159, 'Bruno Mars', 19, '2024-09-26', 'booked', 11),
(282, 196, 'Lil Nas X', 6, '2025-05-14', 'booked', 22),
(
    283,
    25,
    'Ariana Grande',
    13,
    '2025-03-08',
    'booked',
    12
  ),
(
    284,
    384,
    'Rex Orange County',
    25,
    '2025-03-08',
    'booked',
    34
  ),
(
    285,
    199,
    'Rina Sawayama',
    15,
    '2025-03-08',
    'booked',
    33
  ),
(
    286,
    NULL,
    'Rina Sawayama',
    NULL,
    '2026-11-27',
    'available',
    NULL
  ),
(
    287,
    327,
    'Clairo',
    NULL,
    '2026-11-27',
    'available',
    39
  ),
(
    288,
    NULL,
    'Rosalía',
    24,
    '2026-03-27',
    'available',
    23
  ),
(289, 208, 'BLACKPINK', 13, '2025-09-25', 'booked', 25),
(290, NULL, 'Adele', 32, '2025-09-25', 'available', 5),
(291, 99, 'Lizzo', 17, '2024-03-07', 'booked', 17),
(292, 52, 'Doja Cat', 36, '2024-07-13', 'booked', 18),
(293, 299, NULL, 39, '2025-12-13', 'available', NULL),
(294, 373, 'Ed Sheeran', 25, '2024-10-11', 'booked', 8),
(
    295,
    348,
    'Megan Thee Stallion',
    2,
    '2024-10-11',
    'booked',
    20
  ),
(296, 212, 'The Weeknd', 14, '2024-07-10', 'booked', 9),
(
    297,
    327,
    'Silver Lining Syndicate',
    26,
    '2025-02-27',
    'booked',
    48
  ),
(
    298,
    287,
    'Lana Del Rey',
    28,
    '2025-02-27',
    'booked',
    26
  ),
(
    299,
    NULL,
    'Rina Sawayama',
    3,
    '2026-08-13',
    'available',
    33
  ),
(
    300,
    NULL,
    'Post Malone',
    NULL,
    '2026-07-01',
    'available',
    NULL
  ),
(
    301,
    188,
    'Tash Sultana',
    15,
    '2025-11-13',
    'booked',
    32
  ),
(
    302,
    198,
    'Billie Eilish',
    22,
    '2024-01-19',
    'booked',
    7
  ),
(
    303,
    362,
    'Justin Bieber',
    16,
    '2024-01-19',
    'booked',
    19
  ),
(
    304,
    369,
    'Shawn Mendes',
    38,
    '2024-12-25',
    'booked',
    28
  ),
(305, 322, 'J Balvin', 2, '2024-01-25', 'booked', 27),
(306, 324, 'Rosalía', 21, '2024-01-25', 'booked', 23),
(
    307,
    322,
    'Rex Orange County',
    5,
    '2026-10-10',
    'available',
    NULL
  ),
(
    308,
    NULL,
    'The Weeknd',
    NULL,
    '2026-10-10',
    'available',
    NULL
  ),
(
    309,
    38,
    'Olivia Rodrigo',
    26,
    '2024-06-15',
    'booked',
    14
  ),
(
    310,
    82,
    'Billie Eilish',
    30,
    '2024-01-20',
    'booked',
    7
  ),
(311, 154, 'H.E.R.', 36, '2024-01-20', 'booked', 21),
(312, 39, 'Adele', 25, '2024-11-09', 'booked', 5),
(313, 56, 'Macklemore', 26, '2024-11-09', 'booked', 31),
(
    314,
    273,
    'Rex Orange County',
    31,
    '2024-11-09',
    'booked',
    34
  ),
(315, 392, 'Mac DeMarco', 5, '2025-04-24', 'booked', 40),
(
    316,
    12,
    'Rex Orange County',
    7,
    '2025-04-24',
    'booked',
    34
  ),
(317, 228, 'Beyoncé', 13, '2024-08-07', 'booked', 1),
(
    318,
    112,
    'Billie Eilish',
    NULL,
    '2025-10-02',
    'available',
    7
  ),
(319, NULL, 'Lizzo', 40, '2025-10-02', 'available', 17),
(
    320,
    18,
    'J Balvin',
    NULL,
    '2025-11-21',
    'available',
    27
  ),
(
    321,
    136,
    'King Princess',
    40,
    '2024-02-01',
    'booked',
    41
  ),
(322, 342, NULL, 32, '2025-09-10', 'available', NULL),
(323, NULL, 'SZA', 6, '2025-10-23', 'available', 29),
(
    324,
    242,
    'Justin Bieber',
    14,
    '2026-05-09',
    'available',
    19
  ),
(325, 332, 'Adele', 38, '2026-10-29', 'booked', 5),
(
    326,
    204,
    'Harry Styles',
    6,
    '2026-10-29',
    'booked',
    15
  ),
(
    327,
    NULL,
    'Justin Bieber',
    30,
    '2026-10-29',
    'available',
    NULL
  ),
(328, 27, 'Drake', 26, '2026-10-29', 'booked', 2),
(
    329,
    NULL,
    'Lana Del Rey',
    19,
    '2025-12-20',
    'available',
    26
  ),
(
    330,
    357,
    'Rina Sawayama',
    2,
    '2026-06-04',
    'available',
    33
  ),
(
    331,
    364,
    'Neon Harbor',
    32,
    '2024-09-18',
    'booked',
    46
  ),
(332, 394, 'Doja Cat', 23, '2025-01-23', 'booked', 18),
(333, 136, 'J Balvin', 11, '2024-06-01', 'booked', 27),
(334, 96, 'Doja Cat', 38, '2024-04-06', 'booked', 18),
(335, 266, 'The Weeknd', 6, '2024-04-06', 'booked', 9),
(336, 120, 'Rosalía', 9, '2024-12-06', 'booked', 23),
(
    337,
    201,
    'Justin Bieber',
    22,
    '2026-04-29',
    'booked',
    19
  ),
(
    338,
    299,
    'Shawn Mendes',
    20,
    '2026-08-21',
    'available',
    28
  ),
(339, NULL, 'Adele', NULL, '2026-08-21', 'available', 5),
(340, 156, 'Doja Cat', 35, '2026-08-21', 'booked', 18),
(341, 95, 'Lana Del Rey', 7, '2024-05-04', 'booked', 26),
(
    342,
    330,
    'Soccer Mommy',
    30,
    '2026-06-18',
    'available',
    NULL
  ),
(
    343,
    358,
    'Post Malone',
    17,
    '2024-12-21',
    'booked',
    13
  ),
(
    344,
    123,
    'Rina Sawayama',
    13,
    '2024-07-25',
    'booked',
    33
  ),
(345, 176, 'Snail Mail', 23, '2025-01-17', 'booked', 44),
(346, 108, 'Adele', 7, '2025-08-02', 'booked', 5),
(
    347,
    77,
    'Phoebe Bridgers',
    15,
    '2025-08-02',
    'booked',
    38
  ),
(
    348,
    16,
    'Chance the Rapper',
    NULL,
    '2025-10-18',
    'available',
    30
  ),
(349, 387, 'Dua Lipa', 26, '2025-03-15', 'booked', 10),
(350, 198, 'Doja Cat', 35, '2025-03-15', 'booked', 18),
(351, 116, NULL, 21, '2025-10-01', 'available', NULL),
(352, 173, 'Macklemore', 15, '2024-08-17', 'booked', 31),
(353, 103, 'Rosalía', 35, '2024-08-17', 'booked', 23),
(
    354,
    306,
    'Kendrick Lamar',
    39,
    '2024-01-27',
    'booked',
    6
  ),
(
    355,
    254,
    'Rex Orange County',
    NULL,
    '2025-10-04',
    'available',
    34
  ),
(356, 212, 'Doja Cat', 31, '2025-03-13', 'booked', 18),
(
    357,
    NULL,
    'Adele',
    NULL,
    '2026-04-16',
    'available',
    NULL
  ),
(358, 9, NULL, 5, '2025-09-05', 'available', NULL),
(
    359,
    160,
    'Megan Thee Stallion',
    40,
    '2024-09-04',
    'booked',
    20
  ),
(360, 166, 'Adele', 7, '2024-02-07', 'booked', 5),
(
    361,
    109,
    'Justin Bieber',
    29,
    '2025-02-15',
    'booked',
    19
  ),
(362, 259, 'J Balvin', 22, '2025-04-12', 'booked', 27),
(
    363,
    30,
    'Justin Bieber',
    22,
    '2025-04-12',
    'booked',
    19
  ),
(
    364,
    137,
    'Phoebe Bridgers',
    2,
    '2025-05-23',
    'booked',
    38
  ),
(
    365,
    123,
    'Rex Orange County',
    11,
    '2024-10-04',
    'booked',
    34
  ),
(366, 10, 'Adele', 30, '2024-10-04', 'booked', 5),
(
    367,
    NULL,
    'Lil Nas X',
    NULL,
    '2026-12-04',
    'available',
    22
  ),
(
    368,
    29,
    'Shawn Mendes',
    16,
    '2025-01-02',
    'booked',
    28
  ),
(369, 201, 'Rosalía', 29, '2026-10-23', 'booked', 23),
(
    370,
    206,
    'Moses Sumney',
    NULL,
    '2026-08-12',
    'available',
    37
  ),
(
    371,
    NULL,
    'The Weeknd',
    NULL,
    '2026-08-12',
    'available',
    NULL
  ),
(
    372,
    NULL,
    'J Balvin',
    9,
    '2026-08-12',
    'available',
    27
  ),
(
    373,
    70,
    'Rina Sawayama',
    25,
    '2024-03-09',
    'booked',
    33
  ),
(
    374,
    318,
    'Megan Thee Stallion',
    1,
    '2026-10-01',
    'available',
    NULL
  ),
(375, 284, 'H.E.R.', 15, '2024-11-14', 'booked', 21),
(
    376,
    40,
    'Rex Orange County',
    16,
    '2024-07-20',
    'booked',
    34
  ),
(
    377,
    73,
    'Rex Orange County',
    9,
    '2025-01-29',
    'booked',
    34
  ),
(378, 196, 'Drake', NULL, '2025-12-06', 'available', 2),
(
    379,
    383,
    'Rex Orange County',
    29,
    '2025-12-31',
    'booked',
    34
  ),
(380, 139, 'Snail Mail', 32, '2024-06-27', 'booked', 44),
(
    381,
    172,
    'Soccer Mommy',
    32,
    '2026-02-21',
    'available',
    NULL
  ),
(
    382,
    342,
    'Soccer Mommy',
    NULL,
    '2026-05-07',
    'available',
    NULL
  ),
(
    383,
    NULL,
    'Justin Bieber',
    NULL,
    '2026-07-30',
    'available',
    19
  ),
(
    384,
    44,
    'Rex Orange County',
    11,
    '2025-03-01',
    'booked',
    34
  ),
(385, 11, 'J Balvin', 29, '2024-03-23', 'booked', 27),
(386, 364, 'BTS', 4, '2026-07-23', 'available', 4),
(
    387,
    288,
    'Japanese Breakfast',
    1,
    '2025-05-03',
    'booked',
    43
  ),
(
    388,
    292,
    'Lana Del Rey',
    30,
    '2026-05-15',
    'booked',
    26
  ),
(389, 365, 'The Weeknd', 6, '2025-05-10', 'booked', 9),
(
    390,
    396,
    'Bruno Mars',
    27,
    '2026-10-31',
    'available',
    NULL
  ),
(
    391,
    274,
    'Phoebe Bridgers',
    13,
    '2026-10-31',
    'available',
    38
  ),
(
    392,
    134,
    'Shawn Mendes',
    7,
    '2026-01-16',
    'booked',
    28
  ),
(393, NULL, 'Clairo', 3, '2026-06-12', 'available', 39),
(394, 352, 'Adele', 37, '2025-03-12', 'booked', 5),
(
    395,
    159,
    'Lana Del Rey',
    23,
    '2024-10-31',
    'booked',
    26
  ),
(
    396,
    47,
    'Chance the Rapper',
    18,
    '2024-05-25',
    'booked',
    30
  ),
(
    397,
    39,
    'Olivia Rodrigo',
    1,
    '2024-07-27',
    'booked',
    14
  ),
(398, 65, 'The Weeknd', 36, '2025-04-30', 'booked', 9),
(
    399,
    117,
    'The Velvet Echoes',
    26,
    '2025-04-30',
    'booked',
    45
  ),
(400, 243, 'Adele', 28, '2024-05-17', 'booked', 5),
(401, 206, 'Snail Mail', 14, '2025-08-28', 'booked', 44),
(
    402,
    NULL,
    'Mac DeMarco',
    9,
    '2026-09-25',
    'available',
    40
  ),
(
    403,
    286,
    'Justin Bieber',
    3,
    '2026-12-18',
    'available',
    19
  ),
(
    404,
    331,
    'Shawn Mendes',
    NULL,
    '2025-09-03',
    'available',
    28
  ),
(
    405,
    153,
    'Chance the Rapper',
    2,
    '2024-03-16',
    'booked',
    30
  ),
(406, 227, 'Adele', 31, '2024-09-19', 'booked', 5),
(
    407,
    98,
    'Justin Bieber',
    25,
    '2024-12-13',
    'booked',
    19
  ),
(
    408,
    372,
    'Neon Harbor',
    39,
    '2024-12-13',
    'booked',
    46
  ),
(
    409,
    347,
    'Japanese Breakfast',
    1,
    '2024-05-18',
    'booked',
    43
  ),
(410, 102, 'Bruno Mars', 5, '2025-05-02', 'booked', 11),
(
    411,
    138,
    'Chance the Rapper',
    3,
    '2024-12-11',
    'booked',
    30
  ),
(412, 53, 'Rosalía', 23, '2024-12-11', 'booked', 23),
(
    413,
    123,
    'Lana Del Rey',
    2,
    '2024-12-11',
    'booked',
    26
  ),
(
    414,
    92,
    'Rina Sawayama',
    6,
    '2024-01-04',
    'booked',
    33
  ),
(
    415,
    300,
    'Post Malone',
    14,
    '2024-06-08',
    'booked',
    13
  ),
(
    416,
    25,
    'Shawn Mendes',
    35,
    '2025-02-28',
    'booked',
    28
  ),
(
    417,
    137,
    'Echoes of Ember',
    6,
    '2024-09-12',
    'booked',
    50
  ),
(
    418,
    154,
    'Midnight Paradox',
    4,
    '2024-10-18',
    'booked',
    49
  ),
(419, 98, NULL, 22, '2025-11-29', 'available', NULL),
(
    420,
    NULL,
    'Lana Del Rey',
    18,
    '2025-11-12',
    'available',
    26
  ),
(421, 393, 'Beyoncé', 40, '2024-09-06', 'booked', 1),
(
    422,
    221,
    'Midnight Paradox',
    22,
    '2026-04-02',
    'available',
    NULL
  ),
(423, 97, 'Mac DeMarco', 28, '2026-04-02', 'booked', 40),
(
    424,
    111,
    'Japanese Breakfast',
    36,
    '2025-08-29',
    'booked',
    43
  ),
(
    425,
    194,
    'Megan Thee Stallion',
    18,
    '2025-08-29',
    'booked',
    20
  ),
(426, 392, 'J Balvin', 34, '2025-08-29', 'booked', 27),
(
    427,
    265,
    'Mac DeMarco',
    34,
    '2026-11-26',
    'booked',
    40
  ),
(
    428,
    30,
    'Chance the Rapper',
    34,
    '2026-12-05',
    'booked',
    30
  ),
(
    429,
    357,
    'Doja Cat',
    9,
    '2026-05-16',
    'available',
    NULL
  ),
(
    430,
    353,
    'The Velvet Echoes',
    15,
    '2026-09-17',
    'available',
    NULL
  ),
(
    431,
    63,
    'Soccer Mommy',
    14,
    '2024-09-11',
    'booked',
    42
  ),
(
    432,
    153,
    'Phoebe Bridgers',
    2,
    '2024-05-01',
    'booked',
    38
  ),
(433, 240, 'Rosalía', 34, '2026-10-24', 'booked', 23),
(
    434,
    329,
    'Shawn Mendes',
    38,
    '2026-01-24',
    'booked',
    28
  ),
(
    435,
    94,
    'Tom Misch',
    NULL,
    '2026-01-24',
    'available',
    NULL
  ),
(436, 113, 'Clairo', 18, '2024-03-14', 'booked', 39),
(437, 362, 'Snail Mail', 25, '2024-03-14', 'booked', 44),
(438, 286, 'Doja Cat', 2, '2024-05-11', 'booked', 18),
(
    439,
    186,
    'Shawn Mendes',
    25,
    '2024-05-11',
    'booked',
    28
  ),
(
    440,
    NULL,
    'Chance the Rapper',
    14,
    '2026-11-11',
    'available',
    NULL
  ),
(441, 304, 'Bad Bunny', 13, '2024-08-10', 'booked', 16),
(442, 234, 'Snail Mail', 30, '2024-04-05', 'booked', 44),
(
    443,
    254,
    'Silver Lining Syndicate',
    39,
    '2024-04-05',
    'booked',
    48
  ),
(
    444,
    88,
    'Ed Sheeran',
    NULL,
    '2025-11-26',
    'available',
    8
  ),
(
    445,
    263,
    'Echoes of Ember',
    NULL,
    '2025-11-26',
    'available',
    50
  ),
(
    446,
    394,
    'Silver Lining Syndicate',
    NULL,
    '2026-12-09',
    'available',
    NULL
  ),
(
    447,
    NULL,
    'Rex Orange County',
    22,
    '2026-12-09',
    'available',
    34
  ),
(
    448,
    99,
    'Kendrick Lamar',
    39,
    '2026-12-09',
    'available',
    NULL
  ),
(
    449,
    205,
    'Ariana Grande',
    26,
    '2025-02-14',
    'booked',
    12
  ),
(450, 8, 'Moses Sumney', 17, '2025-05-01', 'booked', 37),
(
    451,
    311,
    'Travis Scott',
    6,
    '2026-03-25',
    'booked',
    24
  ),
(
    452,
    350,
    'Justin Bieber',
    37,
    '2024-04-18',
    'booked',
    19
  ),
(
    453,
    279,
    'Rex Orange County',
    NULL,
    '2025-11-14',
    'available',
    34
  ),
(
    454,
    220,
    'Chance the Rapper',
    NULL,
    '2025-11-14',
    'available',
    30
  ),
(
    455,
    132,
    'Soccer Mommy',
    14,
    '2025-06-11',
    'booked',
    42
  ),
(
    456,
    16,
    'Soccer Mommy',
    32,
    '2025-06-11',
    'booked',
    42
  ),
(457, 298, 'Rosalía', 10, '2025-06-11', 'booked', 23),
(458, 102, 'Ed Sheeran', 34, '2024-12-26', 'booked', 8),
(459, 163, 'Clairo', 17, '2024-06-22', 'booked', 39),
(460, 281, 'Ed Sheeran', 18, '2024-05-02', 'booked', 8),
(
    461,
    NULL,
    'Neon Harbor',
    NULL,
    '2026-12-26',
    'available',
    NULL
  ),
(
    462,
    341,
    'Ariana Grande',
    17,
    '2024-09-27',
    'booked',
    12
  ),
(
    463,
    344,
    'Echoes of Ember',
    NULL,
    '2026-02-14',
    'available',
    50
  ),
(
    464,
    85,
    'Neon Harbor',
    NULL,
    '2026-02-14',
    'available',
    46
  ),
(
    465,
    30,
    'Rex Orange County',
    NULL,
    '2026-02-14',
    'available',
    NULL
  ),
(
    466,
    340,
    'Billie Eilish',
    NULL,
    '2026-02-14',
    'available',
    NULL
  ),
(
    467,
    NULL,
    'Dua Lipa',
    39,
    '2026-04-10',
    'available',
    10
  ),
(
    468,
    202,
    'H.E.R.',
    25,
    '2026-07-10',
    'available',
    NULL
  ),
(
    469,
    9,
    'Silver Lining Syndicate',
    3,
    '2024-01-06',
    'booked',
    48
  ),
(
    470,
    229,
    'Mac DeMarco',
    10,
    '2024-01-06',
    'booked',
    40
  ),
(
    471,
    NULL,
    'J Balvin',
    3,
    '2026-06-17',
    'available',
    27
  ),
(472, 134, 'H.E.R.', 5, '2024-04-11', 'booked', 21),
(
    473,
    57,
    'Justin Bieber',
    12,
    '2024-08-14',
    'booked',
    19
  ),
(
    474,
    56,
    'Lana Del Rey',
    31,
    '2024-08-14',
    'booked',
    26
  ),
(475, 174, 'Ed Sheeran', 2, '2024-07-11', 'booked', 8),
(
    476,
    330,
    'Tash Sultana',
    40,
    '2026-11-19',
    'available',
    32
  ),
(477, 397, 'Doja Cat', 12, '2024-08-01', 'booked', 18),
(
    478,
    244,
    'Megan Thee Stallion',
    4,
    '2025-05-24',
    'booked',
    20
  ),
(479, 135, 'J Balvin', 36, '2025-01-03', 'booked', 27),
(
    480,
    349,
    'Silver Lining Syndicate',
    15,
    '2025-05-28',
    'booked',
    48
  ),
(
    481,
    8,
    'Kendrick Lamar',
    13,
    '2025-05-28',
    'booked',
    6
  ),
(
    482,
    134,
    'Bruno Mars',
    NULL,
    '2025-09-17',
    'available',
    11
  ),
(
    483,
    189,
    'Billie Eilish',
    14,
    '2026-03-26',
    'available',
    NULL
  ),
(484, 124, 'Rosalía', 20, '2025-01-24', 'booked', 23),
(485, 350, 'J Balvin', 9, '2025-01-24', 'booked', 27),
(486, 394, 'Clairo', 17, '2025-10-31', 'booked', 39),
(
    487,
    355,
    'Midnight Paradox',
    4,
    '2025-10-31',
    'booked',
    49
  ),
(
    488,
    NULL,
    'King Princess',
    39,
    '2026-07-03',
    'available',
    41
  ),
(
    489,
    NULL,
    'The Velvet Echoes',
    40,
    '2026-07-03',
    'available',
    45
  ),
(
    490,
    266,
    'Moses Sumney',
    6,
    '2024-08-16',
    'booked',
    37
  ),
(
    491,
    291,
    'Soccer Mommy',
    31,
    '2024-08-16',
    'booked',
    42
  ),
(
    492,
    18,
    'Kendrick Lamar',
    18,
    '2024-02-10',
    'booked',
    6
  ),
(493, 206, 'Ed Sheeran', 26, '2024-11-22', 'booked', 8),
(
    494,
    108,
    'Neon Harbor',
    22,
    '2026-03-18',
    'available',
    NULL
  ),
(
    495,
    295,
    'Rina Sawayama',
    NULL,
    '2026-08-20',
    'available',
    NULL
  ),
(496, 200, 'BLACKPINK', 6, '2024-11-29', 'booked', 25),
(497, 97, 'Moses Sumney', 4, '2025-12-27', 'booked', 37),
(498, 79, 'H.E.R.', 25, '2025-06-19', 'booked', 21),
(499, 307, 'Tom Misch', 1, '2025-06-26', 'booked', 36),
(
    500,
    325,
    'Justin Bieber',
    10,
    '2024-05-03',
    'booked',
    19
  ),
(501, 136, 'Snail Mail', 16, '2025-03-28', 'booked', 44),
(
    502,
    77,
    'Lana Del Rey',
    12,
    '2024-03-13',
    'booked',
    26
  ),
(
    503,
    354,
    'Billie Eilish',
    10,
    '2024-03-13',
    'booked',
    7
  ),
(504, 343, 'Ed Sheeran', 17, '2026-09-11', 'booked', 8),
(505, 327, 'Adele', 32, '2026-09-11', 'available', NULL),
(506, 320, 'Beyoncé', 13, '2025-12-17', 'booked', 1),
(
    507,
    207,
    'Megan Thee Stallion',
    NULL,
    '2026-06-19',
    'available',
    20
  ),
(
    508,
    388,
    'Rosalía',
    NULL,
    '2025-11-08',
    'available',
    23
  ),
(
    509,
    NULL,
    'Lana Del Rey',
    37,
    '2025-12-10',
    'available',
    26
  ),
(
    510,
    219,
    'Justin Bieber',
    20,
    '2024-12-20',
    'booked',
    19
  ),
(
    511,
    104,
    'Rina Sawayama',
    40,
    '2026-08-08',
    'booked',
    33
  ),
(
    512,
    148,
    'Mac DeMarco',
    34,
    '2025-11-19',
    'booked',
    40
  ),
(
    513,
    NULL,
    'Justin Bieber',
    28,
    '2025-10-17',
    'available',
    19
  ),
(
    514,
    48,
    'Rosalía',
    NULL,
    '2025-10-17',
    'available',
    23
  ),
(
    515,
    143,
    'Rex Orange County',
    2,
    '2024-06-05',
    'booked',
    34
  ),
(516, 166, 'Doja Cat', 37, '2024-04-27', 'booked', 18),
(
    517,
    273,
    'Mac DeMarco',
    16,
    '2025-06-21',
    'booked',
    40
  ),
(
    518,
    129,
    'Billie Eilish',
    12,
    '2024-09-28',
    'booked',
    7
  ),
(519, 374, 'Rosalía', 14, '2025-02-07', 'booked', 23),
(520, 318, 'J Balvin', 19, '2025-02-07', 'booked', 27),
(
    521,
    112,
    'Olivia Rodrigo',
    13,
    '2025-02-07',
    'booked',
    14
  ),
(
    522,
    203,
    'Echoes of Ember',
    14,
    '2024-01-31',
    'booked',
    50
  ),
(523, 33, 'BLACKPINK', 4, '2026-03-14', 'available', 25),
(
    524,
    150,
    'Japanese Breakfast',
    39,
    '2026-06-11',
    'booked',
    43
  ),
(
    525,
    387,
    'Kendrick Lamar',
    NULL,
    '2026-02-18',
    'available',
    6
  ),
(526, 352, 'H.E.R.', 22, '2025-10-15', 'booked', 21),
(
    527,
    394,
    'Billie Eilish',
    8,
    '2024-08-08',
    'booked',
    7
  ),
(528, 165, 'Rosalía', 16, '2024-02-09', 'booked', 23),
(529, 177, 'Adele', 18, '2024-11-23', 'booked', 5),
(
    530,
    NULL,
    'Doja Cat',
    NULL,
    '2026-10-28',
    'available',
    18
  ),
(531, 45, 'The Weeknd', 22, '2025-05-22', 'booked', 9),
(532, 392, 'Mac DeMarco', 3, '2026-08-26', 'booked', 40),
(533, 288, 'Taylor Swift', 1, '2024-06-14', 'booked', 3),
(
    534,
    292,
    'Chance the Rapper',
    17,
    '2024-06-07',
    'booked',
    30
  ),
(
    535,
    280,
    'Phoebe Bridgers',
    3,
    '2024-02-23',
    'booked',
    38
  ),
(
    536,
    198,
    'Mac DeMarco',
    19,
    '2024-02-23',
    'booked',
    40
  ),
(537, 158, 'Snail Mail', 5, '2024-05-22', 'booked', 44),
(
    538,
    97,
    'Japanese Breakfast',
    25,
    '2024-02-15',
    'booked',
    43
  ),
(
    539,
    35,
    'Soccer Mommy',
    12,
    '2024-05-08',
    'booked',
    42
  ),
(
    540,
    169,
    'King Princess',
    4,
    '2025-05-21',
    'booked',
    41
  ),
(541, 129, 'J Balvin', 35, '2025-05-21', 'booked', 27),
(542, 193, 'J Balvin', 36, '2024-11-16', 'booked', 27),
(543, 197, 'Ed Sheeran', 22, '2024-12-19', 'booked', 8),
(544, 148, 'Bruno Mars', 2, '2024-12-19', 'booked', 11),
(
    545,
    199,
    'Soccer Mommy',
    11,
    '2026-04-15',
    'booked',
    42
  ),
(
    546,
    174,
    'Kendrick Lamar',
    40,
    '2026-11-07',
    'available',
    NULL
  ),
(
    547,
    17,
    'Justin Bieber',
    5,
    '2026-05-29',
    'booked',
    19
  ),
(
    548,
    134,
    'Rex Orange County',
    38,
    '2024-10-02',
    'booked',
    34
  ),
(
    549,
    162,
    'Billie Eilish',
    16,
    '2024-10-02',
    'booked',
    7
  ),
(
    550,
    84,
    'Phoebe Bridgers',
    17,
    '2024-02-21',
    'booked',
    38
  ),
(
    551,
    149,
    'Billie Eilish',
    27,
    '2024-03-20',
    'booked',
    7
  ),
(
    552,
    NULL,
    'Mac DeMarco',
    NULL,
    '2026-11-14',
    'available',
    40
  ),
(
    553,
    25,
    'Japanese Breakfast',
    26,
    '2025-07-25',
    'booked',
    43
  ),
(554, 17, 'Rosalía', 38, '2025-07-25', 'booked', 23),
(
    555,
    NULL,
    'J Balvin',
    31,
    '2026-08-19',
    'available',
    27
  ),
(
    556,
    199,
    'Japanese Breakfast',
    4,
    '2026-08-19',
    'booked',
    43
  ),
(
    557,
    61,
    'Shawn Mendes',
    24,
    '2026-07-16',
    'booked',
    28
  ),
(558, 168, 'Bruno Mars', 34, '2024-12-12', 'booked', 11),
(559, 322, 'Doja Cat', 3, '2024-12-12', 'booked', 18),
(
    560,
    NULL,
    'Bruno Mars',
    NULL,
    '2026-01-14',
    'available',
    11
  ),
(
    561,
    258,
    'Silver Lining Syndicate',
    2,
    '2026-01-31',
    'booked',
    48
  ),
(562, 99, 'H.E.R.', 1, '2025-05-16', 'booked', 21),
(
    563,
    NULL,
    'Midnight Paradox',
    NULL,
    '2026-08-28',
    'available',
    49
  ),
(
    564,
    165,
    'The Velvet Echoes',
    1,
    '2025-03-12',
    'booked',
    45
  ),
(
    565,
    355,
    'Kendrick Lamar',
    17,
    '2024-02-24',
    'booked',
    6
  ),
(566, 130, 'Ed Sheeran', 18, '2026-04-16', 'booked', 8),
(
    567,
    358,
    'Ariana Grande',
    26,
    '2024-02-09',
    'booked',
    12
  ),
(
    568,
    333,
    'Neon Harbor',
    36,
    '2026-07-03',
    'booked',
    46
  ),
(569, 35, 'J Balvin', 11, '2026-07-09', 'booked', 27),
(
    570,
    44,
    'Megan Thee Stallion',
    3,
    '2026-06-20',
    'booked',
    20
  ),
(
    571,
    NULL,
    'Japanese Breakfast',
    15,
    '2026-03-06',
    'available',
    NULL
  ),
(
    572,
    136,
    'Kendrick Lamar',
    15,
    '2026-11-25',
    'available',
    NULL
  ),
(573, 381, 'Snail Mail', 24, '2025-04-26', 'booked', 44),
(
    574,
    90,
    'Macklemore',
    NULL,
    '2026-02-07',
    'available',
    31
  ),
(
    575,
    58,
    'Japanese Breakfast',
    2,
    '2025-09-06',
    'booked',
    43
  ),
(576, 189, 'H.E.R.', 14, '2024-11-01', 'booked', 21),
(577, 270, 'Adele', 2, '2024-11-15', 'booked', 5),
(
    578,
    NULL,
    'Rosalía',
    12,
    '2026-10-02',
    'available',
    NULL
  ),
(
    579,
    24,
    'Billie Eilish',
    19,
    '2025-12-06',
    'booked',
    7
  ),
(
    580,
    396,
    'Chance the Rapper',
    34,
    '2025-01-17',
    'booked',
    30
  ),
(581, 275, 'Ed Sheeran', 39, '2024-03-21', 'booked', 8),
(
    582,
    161,
    'Mac DeMarco',
    38,
    '2024-10-03',
    'booked',
    40
  ),
(
    583,
    332,
    'Snail Mail',
    37,
    '2026-07-22',
    'available',
    NULL
  ),
(584, 246, 'Bruno Mars', 3, '2024-06-08', 'booked', 11),
(
    585,
    29,
    'Justin Bieber',
    31,
    '2024-03-02',
    'booked',
    19
  ),
(586, 395, 'Adele', 28, '2025-02-21', 'booked', 5),
(
    587,
    212,
    'Shawn Mendes',
    31,
    '2024-05-08',
    'booked',
    28
  ),
(
    588,
    195,
    'Soccer Mommy',
    25,
    '2026-01-21',
    'available',
    42
  ),
(589, 73, 'Lana Del Rey', 8, '2024-07-24', 'booked', 26),
(
    590,
    126,
    'Shawn Mendes',
    12,
    '2024-11-21',
    'booked',
    28
  ),
(
    591,
    45,
    'Japanese Breakfast',
    14,
    '2026-05-21',
    'booked',
    43
  ),
(
    592,
    NULL,
    'Chance the Rapper',
    40,
    '2026-04-09',
    'available',
    30
  ),
(593, 28, 'Doja Cat', 27, '2026-09-18', 'booked', 18),
(
    594,
    383,
    'Kendrick Lamar',
    14,
    '2024-05-11',
    'booked',
    6
  ),
(595, 112, 'Drake', 17, '2024-10-02', 'booked', 2),
(596, 73, 'Doja Cat', 22, '2024-10-12', 'booked', 18),
(
    597,
    315,
    'Japanese Breakfast',
    15,
    '2024-06-07',
    'booked',
    43
  ),
(
    598,
    364,
    'Soccer Mommy',
    24,
    '2024-11-09',
    'booked',
    42
  ),
(
    599,
    117,
    'Billie Eilish',
    16,
    '2025-05-02',
    'booked',
    7
  ),
(600, 225, 'Doja Cat', 22, '2026-12-24', 'booked', 18),
(
    601,
    308,
    'Kendrick Lamar',
    22,
    '2025-02-27',
    'booked',
    6
  ),
(
    602,
    355,
    'Megan Thee Stallion',
    NULL,
    '2026-07-11',
    'available',
    20
  ),
(
    603,
    92,
    'Lana Del Rey',
    24,
    '2024-01-05',
    'booked',
    26
  ),
(
    604,
    36,
    'Megan Thee Stallion',
    22,
    '2026-06-05',
    'booked',
    20
  ),
(605, 261, 'Bruno Mars', 25, '2024-09-12', 'booked', 11),
(
    606,
    342,
    'Soccer Mommy',
    38,
    '2024-04-03',
    'booked',
    42
  ),
(
    607,
    315,
    'Rina Sawayama',
    13,
    '2025-05-14',
    'booked',
    33
  ),
(
    608,
    145,
    'Lana Del Rey',
    7,
    '2025-02-27',
    'booked',
    26
  ),
(
    609,
    NULL,
    'Taylor Swift',
    NULL,
    '2026-05-07',
    'available',
    NULL
  ),
(
    610,
    193,
    'Echoes of Ember',
    3,
    '2024-12-05',
    'booked',
    50
  ),
(
    611,
    315,
    'Tash Sultana',
    15,
    '2024-07-05',
    'booked',
    32
  ),
(612, 225, 'Lizzo', 15, '2024-03-02', 'booked', 17),
(
    613,
    148,
    'Silver Lining Syndicate',
    6,
    '2026-01-22',
    'booked',
    48
  ),
(
    614,
    389,
    'Kendrick Lamar',
    NULL,
    '2026-12-25',
    'available',
    NULL
  ),
(
    615,
    83,
    'Olivia Rodrigo',
    34,
    '2025-04-30',
    'booked',
    14
  ),
(
    616,
    270,
    'Crimson Alley',
    15,
    '2024-06-06',
    'booked',
    47
  ),
(617, 201, 'Clairo', 39, '2025-12-13', 'booked', 39),
(
    618,
    119,
    'Billie Eilish',
    31,
    '2025-12-13',
    'booked',
    7
  ),
(
    619,
    308,
    'Taylor Swift',
    39,
    '2024-01-06',
    'booked',
    3
  ),
(620, 119, 'Doja Cat', 20, '2026-08-08', 'booked', 18),
(
    621,
    NULL,
    'Billie Eilish',
    33,
    '2026-06-12',
    'available',
    7
  ),
(622, 3, NULL, 21, '2025-11-13', 'available', NULL),
(
    623,
    NULL,
    'Midnight Paradox',
    5,
    '2026-09-11',
    'available',
    NULL
  ),
(
    624,
    191,
    'Lana Del Rey',
    31,
    '2026-08-07',
    'booked',
    26
  ),
(
    625,
    91,
    'Olivia Rodrigo',
    4,
    '2025-09-20',
    'booked',
    14
  ),
(626, 253, 'SZA', 13, '2025-08-06', 'booked', 29),
(627, NULL, 'Adele', 11, '2026-02-04', 'available', 5),
(
    628,
    399,
    'Rosalía',
    NULL,
    '2026-10-23',
    'available',
    23
  ),
(629, 369, 'Doja Cat', 9, '2024-04-05', 'booked', 18),
(
    630,
    NULL,
    'Shawn Mendes',
    9,
    '2026-05-13',
    'available',
    28
  ),
(
    631,
    199,
    'Soccer Mommy',
    22,
    '2024-10-16',
    'booked',
    42
  ),
(632, 159, 'Snail Mail', 35, '2025-06-21', 'booked', 44),
(
    633,
    392,
    'Justin Bieber',
    23,
    '2024-01-04',
    'booked',
    19
  ),
(
    634,
    313,
    'Megan Thee Stallion',
    NULL,
    '2026-11-27',
    'available',
    20
  ),
(
    635,
    28,
    'Rex Orange County',
    10,
    '2024-07-13',
    'booked',
    34
  ),
(636, 225, 'Adele', 29, '2024-06-07', 'booked', 5),
(
    637,
    360,
    'Ed Sheeran',
    NULL,
    '2026-11-25',
    'available',
    8
  ),
(
    638,
    244,
    'Lana Del Rey',
    9,
    '2024-11-23',
    'booked',
    26
  ),
(639, 47, NULL, 39, '2025-09-11', 'available', NULL),
(
    640,
    226,
    'Soccer Mommy',
    12,
    '2026-07-09',
    'booked',
    42
  ),
(641, 108, 'J Balvin', 37, '2024-07-12', 'booked', 27),
(
    642,
    230,
    'Lana Del Rey',
    28,
    '2024-08-30',
    'booked',
    26
  ),
(
    643,
    180,
    'Bruno Mars',
    5,
    '2026-09-16',
    'available',
    11
  ),
(
    644,
    328,
    'Justin Bieber',
    20,
    '2025-12-10',
    'booked',
    19
  ),
(645, 195, 'Adele', 29, '2026-05-08', 'available', NULL),
(
    646,
    48,
    'Soccer Mommy',
    NULL,
    '2026-12-05',
    'available',
    NULL
  ),
(
    647,
    116,
    'Olivia Rodrigo',
    2,
    '2026-07-02',
    'booked',
    14
  ),
(648, 34, 'Mac DeMarco', 28, '2025-06-14', 'booked', 40),
(
    649,
    207,
    'Japanese Breakfast',
    14,
    '2024-03-16',
    'booked',
    43
  ),
(
    650,
    385,
    'Silver Lining Syndicate',
    18,
    '2025-08-01',
    'booked',
    48
  ),
(
    651,
    NULL,
    'Rex Orange County',
    NULL,
    '2026-11-05',
    'available',
    NULL
  ),
(
    652,
    132,
    'Neon Harbor',
    18,
    '2026-10-16',
    'booked',
    46
  ),
(653, 62, NULL, 3, '2025-12-12', 'available', NULL),
(
    654,
    NULL,
    'Snail Mail',
    10,
    '2026-07-08',
    'available',
    44
  ),
(655, 296, 'Doja Cat', 35, '2024-11-30', 'booked', 18),
(
    656,
    230,
    'Harry Styles',
    17,
    '2025-11-28',
    'booked',
    15
  ),
(657, 364, 'Post Malone', 2, '2025-10-17', 'booked', 13),
(658, 339, 'Ed Sheeran', 1, '2024-12-12', 'booked', 8),
(
    659,
    21,
    'Justin Bieber',
    8,
    '2025-07-05',
    'booked',
    19
  ),
(660, 102, 'Snail Mail', 11, '2024-11-15', 'booked', 44),
(
    661,
    NULL,
    'Echoes of Ember',
    32,
    '2026-08-19',
    'available',
    50
  ),
(
    662,
    NULL,
    'Doja Cat',
    NULL,
    '2026-12-12',
    'available',
    18
  ),
(
    663,
    NULL,
    'Clairo',
    NULL,
    '2026-11-11',
    'available',
    39
  ),
(664, 48, 'Mac DeMarco', 9, '2024-04-11', 'booked', 40),
(665, 384, 'J Balvin', 2, '2025-06-25', 'booked', 27),
(
    666,
    81,
    'Echoes of Ember',
    26,
    '2024-12-05',
    'booked',
    50
  ),
(
    667,
    266,
    'Billie Eilish',
    22,
    '2026-06-19',
    'available',
    7
  ),
(
    668,
    74,
    'J Balvin',
    7,
    '2026-09-26',
    'available',
    NULL
  ),
(669, 14, NULL, 29, '2025-12-17', 'available', NULL),
(670, 163, 'Bruno Mars', 36, '2025-03-12', 'booked', 11),
(671, 79, 'Post Malone', 18, '2024-04-19', 'booked', 13),
(
    672,
    68,
    'Olivia Rodrigo',
    17,
    '2025-07-10',
    'booked',
    14
  ),
(673, 101, 'J Balvin', 33, '2026-07-09', 'booked', 27),
(
    674,
    NULL,
    'Olivia Rodrigo',
    NULL,
    '2026-08-29',
    'available',
    14
  ),
(675, 19, 'Drake', 40, '2024-06-08', 'booked', 2),
(
    676,
    153,
    'Silver Lining Syndicate',
    14,
    '2024-04-04',
    'booked',
    48
  ),
(
    677,
    270,
    'Snail Mail',
    32,
    '2026-11-11',
    'available',
    NULL
  ),
(
    678,
    86,
    'Kendrick Lamar',
    32,
    '2025-01-15',
    'booked',
    6
  ),
(
    679,
    331,
    'Rex Orange County',
    30,
    '2026-07-18',
    'booked',
    34
  ),
(
    680,
    46,
    'Rex Orange County',
    30,
    '2024-08-15',
    'booked',
    34
  ),
(
    681,
    47,
    'Ariana Grande',
    1,
    '2026-12-19',
    'available',
    12
  ),
(
    682,
    NULL,
    'Adele',
    31,
    '2026-07-11',
    'available',
    NULL
  ),
(683, 57, 'Post Malone', 34, '2024-01-05', 'booked', 13),
(684, 311, 'H.E.R.', 1, '2026-01-09', 'available', 21),
(
    685,
    101,
    'Rina Sawayama',
    3,
    '2025-08-01',
    'booked',
    33
  ),
(
    686,
    349,
    'FKJ (French Kiwi Juice)',
    4,
    '2025-02-01',
    'booked',
    35
  ),
(
    687,
    76,
    'Shawn Mendes',
    38,
    '2025-08-15',
    'booked',
    28
  ),
(
    688,
    303,
    'Shawn Mendes',
    3,
    '2025-05-28',
    'booked',
    28
  ),
(689, 58, 'Rosalía', 25, '2025-04-11', 'booked', 23),
(
    690,
    213,
    'BLACKPINK',
    NULL,
    '2026-12-04',
    'available',
    25
  ),
(
    691,
    187,
    'Megan Thee Stallion',
    32,
    '2024-03-02',
    'booked',
    20
  ),
(692, 85, 'Clairo', 25, '2024-08-21', 'booked', 39),
(
    693,
    266,
    'Olivia Rodrigo',
    13,
    '2024-01-26',
    'booked',
    14
  ),
(694, 124, 'SZA', 4, '2026-06-25', 'available', 29),
(
    695,
    299,
    'Rex Orange County',
    14,
    '2024-07-27',
    'booked',
    34
  ),
(
    696,
    214,
    'Justin Bieber',
    19,
    '2024-10-30',
    'booked',
    19
  ),
(697, 312, 'H.E.R.', 32, '2025-01-09', 'booked', 21),
(
    698,
    375,
    'Tash Sultana',
    4,
    '2024-01-06',
    'booked',
    32
  ),
(699, 116, 'BTS', NULL, '2025-10-09', 'available', 4),
(
    700,
    214,
    'Rina Sawayama',
    32,
    '2025-11-26',
    'booked',
    33
  ),
(
    701,
    139,
    'Rosalía',
    NULL,
    '2025-10-18',
    'available',
    23
  ),
(
    702,
    296,
    'Chance the Rapper',
    18,
    '2025-05-14',
    'booked',
    30
  ),
(703, 61, 'Snail Mail', 38, '2025-04-10', 'booked', 44),
(
    704,
    218,
    'Echoes of Ember',
    1,
    '2025-06-14',
    'booked',
    50
  ),
(
    705,
    388,
    'Megan Thee Stallion',
    36,
    '2024-09-20',
    'booked',
    20
  ),
(
    706,
    310,
    'Travis Scott',
    39,
    '2024-06-01',
    'booked',
    24
  ),
(707, 320, 'Doja Cat', 21, '2024-10-04', 'booked', 18),
(708, 56, 'Beyoncé', 13, '2026-02-11', 'booked', 1),
(709, 299, 'BTS', 39, '2024-11-15', 'booked', 4),
(710, 5, 'J Balvin', 3, '2025-04-10', 'booked', 27),
(
    711,
    NULL,
    'Snail Mail',
    28,
    '2026-10-09',
    'available',
    44
  ),
(
    712,
    95,
    'Rina Sawayama',
    39,
    '2026-07-01',
    'booked',
    33
  ),
(
    713,
    74,
    'Olivia Rodrigo',
    40,
    '2025-09-18',
    'booked',
    14
  ),
(
    714,
    194,
    'Phoebe Bridgers',
    25,
    '2025-05-31',
    'booked',
    38
  ),
(715, 398, 'Mac DeMarco', 7, '2024-11-23', 'booked', 40),
(
    716,
    252,
    'Lana Del Rey',
    33,
    '2024-02-03',
    'booked',
    26
  ),
(
    717,
    16,
    'Midnight Paradox',
    5,
    '2024-07-26',
    'booked',
    49
  ),
(
    718,
    382,
    'Billie Eilish',
    28,
    '2025-08-15',
    'booked',
    7
  ),
(719, 151, 'Adele', 23, '2025-07-26', 'booked', 5),
(
    720,
    113,
    'Phoebe Bridgers',
    22,
    '2026-12-26',
    'available',
    38
  ),
(721, 285, 'Ed Sheeran', 15, '2024-08-15', 'booked', 8),
(
    722,
    273,
    'Neon Harbor',
    13,
    '2026-08-19',
    'booked',
    46
  ),
(
    723,
    342,
    'Lana Del Rey',
    16,
    '2025-03-21',
    'booked',
    26
  ),
(
    724,
    271,
    'Japanese Breakfast',
    17,
    '2024-05-01',
    'booked',
    43
  ),
(725, 76, 'Ed Sheeran', 17, '2025-07-02', 'booked', 8),
(
    726,
    35,
    'Shawn Mendes',
    24,
    '2025-01-09',
    'booked',
    28
  ),
(
    727,
    273,
    'Rina Sawayama',
    15,
    '2024-07-25',
    'booked',
    33
  ),
(728, 262, 'Rosalía', 35, '2025-06-21', 'booked', 23),
(
    729,
    NULL,
    'Kendrick Lamar',
    17,
    '2026-03-19',
    'available',
    6
  ),
(
    730,
    125,
    'Mac DeMarco',
    23,
    '2025-07-11',
    'booked',
    40
  ),
(
    731,
    NULL,
    'Olivia Rodrigo',
    26,
    '2025-09-20',
    'available',
    14
  ),
(732, 278, 'Adele', 5, '2024-01-24', 'booked', 5),
(733, 97, 'BTS', 13, '2024-02-29', 'booked', 4),
(
    734,
    165,
    'Japanese Breakfast',
    18,
    '2025-03-12',
    'booked',
    43
  ),
(
    735,
    210,
    'Soccer Mommy',
    19,
    '2025-08-29',
    'booked',
    42
  ),
(
    736,
    398,
    'The Weeknd',
    17,
    '2026-05-30',
    'available',
    9
  ),
(
    737,
    117,
    'Tash Sultana',
    4,
    '2025-03-13',
    'booked',
    32
  ),
(738, 252, 'Snail Mail', 19, '2024-01-12', 'booked', 44),
(739, 18, 'Clairo', 1, '2024-01-26', 'booked', 39),
(
    740,
    188,
    'Rex Orange County',
    25,
    '2024-10-03',
    'booked',
    34
  ),
(741, 14, 'Shawn Mendes', 7, '2025-04-23', 'booked', 28),
(
    742,
    117,
    'Billie Eilish',
    32,
    '2024-02-16',
    'booked',
    7
  ),
(
    743,
    17,
    'Echoes of Ember',
    NULL,
    '2025-12-17',
    'available',
    50
  ),
(744, 207, 'Adele', 16, '2025-12-17', 'booked', 5),
(745, 182, 'Adele', 31, '2025-07-03', 'booked', 5),
(
    746,
    163,
    'Soccer Mommy',
    24,
    '2025-03-20',
    'booked',
    42
  ),
(
    747,
    63,
    'Bruno Mars',
    NULL,
    '2026-12-18',
    'available',
    11
  ),
(
    748,
    NULL,
    'Justin Bieber',
    36,
    '2026-03-28',
    'available',
    19
  ),
(
    749,
    245,
    'Soccer Mommy',
    22,
    '2025-03-22',
    'booked',
    42
  ),
(750, 36, 'Clairo', 40, '2026-07-15', 'available', NULL),
(
    751,
    194,
    'Lana Del Rey',
    32,
    '2026-04-22',
    'available',
    NULL
  ),
(
    752,
    NULL,
    'Olivia Rodrigo',
    NULL,
    '2026-11-26',
    'available',
    NULL
  ),
(753, 104, 'Lil Nas X', 15, '2024-06-15', 'booked', 22),
(
    754,
    141,
    'Olivia Rodrigo',
    14,
    '2026-09-26',
    'available',
    NULL
  ),
(
    755,
    112,
    'Mac DeMarco',
    12,
    '2026-02-21',
    'booked',
    40
  ),
(
    756,
    97,
    'Chance the Rapper',
    4,
    '2024-12-07',
    'booked',
    30
  ),
(
    757,
    240,
    'Midnight Paradox',
    15,
    '2024-03-07',
    'booked',
    49
  ),
(
    758,
    NULL,
    'Mac DeMarco',
    29,
    '2026-07-10',
    'available',
    40
  ),
(
    759,
    NULL,
    'Midnight Paradox',
    NULL,
    '2026-09-11',
    'available',
    NULL
  ),
(
    760,
    128,
    'Echoes of Ember',
    36,
    '2024-07-04',
    'booked',
    50
  ),
(
    761,
    372,
    'Rosalía',
    36,
    '2026-02-12',
    'available',
    NULL
  ),
(
    762,
    342,
    'Olivia Rodrigo',
    6,
    '2026-07-15',
    'booked',
    14
  ),
(
    763,
    70,
    'Mac DeMarco',
    NULL,
    '2026-09-09',
    'available',
    40
  ),
(
    764,
    NULL,
    'Soccer Mommy',
    NULL,
    '2026-07-15',
    'available',
    NULL
  ),
(765, 97, 'Drake', 39, '2025-01-09', 'booked', 2),
(766, 46, 'Adele', 3, '2025-07-03', 'booked', 5),
(
    767,
    393,
    'Silver Lining Syndicate',
    39,
    '2025-07-09',
    'booked',
    48
  ),
(
    768,
    37,
    'Justin Bieber',
    30,
    '2024-05-09',
    'booked',
    19
  ),
(
    769,
    301,
    'Snail Mail',
    NULL,
    '2026-06-03',
    'available',
    NULL
  ),
(
    770,
    247,
    'Mac DeMarco',
    12,
    '2025-04-30',
    'booked',
    40
  ),
(
    771,
    160,
    'Ed Sheeran',
    3,
    '2026-11-06',
    'available',
    8
  ),
(
    772,
    256,
    'Chance the Rapper',
    1,
    '2026-04-25',
    'booked',
    30
  ),
(773, 393, 'Doja Cat', 8, '2025-01-22', 'booked', 18),
(774, 279, NULL, 13, '2025-09-17', 'available', NULL),
(775, 106, 'Macklemore', 6, '2025-01-30', 'booked', 31),
(
    776,
    311,
    'Lana Del Rey',
    36,
    '2025-07-05',
    'booked',
    26
  ),
(
    777,
    46,
    'Megan Thee Stallion',
    6,
    '2024-10-10',
    'booked',
    20
  ),
(
    778,
    70,
    'Rex Orange County',
    27,
    '2026-12-02',
    'booked',
    34
  ),
(
    779,
    335,
    'Olivia Rodrigo',
    NULL,
    '2026-12-30',
    'available',
    NULL
  ),
(780, 270, 'H.E.R.', 3, '2024-07-03', 'booked', 21),
(781, 314, NULL, 2, '2025-10-18', 'available', NULL),
(782, 376, 'The Weeknd', 17, '2025-11-12', 'booked', 9),
(783, 296, 'Adele', 5, '2025-04-19', 'booked', 5),
(
    784,
    64,
    'H.E.R.',
    NULL,
    '2026-09-19',
    'available',
    NULL
  ),
(
    785,
    34,
    'Justin Bieber',
    8,
    '2026-05-14',
    'booked',
    19
  ),
(
    786,
    155,
    'Shawn Mendes',
    19,
    '2024-07-17',
    'booked',
    28
  ),
(787, 1, 'Rosalía', 14, '2024-10-26', 'booked', 23),
(788, 55, 'Snail Mail', 33, '2025-07-05', 'booked', 44),
(
    789,
    384,
    'Lana Del Rey',
    3,
    '2024-06-12',
    'booked',
    26
  ),
(
    790,
    NULL,
    'Phoebe Bridgers',
    15,
    '2026-03-06',
    'available',
    NULL
  ),
(
    791,
    247,
    'Olivia Rodrigo',
    25,
    '2026-11-12',
    'available',
    14
  ),
(
    792,
    222,
    'Echoes of Ember',
    NULL,
    '2026-03-13',
    'available',
    NULL
  ),
(793, 119, NULL, 23, '2025-10-15', 'available', NULL),
(
    794,
    185,
    'Megan Thee Stallion',
    5,
    '2025-08-15',
    'booked',
    20
  ),
(
    795,
    388,
    'Soccer Mommy',
    20,
    '2026-02-05',
    'available',
    NULL
  ),
(
    796,
    238,
    'Shawn Mendes',
    36,
    '2026-10-24',
    'booked',
    28
  ),
(
    797,
    NULL,
    'Billie Eilish',
    NULL,
    '2026-04-08',
    'available',
    7
  ),
(798, 25, 'Mac DeMarco', 9, '2025-11-20', 'booked', 40),
(
    799,
    138,
    'Justin Bieber',
    38,
    '2024-12-04',
    'booked',
    19
  ),
(
    800,
    307,
    'Justin Bieber',
    35,
    '2024-03-13',
    'booked',
    19
  ),
(801, 42, 'Rosalía', 19, '2025-03-26', 'booked', 23),
(
    802,
    352,
    'Mac DeMarco',
    36,
    '2025-02-07',
    'booked',
    40
  ),
(
    803,
    235,
    'Bruno Mars',
    NULL,
    '2025-10-10',
    'available',
    11
  ),
(
    804,
    75,
    'Shawn Mendes',
    29,
    '2024-06-20',
    'booked',
    28
  ),
(
    805,
    NULL,
    'Billie Eilish',
    9,
    '2026-08-26',
    'available',
    7
  ),
(
    806,
    83,
    'Rex Orange County',
    21,
    '2026-02-14',
    'available',
    34
  ),
(807, 135, 'H.E.R.', 40, '2026-01-15', 'booked', 21),
(
    808,
    207,
    'Mac DeMarco',
    38,
    '2025-02-14',
    'booked',
    40
  ),
(809, 352, 'Doja Cat', 34, '2025-07-11', 'booked', 18),
(
    810,
    NULL,
    'Lana Del Rey',
    NULL,
    '2026-08-12',
    'available',
    26
  ),
(
    811,
    204,
    'Silver Lining Syndicate',
    34,
    '2024-10-18',
    'booked',
    48
  ),
(
    812,
    286,
    'Shawn Mendes',
    37,
    '2026-01-21',
    'available',
    NULL
  ),
(
    813,
    NULL,
    'Rex Orange County',
    NULL,
    '2026-08-06',
    'available',
    NULL
  ),
(
    814,
    260,
    'Chance the Rapper',
    6,
    '2025-04-23',
    'booked',
    30
  ),
(
    815,
    57,
    'Mac DeMarco',
    NULL,
    '2026-03-12',
    'available',
    40
  ),
(
    816,
    50,
    'Rina Sawayama',
    26,
    '2024-10-19',
    'booked',
    33
  ),
(
    817,
    166,
    'Soccer Mommy',
    NULL,
    '2026-10-01',
    'available',
    42
  ),
(
    818,
    30,
    'Taylor Swift',
    NULL,
    '2025-11-26',
    'available',
    3
  ),
(819, 50, 'Snail Mail', 30, '2026-03-25', 'booked', 44),
(
    820,
    129,
    'Lana Del Rey',
    14,
    '2024-10-17',
    'booked',
    26
  ),
(821, 257, 'Doja Cat', 25, '2024-07-18', 'booked', 18),
(822, 92, 'H.E.R.', NULL, '2025-12-13', 'available', 21),
(
    823,
    342,
    'Justin Bieber',
    38,
    '2026-12-23',
    'available',
    NULL
  ),
(824, 171, 'Doja Cat', 31, '2024-05-10', 'booked', 18),
(
    825,
    230,
    'Phoebe Bridgers',
    17,
    '2025-08-14',
    'booked',
    38
  ),
(
    826,
    228,
    'Soccer Mommy',
    33,
    '2025-10-11',
    'booked',
    42
  ),
(827, 368, 'Lil Nas X', 4, '2025-06-28', 'booked', 22),
(828, 109, 'Post Malone', 1, '2026-12-31', 'booked', 13),
(829, 131, 'Doja Cat', 7, '2024-04-17', 'booked', 18),
(
    830,
    285,
    'Post Malone',
    17,
    '2025-07-16',
    'booked',
    13
  ),
(831, 239, 'Dua Lipa', 40, '2025-08-15', 'booked', 10),
(
    832,
    231,
    'Neon Harbor',
    13,
    '2024-07-27',
    'booked',
    46
  ),
(
    833,
    154,
    'Lana Del Rey',
    16,
    '2024-03-09',
    'booked',
    26
  ),
(834, 60, 'Ed Sheeran', 39, '2025-04-05', 'booked', 8),
(835, 21, 'The Weeknd', 13, '2025-04-03', 'booked', 9),
(836, NULL, 'Adele', NULL, '2026-03-28', 'available', 5),
(
    837,
    NULL,
    'Shawn Mendes',
    33,
    '2026-04-16',
    'available',
    NULL
  ),
(
    838,
    NULL,
    'Phoebe Bridgers',
    NULL,
    '2026-11-05',
    'available',
    NULL
  ),
(
    839,
    NULL,
    'Olivia Rodrigo',
    15,
    '2026-04-16',
    'available',
    NULL
  ),
(840, 60, 'Post Malone', 13, '2025-05-23', 'booked', 13),
(
    841,
    166,
    'Billie Eilish',
    37,
    '2024-11-21',
    'booked',
    7
  ),
(842, 185, 'The Weeknd', 32, '2026-06-24', 'booked', 9),
(843, 200, 'Bruno Mars', 20, '2024-06-21', 'booked', 11),
(
    844,
    305,
    'Olivia Rodrigo',
    3,
    '2025-10-02',
    'booked',
    14
  ),
(845, 190, 'H.E.R.', 40, '2024-05-29', 'booked', 21),
(846, 272, 'Rosalía', 22, '2024-06-12', 'booked', 23),
(
    847,
    229,
    'Post Malone',
    13,
    '2024-12-18',
    'booked',
    13
  ),
(
    848,
    234,
    'Lana Del Rey',
    36,
    '2024-01-31',
    'booked',
    26
  ),
(
    849,
    329,
    'Lana Del Rey',
    35,
    '2026-06-27',
    'available',
    NULL
  ),
(
    850,
    367,
    'Soccer Mommy',
    38,
    '2026-12-19',
    'booked',
    42
  ),
(
    851,
    180,
    'Bruno Mars',
    10,
    '2026-10-02',
    'available',
    NULL
  ),
(
    852,
    102,
    'Soccer Mommy',
    33,
    '2024-09-21',
    'booked',
    42
  ),
(
    853,
    316,
    'Billie Eilish',
    NULL,
    '2026-09-24',
    'available',
    7
  ),
(
    854,
    NULL,
    'Lana Del Rey',
    NULL,
    '2026-08-29',
    'available',
    NULL
  ),
(
    855,
    NULL,
    'Shawn Mendes',
    NULL,
    '2026-09-16',
    'available',
    28
  ),
(856, 357, NULL, 30, '2025-12-12', 'available', NULL),
(
    857,
    198,
    'Mac DeMarco',
    37,
    '2024-11-06',
    'booked',
    40
  ),
(
    858,
    219,
    'Neon Harbor',
    26,
    '2025-05-28',
    'booked',
    46
  ),
(
    859,
    NULL,
    'Rex Orange County',
    NULL,
    '2026-05-08',
    'available',
    NULL
  ),
(
    860,
    347,
    'Doja Cat',
    NULL,
    '2026-01-09',
    'available',
    18
  ),
(861, 17, 'Mac DeMarco', 31, '2025-01-11', 'booked', 40),
(
    862,
    133,
    'Echoes of Ember',
    6,
    '2025-05-03',
    'booked',
    50
  ),
(
    863,
    NULL,
    'Neon Harbor',
    NULL,
    '2026-09-10',
    'available',
    NULL
  ),
(864, 146, 'J Balvin', 5, '2024-06-05', 'booked', 27),
(
    865,
    138,
    'Kendrick Lamar',
    18,
    '2026-06-13',
    'booked',
    6
  ),
(
    866,
    175,
    'J Balvin',
    NULL,
    '2026-09-24',
    'available',
    NULL
  ),
(
    867,
    383,
    'Moses Sumney',
    40,
    '2026-01-29',
    'available',
    37
  ),
(868, 351, 'Dua Lipa', 17, '2024-01-05', 'booked', 10),
(
    869,
    56,
    'Japanese Breakfast',
    32,
    '2024-07-20',
    'booked',
    43
  ),
(
    870,
    293,
    'Japanese Breakfast',
    18,
    '2026-08-05',
    'available',
    NULL
  ),
(
    871,
    152,
    'Moses Sumney',
    1,
    '2024-03-30',
    'booked',
    37
  ),
(872, 44, 'Ed Sheeran', 39, '2026-04-09', 'booked', 8),
(
    873,
    NULL,
    'Mac DeMarco',
    NULL,
    '2026-09-04',
    'available',
    40
  ),
(
    874,
    162,
    'Billie Eilish',
    14,
    '2024-03-06',
    'booked',
    7
  ),
(875, 80, 'Bruno Mars', 20, '2025-04-02', 'booked', 11),
(
    876,
    127,
    'Shawn Mendes',
    NULL,
    '2026-09-04',
    'available',
    28
  ),
(877, 60, 'Neon Harbor', 26, '2026-04-18', 'booked', 46),
(878, 74, 'Mac DeMarco', 21, '2024-12-07', 'booked', 40),
(
    879,
    205,
    'Rosalía',
    NULL,
    '2026-05-15',
    'available',
    23
  ),
(
    880,
    378,
    'Megan Thee Stallion',
    6,
    '2025-11-29',
    'booked',
    20
  ),
(
    881,
    307,
    'Soccer Mommy',
    30,
    '2024-01-05',
    'booked',
    42
  ),
(882, 76, 'Neon Harbor', 5, '2026-07-16', 'booked', 46),
(883, NULL, 'Adele', 25, '2026-09-09', 'available', 5),
(884, 271, 'Doja Cat', 24, '2025-03-28', 'booked', 18),
(885, 200, 'Adele', 12, '2024-03-13', 'booked', 5),
(
    886,
    234,
    'Phoebe Bridgers',
    NULL,
    '2026-09-05',
    'available',
    38
  ),
(887, 147, 'Rosalía', 3, '2025-05-03', 'booked', 23),
(888, 257, 'Clairo', 22, '2024-03-06', 'booked', 39),
(
    889,
    280,
    'Echoes of Ember',
    15,
    '2025-10-04',
    'booked',
    50
  ),
(
    890,
    224,
    'Rina Sawayama',
    2,
    '2024-12-05',
    'booked',
    33
  ),
(891, 231, 'Ed Sheeran', 18, '2025-04-12', 'booked', 8),
(
    892,
    172,
    'Japanese Breakfast',
    22,
    '2024-09-25',
    'booked',
    43
  ),
(893, 364, 'J Balvin', 28, '2024-04-12', 'booked', 27),
(894, 118, 'Doja Cat', 14, '2025-12-04', 'booked', 18),
(
    895,
    NULL,
    'Justin Bieber',
    37,
    '2026-03-19',
    'available',
    NULL
  ),
(
    896,
    272,
    'Phoebe Bridgers',
    14,
    '2024-02-23',
    'booked',
    38
  ),
(
    897,
    42,
    'Lana Del Rey',
    31,
    '2025-05-09',
    'booked',
    26
  ),
(898, 87, 'J Balvin', 7, '2024-02-02', 'booked', 27),
(
    899,
    NULL,
    'Soccer Mommy',
    22,
    '2026-10-09',
    'available',
    NULL
  ),
(
    900,
    NULL,
    'Adele',
    35,
    '2026-12-26',
    'available',
    NULL
  ),
(901, 145, 'Clairo', 34, '2025-05-29', 'booked', 39),
(
    902,
    296,
    'Soccer Mommy',
    8,
    '2025-03-05',
    'booked',
    42
  ),
(903, 378, 'H.E.R.', 13, '2024-06-15', 'booked', 21),
(
    904,
    247,
    'Rex Orange County',
    NULL,
    '2026-05-29',
    'available',
    NULL
  ),
(905, 366, 'The Weeknd', 1, '2025-01-17', 'booked', 9),
(906, 103, 'Snail Mail', 35, '2024-10-25', 'booked', 44),
(
    907,
    349,
    'J Balvin',
    NULL,
    '2026-10-07',
    'available',
    27
  ),
(908, 86, 'Adele', 19, '2025-04-25', 'booked', 5),
(
    909,
    301,
    'Mac DeMarco',
    2,
    '2026-08-28',
    'available',
    40
  ),
(
    910,
    354,
    'Bruno Mars',
    NULL,
    '2026-08-14',
    'available',
    11
  ),
(911, 186, 'Adele', 22, '2024-01-20', 'booked', 5),
(912, 155, 'Clairo', 1, '2025-05-16', 'booked', 39),
(
    913,
    307,
    'Rina Sawayama',
    NULL,
    '2026-06-06',
    'available',
    33
  ),
(914, 284, 'Clairo', 36, '2024-07-25', 'booked', 39),
(
    915,
    278,
    'Shawn Mendes',
    2,
    '2025-02-15',
    'booked',
    28
  ),
(916, 228, 'Adele', 16, '2024-09-11', 'booked', 5),
(
    917,
    146,
    'Neon Harbor',
    14,
    '2024-10-25',
    'booked',
    46
  ),
(
    918,
    257,
    'Soccer Mommy',
    11,
    '2025-08-21',
    'booked',
    42
  ),
(919, 226, 'H.E.R.', 17, '2024-04-25', 'booked', 21),
(920, 59, NULL, 34, '2025-11-13', 'available', NULL),
(921, 105, 'Doja Cat', 11, '2024-04-11', 'booked', 18),
(922, 62, 'Rosalía', 31, '2024-11-15', 'booked', 23),
(
    923,
    273,
    'Shawn Mendes',
    20,
    '2025-09-18',
    'booked',
    28
  ),
(
    924,
    234,
    'Megan Thee Stallion',
    25,
    '2026-09-09',
    'booked',
    20
  ),
(925, 357, 'The Weeknd', 34, '2024-09-26', 'booked', 9),
(926, 112, 'J Balvin', 38, '2026-07-08', 'booked', 27),
(927, 128, 'Snail Mail', 9, '2024-11-07', 'booked', 44),
(
    928,
    4,
    'Echoes of Ember',
    NULL,
    '2026-10-23',
    'available',
    NULL
  ),
(
    929,
    362,
    'Rex Orange County',
    19,
    '2026-02-12',
    'booked',
    34
  ),
(
    930,
    143,
    'Justin Bieber',
    NULL,
    '2026-09-16',
    'available',
    NULL
  ),
(
    931,
    232,
    'Shawn Mendes',
    28,
    '2025-05-29',
    'booked',
    28
  ),
(932, 267, 'The Weeknd', 36, '2024-02-07', 'booked', 9),
(
    933,
    NULL,
    'Rex Orange County',
    37,
    '2026-07-09',
    'available',
    NULL
  ),
(
    934,
    217,
    'Lana Del Rey',
    NULL,
    '2025-12-27',
    'available',
    26
  ),
(
    935,
    NULL,
    'Rex Orange County',
    18,
    '2026-01-30',
    'available',
    NULL
  ),
(936, 350, 'J Balvin', 35, '2024-08-16', 'booked', 27),
(
    937,
    36,
    'Megan Thee Stallion',
    3,
    '2024-04-10',
    'booked',
    20
  ),
(
    938,
    NULL,
    'Megan Thee Stallion',
    40,
    '2025-11-05',
    'available',
    20
  ),
(939, 89, 'Bruno Mars', 24, '2026-09-05', 'booked', 11),
(
    940,
    270,
    'Justin Bieber',
    21,
    '2024-10-30',
    'booked',
    19
  ),
(
    941,
    151,
    'Post Malone',
    32,
    '2024-05-29',
    'booked',
    13
  ),
(942, 342, 'Bruno Mars', 16, '2024-08-09', 'booked', 11),
(
    943,
    380,
    'Mac DeMarco',
    34,
    '2024-05-17',
    'booked',
    40
  ),
(944, 131, NULL, 10, '2025-11-01', 'available', NULL),
(945, 191, 'SZA', 40, '2024-08-10', 'booked', 29),
(
    946,
    311,
    'J Balvin',
    NULL,
    '2026-02-28',
    'available',
    NULL
  ),
(
    947,
    291,
    'Billie Eilish',
    3,
    '2024-07-04',
    'booked',
    7
  ),
(
    948,
    236,
    'Billie Eilish',
    20,
    '2024-02-17',
    'booked',
    7
  ),
(
    949,
    383,
    'Justin Bieber',
    32,
    '2024-12-05',
    'booked',
    19
  ),
(
    950,
    305,
    'Justin Bieber',
    22,
    '2024-02-28',
    'booked',
    19
  ),
(
    951,
    193,
    'Silver Lining Syndicate',
    32,
    '2025-10-24',
    'booked',
    48
  ),
(
    952,
    186,
    'Soccer Mommy',
    10,
    '2025-05-10',
    'booked',
    42
  ),
(
    953,
    101,
    'Billie Eilish',
    11,
    '2024-08-29',
    'booked',
    7
  ),
(954, 117, 'The Weeknd', 18, '2026-07-24', 'booked', 9),
(
    955,
    153,
    'Mac DeMarco',
    25,
    '2024-01-13',
    'booked',
    40
  ),
(
    956,
    331,
    'Midnight Paradox',
    13,
    '2024-07-19',
    'booked',
    49
  ),
(
    957,
    34,
    'Crimson Alley',
    15,
    '2025-09-13',
    'booked',
    47
  ),
(
    958,
    35,
    'Justin Bieber',
    24,
    '2024-03-28',
    'booked',
    19
  ),
(959, 293, 'J Balvin', 14, '2025-03-22', 'booked', 27),
(
    960,
    343,
    'Japanese Breakfast',
    22,
    '2025-06-12',
    'booked',
    43
  ),
(
    961,
    281,
    'Rina Sawayama',
    1,
    '2024-12-13',
    'booked',
    33
  ),
(
    962,
    28,
    'Justin Bieber',
    28,
    '2024-03-08',
    'booked',
    19
  ),
(
    963,
    NULL,
    'Shawn Mendes',
    32,
    '2026-07-16',
    'available',
    28
  ),
(
    964,
    168,
    'Justin Bieber',
    30,
    '2025-05-22',
    'booked',
    19
  ),
(
    965,
    89,
    'Japanese Breakfast',
    4,
    '2025-08-27',
    'booked',
    43
  ),
(
    966,
    NULL,
    'Shawn Mendes',
    NULL,
    '2026-07-17',
    'available',
    NULL
  ),
(
    967,
    20,
    'Midnight Paradox',
    39,
    '2024-05-10',
    'booked',
    49
  ),
(968, 345, 'H.E.R.', 25, '2024-08-30', 'booked', 21),
(
    969,
    47,
    'Japanese Breakfast',
    40,
    '2026-04-22',
    'booked',
    43
  ),
(970, 158, 'Rosalía', 29, '2025-04-16', 'booked', 23),
(
    971,
    242,
    'Rex Orange County',
    31,
    '2025-10-01',
    'booked',
    34
  ),
(972, 351, 'Adele', 14, '2026-11-20', 'available', 5),
(
    973,
    156,
    'Shawn Mendes',
    8,
    '2026-03-07',
    'available',
    28
  ),
(
    974,
    275,
    'Soccer Mommy',
    27,
    '2024-06-12',
    'booked',
    42
  ),
(
    975,
    NULL,
    'J Balvin',
    NULL,
    '2026-03-05',
    'available',
    27
  ),
(
    976,
    235,
    'Billie Eilish',
    NULL,
    '2025-09-11',
    'available',
    7
  ),
(
    977,
    290,
    'Billie Eilish',
    8,
    '2026-11-18',
    'booked',
    7
  ),
(
    978,
    185,
    'Silver Lining Syndicate',
    25,
    '2025-08-29',
    'booked',
    48
  ),
(979, 38, 'Mac DeMarco', 29, '2024-12-07', 'booked', 40),
(
    980,
    NULL,
    'Mac DeMarco',
    24,
    '2026-05-22',
    'available',
    40
  ),
(981, 45, 'Doja Cat', 12, '2025-05-14', 'booked', 18),
(
    982,
    NULL,
    'Mac DeMarco',
    NULL,
    '2026-09-23',
    'available',
    NULL
  ),
(
    983,
    31,
    'Shawn Mendes',
    34,
    '2024-08-28',
    'booked',
    28
  ),
(984, 281, 'Rosalía', 7, '2026-07-16', 'booked', 23),
(985, 85, NULL, 3, '2025-09-25', 'available', NULL),
(986, 128, 'H.E.R.', 36, '2025-05-08', 'booked', 21),
(
    987,
    46,
    'Kendrick Lamar',
    13,
    '2024-08-10',
    'booked',
    6
  ),
(988, 112, 'H.E.R.', 26, '2024-03-07', 'booked', 21),
(
    989,
    264,
    'Olivia Rodrigo',
    6,
    '2025-08-02',
    'booked',
    14
  ),
(
    990,
    67,
    'Bruno Mars',
    NULL,
    '2025-11-15',
    'available',
    11
  ),
(
    991,
    99,
    'Midnight Paradox',
    1,
    '2024-05-25',
    'booked',
    49
  ),
(
    992,
    148,
    'Shawn Mendes',
    2,
    '2024-10-16',
    'booked',
    28
  ),
(
    993,
    261,
    'Post Malone',
    39,
    '2025-01-02',
    'booked',
    13
  ),
(
    994,
    348,
    'Billie Eilish',
    11,
    '2025-01-23',
    'booked',
    7
  ),
(995, 109, 'Bruno Mars', 32, '2025-03-22', 'booked', 11),
(996, 224, 'Adele', 3, '2024-02-16', 'booked', 5),
(
    997,
    48,
    'Kendrick Lamar',
    4,
    '2024-05-11',
    'booked',
    6
  ),
(
    998,
    192,
    'Neon Harbor',
    32,
    '2026-02-04',
    'available',
    NULL
  ),
(
    999,
    310,
    'Shawn Mendes',
    37,
    '2024-02-17',
    'booked',
    28
  ),
(
    1000,
    383,
    'Snail Mail',
    NULL,
    '2026-09-12',
    'available',
    NULL
  ),
(
    1030,
    420,
    'Harry Styles',
    27,
    '2025-03-19',
    'booked',
    15
  );
/*!40000 ALTER TABLE `Booking` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `Record_Label`
--

DROP TABLE IF EXISTS `Record_Label`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `Record_Label` (
  `label_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`label_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 29 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `Record_Label`
--

LOCK TABLES `Record_Label` WRITE;
/*!40000 ALTER TABLE `Record_Label` DISABLE KEYS */
;
INSERT INTO `Record_Label`
VALUES (
    1,
    '1501 Certified Entertainment',
    '+1-475-754-7976',
    '1501certifiedentertainment@yahoo.com',
    'www.1501certifiedentertainment.com'
  ),
(
    2,
    '300 Entertainment',
    '+1-418-279-8946',
    '300entertainment@gmail.com',
    'www.300entertainment.com'
  ),
(
    3,
    'Atlantic Records',
    '+1-373-158-4966',
    'contact@atlanticrecords.com',
    'www.atlanticrecords.com'
  ),
(
    4,
    'Beyond the Groove',
    '+1-101-424-5869',
    'beyondthegroove@hotmail.com',
    'www.beyondthegroove.com'
  ),
(
    5,
    'Big Hit Entertainment (HYBE Corporation)',
    '+1-901-627-7397',
    'contact@bighitentertainmenthybecorporation.com',
    'www.bighitentertainmenthybecorporation.com'
  ),
(
    6,
    'Captured Tracks',
    '+1-351-911-2268',
    'capturedtracks@hotmail.com',
    'www.capturedtracks.com'
  ),
(
    7,
    'Columbia Records',
    '+1-860-180-8894',
    'contact@columbiarecords.com',
    'www.columbiarecords.com'
  ),
(
    8,
    'Dead Oceans',
    '+1-392-680-2878',
    'deadoceans@gmail.com',
    'www.deadoceans.com'
  ),
(
    9,
    'Def Jam Recordings',
    '+1-374-498-5618',
    'contact@defjamrecordings.com',
    'www.defjamrecordings.com'
  ),
(
    10,
    'Dirty Hit Records',
    '+1-449-441-9052',
    'dirtyhitrecords@hotmail.com',
    'www.dirtyhitrecords.com'
  ),
(
    11,
    'Epic Records',
    '+1-522-180-1858',
    'epicrecords@yahoo.com',
    'www.epicrecords.com'
  ),
(
    12,
    'Fader Label',
    '+1-570-980-8057',
    'faderlabel@hotmail.com',
    'www.faderlabel.com'
  ),
(
    13,
    'Fat Possum Records',
    '+1-770-829-1512',
    'fatpossumrecords@yahoo.com',
    'www.fatpossumrecords.com'
  ),
(
    14,
    'Geffen Records',
    '+1-151-490-5213',
    'geffenrecords@hotmail.com',
    'www.geffenrecords.com'
  ),
(
    15,
    'Interscope Records',
    '+1-779-481-1238',
    'contact@interscoperecords.com',
    'www.interscoperecords.com'
  ),
(
    16,
    'Island Records',
    '+1-986-284-9471',
    'islandrecords@hotmail.com',
    'www.islandrecords.com'
  ),
(
    17,
    'Jagjaguwar',
    '+1-217-441-8997',
    'jagjaguwar@gmail.com',
    'www.jagjaguwar.com'
  ),
(
    18,
    'Matador Records',
    '+1-913-160-6395',
    'matadorrecords@gmail.com',
    'www.matadorrecords.com'
  ),
(
    19,
    'Mom + Pop Music',
    '+1-549-788-5003',
    'mompopmusic@hotmail.com',
    'www.mompopmusic.com'
  ),
(
    20,
    'RCA Records',
    '+1-205-975-4974',
    'contact@rcarecords.com',
    'www.rcarecords.com'
  ),
(
    21,
    'Republic Records',
    '+1-532-198-8552',
    'contact@republicrecords.com',
    'www.republicrecords.com'
  ),
(
    22,
    'Rimas Entertainment',
    '+1-158-522-7864',
    'rimasentertainment@yahoo.com',
    'www.rimasentertainment.com'
  ),
(
    23,
    'Roche Musique',
    '+1-898-643-1797',
    'rochemusique@hotmail.com',
    'www.rochemusique.com'
  ),
(
    24,
    'Top Dawg Entertainment',
    '+1-740-466-3368',
    'topdawgentertainment@yahoo.com',
    'www.topdawgentertainment.com'
  ),
(
    25,
    'Universal Music Latino',
    '+1-856-330-4205',
    'contact@universalmusiclatino.com',
    'www.universalmusiclatino.com'
  ),
(
    26,
    'Warner Records',
    '+1-208-378-9297',
    'contact@warnerrecords.com',
    'www.warnerrecords.com'
  ),
(
    27,
    'YG Entertainment',
    '+1-719-784-4197',
    'contact@ygentertainment.com',
    'www.ygentertainment.com'
  ),
(
    28,
    'Zelig Records',
    '+1-544-462-4424',
    'zeligrecords@yahoo.com',
    'www.zeligrecords.com'
  );
/*!40000 ALTER TABLE `Record_Label` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `User` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `title` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `label_id` int DEFAULT NULL,
  `rep_artist_id` int DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username` (`username`),
  KEY `fk_user_label_id` (`label_id`),
  KEY `fk_user_rep_art_id` (`rep_artist_id`),
  CONSTRAINT `fk_label_id` FOREIGN KEY (`label_id`) REFERENCES `Record_Label` (`label_id`) ON DELETE
  SET NULL ON UPDATE CASCADE,
    CONSTRAINT `fk_user_rep_art_id` FOREIGN KEY (`rep_artist_id`) REFERENCES `Artist` (`artist_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 422 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */
;
INSERT INTO `User`
VALUES (
    1,
    'robert.doe786',
    'drR37qaRXcw3',
    'Robert Doe',
    'manager',
    'robert.doe@rimasentertainment.com',
    '+1-934-469-6957',
    22,
    1
  ),
(
    2,
    'john.brown191',
    'TqhqerYKZfN9',
    'John Brown',
    'manager',
    'john.brown@epicrecords.com',
    '+1-199-460-6900',
    11,
    42
  ),
(
    3,
    'charles.taylor225',
    'W~ksXyq89FeknZ',
    'Charles Taylor',
    'artist/independent',
    'charles.taylor@yahoo.com',
    '+1-638-149-9450',
    NULL,
    47
  ),
(
    4,
    'charles.doe338',
    'jfOPk5VOuwCU',
    'Charles Doe',
    'producer',
    'charles.doe@atlanticrecords.com',
    '+1-104-970-9194',
    3,
    44
  ),
(
    5,
    'robert.smith550',
    'AFUzt5D',
    'Robert Smith',
    'producer',
    'robert.smith@rcarecords.com',
    '+1-531-246-8443',
    20,
    43
  ),
(
    6,
    'robert.doe343',
    '0tRiCFN.QB',
    'Robert Doe',
    'manager',
    'robert.doe@zeligrecords.com',
    '+1-347-853-1927',
    28,
    28
  ),
(
    7,
    'michael.doe815',
    'a2hsRvpfVJkrlq5',
    'Michael Doe',
    'producer',
    'michael.doe@epicrecords.com',
    '+1-736-758-2418',
    11,
    18
  ),
(
    8,
    'emily.smith561',
    '2WEBYtYjT9',
    'Emily Smith',
    'producer',
    'emily.smith@beyondthegroove.com',
    '+1-182-276-1798',
    4,
    33
  ),
(
    9,
    'jane.doe220',
    'zK4JEZDueil',
    'Jane Doe',
    'manager',
    'jane.doe@mom+popmusic.com',
    '+1-304-864-1752',
    19,
    12
  ),
(
    10,
    'charles.jones444',
    'L3wNXso',
    'Charles Jones',
    'manager',
    'charles.jones@capturedtracks.com',
    '+1-597-710-8016',
    6,
    10
  ),
(
    11,
    'robert.johnson868',
    '53.d8jpR1jF',
    'Robert Johnson',
    'manager',
    'robert.johnson@islandrecords.com',
    '+1-530-870-4215',
    16,
    20
  ),
(
    12,
    'emily.johnson412',
    'Vswv1gkaiwncVv',
    'Emily Johnson',
    'manager',
    'emily.johnson@1501certifiedentertainment.com',
    '+1-337-645-2885',
    1,
    43
  ),
(
    13,
    'bobby.harris611',
    'mDqxZPy3RKyh2q',
    'Bobby Harris',
    'manager',
    'bobby.harris@rimasentertainment.com',
    '+1-560-806-2064',
    22,
    22
  ),
(
    14,
    'john.doe395',
    'aZKdfOP~rnJ',
    'John Doe',
    'manager',
    'john.doe@topdawgentertainment.com',
    '+1-660-429-7175',
    24,
    40
  ),
(
    15,
    'alice.doe433',
    'KRE5..YjDcH',
    'Alice Doe',
    'manager',
    'alice.doe@capturedtracks.com',
    '+1-841-502-1591',
    6,
    32
  ),
(
    16,
    'emily.johnson447',
    'ysCRH~d0kjSyG4',
    'Emily Johnson',
    'artist/independent',
    'emily.johnson@hotmail.com',
    '+1-614-512-2963',
    NULL,
    47
  ),
(
    17,
    'robert.smith802',
    'zMJ29yy',
    'Robert Smith',
    'producer',
    'robert.smith@300entertainment.com',
    '+1-549-723-7659',
    2,
    28
  ),
(
    18,
    'nancy.smith379',
    '47IVyldnqRAj',
    'Nancy Smith',
    'artist/independent',
    'nancy.smith@gmail.com',
    '+1-587-766-6157',
    NULL,
    48
  ),
(
    19,
    'nancy.doe843',
    'm2j54FhHl0MQ',
    'Nancy Doe',
    'manager',
    'nancy.doe@topdawgentertainment.com',
    '+1-848-142-8573',
    24,
    41
  ),
(
    20,
    'bobby.morris333',
    '~4M99Lv!LXa',
    'Bobby Morris',
    'manager',
    'bobby.morris@jagjaguwar.com',
    '+1-189-163-6050',
    17,
    20
  ),
(
    21,
    'linda.smith750',
    'iFNKPU',
    'Linda Smith',
    'producer',
    'linda.smith@interscoperecords.com',
    '+1-169-879-5611',
    15,
    16
  ),
(
    22,
    'michael.johnson551',
    'rZepFQRAij~6mR8M',
    'Michael Johnson',
    'manager',
    'michael.johnson@dirtyhitrecords.com',
    '+1-134-329-7987',
    10,
    36
  ),
(
    23,
    'john.morris163',
    'rbIdilr!',
    'John Morris',
    'artist/independent',
    'john.morris@gmail.com',
    '+1-330-248-1243',
    NULL,
    48
  ),
(
    24,
    'emily.taylor466',
    '.SZEZ.DmFAY3',
    'Emily Taylor',
    'manager',
    'emily.taylor@rimasentertainment.com',
    '+1-217-789-1015',
    22,
    36
  ),
(
    25,
    'michael.taylor926',
    '4MVXnK9e',
    'Michael Taylor',
    'producer',
    'michael.taylor@republicrecords.com',
    '+1-260-325-9120',
    21,
    18
  ),
(
    26,
    'robert.morris673',
    'fi~FiMNx',
    'Robert Morris',
    'producer',
    'robert.morris@300entertainment.com',
    '+1-956-127-1152',
    2,
    17
  ),
(
    27,
    'michael.clark912',
    'eaaP.M1sLvM1',
    'Michael Clark',
    'manager',
    'michael.clark@fatpossumrecords.com',
    '+1-297-760-5587',
    13,
    8
  ),
(
    28,
    'linda.smith171',
    'BGdi9W!u',
    'Linda Smith',
    'producer',
    'linda.smith@atlanticrecords.com',
    '+1-650-843-1885',
    3,
    19
  ),
(
    29,
    'emily.smith927',
    'lqOT.72',
    'Emily Smith',
    'producer',
    'emily.smith@rimasentertainment.com',
    '+1-662-923-9998',
    22,
    5
  ),
(
    30,
    'charles.harris107',
    'cq4s!03v1z!lW',
    'Charles Harris',
    'manager',
    'charles.harris@warnerrecords.com',
    '+1-920-809-7568',
    26,
    23
  ),
(
    31,
    'charles.jones582',
    'UHW1ECNsirvs',
    'Charles Jones',
    'artist/independent',
    'charles.jones@gmail.com',
    '+1-178-380-9939',
    NULL,
    31
  ),
(
    32,
    'linda.jones689',
    '5ZjsH3UzM4oLIEbp',
    'Linda Jones',
    'producer',
    'linda.jones@interscoperecords.com',
    '+1-392-969-7997',
    15,
    9
  ),
(
    33,
    'robert.johnson922',
    'Qj3zme.oRO5JvD',
    'Robert Johnson',
    'manager',
    'robert.johnson@ygentertainment.com',
    '+1-577-369-7931',
    27,
    10
  ),
(
    34,
    'michael.harris913',
    'nM9DwBRSwZcG18d',
    'Michael Harris',
    'producer',
    'michael.harris@deadoceans.com',
    '+1-507-124-8978',
    8,
    21
  ),
(
    35,
    'alice.johnson908',
    '4Is!e3x.tNlY',
    'Alice Johnson',
    'manager',
    'alice.johnson@jagjaguwar.com',
    '+1-300-878-7031',
    17,
    23
  ),
(
    36,
    'nancy.smith545',
    '2g5L.iaZvU.yrK3',
    'Nancy Smith',
    'manager',
    'nancy.smith@matadorrecords.com',
    '+1-488-110-8937',
    18,
    11
  ),
(
    37,
    'jane.morris782',
    'HSO.oftWTxnvV',
    'Jane Morris',
    'manager',
    'jane.morris@defjamrecordings.com',
    '+1-554-702-7686',
    9,
    40
  ),
(
    38,
    'robert.clark167',
    'HRbWRacYE!1Yi',
    'Robert Clark',
    'producer',
    'robert.clark@atlanticrecords.com',
    '+1-602-513-2493',
    3,
    29
  ),
(
    39,
    'robert.johnson941',
    'NKXclDg6j3~',
    'Robert Johnson',
    'producer',
    'robert.johnson@1501certifiedentertainment.com',
    '+1-244-870-2380',
    1,
    29
  ),
(
    40,
    'jane.jones763',
    'y9mdAADmW',
    'Jane Jones',
    'manager',
    'jane.jones@1501certifiedentertainment.com',
    '+1-399-232-7030',
    1,
    32
  ),
(
    41,
    'bobby.taylor396',
    'Y1r2GOGFpMylA',
    'Bobby Taylor',
    'manager',
    'bobby.taylor@jagjaguwar.com',
    '+1-767-663-1827',
    17,
    15
  ),
(
    42,
    'michael.white814',
    'kkfE8xc.z0',
    'Michael White',
    'producer',
    'michael.white@1501certifiedentertainment.com',
    '+1-123-685-3749',
    1,
    6
  ),
(
    43,
    'emily.brown993',
    'u4RdYa',
    'Emily Brown',
    'manager',
    'emily.brown@matadorrecords.com',
    '+1-376-769-5985',
    18,
    40
  ),
(
    44,
    'emily.johnson359',
    'gqC~caj7i8Jj',
    'Emily Johnson',
    'manager',
    'emily.johnson@capturedtracks.com',
    '+1-236-756-6196',
    6,
    32
  ),
(
    45,
    'nancy.jones506',
    'A17i!oXGvwS6CNG',
    'Nancy Jones',
    'producer',
    'nancy.jones@zeligrecords.com',
    '+1-186-866-5373',
    28,
    20
  ),
(
    46,
    'alice.white659',
    'lmB1nSdqNL!iR0cV',
    'Alice White',
    'manager',
    'alice.white@300entertainment.com',
    '+1-128-450-4494',
    2,
    1
  ),
(
    47,
    'alice.clark356',
    'o6xB9rt',
    'Alice Clark',
    'producer',
    'alice.clark@fatpossumrecords.com',
    '+1-287-832-6167',
    13,
    44
  ),
(
    48,
    'charles.harris633',
    'jogHA6eMG',
    'Charles Harris',
    'manager',
    'charles.harris@columbiarecords.com',
    '+1-547-882-1464',
    7,
    27
  ),
(
    49,
    'robert.smith977',
    'f1caXZcstq0uOWc6',
    'Robert Smith',
    'manager',
    'robert.smith@columbiarecords.com',
    '+1-836-723-1432',
    7,
    33
  ),
(
    50,
    'jane.white765',
    '5PrA5obt',
    'Jane White',
    'manager',
    'jane.white@warnerrecords.com',
    '+1-399-850-3549',
    26,
    7
  ),
(
    51,
    'nancy.smith141',
    'Cvx9lAft!83VQeY',
    'Nancy Smith',
    'manager',
    'nancy.smith@republicrecords.com',
    '+1-334-248-1663',
    21,
    27
  ),
(
    52,
    'john.morris416',
    '8Ktbgi',
    'John Morris',
    'producer',
    'john.morris@dirtyhitrecords.com',
    '+1-422-267-7914',
    10,
    16
  ),
(
    53,
    'bobby.white224',
    'pW66nz8s',
    'Bobby White',
    'manager',
    'bobby.white@interscoperecords.com',
    '+1-146-264-4562',
    15,
    25
  ),
(
    54,
    'nancy.doe262',
    'IFmn9ubx',
    'Nancy Doe',
    'artist/independent',
    'nancy.doe@gmail.com',
    '+1-542-306-2822',
    NULL,
    31
  ),
(
    55,
    'emily.white107',
    'ye18gbioBsJCR',
    'Emily White',
    'manager',
    'emily.white@300entertainment.com',
    '+1-594-521-2106',
    2,
    9
  ),
(
    56,
    'bobby.morris810',
    '7eGPzVzOFyhU82',
    'Bobby Morris',
    'producer',
    'bobby.morris@zeligrecords.com',
    '+1-582-693-6067',
    28,
    8
  ),
(
    57,
    'bobby.clark434',
    '9j6it!wI6ZEF7p',
    'Bobby Clark',
    'artist/independent',
    'bobby.clark@hotmail.com',
    '+1-573-641-7309',
    NULL,
    31
  ),
(
    58,
    'robert.harris558',
    'Hws84R1EjH1P2346',
    'Robert Harris',
    'manager',
    'robert.harris@capturedtracks.com',
    '+1-325-208-4392',
    6,
    19
  ),
(
    59,
    'bobby.white329',
    'VoW1GHeNgPa152m',
    'Bobby White',
    'manager',
    'bobby.white@ygentertainment.com',
    '+1-806-269-7417',
    27,
    1
  ),
(
    60,
    'john.jones289',
    'DJ1Aq4k!VK',
    'John Jones',
    'manager',
    'john.jones@faderlabel.com',
    '+1-984-349-4656',
    12,
    28
  ),
(
    61,
    'robert.smith723',
    'rwAIfrexs1P.n',
    'Robert Smith',
    'manager',
    'robert.smith@capturedtracks.com',
    '+1-862-111-9430',
    6,
    4
  ),
(
    62,
    'michael.white256',
    'JXGB3rGk2Ab9',
    'Michael White',
    'manager',
    'michael.white@faderlabel.com',
    '+1-773-412-1314',
    12,
    2
  ),
(
    63,
    'bobby.doe909',
    'xI7zT3mB~jo8HXY',
    'Bobby Doe',
    'producer',
    'bobby.doe@zeligrecords.com',
    '+1-270-680-5356',
    28,
    11
  ),
(
    64,
    'emily.morris611',
    'b3jo3Q',
    'Emily Morris',
    'manager',
    'emily.morris@zeligrecords.com',
    '+1-888-669-2368',
    28,
    4
  ),
(
    65,
    'bobby.jones712',
    'njrFME0',
    'Bobby Jones',
    'manager',
    'bobby.jones@universalmusiclatino.com',
    '+1-341-100-4382',
    25,
    33
  ),
(
    66,
    'robert.johnson802',
    'AHMK9gvQ',
    'Robert Johnson',
    'manager',
    'robert.johnson@dirtyhitrecords.com',
    '+1-215-406-4056',
    10,
    10
  ),
(
    67,
    'michael.morris786',
    'UqlT4wGdgMuPZ8TD',
    'Michael Morris',
    'artist/independent',
    'michael.morris@yahoo.com',
    '+1-881-713-5129',
    NULL,
    30
  ),
(
    68,
    'john.morris130',
    'cg5oM9Ek4il9gVs7',
    'John Morris',
    'artist/independent',
    'john.morris@gmail.com',
    '+1-110-538-4546',
    NULL,
    47
  ),
(
    69,
    'emily.harris564',
    '5aImqQ8Z8P8',
    'Emily Harris',
    'manager',
    'emily.harris@islandrecords.com',
    '+1-796-602-2384',
    16,
    37
  ),
(
    70,
    'emily.jones114',
    'l1CQJ.8',
    'Emily Jones',
    'producer',
    'emily.jones@rcarecords.com',
    '+1-956-842-5786',
    20,
    32
  ),
(
    71,
    'linda.white369',
    'u8Sit2IF.bJtJQV6',
    'Linda White',
    'manager',
    'linda.white@deadoceans.com',
    '+1-298-868-9953',
    8,
    4
  ),
(
    72,
    'bobby.taylor689',
    'pHVFR27KxDuR6dj',
    'Bobby Taylor',
    'talent scout',
    'bobby.taylor@zeligrecords.com',
    '+1-132-871-7967',
    28,
    29
  ),
(
    73,
    'bobby.clark667',
    'RzIB.w~nPTtSEg',
    'Bobby Clark',
    'producer',
    'bobby.clark@zeligrecords.com',
    '+1-575-155-1755',
    28,
    28
  ),
(
    74,
    'emily.harris166',
    'e~bNfXIQ.i1~0SBF',
    'Emily Harris',
    'producer',
    'emily.harris@rcarecords.com',
    '+1-891-348-8366',
    20,
    19
  ),
(
    75,
    'nancy.morris991',
    'gywffgKl4jtk1r',
    'Nancy Morris',
    'manager',
    'nancy.morris@defjamrecordings.com',
    '+1-403-309-2867',
    9,
    12
  ),
(
    76,
    'jane.johnson824',
    'nJIyACeKL',
    'Jane Johnson',
    'producer',
    'jane.johnson@zeligrecords.com',
    '+1-469-378-2781',
    28,
    42
  ),
(
    77,
    'robert.morris811',
    'Cqk!qA8ogbt9',
    'Robert Morris',
    'producer',
    'robert.morris@mom+popmusic.com',
    '+1-632-283-4733',
    19,
    29
  ),
(
    78,
    'john.johnson947',
    'xU17QsUv.!rmQcz.',
    'John Johnson',
    'manager',
    'john.johnson@defjamrecordings.com',
    '+1-520-675-9153',
    9,
    6
  ),
(
    79,
    'alice.white483',
    '.qiacWVNiS',
    'Alice White',
    'artist/independent',
    'alice.white@hotmail.com',
    '+1-487-957-1514',
    NULL,
    46
  ),
(
    80,
    'nancy.jones610',
    'mQYasa',
    'Nancy Jones',
    'manager',
    'nancy.jones@mom+popmusic.com',
    '+1-636-365-2047',
    19,
    1
  ),
(
    81,
    'emily.doe632',
    'ahTKEl3.bpl',
    'Emily Doe',
    'producer',
    'emily.doe@atlanticrecords.com',
    '+1-715-930-5490',
    3,
    6
  ),
(
    82,
    'john.doe448',
    'jYrN2VidH1M',
    'John Doe',
    'manager',
    'john.doe@faderlabel.com',
    '+1-655-625-5621',
    12,
    8
  ),
(
    83,
    'nancy.clark954',
    'bUdE8VGjR',
    'Nancy Clark',
    'manager',
    'nancy.clark@republicrecords.com',
    '+1-838-780-7036',
    21,
    44
  ),
(
    84,
    'bobby.doe508',
    'ZtpYdXvL~wI',
    'Bobby Doe',
    'manager',
    'bobby.doe@universalmusiclatino.com',
    '+1-979-788-5732',
    25,
    23
  ),
(
    85,
    'emily.jones858',
    '4BDn~LkWnz',
    'Emily Jones',
    'manager',
    'emily.jones@rimasentertainment.com',
    '+1-735-508-7683',
    22,
    24
  ),
(
    86,
    'michael.clark549',
    'i0Z8zUjlKd6hK',
    'Michael Clark',
    'manager',
    'michael.clark@300entertainment.com',
    '+1-657-637-9384',
    2,
    15
  ),
(
    87,
    'nancy.white682',
    'yI3X3u0',
    'Nancy White',
    'artist/independent',
    'nancy.white@hotmail.com',
    '+1-228-758-3179',
    NULL,
    50
  ),
(
    88,
    'emily.harris720',
    '.y!FVgEthX02E',
    'Emily Harris',
    'producer',
    'emily.harris@defjamrecordings.com',
    '+1-126-542-7077',
    9,
    21
  ),
(
    89,
    'bobby.doe545',
    'M4rxUqiUiUj6LL7',
    'Bobby Doe',
    'producer',
    'bobby.doe@mom+popmusic.com',
    '+1-546-232-6688',
    19,
    2
  ),
(
    90,
    'emily.jones623',
    'HWJrLnk9CLQpnkW',
    'Emily Jones',
    'manager',
    'emily.jones@geffenrecords.com',
    '+1-795-649-3701',
    14,
    37
  ),
(
    91,
    'alice.taylor410',
    'KH6iuqBFjLU',
    'Alice Taylor',
    'manager',
    'alice.taylor@1501certifiedentertainment.com',
    '+1-842-492-4091',
    1,
    38
  ),
(
    92,
    'emily.johnson351',
    '!Ka1mO',
    'Emily Johnson',
    'manager',
    'emily.johnson@1501certifiedentertainment.com',
    '+1-607-193-2088',
    1,
    2
  ),
(
    93,
    'nancy.doe307',
    '4xjureItExGV',
    'Nancy Doe',
    'producer',
    'nancy.doe@topdawgentertainment.com',
    '+1-380-572-7856',
    24,
    4
  ),
(
    94,
    'linda.smith311',
    'f~hcLd!D4GlVVl',
    'Linda Smith',
    'manager',
    'linda.smith@geffenrecords.com',
    '+1-371-979-1740',
    14,
    32
  ),
(
    95,
    'john.harris936',
    'DhqByFNZYwAzbv',
    'John Harris',
    'manager',
    'john.harris@jagjaguwar.com',
    '+1-555-557-8311',
    17,
    19
  ),
(
    96,
    'jane.brown711',
    'hz0Z~hzbGJqjGq0',
    'Jane Brown',
    'manager',
    'jane.brown@topdawgentertainment.com',
    '+1-147-753-4144',
    24,
    42
  ),
(
    97,
    'charles.jones422',
    '6DroOqjSI0JII',
    'Charles Jones',
    'producer',
    'charles.jones@beyondthegroove.com',
    '+1-360-562-4318',
    4,
    9
  ),
(
    98,
    'jane.brown380',
    'k1B0dbIihpXzich',
    'Jane Brown',
    'manager',
    'jane.brown@300entertainment.com',
    '+1-174-968-7549',
    2,
    19
  ),
(
    99,
    'charles.clark290',
    '8uVR9Ng',
    'Charles Clark',
    'manager',
    'charles.clark@300entertainment.com',
    '+1-425-577-4932',
    2,
    12
  ),
(
    100,
    'jane.taylor822',
    '20g4pQzT7Rdz',
    'Jane Taylor',
    'artist/independent',
    'jane.taylor@yahoo.com',
    '+1-685-362-3067',
    NULL,
    30
  ),
(
    101,
    'jane.jones598',
    'rlSNoFBBdbL9I7T',
    'Jane Jones',
    'manager',
    'jane.jones@universalmusiclatino.com',
    '+1-203-333-6149',
    25,
    23
  ),
(
    102,
    'bobby.smith613',
    'X5YM8Sc!MKQ',
    'Bobby Smith',
    'producer',
    'bobby.smith@islandrecords.com',
    '+1-923-994-2012',
    16,
    29
  ),
(
    103,
    'alice.johnson900',
    'ZhXSJdWwqgq4D',
    'Alice Johnson',
    'producer',
    'alice.johnson@bighitentertainment(hybecorporation).com',
    '+1-749-365-6153',
    5,
    22
  ),
(
    104,
    'michael.smith265',
    'ehRK.y',
    'Michael Smith',
    'producer',
    'michael.smith@1501certifiedentertainment.com',
    '+1-802-501-1094',
    1,
    22
  ),
(
    105,
    'nancy.white366',
    'oA1enbC5XWj0',
    'Nancy White',
    'artist/independent',
    'nancy.white@yahoo.com',
    '+1-672-993-5141',
    NULL,
    50
  ),
(
    106,
    'alice.jones495',
    'Argw26AXVrdo',
    'Alice Jones',
    'producer',
    'alice.jones@geffenrecords.com',
    '+1-411-155-8189',
    14,
    36
  ),
(
    107,
    'robert.morris8111',
    '!UqjHwSn4Bved',
    'Robert Morris',
    'manager',
    'robert.morris@columbiarecords.com',
    '+1-858-668-4839',
    7,
    27
  ),
(
    108,
    'jane.brown871',
    'pQXQTLhIJoH!oy',
    'Jane Brown',
    'manager',
    'jane.brown@rochemusique.com',
    '+1-623-466-7802',
    23,
    32
  ),
(
    109,
    'michael.smith163',
    'ZBtUqGdX.9pJb',
    'Michael Smith',
    'manager',
    'michael.smith@zeligrecords.com',
    '+1-881-396-9537',
    28,
    9
  ),
(
    110,
    'alice.brown346',
    'xq4K8hY4u',
    'Alice Brown',
    'manager',
    'alice.brown@republicrecords.com',
    '+1-973-885-6362',
    21,
    23
  ),
(
    111,
    'michael.clark650',
    'VyuYOhW3',
    'Michael Clark',
    'producer',
    'michael.clark@atlanticrecords.com',
    '+1-950-373-5689',
    3,
    39
  ),
(
    112,
    'linda.white409',
    'oN2iyhR',
    'Linda White',
    'producer',
    'linda.white@warnerrecords.com',
    '+1-264-681-1024',
    26,
    12
  ),
(
    113,
    'charles.morris934',
    'FX1VXnA!Z',
    'Charles Morris',
    'manager',
    'charles.morris@300entertainment.com',
    '+1-723-505-1938',
    2,
    20
  ),
(
    114,
    'alice.harris959',
    'ePsLywcKQgIfO',
    'Alice Harris',
    'manager',
    'alice.harris@epicrecords.com',
    '+1-122-985-7072',
    11,
    5
  ),
(
    115,
    'bobby.morris710',
    'dzYiP2.iuUSX~vCt',
    'Bobby Morris',
    'producer',
    'bobby.morris@capturedtracks.com',
    '+1-748-776-2303',
    6,
    14
  ),
(
    116,
    'michael.smith272',
    'F~MJUKktFHDV',
    'Michael Smith',
    'producer',
    'michael.smith@deadoceans.com',
    '+1-637-961-4889',
    8,
    15
  ),
(
    117,
    'nancy.harris279',
    'KVOIayHcj.4tKvU!',
    'Nancy Harris',
    'manager',
    'nancy.harris@beyondthegroove.com',
    '+1-574-363-6900',
    4,
    8
  ),
(
    118,
    'john.clark790',
    'etSd4q4',
    'John Clark',
    'manager',
    'john.clark@bighitentertainment(hybecorporation).com',
    '+1-242-893-5715',
    5,
    23
  ),
(
    119,
    'alice.taylor730',
    'TqyIps1ZXRskCP',
    'Alice Taylor',
    'manager',
    'alice.taylor@geffenrecords.com',
    '+1-123-172-7599',
    14,
    29
  ),
(
    120,
    'bobby.doe687',
    'DFu0FmxUj',
    'Bobby Doe',
    'producer',
    'bobby.doe@ygentertainment.com',
    '+1-370-331-9652',
    27,
    38
  ),
(
    121,
    'john.jones983',
    'h3aJp1GnYsOFy',
    'John Jones',
    'manager',
    'john.jones@republicrecords.com',
    '+1-934-757-9618',
    21,
    5
  ),
(
    122,
    'alice.clark976',
    '3jG47Mv1b',
    'Alice Clark',
    'producer',
    'alice.clark@jagjaguwar.com',
    '+1-452-391-6559',
    17,
    36
  ),
(
    123,
    'nancy.brown768',
    'OftCLDNVNPdXXVM',
    'Nancy Brown',
    'manager',
    'nancy.brown@jagjaguwar.com',
    '+1-858-501-8772',
    17,
    9
  ),
(
    124,
    'charles.johnson759',
    'CuKeeSuuAPoIr',
    'Charles Johnson',
    'producer',
    'charles.johnson@capturedtracks.com',
    '+1-426-640-7855',
    6,
    36
  ),
(
    125,
    'bobby.jones492',
    'KN7u9wB',
    'Bobby Jones',
    'producer',
    'bobby.jones@ygentertainment.com',
    '+1-676-568-9582',
    27,
    17
  ),
(
    126,
    'michael.taylor670',
    '0yrzIZJ',
    'Michael Taylor',
    'manager',
    'michael.taylor@dirtyhitrecords.com',
    '+1-822-738-1360',
    10,
    4
  ),
(
    127,
    'emily.taylor408',
    'vpFnL9EE1h',
    'Emily Taylor',
    'manager',
    'emily.taylor@fatpossumrecords.com',
    '+1-985-680-8787',
    13,
    18
  ),
(
    128,
    'nancy.doe589',
    '3gvwbPE4f6MkSWy',
    'Nancy Doe',
    'producer',
    'nancy.doe@matadorrecords.com',
    '+1-188-400-7779',
    18,
    35
  ),
(
    129,
    'john.white952',
    'jyOabKEog',
    'John White',
    'producer',
    'john.white@fatpossumrecords.com',
    '+1-497-253-5413',
    13,
    1
  ),
(
    130,
    'nancy.smith130',
    'h1ooNKUBDQcmUgyQ',
    'Nancy Smith',
    'manager',
    'nancy.smith@fatpossumrecords.com',
    '+1-515-411-9702',
    13,
    28
  ),
(
    131,
    'linda.brown916',
    'UurI2AHY4eLda',
    'Linda Brown',
    'manager',
    'linda.brown@beyondthegroove.com',
    '+1-400-491-3194',
    4,
    2
  ),
(
    132,
    'robert.harris510',
    'IhnyWOq',
    'Robert Harris',
    'manager',
    'robert.harris@capturedtracks.com',
    '+1-259-975-1292',
    6,
    10
  ),
(
    133,
    'bobby.white408',
    'EbnhrMGnGo',
    'Bobby White',
    'manager',
    'bobby.white@1501certifiedentertainment.com',
    '+1-222-157-5227',
    1,
    14
  ),
(
    134,
    'robert.taylor217',
    'N~9HMjxa',
    'Robert Taylor',
    'artist/independent',
    'robert.taylor@yahoo.com',
    '+1-712-978-1306',
    NULL,
    48
  ),
(
    135,
    'michael.johnson211',
    'dcFlTD37qdSylG.',
    'Michael Johnson',
    'manager',
    'michael.johnson@fatpossumrecords.com',
    '+1-495-287-4267',
    13,
    44
  ),
(
    136,
    'emily.johnson303',
    'oPpckD3',
    'Emily Johnson',
    'artist/independent',
    'emily.johnson@hotmail.com',
    '+1-360-663-7524',
    NULL,
    30
  ),
(
    137,
    'alice.jones438',
    '2L1atFJw',
    'Alice Jones',
    'producer',
    'alice.jones@defjamrecordings.com',
    '+1-349-281-4756',
    9,
    32
  ),
(
    138,
    'michael.taylor155',
    'oCWM5I3IXi0!7',
    'Michael Taylor',
    'manager',
    'michael.taylor@jagjaguwar.com',
    '+1-696-197-5502',
    17,
    40
  ),
(
    139,
    'emily.jones906',
    'n0ixqtl.E0Jfyr',
    'Emily Jones',
    'artist/independent',
    'emily.jones@yahoo.com',
    '+1-545-737-5965',
    NULL,
    46
  ),
(
    140,
    'nancy.taylor946',
    '.ktk30',
    'Nancy Taylor',
    'producer',
    'nancy.taylor@zeligrecords.com',
    '+1-711-535-1481',
    28,
    29
  ),
(
    141,
    'emily.jones558',
    'lZqlKg79N3p',
    'Emily Jones',
    'producer',
    'emily.jones@300entertainment.com',
    '+1-286-553-5695',
    2,
    15
  ),
(
    142,
    'jane.jones222',
    'FAd9V~~HRvAo1qW',
    'Jane Jones',
    'manager',
    'jane.jones@dirtyhitrecords.com',
    '+1-953-509-2553',
    10,
    29
  ),
(
    143,
    'michael.clark362',
    'amJWfcj0WWpD0z',
    'Michael Clark',
    'producer',
    'michael.clark@deadoceans.com',
    '+1-511-729-4622',
    8,
    24
  ),
(
    144,
    'robert.white442',
    'dziTx~z10DelH',
    'Robert White',
    'manager',
    'robert.white@faderlabel.com',
    '+1-518-165-3008',
    12,
    41
  ),
(
    145,
    'emily.smith536',
    'iOoQY5q3',
    'Emily Smith',
    'producer',
    'emily.smith@bighitentertainment(hybecorporation).com',
    '+1-594-671-8987',
    5,
    13
  ),
(
    146,
    'bobby.smith894',
    'SU47ukDgIjIjkJP',
    'Bobby Smith',
    'manager',
    'bobby.smith@epicrecords.com',
    '+1-805-305-1719',
    11,
    17
  ),
(
    147,
    'alice.jones542',
    'hohMu4',
    'Alice Jones',
    'producer',
    'alice.jones@atlanticrecords.com',
    '+1-631-723-2003',
    3,
    33
  ),
(
    148,
    'alice.doe987',
    'oT85KA~A',
    'Alice Doe',
    'manager',
    'alice.doe@fatpossumrecords.com',
    '+1-815-882-6853',
    13,
    5
  ),
(
    149,
    'charles.morris413',
    '.g6DCOwfKZI',
    'Charles Morris',
    'talent scout',
    'charles.morris@republicrecords.com',
    '+1-773-974-4550',
    21,
    37
  ),
(
    150,
    'nancy.smith115',
    'oH2AEI8PxPXV~',
    'Nancy Smith',
    'manager',
    'nancy.smith@zeligrecords.com',
    '+1-184-193-1229',
    28,
    38
  ),
(
    151,
    'jane.morris404',
    'DXDcw~I9i0MP2.N',
    'Jane Morris',
    'manager',
    'jane.morris@warnerrecords.com',
    '+1-962-423-8756',
    26,
    8
  ),
(
    152,
    'robert.doe322',
    '7y8l2QFx31L9XiP',
    'Robert Doe',
    'producer',
    'robert.doe@rcarecords.com',
    '+1-683-438-4777',
    20,
    37
  ),
(
    153,
    'emily.jones818',
    'c83pvuMZ7OH',
    'Emily Jones',
    'producer',
    'emily.jones@columbiarecords.com',
    '+1-570-160-5362',
    7,
    11
  ),
(
    154,
    'john.brown653',
    'RsAbZs5pgI~siK',
    'John Brown',
    'producer',
    'john.brown@universalmusiclatino.com',
    '+1-884-733-9727',
    25,
    1
  ),
(
    155,
    'michael.harris746',
    'fXFJ1geSrG0',
    'Michael Harris',
    'manager',
    'michael.harris@bighitentertainment(hybecorporation).com',
    '+1-486-897-7807',
    5,
    24
  ),
(
    156,
    'alice.johnson959',
    'E129b~80Lfb',
    'Alice Johnson',
    'manager',
    'alice.johnson@universalmusiclatino.com',
    '+1-301-402-4211',
    25,
    42
  ),
(
    157,
    'john.johnson755',
    'zCFx0cH63t',
    'John Johnson',
    'manager',
    'john.johnson@atlanticrecords.com',
    '+1-332-880-6292',
    3,
    18
  ),
(
    158,
    'bobby.smith322',
    'TLOl0BO',
    'Bobby Smith',
    'manager',
    'bobby.smith@matadorrecords.com',
    '+1-199-271-1904',
    18,
    19
  ),
(
    159,
    'robert.doe969',
    'AI8hVw49~',
    'Robert Doe',
    'producer',
    'robert.doe@defjamrecordings.com',
    '+1-564-372-3031',
    9,
    13
  ),
(
    160,
    'robert.taylor231',
    'KXfZNat',
    'Robert Taylor',
    'manager',
    'robert.taylor@1501certifiedentertainment.com',
    '+1-338-855-8884',
    1,
    36
  ),
(
    161,
    'linda.johnson376',
    'ia!KQNmetkR2',
    'Linda Johnson',
    'manager',
    'linda.johnson@atlanticrecords.com',
    '+1-400-308-5237',
    3,
    26
  ),
(
    162,
    'bobby.smith712',
    'j7No.m.t',
    'Bobby Smith',
    'producer',
    'bobby.smith@ygentertainment.com',
    '+1-828-370-9728',
    27,
    9
  ),
(
    163,
    'john.morris985',
    'MK9Y4Lf7',
    'John Morris',
    'manager',
    'john.morris@matadorrecords.com',
    '+1-393-652-1504',
    18,
    21
  ),
(
    164,
    'michael.taylor581',
    'gZVxZmlvifSSx1dP',
    'Michael Taylor',
    'producer',
    'michael.taylor@defjamrecordings.com',
    '+1-774-452-3233',
    9,
    26
  ),
(
    165,
    'john.taylor788',
    'On5Erp4uJBsO',
    'John Taylor',
    'talent scout',
    'john.taylor@topdawgentertainment.com',
    '+1-558-826-3565',
    24,
    43
  ),
(
    166,
    'bobby.doe835',
    'Uk3nhA',
    'Bobby Doe',
    'manager',
    'bobby.doe@republicrecords.com',
    '+1-663-982-2250',
    21,
    22
  ),
(
    167,
    'michael.white737',
    'wD1pzrUzk~pLfh',
    'Michael White',
    'producer',
    'michael.white@epicrecords.com',
    '+1-248-540-6910',
    11,
    3
  ),
(
    168,
    'michael.johnson782',
    '4J78gpo38aRN',
    'Michael Johnson',
    'artist/independent',
    'michael.johnson@hotmail.com',
    '+1-106-752-4576',
    NULL,
    31
  ),
(
    169,
    'charles.morris134',
    'FUrPn9hQXiBOSZb.',
    'Charles Morris',
    'producer',
    'charles.morris@capturedtracks.com',
    '+1-100-826-7906',
    6,
    27
  ),
(
    170,
    'nancy.white493',
    'lh8H~49',
    'Nancy White',
    'artist/independent',
    'nancy.white@hotmail.com',
    '+1-954-961-5324',
    NULL,
    47
  ),
(
    171,
    'robert.jones618',
    '4YB7vZf',
    'Robert Jones',
    'manager',
    'robert.jones@islandrecords.com',
    '+1-983-618-7983',
    16,
    11
  ),
(
    172,
    'linda.smith287',
    'ouAT3inmaahB',
    'Linda Smith',
    'manager',
    'linda.smith@epicrecords.com',
    '+1-865-544-1111',
    11,
    8
  ),
(
    173,
    'john.johnson552',
    'Bcpof4PmIMh.n',
    'John Johnson',
    'producer',
    'john.johnson@rochemusique.com',
    '+1-732-206-9354',
    23,
    5
  ),
(
    174,
    'charles.jones765',
    'oHUQ6eNlGx4b',
    'Charles Jones',
    'manager',
    'charles.jones@rimasentertainment.com',
    '+1-616-800-1575',
    22,
    17
  ),
(
    175,
    'robert.brown665',
    'tcNZg6ruZvm',
    'Robert Brown',
    'manager',
    'robert.brown@jagjaguwar.com',
    '+1-568-195-3476',
    17,
    19
  ),
(
    176,
    'charles.brown171',
    '5DahqXnhJ',
    'Charles Brown',
    'manager',
    'charles.brown@atlanticrecords.com',
    '+1-732-739-3013',
    3,
    3
  ),
(
    177,
    'charles.white262',
    'Uc1J37bBwx',
    'Charles White',
    'manager',
    'charles.white@epicrecords.com',
    '+1-534-857-8607',
    11,
    38
  ),
(
    178,
    'charles.harris732',
    'KaVbf8IpQcY8tYNK',
    'Charles Harris',
    'manager',
    'charles.harris@matadorrecords.com',
    '+1-741-406-2356',
    18,
    12
  ),
(
    179,
    'alice.white835',
    'wZd!qErbG',
    'Alice White',
    'producer',
    'alice.white@rimasentertainment.com',
    '+1-956-381-8003',
    22,
    43
  ),
(
    180,
    'john.morris679',
    'XxAmZhz7IvBbLi',
    'John Morris',
    'manager',
    'john.morris@rochemusique.com',
    '+1-922-358-5958',
    23,
    40
  ),
(
    181,
    'robert.smith621',
    '2CilbXzp',
    'Robert Smith',
    'manager',
    'robert.smith@rcarecords.com',
    '+1-384-692-1023',
    20,
    3
  ),
(
    182,
    'bobby.doe950',
    'Dtbvp7v',
    'Bobby Doe',
    'talent scout',
    'bobby.doe@faderlabel.com',
    '+1-975-401-9021',
    12,
    16
  ),
(
    183,
    'john.taylor173',
    'q49WvPHztgD0edG',
    'John Taylor',
    'producer',
    'john.taylor@zeligrecords.com',
    '+1-973-609-4917',
    28,
    7
  ),
(
    184,
    'john.brown910',
    'K~9IqR5IGxF',
    'John Brown',
    'producer',
    'john.brown@jagjaguwar.com',
    '+1-925-304-9687',
    17,
    5
  ),
(
    185,
    'michael.taylor575',
    'dJzKawDFa7',
    'Michael Taylor',
    'manager',
    'michael.taylor@bighitentertainment(hybecorporation).com',
    '+1-548-671-7207',
    5,
    28
  ),
(
    186,
    'nancy.morris871',
    '8KqyWceT',
    'Nancy Morris',
    'artist/independent',
    'nancy.morris@gmail.com',
    '+1-980-178-2754',
    NULL,
    46
  ),
(
    187,
    'alice.doe967',
    'U30KiG4BNgSVyN',
    'Alice Doe',
    'manager',
    'alice.doe@columbiarecords.com',
    '+1-447-390-8453',
    7,
    37
  ),
(
    188,
    'alice.smith306',
    'xFhREWSOWMDzAl!',
    'Alice Smith',
    'manager',
    'alice.smith@jagjaguwar.com',
    '+1-183-535-4123',
    17,
    29
  ),
(
    189,
    'john.jones495',
    'E8jd3z4!hq',
    'John Jones',
    'manager',
    'john.jones@dirtyhitrecords.com',
    '+1-707-509-3592',
    10,
    13
  ),
(
    190,
    'charles.johnson580',
    '0drwCzxR',
    'Charles Johnson',
    'manager',
    'charles.johnson@capturedtracks.com',
    '+1-585-255-8617',
    6,
    33
  ),
(
    191,
    'charles.smith788',
    'brayTFg',
    'Charles Smith',
    'artist/independent',
    'charles.smith@gmail.com',
    '+1-973-264-8921',
    NULL,
    48
  ),
(
    192,
    'michael.johnson529',
    'o3C6HW~HNuyRe',
    'Michael Johnson',
    'talent scout',
    'michael.johnson@geffenrecords.com',
    '+1-496-337-3845',
    14,
    37
  ),
(
    193,
    'nancy.taylor854',
    '0e!e5a5zsbMqV',
    'Nancy Taylor',
    'manager',
    'nancy.taylor@rcarecords.com',
    '+1-538-294-9969',
    20,
    41
  ),
(
    194,
    'linda.doe462',
    'Jxup3BV4p',
    'Linda Doe',
    'manager',
    'linda.doe@bighitentertainment(hybecorporation).com',
    '+1-728-479-3733',
    5,
    2
  ),
(
    195,
    'alice.brown999',
    '0YcXCh1Awxc',
    'Alice Brown',
    'manager',
    'alice.brown@faderlabel.com',
    '+1-290-784-2709',
    12,
    26
  ),
(
    196,
    'robert.harris330',
    'R~AHOOyY~NF8Ss',
    'Robert Harris',
    'manager',
    'robert.harris@capturedtracks.com',
    '+1-861-293-4696',
    6,
    15
  ),
(
    197,
    'john.harris170',
    'xKEOMScxfE',
    'John Harris',
    'manager',
    'john.harris@rcarecords.com',
    '+1-851-711-8037',
    20,
    40
  ),
(
    198,
    'robert.smith992',
    '~cvdwJ8I7K',
    'Robert Smith',
    'manager',
    'robert.smith@dirtyhitrecords.com',
    '+1-967-171-1010',
    10,
    26
  ),
(
    199,
    'emily.harris372',
    'utCMTqZ9',
    'Emily Harris',
    'manager',
    'emily.harris@1501certifiedentertainment.com',
    '+1-880-783-7293',
    1,
    20
  ),
(
    200,
    'michael.brown434',
    'F29MYxs',
    'Michael Brown',
    'producer',
    'michael.brown@bighitentertainment(hybecorporation).com',
    '+1-785-325-5162',
    5,
    32
  ),
(
    201,
    'nancy.johnson415',
    '9!9fpHFrPl3lErM',
    'Nancy Johnson',
    'talent scout',
    'nancy.johnson@faderlabel.com',
    '+1-812-114-8892',
    12,
    6
  ),
(
    202,
    'bobby.clark811',
    'hd6P4PTGJJk',
    'Bobby Clark',
    'producer',
    'bobby.clark@300entertainment.com',
    '+1-635-743-5496',
    2,
    35
  ),
(
    203,
    'jane.morris610',
    '8yRz2Vl2m~FCJUuc',
    'Jane Morris',
    'manager',
    'jane.morris@capturedtracks.com',
    '+1-454-731-3920',
    6,
    23
  ),
(
    204,
    'alice.clark526',
    'yOuZMW2jO',
    'Alice Clark',
    'manager',
    'alice.clark@interscoperecords.com',
    '+1-933-547-6140',
    15,
    22
  ),
(
    205,
    'bobby.brown570',
    'hdeUtRv1',
    'Bobby Brown',
    'artist/independent',
    'bobby.brown@hotmail.com',
    '+1-486-128-4886',
    NULL,
    49
  ),
(
    206,
    'charles.johnson684',
    'EJxgURXaZoni~un',
    'Charles Johnson',
    'manager',
    'charles.johnson@matadorrecords.com',
    '+1-137-905-4298',
    18,
    27
  ),
(
    207,
    'nancy.white659',
    'ezrysMaO4P!zsA2e',
    'Nancy White',
    'manager',
    'nancy.white@warnerrecords.com',
    '+1-548-715-7583',
    26,
    14
  ),
(
    208,
    'bobby.doe896',
    'l~cYyQ.h',
    'Bobby Doe',
    'artist/independent',
    'bobby.doe@gmail.com',
    '+1-597-997-2940',
    NULL,
    49
  ),
(
    209,
    'robert.harris829',
    'Jio0DE',
    'Robert Harris',
    'producer',
    'robert.harris@zeligrecords.com',
    '+1-481-605-3813',
    28,
    27
  ),
(
    210,
    'charles.smith779',
    'ZF37~BuQ',
    'Charles Smith',
    'manager',
    'charles.smith@atlanticrecords.com',
    '+1-721-321-1840',
    3,
    38
  ),
(
    211,
    'linda.brown950',
    'slCwzUE',
    'Linda Brown',
    'manager',
    'linda.brown@universalmusiclatino.com',
    '+1-803-251-4373',
    25,
    21
  ),
(
    212,
    'robert.white488',
    'AoygRCkE',
    'Robert White',
    'artist/independent',
    'robert.white@gmail.com',
    '+1-279-729-5883',
    NULL,
    49
  ),
(
    213,
    'linda.brown261',
    'BXel82ijh',
    'Linda Brown',
    'producer',
    'linda.brown@dirtyhitrecords.com',
    '+1-803-860-2123',
    10,
    13
  ),
(
    214,
    'bobby.taylor843',
    '5pACnx',
    'Bobby Taylor',
    'producer',
    'bobby.taylor@rochemusique.com',
    '+1-364-495-7788',
    23,
    24
  ),
(
    215,
    'john.jones137',
    'xkzE.uWWrnY',
    'John Jones',
    'producer',
    'john.jones@warnerrecords.com',
    '+1-610-319-9321',
    26,
    25
  ),
(
    216,
    'michael.harris570',
    'StxA69ljVa3cZ',
    'Michael Harris',
    'manager',
    'michael.harris@faderlabel.com',
    '+1-177-128-2943',
    12,
    40
  ),
(
    217,
    'charles.morris702',
    'FsOncORhhfi.pc!',
    'Charles Morris',
    'producer',
    'charles.morris@atlanticrecords.com',
    '+1-403-849-7401',
    3,
    43
  ),
(
    218,
    'bobby.harris290',
    'Cayj58ELpwfuPe',
    'Bobby Harris',
    'manager',
    'bobby.harris@warnerrecords.com',
    '+1-231-173-8937',
    26,
    9
  ),
(
    219,
    'linda.brown953',
    'F~1cqMDKBvmdk4',
    'Linda Brown',
    'manager',
    'linda.brown@ygentertainment.com',
    '+1-367-675-2317',
    27,
    9
  ),
(
    220,
    'emily.brown331',
    '62~EcxonxAOy9D~',
    'Emily Brown',
    'manager',
    'emily.brown@fatpossumrecords.com',
    '+1-242-252-6847',
    13,
    35
  ),
(
    221,
    'bobby.white680',
    'oX0Znt73',
    'Bobby White',
    'artist/independent',
    'bobby.white@hotmail.com',
    '+1-829-247-2988',
    NULL,
    49
  ),
(
    222,
    'linda.smith601',
    'yvcGlGmoCHR',
    'Linda Smith',
    'manager',
    'linda.smith@topdawgentertainment.com',
    '+1-896-669-1290',
    24,
    12
  ),
(
    223,
    'charles.jones337',
    'rkVwq2DR',
    'Charles Jones',
    'producer',
    'charles.jones@republicrecords.com',
    '+1-880-666-8051',
    21,
    23
  ),
(
    224,
    'charles.clark554',
    'UeglfQJBy',
    'Charles Clark',
    'producer',
    'charles.clark@topdawgentertainment.com',
    '+1-174-238-5334',
    24,
    20
  ),
(
    225,
    'emily.johnson244',
    'CCMaft!10nN',
    'Emily Johnson',
    'artist/independent',
    'emily.johnson@yahoo.com',
    '+1-765-471-8231',
    NULL,
    50
  ),
(
    226,
    'robert.smith579',
    'lBgiii9lTmwYp35x',
    'Robert Smith',
    'producer',
    'robert.smith@interscoperecords.com',
    '+1-168-749-4260',
    15,
    33
  ),
(
    227,
    'robert.brown397',
    'C!ClC9',
    'Robert Brown',
    'producer',
    'robert.brown@fatpossumrecords.com',
    '+1-394-583-3819',
    13,
    1
  ),
(
    228,
    'robert.jones507',
    'ZQUiHr',
    'Robert Jones',
    'artist/independent',
    'robert.jones@yahoo.com',
    '+1-662-356-9841',
    NULL,
    31
  ),
(
    229,
    'linda.jones946',
    '57dpv8Hko2ws1',
    'Linda Jones',
    'manager',
    'linda.jones@atlanticrecords.com',
    '+1-253-823-1033',
    3,
    6
  ),
(
    230,
    'charles.morris597',
    'lvXbql',
    'Charles Morris',
    'producer',
    'charles.morris@defjamrecordings.com',
    '+1-293-729-5632',
    9,
    22
  ),
(
    231,
    'charles.harris125',
    'wFPBENWFcSQW',
    'Charles Harris',
    'producer',
    'charles.harris@faderlabel.com',
    '+1-648-480-9815',
    12,
    16
  ),
(
    232,
    'emily.morris988',
    'qrHYKH8',
    'Emily Morris',
    'manager',
    'emily.morris@1501certifiedentertainment.com',
    '+1-813-557-1693',
    1,
    35
  ),
(
    233,
    'charles.johnson711',
    '.cuatvG6k',
    'Charles Johnson',
    'manager',
    'charles.johnson@rochemusique.com',
    '+1-632-493-8993',
    23,
    13
  ),
(
    234,
    'bobby.morris749',
    'NIsO5nDbmKrK',
    'Bobby Morris',
    'artist/independent',
    'bobby.morris@yahoo.com',
    '+1-110-566-2626',
    NULL,
    45
  ),
(
    235,
    'jane.brown401',
    'tKrExGEKs',
    'Jane Brown',
    'manager',
    'jane.brown@mom+popmusic.com',
    '+1-461-861-9029',
    19,
    26
  ),
(
    236,
    'jane.johnson186',
    'gL1PH4qnsm.hL25',
    'Jane Johnson',
    'manager',
    'jane.johnson@ygentertainment.com',
    '+1-283-810-6293',
    27,
    5
  ),
(
    237,
    'charles.white114',
    '!sLTdc6uJ',
    'Charles White',
    'talent scout',
    'charles.white@faderlabel.com',
    '+1-986-908-8703',
    12,
    2
  ),
(
    238,
    'jane.harris599',
    'Wb~8HJkwLpgeO',
    'Jane Harris',
    'manager',
    'jane.harris@jagjaguwar.com',
    '+1-161-565-8122',
    17,
    42
  ),
(
    239,
    'nancy.morris115',
    'v3CUoWedrjfZv',
    'Nancy Morris',
    'artist/independent',
    'nancy.morris@hotmail.com',
    '+1-278-155-7318',
    NULL,
    48
  ),
(
    240,
    'bobby.clark932',
    'exc3jGogUF7Y',
    'Bobby Clark',
    'manager',
    'bobby.clark@300entertainment.com',
    '+1-251-663-3730',
    2,
    15
  ),
(
    241,
    'jane.smith750',
    'iBrZ52O.sw',
    'Jane Smith',
    'manager',
    'jane.smith@matadorrecords.com',
    '+1-504-212-6286',
    18,
    23
  ),
(
    242,
    'jane.johnson476',
    '5essqOPh',
    'Jane Johnson',
    'producer',
    'jane.johnson@faderlabel.com',
    '+1-210-312-4086',
    12,
    26
  ),
(
    243,
    'nancy.taylor962',
    '8PUFexF',
    'Nancy Taylor',
    'producer',
    'nancy.taylor@universalmusiclatino.com',
    '+1-856-489-4630',
    25,
    15
  ),
(
    244,
    'robert.harris419',
    's16kJDeqUJ06~',
    'Robert Harris',
    'manager',
    'robert.harris@300entertainment.com',
    '+1-425-221-5105',
    2,
    14
  ),
(
    245,
    'charles.taylor924',
    'VrELMXE78QXnDVK8',
    'Charles Taylor',
    'producer',
    'charles.taylor@zeligrecords.com',
    '+1-336-943-6582',
    28,
    22
  ),
(
    246,
    'robert.clark228',
    '1i.yg9GJ',
    'Robert Clark',
    'artist/independent',
    'robert.clark@gmail.com',
    '+1-197-768-3235',
    NULL,
    47
  ),
(
    247,
    'robert.taylor277',
    '55~9ko53bBZMi',
    'Robert Taylor',
    'manager',
    'robert.taylor@ygentertainment.com',
    '+1-952-824-4431',
    27,
    37
  ),
(
    248,
    'linda.johnson250',
    'FsGZBOW',
    'Linda Johnson',
    'manager',
    'linda.johnson@deadoceans.com',
    '+1-373-567-1163',
    8,
    10
  ),
(
    249,
    'john.white823',
    'CXOKGPljViKn',
    'John White',
    'manager',
    'john.white@interscoperecords.com',
    '+1-478-404-4712',
    15,
    32
  ),
(
    250,
    'jane.white863',
    'Z8zY3O.VZbG',
    'Jane White',
    'manager',
    'jane.white@beyondthegroove.com',
    '+1-277-927-2405',
    4,
    41
  ),
(
    251,
    'jane.harris116',
    'ZKPqp5YkrkFUGQY8',
    'Jane Harris',
    'manager',
    'jane.harris@300entertainment.com',
    '+1-124-117-1604',
    2,
    37
  ),
(
    252,
    'bobby.white486',
    'tKXqen4',
    'Bobby White',
    'artist/independent',
    'bobby.white@hotmail.com',
    '+1-825-112-2851',
    NULL,
    49
  ),
(
    253,
    'linda.jones983',
    '~X0auQZf',
    'Linda Jones',
    'manager',
    'linda.jones@topdawgentertainment.com',
    '+1-661-244-4447',
    24,
    3
  ),
(
    254,
    'michael.jones938',
    'f3rGkY~aSOL8Vo',
    'Michael Jones',
    'artist/independent',
    'michael.jones@gmail.com',
    '+1-480-471-8859',
    NULL,
    30
  ),
(
    255,
    'john.doe400',
    'q2WlftT93qBr',
    'John Doe',
    'artist/independent',
    'john.doe@gmail.com',
    '+1-975-228-3118',
    NULL,
    46
  ),
(
    256,
    'charles.white292',
    'IWZWN63C',
    'Charles White',
    'producer',
    'charles.white@beyondthegroove.com',
    '+1-936-222-4276',
    4,
    37
  ),
(
    257,
    'john.johnson392',
    'oaQEL9XyJ6jIk',
    'John Johnson',
    'manager',
    'john.johnson@defjamrecordings.com',
    '+1-425-516-8218',
    9,
    36
  ),
(
    258,
    'robert.clark106',
    'UlNd2d',
    'Robert Clark',
    'manager',
    'robert.clark@capturedtracks.com',
    '+1-764-858-9810',
    6,
    42
  ),
(
    259,
    'charles.doe230',
    'AT2TIJudB',
    'Charles Doe',
    'producer',
    'charles.doe@universalmusiclatino.com',
    '+1-796-529-1765',
    25,
    8
  ),
(
    260,
    'linda.harris429',
    'na5N9vtFe0wmi~5u',
    'Linda Harris',
    'manager',
    'linda.harris@mom+popmusic.com',
    '+1-301-844-9706',
    19,
    13
  ),
(
    261,
    'alice.morris425',
    'gSF2Y6I',
    'Alice Morris',
    'artist/independent',
    'alice.morris@gmail.com',
    '+1-443-224-6394',
    NULL,
    48
  ),
(
    262,
    'robert.doe209',
    'u3dVWdBIkIy5zj',
    'Robert Doe',
    'manager',
    'robert.doe@atlanticrecords.com',
    '+1-855-763-4069',
    3,
    24
  ),
(
    263,
    'alice.taylor964',
    '66t9kUg',
    'Alice Taylor',
    'manager',
    'alice.taylor@matadorrecords.com',
    '+1-598-654-2364',
    18,
    26
  ),
(
    264,
    'jane.morris669',
    '6G4jWLeTssp',
    'Jane Morris',
    'producer',
    'jane.morris@defjamrecordings.com',
    '+1-451-340-6165',
    9,
    14
  ),
(
    265,
    'emily.harris774',
    'dcA!8jyqKDIJq',
    'Emily Harris',
    'manager',
    'emily.harris@warnerrecords.com',
    '+1-950-733-1010',
    26,
    5
  ),
(
    266,
    'jane.white114',
    'VRHjChu9jp~r32',
    'Jane White',
    'manager',
    'jane.white@topdawgentertainment.com',
    '+1-582-607-9736',
    24,
    26
  ),
(
    267,
    'emily.white830',
    'phvZgdBt!REsXk',
    'Emily White',
    'producer',
    'emily.white@beyondthegroove.com',
    '+1-880-261-8561',
    4,
    9
  ),
(
    268,
    'michael.brown221',
    'EKXPq4T',
    'Michael Brown',
    'producer',
    'michael.brown@300entertainment.com',
    '+1-964-911-5794',
    2,
    26
  ),
(
    269,
    'robert.doe787',
    '3q1f0pJ2~ek6TKY',
    'Robert Doe',
    'manager',
    'robert.doe@rochemusique.com',
    '+1-794-981-9667',
    23,
    8
  ),
(
    270,
    'emily.johnson183',
    'b3xSCFIF0h08',
    'Emily Johnson',
    'manager',
    'emily.johnson@rcarecords.com',
    '+1-210-865-5619',
    20,
    32
  ),
(
    271,
    'alice.taylor734',
    'c22LkaxDIac2',
    'Alice Taylor',
    'manager',
    'alice.taylor@deadoceans.com',
    '+1-840-447-7250',
    8,
    19
  ),
(
    272,
    'bobby.harris823',
    'bwZqZZSl',
    'Bobby Harris',
    'artist/independent',
    'bobby.harris@hotmail.com',
    '+1-785-375-6815',
    NULL,
    49
  ),
(
    273,
    'michael.white137',
    'xJS1fGX8Soko!YU9',
    'Michael White',
    'manager',
    'michael.white@300entertainment.com',
    '+1-336-169-7783',
    2,
    26
  ),
(
    274,
    'robert.white477',
    'HJKsfhKxZMY61W',
    'Robert White',
    'producer',
    'robert.white@jagjaguwar.com',
    '+1-879-485-2786',
    17,
    17
  ),
(
    275,
    'alice.white282',
    'knDuLCeuRV',
    'Alice White',
    'producer',
    'alice.white@mom+popmusic.com',
    '+1-858-555-4743',
    19,
    44
  ),
(
    276,
    'robert.clark117',
    'LOuEel7XfVtvunB8',
    'Robert Clark',
    'artist/independent',
    'robert.clark@hotmail.com',
    '+1-644-152-8479',
    NULL,
    46
  ),
(
    277,
    'john.doe270',
    'N6bIY3MG6.zQGmPS',
    'John Doe',
    'manager',
    'john.doe@geffenrecords.com',
    '+1-154-210-7160',
    14,
    17
  ),
(
    278,
    'john.jones718',
    '5aH7z46Ran',
    'John Jones',
    'manager',
    'john.jones@dirtyhitrecords.com',
    '+1-360-727-9709',
    10,
    41
  ),
(
    279,
    'nancy.brown742',
    '669WwY3738wN4IO',
    'Nancy Brown',
    'producer',
    'nancy.brown@dirtyhitrecords.com',
    '+1-420-931-1904',
    10,
    23
  ),
(
    280,
    'robert.johnson556',
    '2xiB~HFT',
    'Robert Johnson',
    'manager',
    'robert.johnson@jagjaguwar.com',
    '+1-338-358-3038',
    17,
    11
  ),
(
    281,
    'bobby.taylor150',
    'FouN!UKfrA',
    'Bobby Taylor',
    'producer',
    'bobby.taylor@1501certifiedentertainment.com',
    '+1-195-645-1675',
    1,
    11
  ),
(
    282,
    'emily.morris581',
    '2a9y8Iox',
    'Emily Morris',
    'manager',
    'emily.morris@warnerrecords.com',
    '+1-915-477-7632',
    26,
    6
  ),
(
    283,
    'john.brown330',
    'Itz75b5GKw',
    'John Brown',
    'manager',
    'john.brown@1501certifiedentertainment.com',
    '+1-759-510-2544',
    1,
    13
  ),
(
    284,
    'emily.morris314',
    'K4Yn8.0TRccdLUX',
    'Emily Morris',
    'manager',
    'emily.morris@300entertainment.com',
    '+1-583-676-8411',
    2,
    33
  ),
(
    285,
    'michael.brown910',
    '62PBLyuQskaZf',
    'Michael Brown',
    'manager',
    'michael.brown@republicrecords.com',
    '+1-591-702-4579',
    21,
    43
  ),
(
    286,
    'michael.johnson834',
    'UKYHA.wT',
    'Michael Johnson',
    'manager',
    'michael.johnson@rcarecords.com',
    '+1-180-284-7423',
    20,
    9
  ),
(
    287,
    'john.morris780',
    '!d6MzRl2pQ9',
    'John Morris',
    'artist/independent',
    'john.morris@yahoo.com',
    '+1-202-164-7290',
    NULL,
    46
  ),
(
    288,
    'robert.johnson182',
    'nhhxwSC.0b',
    'Robert Johnson',
    'producer',
    'robert.johnson@mom+popmusic.com',
    '+1-530-931-5420',
    19,
    7
  ),
(
    289,
    'emily.doe537',
    '1~A4aTwcbzWYg',
    'Emily Doe',
    'producer',
    'emily.doe@beyondthegroove.com',
    '+1-666-711-2440',
    4,
    8
  ),
(
    290,
    'emily.smith280',
    '1rgA84vwM0.g7dI',
    'Emily Smith',
    'manager',
    'emily.smith@republicrecords.com',
    '+1-784-697-6471',
    21,
    16
  ),
(
    291,
    'jane.johnson951',
    'vH9!QxlHIMtedPTA',
    'Jane Johnson',
    'manager',
    'jane.johnson@mom+popmusic.com',
    '+1-184-173-1183',
    19,
    32
  ),
(
    292,
    'linda.jones587',
    'DaOBE9',
    'Linda Jones',
    'manager',
    'linda.jones@atlanticrecords.com',
    '+1-201-144-3684',
    3,
    18
  ),
(
    293,
    'bobby.harris551',
    'qkDdIE',
    'Bobby Harris',
    'producer',
    'bobby.harris@islandrecords.com',
    '+1-632-578-3704',
    16,
    13
  ),
(
    294,
    'alice.brown942',
    'za.dT2',
    'Alice Brown',
    'manager',
    'alice.brown@dirtyhitrecords.com',
    '+1-891-231-2391',
    10,
    24
  ),
(
    295,
    'bobby.taylor235',
    '4G~cOa4',
    'Bobby Taylor',
    'manager',
    'bobby.taylor@geffenrecords.com',
    '+1-968-844-9399',
    14,
    42
  ),
(
    296,
    'charles.brown708',
    '1C!rpag7BJL',
    'Charles Brown',
    'producer',
    'charles.brown@topdawgentertainment.com',
    '+1-902-678-8703',
    24,
    36
  ),
(
    297,
    'nancy.johnson581',
    'QyEBLPYJJMcI',
    'Nancy Johnson',
    'manager',
    'nancy.johnson@1501certifiedentertainment.com',
    '+1-593-992-4533',
    1,
    22
  ),
(
    298,
    'linda.smith106',
    'p00Fd8A',
    'Linda Smith',
    'producer',
    'linda.smith@epicrecords.com',
    '+1-169-553-3143',
    11,
    23
  ),
(
    299,
    'nancy.johnson390',
    'f9kVKjjLFVp!5jQ',
    'Nancy Johnson',
    'manager',
    'nancy.johnson@columbiarecords.com',
    '+1-384-759-1489',
    7,
    16
  ),
(
    300,
    'jane.taylor332',
    'bvllO63YScbIHsE',
    'Jane Taylor',
    'manager',
    'jane.taylor@fatpossumrecords.com',
    '+1-326-681-5660',
    13,
    22
  ),
(
    301,
    'nancy.clark861',
    'TAgdCZmw',
    'Nancy Clark',
    'manager',
    'nancy.clark@deadoceans.com',
    '+1-604-464-6064',
    8,
    28
  ),
(
    302,
    'jane.smith407',
    'k0O6ZndpWDBGzp',
    'Jane Smith',
    'manager',
    'jane.smith@defjamrecordings.com',
    '+1-273-449-7328',
    9,
    7
  ),
(
    303,
    'charles.johnson212',
    'RQI.He',
    'Charles Johnson',
    'manager',
    'charles.johnson@atlanticrecords.com',
    '+1-453-724-7274',
    3,
    32
  ),
(
    304,
    'john.brown186',
    '5ipFIR9.Lmqq38',
    'John Brown',
    'manager',
    'john.brown@epicrecords.com',
    '+1-889-946-3251',
    11,
    11
  ),
(
    305,
    'jane.morris349',
    'hNLv3tP0Gf2BsfqE',
    'Jane Morris',
    'manager',
    'jane.morris@columbiarecords.com',
    '+1-692-108-4065',
    7,
    11
  ),
(
    306,
    'bobby.doe964',
    'kQ4hwLiW6RN.QDdL',
    'Bobby Doe',
    'artist/independent',
    'bobby.doe@hotmail.com',
    '+1-732-958-8009',
    NULL,
    50
  ),
(
    307,
    'charles.jones120',
    'C60Iu0zGdpBQ',
    'Charles Jones',
    'producer',
    'charles.jones@zeligrecords.com',
    '+1-639-229-8612',
    28,
    17
  ),
(
    308,
    'jane.white207',
    'Uhwzyh!X2p',
    'Jane White',
    'producer',
    'jane.white@mom+popmusic.com',
    '+1-772-260-8448',
    19,
    5
  ),
(
    309,
    'emily.smith601',
    'fS3RH1c5uo7~aw',
    'Emily Smith',
    'producer',
    'emily.smith@islandrecords.com',
    '+1-858-180-6425',
    16,
    18
  ),
(
    310,
    'bobby.white887',
    'P7BYuHveQ.ep3xpu',
    'Bobby White',
    'manager',
    'bobby.white@fatpossumrecords.com',
    '+1-488-975-3285',
    13,
    36
  ),
(
    311,
    'emily.smith363',
    '13kXOAV',
    'Emily Smith',
    'producer',
    'emily.smith@rimasentertainment.com',
    '+1-435-400-4173',
    22,
    19
  ),
(
    312,
    'nancy.morris969',
    'ZCqJE8I',
    'Nancy Morris',
    'talent scout',
    'nancy.morris@1501certifiedentertainment.com',
    '+1-984-307-8992',
    1,
    6
  ),
(
    313,
    'alice.white189',
    'bNxm7maX8J5kI',
    'Alice White',
    'manager',
    'alice.white@rimasentertainment.com',
    '+1-732-426-7197',
    22,
    1
  ),
(
    314,
    'john.clark208',
    '!97pGwwckG',
    'John Clark',
    'manager',
    'john.clark@islandrecords.com',
    '+1-269-398-1932',
    16,
    20
  ),
(
    315,
    'emily.morris702',
    '.!DmNzm',
    'Emily Morris',
    'manager',
    'emily.morris@bighitentertainment(hybecorporation).com',
    '+1-444-433-7745',
    5,
    16
  ),
(
    316,
    'bobby.taylor617',
    'aFTUiW28aGd',
    'Bobby Taylor',
    'producer',
    'bobby.taylor@interscoperecords.com',
    '+1-119-584-9899',
    15,
    39
  ),
(
    317,
    'john.clark185',
    'TVNYioWF',
    'John Clark',
    'artist/independent',
    'john.clark@yahoo.com',
    '+1-112-542-5907',
    NULL,
    46
  ),
(
    318,
    'nancy.harris276',
    'Fkw6LpX44VON4',
    'Nancy Harris',
    'manager',
    'nancy.harris@epicrecords.com',
    '+1-135-559-4703',
    11,
    4
  ),
(
    319,
    'nancy.johnson538',
    'wF7sFV',
    'Nancy Johnson',
    'producer',
    'nancy.johnson@ygentertainment.com',
    '+1-526-794-6532',
    27,
    8
  ),
(
    320,
    'bobby.white866',
    'Oft3ehhcH4rHS39D',
    'Bobby White',
    'producer',
    'bobby.white@defjamrecordings.com',
    '+1-958-916-8655',
    9,
    28
  ),
(
    321,
    'emily.johnson156',
    'ulztcM5',
    'Emily Johnson',
    'manager',
    'emily.johnson@epicrecords.com',
    '+1-686-194-6881',
    11,
    25
  ),
(
    322,
    'alice.white812',
    '8Gg4sQ6Rlg',
    'Alice White',
    'manager',
    'alice.white@epicrecords.com',
    '+1-782-901-5679',
    11,
    9
  ),
(
    323,
    'charles.doe551',
    'mkjwibLjS',
    'Charles Doe',
    'producer',
    'charles.doe@deadoceans.com',
    '+1-627-730-4234',
    8,
    44
  ),
(
    324,
    'alice.jones831',
    'fW96XNwg5h7wJFl',
    'Alice Jones',
    'producer',
    'alice.jones@deadoceans.com',
    '+1-965-222-8025',
    8,
    11
  ),
(
    325,
    'robert.doe728',
    'Wb3byLkOZIlh1k',
    'Robert Doe',
    'talent scout',
    'robert.doe@1501certifiedentertainment.com',
    '+1-155-940-1070',
    1,
    8
  ),
(
    326,
    'emily.white931',
    '2i.eU.esHZ9DwFeH',
    'Emily White',
    'manager',
    'emily.white@mom+popmusic.com',
    '+1-416-377-6245',
    19,
    20
  ),
(
    327,
    'linda.jones741',
    'RZxO2UR',
    'Linda Jones',
    'producer',
    'linda.jones@geffenrecords.com',
    '+1-162-741-9428',
    14,
    8
  ),
(
    328,
    'bobby.clark138',
    'Ev9.Mph4FhQ~nvt',
    'Bobby Clark',
    'producer',
    'bobby.clark@columbiarecords.com',
    '+1-175-212-1122',
    7,
    26
  ),
(
    329,
    'linda.jones302',
    'pKE.m.M!TKKiThzB',
    'Linda Jones',
    'manager',
    'linda.jones@rimasentertainment.com',
    '+1-194-561-3644',
    22,
    25
  ),
(
    330,
    'linda.jones827',
    '8xMLSCZwTunJFw',
    'Linda Jones',
    'manager',
    'linda.jones@epicrecords.com',
    '+1-157-205-1640',
    11,
    29
  ),
(
    331,
    'jane.clark594',
    'RUXksfvXDhwb7A4k',
    'Jane Clark',
    'producer',
    'jane.clark@rochemusique.com',
    '+1-925-714-7660',
    23,
    18
  ),
(
    332,
    'michael.smith747',
    '92bqaYT!',
    'Michael Smith',
    'manager',
    'michael.smith@faderlabel.com',
    '+1-662-190-7331',
    12,
    9
  ),
(
    333,
    'michael.taylor489',
    'V2hJiJ',
    'Michael Taylor',
    'artist/independent',
    'michael.taylor@hotmail.com',
    '+1-223-831-2987',
    NULL,
    45
  ),
(
    334,
    'alice.doe225',
    'Pj0uXp6oQo!JbbcP',
    'Alice Doe',
    'producer',
    'alice.doe@300entertainment.com',
    '+1-431-849-4108',
    2,
    20
  ),
(
    335,
    'nancy.taylor327',
    'IC9yCpshJG',
    'Nancy Taylor',
    'producer',
    'nancy.taylor@topdawgentertainment.com',
    '+1-933-332-5268',
    24,
    27
  ),
(
    336,
    'alice.harris794',
    'uUHQZpH',
    'Alice Harris',
    'manager',
    'alice.harris@topdawgentertainment.com',
    '+1-845-206-4863',
    24,
    6
  ),
(
    337,
    'linda.doe490',
    'QSh1tbEJVpCUNL',
    'Linda Doe',
    'producer',
    'linda.doe@ygentertainment.com',
    '+1-787-363-8942',
    27,
    22
  ),
(
    338,
    'charles.harris894',
    'bX9Vqp',
    'Charles Harris',
    'producer',
    'charles.harris@zeligrecords.com',
    '+1-183-134-9594',
    28,
    32
  ),
(
    339,
    'linda.johnson108',
    'I6k51cmbptp8ss',
    'Linda Johnson',
    'talent scout',
    'linda.johnson@faderlabel.com',
    '+1-436-357-4434',
    12,
    14
  ),
(
    340,
    'linda.brown900',
    'VZYlSXkFVS~',
    'Linda Brown',
    'manager',
    'linda.brown@deadoceans.com',
    '+1-177-814-1219',
    8,
    44
  ),
(
    341,
    'linda.clark462',
    'kW5jWaCU8O',
    'Linda Clark',
    'producer',
    'linda.clark@epicrecords.com',
    '+1-789-434-5683',
    11,
    12
  ),
(
    342,
    'alice.taylor912',
    'BqbUwoyMttCsZa',
    'Alice Taylor',
    'producer',
    'alice.taylor@columbiarecords.com',
    '+1-778-592-5830',
    7,
    18
  ),
(
    343,
    'emily.taylor877',
    'oV5RFCMwk',
    'Emily Taylor',
    'producer',
    'emily.taylor@rcarecords.com',
    '+1-855-734-8779',
    20,
    35
  ),
(
    344,
    'alice.doe694',
    'aiJmjxJV5GHkS',
    'Alice Doe',
    'producer',
    'alice.doe@zeligrecords.com',
    '+1-338-165-2350',
    28,
    21
  ),
(
    345,
    'charles.harris505',
    'CBC6ThLAM',
    'Charles Harris',
    'manager',
    'charles.harris@islandrecords.com',
    '+1-993-328-9758',
    16,
    44
  ),
(
    346,
    'john.johnson905',
    'TFvHxyqw',
    'John Johnson',
    'manager',
    'john.johnson@atlanticrecords.com',
    '+1-472-280-1585',
    3,
    41
  ),
(
    347,
    'nancy.smith845',
    'zT0a8B',
    'Nancy Smith',
    'artist/independent',
    'nancy.smith@gmail.com',
    '+1-956-910-1792',
    NULL,
    50
  ),
(
    348,
    'michael.white117',
    'fYsEYw8vA',
    'Michael White',
    'producer',
    'michael.white@warnerrecords.com',
    '+1-667-481-9399',
    26,
    28
  ),
(
    349,
    'jane.clark478',
    'FpVeG4',
    'Jane Clark',
    'talent scout',
    'jane.clark@rochemusique.com',
    '+1-548-543-7910',
    23,
    39
  ),
(
    350,
    'bobby.clark802',
    'AacdZhl',
    'Bobby Clark',
    'producer',
    'bobby.clark@epicrecords.com',
    '+1-949-619-8937',
    11,
    1
  ),
(
    351,
    'linda.white4091',
    'jsXzcmuo90A6OWAu',
    'Linda White',
    'manager',
    'linda.white@warnerrecords.com',
    '+1-271-607-6550',
    26,
    44
  ),
(
    352,
    'charles.johnson811',
    'Kh.NlLsuk8yprOD',
    'Charles Johnson',
    'producer',
    'charles.johnson@jagjaguwar.com',
    '+1-220-409-2672',
    17,
    28
  ),
(
    353,
    'michael.clark422',
    'kZHCjlg029iLZG',
    'Michael Clark',
    'manager',
    'michael.clark@1501certifiedentertainment.com',
    '+1-720-356-5797',
    1,
    16
  ),
(
    354,
    'robert.harris293',
    'fdetv2jfHR',
    'Robert Harris',
    'artist/independent',
    'robert.harris@hotmail.com',
    '+1-168-328-7845',
    NULL,
    45
  ),
(
    355,
    'john.morris775',
    'I2UlmY.5AfmMLz',
    'John Morris',
    'manager',
    'john.morris@epicrecords.com',
    '+1-723-340-6004',
    11,
    38
  ),
(
    356,
    'emily.white554',
    '0G0bx797!qo749',
    'Emily White',
    'artist/independent',
    'emily.white@yahoo.com',
    '+1-376-572-1225',
    NULL,
    50
  ),
(
    357,
    'michael.taylor879',
    'ocCBRMZb9V',
    'Michael Taylor',
    'manager',
    'michael.taylor@topdawgentertainment.com',
    '+1-382-125-8479',
    24,
    14
  ),
(
    358,
    'linda.morris476',
    '9bBgFsfUf',
    'Linda Morris',
    'manager',
    'linda.morris@republicrecords.com',
    '+1-493-150-1754',
    21,
    33
  ),
(
    359,
    'john.jones173',
    'kCvcIi~KN1.',
    'John Jones',
    'producer',
    'john.jones@atlanticrecords.com',
    '+1-401-435-9825',
    3,
    35
  ),
(
    360,
    'bobby.jones850',
    'LlXhTqh',
    'Bobby Jones',
    'talent scout',
    'bobby.jones@epicrecords.com',
    '+1-720-524-3222',
    11,
    32
  ),
(
    361,
    'linda.smith836',
    '9p88!n',
    'Linda Smith',
    'producer',
    'linda.smith@zeligrecords.com',
    '+1-967-347-6563',
    28,
    32
  ),
(
    362,
    'robert.johnson779',
    'HGz1TgX9w',
    'Robert Johnson',
    'producer',
    'robert.johnson@fatpossumrecords.com',
    '+1-100-182-7791',
    13,
    12
  ),
(
    363,
    'bobby.jones139',
    'xeprvMipGA9OdVG',
    'Bobby Jones',
    'producer',
    'bobby.jones@atlanticrecords.com',
    '+1-607-402-5681',
    3,
    1
  ),
(
    364,
    'michael.clark817',
    'PsNSDuZqB',
    'Michael Clark',
    'artist/independent',
    'michael.clark@gmail.com',
    '+1-123-543-4269',
    NULL,
    34
  ),
(
    365,
    'michael.clark296',
    'UVrPl5p3Se',
    'Michael Clark',
    'manager',
    'michael.clark@beyondthegroove.com',
    '+1-102-345-4464',
    4,
    12
  ),
(
    366,
    'john.taylor432',
    '6sYlWSGP',
    'John Taylor',
    'producer',
    'john.taylor@interscoperecords.com',
    '+1-295-779-6609',
    15,
    18
  ),
(
    367,
    'nancy.doe406',
    'trLAcPvCI!',
    'Nancy Doe',
    'manager',
    'nancy.doe@mom+popmusic.com',
    '+1-670-424-7805',
    19,
    21
  ),
(
    368,
    'robert.johnson810',
    'mWwWJGjf9',
    'Robert Johnson',
    'manager',
    'robert.johnson@300entertainment.com',
    '+1-891-136-2296',
    2,
    14
  ),
(
    369,
    'robert.clark804',
    '1Xu4wp',
    'Robert Clark',
    'manager',
    'robert.clark@jagjaguwar.com',
    '+1-207-889-5126',
    17,
    25
  ),
(
    370,
    'bobby.johnson527',
    '4EeSv~',
    'Bobby Johnson',
    'producer',
    'bobby.johnson@300entertainment.com',
    '+1-808-251-7390',
    2,
    12
  ),
(
    371,
    'jane.harris195',
    '1ppjlYcNs8A6OAIJ',
    'Jane Harris',
    'producer',
    'jane.harris@columbiarecords.com',
    '+1-407-926-4025',
    7,
    5
  ),
(
    372,
    'robert.taylor101',
    'zD1B!c.',
    'Robert Taylor',
    'producer',
    'robert.taylor@universalmusiclatino.com',
    '+1-887-341-3293',
    25,
    12
  ),
(
    373,
    'emily.brown9931',
    'p2ZvYltdMT7g8c',
    'Emily Brown',
    'manager',
    'emily.brown@bighitentertainment(hybecorporation).com',
    '+1-424-920-2708',
    5,
    20
  ),
(
    374,
    'nancy.morris919',
    'fpOOJEcWQvPO',
    'Nancy Morris',
    'manager',
    'nancy.morris@beyondthegroove.com',
    '+1-221-196-8840',
    4,
    14
  ),
(
    375,
    'michael.johnson151',
    'dSsOqALhcINPvwJ',
    'Michael Johnson',
    'manager',
    'michael.johnson@epicrecords.com',
    '+1-639-825-9208',
    11,
    10
  ),
(
    376,
    'charles.taylor713',
    'rd7MiuRG9fTkK3',
    'Charles Taylor',
    'manager',
    'charles.taylor@ygentertainment.com',
    '+1-288-273-8883',
    27,
    38
  ),
(
    377,
    'michael.harris842',
    'iGs4xHRMTXSKbG',
    'Michael Harris',
    'producer',
    'michael.harris@zeligrecords.com',
    '+1-938-137-1450',
    28,
    32
  ),
(
    378,
    'emily.clark299',
    'DCFD.dmVN',
    'Emily Clark',
    'producer',
    'emily.clark@defjamrecordings.com',
    '+1-896-185-4730',
    9,
    40
  ),
(
    379,
    'robert.white221',
    'R9oM14ZGYx7yL',
    'Robert White',
    'manager',
    'robert.white@columbiarecords.com',
    '+1-892-307-8303',
    7,
    10
  ),
(
    380,
    'jane.white988',
    'vYB7koF!ubEzwq9',
    'Jane White',
    'producer',
    'jane.white@universalmusiclatino.com',
    '+1-442-679-7585',
    25,
    15
  ),
(
    381,
    'linda.jones500',
    'XDaN!LclQFGc5Z',
    'Linda Jones',
    'producer',
    'linda.jones@atlanticrecords.com',
    '+1-217-141-5902',
    3,
    33
  ),
(
    382,
    'charles.johnson545',
    'kV9Xha',
    'Charles Johnson',
    'manager',
    'charles.johnson@dirtyhitrecords.com',
    '+1-328-688-8392',
    10,
    41
  ),
(
    383,
    'alice.harris508',
    'rxs4Ae9UPp',
    'Alice Harris',
    'manager',
    'alice.harris@1501certifiedentertainment.com',
    '+1-287-526-5589',
    1,
    14
  ),
(
    384,
    'jane.taylor237',
    '8!MwGgpRP0NlTg',
    'Jane Taylor',
    'producer',
    'jane.taylor@fatpossumrecords.com',
    '+1-269-231-3041',
    13,
    44
  ),
(
    385,
    'emily.jones660',
    '68zstIzwrhm!o6Ap',
    'Emily Jones',
    'manager',
    'emily.jones@warnerrecords.com',
    '+1-969-584-7847',
    26,
    33
  ),
(
    386,
    'bobby.doe822',
    '5BEQ2UexRnMH!AXy',
    'Bobby Doe',
    'producer',
    'bobby.doe@bighitentertainment(hybecorporation).com',
    '+1-819-789-2858',
    5,
    1
  ),
(
    387,
    'bobby.jones404',
    'kHCddtbIqUo',
    'Bobby Jones',
    'producer',
    'bobby.jones@faderlabel.com',
    '+1-805-360-7738',
    12,
    6
  ),
(
    388,
    'charles.smith464',
    'xVgyCelvlPoB9',
    'Charles Smith',
    'manager',
    'charles.smith@capturedtracks.com',
    '+1-837-483-2677',
    6,
    17
  ),
(
    389,
    'nancy.taylor149',
    'yhrtVQR',
    'Nancy Taylor',
    'manager',
    'nancy.taylor@capturedtracks.com',
    '+1-160-762-7041',
    6,
    39
  ),
(
    390,
    'john.brown937',
    'YYY!wseyIT~',
    'John Brown',
    'artist/independent',
    'john.brown@hotmail.com',
    '+1-896-630-5970',
    NULL,
    47
  ),
(
    391,
    'michael.white889',
    'Wfe1LcFCd9zOD~W',
    'Michael White',
    'producer',
    'michael.white@defjamrecordings.com',
    '+1-951-155-2020',
    9,
    4
  ),
(
    392,
    'charles.white921',
    'ZQMgtWWkJ5G',
    'Charles White',
    'producer',
    'charles.white@fatpossumrecords.com',
    '+1-963-971-9263',
    13,
    8
  ),
(
    393,
    'robert.taylor749',
    'YAN0vGgGNWVK7Dq',
    'Robert Taylor',
    'manager',
    'robert.taylor@topdawgentertainment.com',
    '+1-383-352-7941',
    24,
    16
  ),
(
    394,
    'charles.jones807',
    'QgPjhvLPN1Av',
    'Charles Jones',
    'producer',
    'charles.jones@rcarecords.com',
    '+1-973-901-5249',
    20,
    10
  ),
(
    395,
    'jane.brown211',
    'sZc~TOLZFpLI',
    'Jane Brown',
    'manager',
    'jane.brown@capturedtracks.com',
    '+1-207-888-7994',
    6,
    23
  ),
(
    396,
    'robert.clark315',
    'XqDKZx~Dv2F7qnrP',
    'Robert Clark',
    'manager',
    'robert.clark@topdawgentertainment.com',
    '+1-768-956-8533',
    24,
    28
  ),
(
    397,
    'nancy.clark658',
    'qIG2K0LxR0Be4n',
    'Nancy Clark',
    'producer',
    'nancy.clark@universalmusiclatino.com',
    '+1-357-551-6844',
    25,
    3
  ),
(
    398,
    'robert.taylor742',
    'h7An2u8e~lR',
    'Robert Taylor',
    'producer',
    'robert.taylor@rcarecords.com',
    '+1-853-536-2734',
    20,
    33
  ),
(
    399,
    'charles.clark374',
    '8PnZS0jf',
    'Charles Clark',
    'artist/independent',
    'charles.clark@yahoo.com',
    '+1-284-186-3672',
    NULL,
    49
  ),
(
    400,
    'linda.harris760',
    'DI8KASoEY7',
    'Linda Harris',
    'manager',
    'linda.harris@fatpossumrecords.com',
    '+1-406-216-1621',
    13,
    15
  );
/*!40000 ALTER TABLE `User` ENABLE KEYS */
;
UNLOCK TABLES;
--
-- Table structure for table `Venue`
--

DROP TABLE IF EXISTS `Venue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */
;
/*!50503 SET character_set_client = utf8mb4 */
;
CREATE TABLE `Venue` (
  `venue_id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `metropolitan` varchar(50) DEFAULT NULL,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `address` text,
  `capacity` int DEFAULT NULL,
  `pricing` float DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `website` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`venue_id`)
) ENGINE = InnoDB AUTO_INCREMENT = 41 DEFAULT CHARSET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */
;
--
-- Dumping data for table `Venue`
--

LOCK TABLES `Venue` WRITE;
/*!40000 ALTER TABLE `Venue` DISABLE KEYS */
;
INSERT INTO `Venue`
VALUES (
    1,
    'American Airlines Center',
    'Dallas',
    32.7905,
    -96.8103,
    '2500 Victory Ave, Dallas, TX 75219',
    20000,
    100000,
    '(214) 222-3687',
    'bookings@aac.com',
    'https://americanairlinescenter.com'
  ),
(
    2,
    'House of Blues Dallas',
    'Dallas',
    32.785,
    -96.8084,
    '2200 N Lamar St, Dallas, TX 75202',
    1000,
    5000,
    '(214) 978-2583',
    'events@hobdallas.com',
    'https://houseofblues.com/dallas'
  ),
(
    3,
    'Granada Theater',
    'Dallas',
    32.832,
    -96.7699,
    '3524 Greenville Ave, Dallas, TX 75206',
    1000,
    4500,
    '(214) 824-9933',
    'info@granadatheater.com',
    'https://granadatheater.com'
  ),
(
    4,
    'The Bomb Factory',
    'Dallas',
    32.7838,
    -96.7832,
    '2713 Canton St, Dallas, TX 75226',
    4300,
    15000,
    '(214) 932-6501',
    'contact@bombfactory.com',
    'https://thebombfactory.com'
  ),
(
    5,
    'The Kessler Theater',
    'Dallas',
    32.748,
    -96.8445,
    '1230 W Davis St, Dallas, TX 75208',
    400,
    2000,
    '(214) 272-8346',
    'kessler@dallas.com',
    'https://thekessler.org'
  ),
(
    6,
    'Dos Equis Pavilion',
    'Dallas',
    32.7764,
    -96.7643,
    '3839 S Fitzhugh Ave, Dallas, TX 75210',
    20000,
    70000,
    '(214) 421-1111',
    'contact@dosequis.com',
    'https://livenation.com/venue'
  ),
(
    7,
    'Trees',
    'Dallas',
    32.7835,
    -96.783,
    '2709 Elm St, Dallas, TX 75226',
    600,
    3000,
    '(214) 741-1122',
    'info@treesdallas.com',
    'https://treesdallas.com'
  ),
(
    8,
    'Gilley\'s Dallas',
    'Dallas',
    32.7703,
    -96.7969,
    '1135 S Lamar St, Dallas, TX 75215',
    3000,
    12000,
    '(214) 421-2021',
    'contact@gilleys.com',
    'https://gilleysdallas.com'
  ),
(
    9,
    'The Rustic',
    'Dallas',
    32.8057,
    -96.797,
    '3656 Howell St, Dallas, TX 75204',
    2000,
    10000,
    '(214) 730-0596',
    'events@therustic.com',
    'https://therustic.com/dallas'
  ),
(
    10,
    'South Side Ballroom',
    'Dallas',
    32.7703,
    -96.7969,
    '1135 S Lamar St, Dallas, TX 75215',
    4000,
    15000,
    '(214) 421-2021',
    'events@southside.com',
    'https://southsideballroom.com'
  ),
(
    11,
    'The Majestic Theatre',
    'Dallas',
    32.7825,
    -96.7954,
    '1925 Elm St, Dallas, TX 75201',
    1700,
    8000,
    '(214) 670-3687',
    'contact@majestic.com',
    'https://majestic.dallasculture.org'
  ),
(
    12,
    'Winspear Opera House',
    'Dallas',
    32.7911,
    -96.797,
    '2403 Flora St, Dallas, TX 75201',
    2200,
    12000,
    '(214) 880-0202',
    'contact@winspear.com',
    'https://attpac.org'
  ),
(
    13,
    'The Factory in Deep Ellum',
    'Dallas',
    32.7838,
    -96.7832,
    '2713 Canton St, Dallas, TX 75226',
    4300,
    15000,
    '(214) 932-6501',
    'info@factorydeepellum.com',
    'https://thefactoryindeepellum.com'
  ),
(
    14,
    'Meyerson Symphony Center',
    'Dallas',
    32.7906,
    -96.7975,
    '2301 Flora St, Dallas, TX 75201',
    2062,
    12000,
    '(214) 670-3600',
    'info@meyerson.com',
    'https://dallassymphony.org'
  ),
(
    15,
    'The Pavilion at Toyota Music Factory',
    'Dallas',
    32.876,
    -96.9394,
    '300 W Las Colinas Blvd, Irving, TX 75039',
    8000,
    35000,
    '(972) 810-1499',
    'bookings@toyota.com',
    'https://thepaviliontmf.com'
  ),
(
    16,
    'The Cambridge Room',
    'Dallas',
    32.785,
    -96.8084,
    '2200 N Lamar St, Dallas, TX 75202',
    300,
    1500,
    '(214) 978-2583',
    'info@cambridgeroom.com',
    'https://houseofblues.com/cambridge'
  ),
(
    17,
    'The Echo Lounge & Music Hall',
    'Dallas',
    32.8,
    -96.819,
    '1323 N Stemmons Fwy, Dallas, TX 75207',
    1000,
    5000,
    '(214) 438-2042',
    'info@echolounge.com',
    'https://echolounge.com'
  ),
(
    18,
    'Deep Ellum Art Company',
    'Dallas',
    32.7832,
    -96.7831,
    '3200 Commerce St, Dallas, TX 75226',
    600,
    3000,
    '(214) 377-4097',
    'info@deepellumartco.com',
    'https://deepellumartco.com'
  ),
(
    19,
    'Three Links',
    'Dallas',
    32.7835,
    -96.783,
    '2704 Elm St, Dallas, TX 75226',
    200,
    1500,
    '(214) 653-8228',
    'info@threelinks.com',
    'https://threelinks.com'
  ),
(
    20,
    'Club Dada',
    'Dallas',
    32.7833,
    -96.7832,
    '2720 Elm St, Dallas, TX 75226',
    400,
    2000,
    '(214) 742-3400',
    'info@clubdada.com',
    'https://clubdada.com'
  ),
(
    21,
    'Billy Bob’s Texas',
    'Fort Worth',
    32.7908,
    -97.3465,
    '2520 Rodeo Plaza, Fort Worth, TX 76164',
    6000,
    30000,
    '(817) 624-7117',
    'info@billybobs.com',
    'https://billybobstexas.com'
  ),
(
    22,
    'Panther Island Pavilion',
    'Fort Worth',
    32.7552,
    -97.3411,
    '395 Purcey St, Fort Worth, TX 76102',
    10000,
    50000,
    '(817) 698-0700',
    'panther@fortworth.com',
    'https://pantherislandpavilion.com'
  ),
(
    23,
    'Bass Performance Hall',
    'Fort Worth',
    32.7541,
    -97.3306,
    '525 Commerce St, Fort Worth, TX 76102',
    2042,
    12000,
    '(817) 212-4280',
    'bass@fortworth.com',
    'https://basshall.com'
  ),
(
    24,
    'Ridglea Theater',
    'Fort Worth',
    32.7257,
    -97.4295,
    '6025 Camp Bowie Blvd, Fort Worth, TX 76116',
    1500,
    7000,
    '(817) 738-9500',
    'ridglea@fortworth.com',
    'https://theridglea.com'
  ),
(
    25,
    'Dickies Arena',
    'Fort Worth',
    32.744,
    -97.368,
    '1911 Montgomery St, Fort Worth, TX 76107',
    14000,
    75000,
    '(817) 402-9000',
    'dickies@fortworth.com',
    'https://dickiesarena.com'
  ),
(
    26,
    'The Post at River East',
    'Fort Worth',
    32.7761,
    -97.3056,
    '2925 Race St, Fort Worth, TX 76111',
    300,
    2000,
    '(682) 231-1310',
    'info@postrivereast.com',
    'https://postrivereast.com'
  ),
(
    27,
    'Magnolia Motor Lounge',
    'Fort Worth',
    32.7488,
    -97.3562,
    '3005 Morton St, Fort Worth, TX 76107',
    300,
    2000,
    '(817) 332-3344',
    'info@magnolialounge.com',
    'https://magnoliamotorlounge.com'
  ),
(
    28,
    'The Rail Club Live',
    'Fort Worth',
    32.7223,
    -97.4432,
    '3101 Joyce Dr, Fort Worth, TX 76116',
    1000,
    5000,
    '(817) 386-4309',
    'info@therailclublive.com',
    'https://therailclublive.com'
  ),
(
    29,
    'Tulips FTW',
    'Fort Worth',
    32.7424,
    -97.3272,
    '112 St Louis Ave, Fort Worth, TX 76104',
    800,
    4000,
    '(817) 367-9798',
    'info@tulipsftw.com',
    'https://tulipsftw.com'
  ),
(
    30,
    'The Aardvark',
    'Fort Worth',
    32.7066,
    -97.3626,
    '2905 W Berry St, Fort Worth, TX 76109',
    500,
    2500,
    '(817) 926-7814',
    'info@theaardvark.com',
    'https://theaardvark.com'
  ),
(
    31,
    'The Chat Room Pub',
    'Fort Worth',
    32.7304,
    -97.3334,
    '1263 W Magnolia Ave, Fort Worth, TX 76104',
    150,
    1000,
    '(817) 922-8319',
    'info@chatroompub.com',
    'https://chatroompub.com'
  ),
(
    32,
    'Lola’s Saloon',
    'Fort Worth',
    32.7527,
    -97.3657,
    '2736 W 6th St, Fort Worth, TX 76107',
    300,
    2000,
    '(817) 877-0666',
    'info@lolassaloon.com',
    'https://lolassaloon.com'
  ),
(
    33,
    'Scat Jazz Lounge',
    'Fort Worth',
    32.7548,
    -97.3324,
    '111 W 4th St, Fort Worth, TX 76102',
    200,
    1500,
    '(817) 870-9100',
    'info@scatjazzlounge.com',
    'https://scatjazzlounge.com'
  ),
(
    34,
    'Twilite Lounge',
    'Fort Worth',
    32.7342,
    -97.3327,
    '212 Lipscomb St, Fort Worth, TX 76104',
    100,
    1000,
    '(817) 720-5483',
    'info@twilitelounge.com',
    'https://twilitelounge.com'
  ),
(
    35,
    'Shipping & Receiving',
    'Fort Worth',
    32.7485,
    -97.3299,
    '201 S Calhoun St, Fort Worth, TX 76104',
    300,
    2500,
    '(817) 887-9313',
    'info@shippingandreceiving.com',
    'https://shippingandreceiving.com'
  ),
(
    36,
    'Caves Lounge',
    'Fort Worth',
    32.7386,
    -97.1071,
    '900 W Division St, Arlington, TX 76012',
    150,
    1200,
    '(817) 460-5510',
    'info@caveslounge.com',
    'https://caveslounge.com'
  ),
(
    37,
    'Fred’s Texas Cafe',
    'Fort Worth',
    32.7516,
    -97.3618,
    '915 Currie St, Fort Worth, TX 76107',
    200,
    1000,
    '(817) 332-0083',
    'info@fredstexascafe.com',
    'https://fredstexascafe.com'
  ),
(
    38,
    'Wild Acre Live',
    'Fort Worth',
    32.7682,
    -97.3102,
    '1734 E El Paso St, Fort Worth, TX 76102',
    1500,
    6000,
    '(817) 882-9453',
    'info@wildacre.com',
    'https://wildacre.com'
  ),
(
    39,
    'Main at South Side (MASS)',
    'Fort Worth',
    32.7397,
    -97.3278,
    '1002 S Main St, Fort Worth, TX 76104',
    500,
    3000,
    '(817) 923-9305',
    'info@massfw.com',
    'https://massfw.com'
  ),
(
    40,
    'The Moon Bar',
    'Fort Worth',
    32.7094,
    -97.3563,
    '2000 W Berry St, Fort Worth, TX 76110',
    250,
    1800,
    '(817) 926-9600',
    'info@themoonbar.com',
    'https://themoonbar.com'
  );
/*!40000 ALTER TABLE `Venue` ENABLE KEYS */
;
UNLOCK TABLES;
SET @@SESSION.SQL_LOG_BIN = @MYSQLDUMP_TEMP_LOG_BIN;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */
;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */
;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */
;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */
;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */
;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */
;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */
;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */
;
-- Dump completed on 2024-12-16 18:36:09
