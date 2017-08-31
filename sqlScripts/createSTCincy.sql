-- MySQL Script generated by MySQL Workbench
-- Thu Aug 31 10:37:49 2017
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema stcincy
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema stcincy
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `stcincy` DEFAULT CHARACTER SET utf8 ;
USE `stcincy` ;

-- -----------------------------------------------------
-- Table `stcincy`.`comments`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stcincy`.`comments` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `Comments` VARCHAR(2000) NOT NULL,
  `DateSubmitted` DATETIME NULL DEFAULT NULL,
  `Email` VARCHAR(100) NOT NULL,
  `Name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `stcincy`.`parks`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stcincy`.`parks` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `ParkName` VARCHAR(100) NOT NULL,
  `Area` VARCHAR(100) NOT NULL,
  `Address` VARCHAR(1000) NOT NULL,
  `Other` VARCHAR(1000) NULL DEFAULT NULL,
  `Restrooms` VARCHAR(1000) NOT NULL,
  `ParkDistrict` VARCHAR(500) NULL DEFAULT NULL,
  `AreaDescription` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE INDEX `name` (`ParkName` ASC))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `stcincy`.`trails`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stcincy`.`trails` (
  `Id` INT(11) NOT NULL AUTO_INCREMENT,
  `ParkName` VARCHAR(100) NOT NULL,
  `TrailName` VARCHAR(100) NOT NULL,
  `TrailLength` VARCHAR(100) NOT NULL,
  `Difficulty` VARCHAR(100) NOT NULL,
  `Terrain` VARCHAR(1000) NOT NULL,
  `Direction` VARCHAR(1000) NOT NULL,
  `Notes` VARCHAR(5000) NULL DEFAULT NULL,
  `Features` VARCHAR(1000) NULL DEFAULT NULL,
  PRIMARY KEY (`Id`),
  INDEX `ParkName` (`ParkName` ASC),
  CONSTRAINT `trails_ibfk_1`
    FOREIGN KEY (`ParkName`)
    REFERENCES `stcincy`.`parks` (`ParkName`))
ENGINE = InnoDB
AUTO_INCREMENT = 8
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
