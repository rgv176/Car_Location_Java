-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema client
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema client
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `client` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci ;
USE `client` ;

-- -----------------------------------------------------
-- Table `client`.`car`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`car` (
  `registration` INT NOT NULL,
  `brand` VARCHAR(45) NOT NULL,
  `model` VARCHAR(45) NOT NULL,
  `price` INT NOT NULL,
  `status` VARCHAR(45) NOT NULL,
  `individual_disc` INT NOT NULL,
  `business_disc` INT NOT NULL,
  `image` BLOB NOT NULL,
  PRIMARY KEY (`registration`),
  UNIQUE INDEX `registration_UNIQUE` (`registration` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `client`.`cleint_r`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`cleint_r` (
  `num_client` INT NOT NULL,
  `first_name` VARCHAR(45) NOT NULL,
  `surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(45) NOT NULL,
  `phone_number` VARCHAR(45) NOT NULL,
  `password` VARCHAR(45) NOT NULL,
  `customer_type` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`num_client`),
  UNIQUE INDEX `num_client_UNIQUE` (`num_client` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `client`.`customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`customer` (
  `ID` VARCHAR(45) NOT NULL,
  `First_name` VARCHAR(45) NOT NULL,
  `Surname` VARCHAR(45) NOT NULL,
  `email` VARCHAR(45) NOT NULL,
  `adress` VARCHAR(45) NOT NULL,
  `Phone_Number` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE INDEX `ID_UNIQUE` (`ID` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `client`.`customer_choice`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`customer_choice` (
  `booking_number` INT NOT NULL AUTO_INCREMENT,
  `registrate` INT NOT NULL,
  `rent_date` DATE NOT NULL,
  `return_date` DATE NOT NULL,
  `price` DOUBLE NOT NULL,
  `customer_id` INT NOT NULL,
  `payment_confirmation` INT NULL DEFAULT '1',
  PRIMARY KEY (`booking_number`),
  UNIQUE INDEX `booking_number_UNIQUE` (`booking_number` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 4622
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `client`.`employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`employee` (
  `email` VARCHAR(45) NOT NULL,
  `emp_password` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`email`),
  UNIQUE INDEX `email_UNIQUE` (`email` ASC) VISIBLE)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


-- -----------------------------------------------------
-- Table `client`.`payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `client`.`payment` (
  `confirmation` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `card_number` VARCHAR(45) NOT NULL,
  `card_date` VARCHAR(45) NOT NULL,
  `card_cvv` VARCHAR(45) NOT NULL,
  `num_cl` INT NOT NULL,
  PRIMARY KEY (`confirmation`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
