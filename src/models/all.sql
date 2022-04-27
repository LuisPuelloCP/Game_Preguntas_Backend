-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`players`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`players` (
  `idplayers` INT NOT NULL AUTO_INCREMENT,
  `username` VARCHAR(45) NOT NULL,
  `reward` INT NULL,
  PRIMARY KEY (`idplayers`),
  UNIQUE INDEX `username_UNIQUE` (`username` ASC) VISIBLE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`category` (
  `idcategory` INT NOT NULL AUTO_INCREMENT,
  `nombre` VARCHAR(45) NOT NULL,
  `description` VARCHAR(45) NULL,
  PRIMARY KEY (`idcategory`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`level_questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`level_questions` (
  `idlevel` INT NOT NULL AUTO_INCREMENT,
  `level` INT NOT NULL,
  `value` INT NOT NULL,
  PRIMARY KEY (`idlevel`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`questions`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`questions` (
  `idquestions` INT NOT NULL AUTO_INCREMENT,
  `description` VARCHAR(45) NOT NULL,
  `response` VARCHAR(45) NOT NULL,
  `category_idcategory` INT NOT NULL,
  `option1` VARCHAR(45) NOT NULL,
  `option2` VARCHAR(45) NOT NULL,
  `option3` VARCHAR(45) NOT NULL,
  `level_questions_idlevel` INT NOT NULL,
  PRIMARY KEY (`idquestions`),
  INDEX `fk_questions_category_idx` (`category_idcategory` ASC) VISIBLE,
  INDEX `fk_questions_level_questions1_idx` (`level_questions_idlevel` ASC) VISIBLE,
  CONSTRAINT `fk_questions_category`
    FOREIGN KEY (`category_idcategory`)
    REFERENCES `mydb`.`category` (`idcategory`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_questions_level_questions1`
    FOREIGN KEY (`level_questions_idlevel`)
    REFERENCES `mydb`.`level_questions` (`idlevel`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `idcategory` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `description` varchar(300) DEFAULT NULL,
  PRIMARY KEY (`idcategory`),
  UNIQUE KEY `idcategory_UNIQUE` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (1,'Programación','Preguntas sobre fundamentos de programacion');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 21:46:17

CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `level_questions`
--

DROP TABLE IF EXISTS `level_questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `level_questions` (
  `idlevel` int NOT NULL AUTO_INCREMENT,
  `level` int NOT NULL,
  `value` int NOT NULL,
  PRIMARY KEY (`idlevel`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `level_questions`
--

LOCK TABLES `level_questions` WRITE;
/*!40000 ALTER TABLE `level_questions` DISABLE KEYS */;
INSERT INTO `level_questions` VALUES (1,1,1),(2,2,2),(3,3,3),(4,4,4),(5,5,5);
/*!40000 ALTER TABLE `level_questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 21:46:17


CREATE DATABASE  IF NOT EXISTS `mydb` /*!40100 DEFAULT CHARACTER SET utf8 */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `mydb`;
-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: mydb
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `idquestions` int NOT NULL AUTO_INCREMENT,
  `description` varchar(300) NOT NULL,
  `response` varchar(300) NOT NULL,
  `category_idcategory` int NOT NULL,
  `level_questions_idlevel` int NOT NULL,
  `option1` varchar(300) NOT NULL,
  `option2` varchar(300) NOT NULL,
  `option3` varchar(300) NOT NULL,
  PRIMARY KEY (`idquestions`),
  UNIQUE KEY `idquestions_UNIQUE` (`idquestions`),
  KEY `fk_questions_category_idx` (`category_idcategory`),
  KEY `fk_questions_level_questions1_idx` (`level_questions_idlevel`),
  CONSTRAINT `fk_questions_category` FOREIGN KEY (`category_idcategory`) REFERENCES `category` (`idcategory`),
  CONSTRAINT `fk_questions_level_questions1` FOREIGN KEY (`level_questions_idlevel`) REFERENCES `level_questions` (`idlevel`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,'¿Qué es una variable?','Es una declaración dentro del programa para definir un valor dinámico',1,1,'Es un método de acceso a los datos','Es un mecanismo para consultar información','Es un elemento del programa que puede cambiar'),(2,'¿Qué es una base de datos?','Es un servidor que permite persistir información o datos concretos',1,1,'Es un grupo de datos efímeros','Un repositorio de datos','Es una colección de datos o información concreta'),(3,'¿Qué lenguaje de etiquetas se usa en un navegador?','HTML',1,1,'Python','JavaScript','Java'),(4,'¿Qué entendemos como lenguaje de programación?','Una manera definida para escribir instrucciones claras para programar aplicaciones de alto nivel',1,1,'Una manera de comunicarse con el hardware','Una forma de diseñar código para la máquina','Lo relacionado con la codificación de páginas web y sitios interactivos'),(5,'Una clase es...','Un tipo determinado para crear objetos de ese mismo tipo',1,1,'Ninguna de las anteriores','Son varios objetos heredados','Es una categoría del mismo tipo'),(9,'Cuando hablamos de un lenguaje compilado nos referimos a...','Un lenguaje que requiere pasar por un proceso de transformación a código de máquina',1,2,'Un lenguaje de máquina orientado al hardware','Un lenguaje que requiere de un controlador específico para que pueda correr','Un lenguaje de programación que transpira código nativo'),(10,'¿Qué lenguajes usamos más al lado del navegador?','JavaScript',1,2,'CSS','Java','HTML'),(11,'¿Qué lenguajes usamos más del lado del servidor?','Java',1,2,'CSS','HTML','Python'),(12,'¿Qué es un algoritmo?','Instrucciones lógicas con un propósito específico',1,2,'Código fuente','Una función matemática','Una estructura programada orientada a una sintaxis'),(13,'Es un paradigma de programación orientado a un modelo abstracto de la realidad.','Orientada a objetos',1,2,'Estructural','Estructural','Ninguna de las anteriores'),(14,'Para evaluar una expresión booleana utilizo un...','if',1,3,'while','else','for'),(15,'Uno de los motores de bases de datos más conocidos es...','MySQL',1,3,'DataStorage','Visual Basic','Excel'),(16,'Los sistemas operativos que son libres y que están basados en Unix son:','Debian',1,3,'Windows','Mac','Ubuntu'),(17,'Dentro de las bases de la programación tenemos los siguientes paradigmas:','Programación funcional',1,3,'Programación orientada a clases','Programación orientada a atributos','Programación orientada a objetos'),(18,'Un lenguaje que se usa para hacer consultas en una base de datos relacional.','SQL',1,3,'Query','PL','DSL'),(19,'Para una clase que tenga métodos get y set pero con atributos privados, ¿qué pilar de la programación se está aplicando?','Encapsulamiento',1,4,'Evitar efectos secundarios','Abstracciones por métodos','Programación funcional'),(20,'¿Cuál de los siguientes es un lenguaje de programación compilado?','Java',1,4,'Python','JavaScript','HTML'),(21,'El servidor es un proveedor de información y el cliente es un consumidor de información, nos referimos a...','Cliente-Servidor',1,4,'Servidor','Servidor-Cliente','Cliente'),(22,'Es un paradigma de programación orientado a mejorar la claridad, calidad y tiempo de desarrollo de un programa de computadora recurriendo únicamente a subrutinas.','Estructural',1,4,'Orientada a objetos','Funcional','Ninguno de las anteriores'),(23,'Si quiero iterar o recorrer una colección de objetos, ¿qué puedo usar?','foreach',1,4,'for','if-else','do-while'),(24,'Cual es la etiqueta HTML que se usa para mostrar un título resaltado en negrilla:','<H3></H3>',1,5,'<TH></TH>','<B></B>','<TITLE></TITLE>'),(25,'Una consulta para ejecutar todos los datos de una tabla llamada PERSONA, tiene la siguiente estructura:','SELECT * FROM PERSONA',1,5,'SELECT FROM PERSONA','SELECT ALL FROM PERSONA','SELECT PERSONAS'),(28,'¿Qué ciclo de control usamos para iterar hasta 1000?','for(i=1;i<=1000;i++){}',1,5,'foreach(1: 1000){}','for(i=0;i<999){}','for(i=0;i<999;j++){}'),(29,'¿Qué pasos debo hacer para cambiar a una rama y subir cambios a un repositorio git a la rama principal?','git checkout main, git push origin main',1,5,'git checkout main, git push','git change main, git push main','git change main, git push origin main'),(30,'Una función arrow de de javascript, que suma dos numero es...','(a,b) ⇒ a+b',1,5,'()⇒a+b','(a,b) → a+b','(a,2)⇒a+2');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-04-26 21:46:17

