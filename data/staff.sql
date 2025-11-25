--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` text,
  `last_name` text,
  `email` text,
  `department` text,
  `city` text,
  `country` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'Gianna','Zanetto','gzanetto0@archive.org','Baby','Dijon','France'),(2,'Brendis','Gaveltone','bgaveltone1@storify.com','Beauty','Saint-Ouen','France'),(3,'Moll','Geraldini','mgeraldini2@indiatimes.com','Beauty','Nantes','France'),(4,'Erna','Weatherley','eweatherley3@princeton.edu','Clothing','Paris 11','France'),(5,'Tory','Luttgert','tluttgert4@about.me','Shoes','Bordeaux','France'),(6,'Nicoline','Burdekin','nburdekin5@unc.edu','Sports','Marseille','France'),(7,'Vinnie','Kabsch','vkabsch6@scribd.com','Games','Lannion','France'),(8,'Gregoire','Lippo','glippo7@163.com','Beauty','Vincennes','France'),(9,'Kaja','Miskimmon','kmiskimmon8@example.com','Grocery','Aix-en-Provence','France'),(10,'Lacey','Skirlin','lskirlin9@yelp.com','Toys','Lille','France'),(11,'Kylila','Falck','kfalcka@nba.com','Outdoors','Aix-les-Bains','France'),(12,'Wendie','Murrow','wmurrowb@google.com.br','Books','Blaye','France'),(13,'Dianne','Brumfield','dbrumfieldc@elpais.com','Jewelry','Marne-la-Vallée','France'),(14,'Mara','Dewfall','mdewfalld@oaic.gov.au','Tools','Valladolid','Spain'),(15,'Paul','Webb-Bowen','pwebbbowene@huffingtonpost.com','Computers','Cahors','France'),(16,'Auberon','Face','afacef@webnode.com','Movies','Braunschweig','Germany'),(17,'Nonie','Beyn','nbeyng@myspace.com','Sports','Birmingham','United Kingdom'),(18,'Fowler','Anning','fanningh@ameblo.jp','Tools','Colmar','France'),(19,'Inna','Tschierasche','itschieraschei@narod.ru','Music','Delft','Netherlands'),(20,'Ashlie','Kiwitz','akiwitzj@e-recht24.de','Movies','Vénissieux','France'),(21,'Pacorro','Pemble','ppemblek@artisteer.com','Movies','Genova','Italy'),(22,'Cherlyn','Kinglake','ckinglakel@prweb.com','Baby','Brescia','Italy'),(23,'Jamal','Piatek','jpiatekm@com.com','Home','Firenze','Italy'),(24,'Chevy','Flemming','cflemmingn@issuu.com','Garden','Courtaboeuf','France'),(25,'Bogey','Yakushkev','byakushkevo@state.tx.us','Kids','Montreuil','France'),(26,'Fawn','Christon','fchristonp@nba.com','Clothing','Niort','France'),(27,'Garey','Winscum','gwinscumq@npr.org','Shoes','Saint-Étienne','France'),(28,'Stanislaus','Reichelt','sreicheltr@sbwire.com','Health','Schiedam postbusnummers','Netherlands'),(29,'Orsa','Purviss','opurvisss@stumbleupon.com','Movies','Saint-Claude','France'),(30,'Tannie','Gover','tgovert@nyu.edu','Movies','Lyon','France'),(31,'Alphard','Kryszkiecicz','akryszkieciczu@discuz.net','Books','Clermont-Ferrand','France'),(32,'Lorianne','Tax','ltaxv@shareasale.com','Shoes','Châteauroux','France'),(33,'Avigdor','Tocque','atocquew@symantec.com','Toys','Zaragoza','Spain'),(34,'Bennie','Glas','bglasx@bloglovin.com','Games','Périgueux','France'),(35,'Tadio','Gadsby','tgadsbyy@paypal.com','Grocery','Lelystad','Netherlands'),(36,'Hazel','Anwyl','hanwylz@adobe.com','Baby','Montaigu','France'),(37,'Marve','Wakenshaw','mwakenshaw10@nifty.com','Shoes','Napoli','Italy'),(38,'Eve','Omar','eomar11@examiner.com','Grocery','Dordrecht','Netherlands'),(39,'Garret','Simonel','gsimonel12@imgur.com','Grocery','Massy','France'),(40,'Berke','Ferrandez','bferrandez13@msu.edu','Industrial','La Seyne-sur-Mer','France'),(41,'Marsiella','Woodrough','mwoodrough14@opera.com','Sports','Saint-Maixent-l\'École','France'),(42,'Nona','Muscroft','nmuscroft15@ucla.edu','Outdoors','Nanterre','France'),(43,'Gian','Corbridge','gcorbridge16@loc.gov','Industrial','Arpajon','France'),(44,'Henderson','Tschiersch','htschiersch17@hc360.com','Clothing','Billère','France'),(45,'Judi','Breward','jbreward18@behance.net','Toys','Saint-Pierre-Montlimart','France'),(46,'Korey','Aubry','kaubry19@cbc.ca','Beauty','Bologna','Italy'),(47,'Charmane','Raiker','craiker1a@ebay.com','Jewelry','Caen','France'),(48,'Jermain','Chanson','jchanson1b@edublogs.org','Books','Fosses','France'),(49,'Brynne','Dowsett','bdowsett1c@pinterest.com','Garden','Courtaboeuf','France'),(50,'Eartha','Merrydew','emerrydew1d@macromedia.com','Jewelry','Dean','United Kingdom');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-03 10:21:21