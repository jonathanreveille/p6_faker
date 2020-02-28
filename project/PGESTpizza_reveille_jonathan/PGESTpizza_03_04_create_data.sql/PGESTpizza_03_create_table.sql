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
-- Table `mydb`.`Adress`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Adress` (
  `idAdress` INT(11) NOT NULL AUTO_INCREMENT,
  `building_number` VARCHAR(10) NOT NULL,
  `street_name` VARCHAR(255) NOT NULL,
  `zipcode` VARCHAR(45) NOT NULL,
  `floor` VARCHAR(10) NULL DEFAULT NULL,
  `digicode` VARCHAR(10) NULL DEFAULT NULL,
  `interphone` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`idAdress`))
ENGINE = InnoDB
AUTO_INCREMENT = 14
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Category`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Category` (
  `idCategory` INT(11) NOT NULL AUTO_INCREMENT,
  `name_category` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`idCategory`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Ingredient` (
  `idIngredient` INT(11) NOT NULL AUTO_INCREMENT,
  `name_ingredient` VARCHAR(255) NOT NULL,
  `quantity` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`idIngredient`),
  UNIQUE INDEX `name_ingredient_UNIQUE` (`name_ingredient` ASC) VISIBLE)
ENGINE = InnoDB
AUTO_INCREMENT = 19
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Order` (
  `idOrder` INT(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `User_userId` INT(11) NOT NULL,
  `User_Role_roleId` INT(11) NOT NULL,
  `User_Adress_idAdress` INT(11) NOT NULL,
  `Status_IdStatus` INT(11) NOT NULL,
  `time_created` DATETIME NOT NULL,
  `time_shipped` DATETIME NULL DEFAULT NULL,
  `restaurant_id` INT(11) NULL DEFAULT NULL,
  PRIMARY KEY (`idOrder`, `User_userId`, `User_Role_roleId`, `User_Adress_idAdress`, `Status_IdStatus`),
  INDEX `fk_Order_User1_idx` (`User_userId` ASC, `User_Role_roleId` ASC, `User_Adress_idAdress` ASC) VISIBLE,
  INDEX `fk_Order_Status1_idx` (`Status_IdStatus` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Status1`
    FOREIGN KEY (`Status_IdStatus`)
    REFERENCES `mydb`.`status` (`IdStatus`),
  CONSTRAINT `fk_Order_User1`
    FOREIGN KEY (`User_userId` , `User_Role_roleId` , `User_Adress_idAdress`)
    REFERENCES `mydb`.`user` (`userId` , `Role_roleId` , `Adress_idAdress`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`OrderLine`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`OrderLine` (
  `idOrderLine` INT(11) NOT NULL AUTO_INCREMENT,
  `quantity` INT(11) NOT NULL,
  `unit_cost` DECIMAL(10,2) NOT NULL,
  `Order_idOrder` INT(10) UNSIGNED NOT NULL,
  `Product_idProduct` INT(11) NOT NULL,
  `Product_Category_idCategory` INT(11) NOT NULL,
  PRIMARY KEY (`idOrderLine`, `Order_idOrder`, `Product_Category_idCategory`, `Product_idProduct`),
  INDEX `fk_OrderLine_Order1_idx` (`Order_idOrder` ASC) VISIBLE,
  INDEX `fk_OrderLine_Product1_idx` (`Product_idProduct` ASC, `Product_Category_idCategory` ASC) VISIBLE,
  CONSTRAINT `fk_OrderLine_Order1`
    FOREIGN KEY (`Order_idOrder`)
    REFERENCES `mydb`.`order` (`idOrder`),
  CONSTRAINT `fk_OrderLine_Product1`
    FOREIGN KEY (`Product_idProduct` , `Product_Category_idCategory`)
    REFERENCES `mydb`.`product` (`idProduct` , `Category_idCategory`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Payment`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Payment` (
  `idPayment` INT(11) NOT NULL AUTO_INCREMENT,
  `date_time_payment` DATETIME NOT NULL,
  `amount_payment` DECIMAL(10,2) UNSIGNED NOT NULL,
  `type_payment` VARCHAR(255) NOT NULL,
  `Order_idOrder` INT(10) UNSIGNED NOT NULL,
  PRIMARY KEY (`idPayment`, `Order_idOrder`),
  INDEX `fk_Payment_Order1_idx` (`Order_idOrder` ASC) VISIBLE,
  CONSTRAINT `fk_Payment_Order1`
    FOREIGN KEY (`Order_idOrder`)
    REFERENCES `mydb`.`order` (`idOrder`))
ENGINE = InnoDB
AUTO_INCREMENT = 10
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product` (
  `idProduct` INT(11) NOT NULL AUTO_INCREMENT,
  `name_product` VARCHAR(255) NOT NULL,
  `unit_price` DECIMAL(7,2) NOT NULL,
  `Category_idCategory` INT(11) NOT NULL,
  PRIMARY KEY (`idProduct`, `Category_idCategory`),
  INDEX `fk_Product_Category1_idx` (`Category_idCategory` ASC) VISIBLE,
  CONSTRAINT `fk_Product_Category1`
    FOREIGN KEY (`Category_idCategory`)
    REFERENCES `mydb`.`category` (`idCategory`))
ENGINE = InnoDB
AUTO_INCREMENT = 17
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Product_has_Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Product_has_Ingredient` (
  `Product_idProduct` INT(11) NOT NULL,
  `Ingredient_idIngredient` INT(11) NOT NULL,
  PRIMARY KEY (`Product_idProduct`, `Ingredient_idIngredient`),
  INDEX `fk_Product_has_Ingredient_Ingredient1_idx` (`Ingredient_idIngredient` ASC) VISIBLE,
  INDEX `fk_Product_has_Ingredient_Product1_idx` (`Product_idProduct` ASC) VISIBLE,
  CONSTRAINT `fk_Product_has_Ingredient_Ingredient1`
    FOREIGN KEY (`Ingredient_idIngredient`)
    REFERENCES `mydb`.`ingredient` (`idIngredient`),
  CONSTRAINT `fk_Product_has_Ingredient_Product1`
    FOREIGN KEY (`Product_idProduct`)
    REFERENCES `mydb`.`product` (`idProduct`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Restaurant`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Restaurant` (
  `idRestaurant` INT(11) NOT NULL AUTO_INCREMENT,
  `restaurant_name` VARCHAR(255) NOT NULL,
  `Adress_idAdress` INT(11) NOT NULL,
  PRIMARY KEY (`idRestaurant`, `Adress_idAdress`),
  UNIQUE INDEX `restaurant_name_UNIQUE` (`restaurant_name` ASC) VISIBLE,
  INDEX `fk_Restaurant_Adress1_idx` (`Adress_idAdress` ASC) VISIBLE,
  CONSTRAINT `fk_Restaurant_Adress1`
    FOREIGN KEY (`Adress_idAdress`)
    REFERENCES `mydb`.`adress` (`idAdress`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Restaurant_has_Ingredient`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Restaurant_has_Ingredient` (
  `Restaurant_idRestaurant` INT(11) NOT NULL,
  `Restaurant_Adress_idAdress` INT(11) NOT NULL,
  `Ingredient_idIngredient` INT(11) NOT NULL,
  `quantity` DECIMAL(10,2) NOT NULL,
  PRIMARY KEY (`Restaurant_idRestaurant`, `Restaurant_Adress_idAdress`, `Ingredient_idIngredient`),
  INDEX `fk_Restaurant_has_Ingredient_Ingredient1_idx` (`Ingredient_idIngredient` ASC) VISIBLE,
  INDEX `fk_Restaurant_has_Ingredient_Restaurant1_idx` (`Restaurant_idRestaurant` ASC, `Restaurant_Adress_idAdress` ASC) VISIBLE,
  CONSTRAINT `fk_Restaurant_has_Ingredient_Ingredient1`
    FOREIGN KEY (`Ingredient_idIngredient`)
    REFERENCES `mydb`.`ingredient` (`idIngredient`),
  CONSTRAINT `fk_Restaurant_has_Ingredient_Restaurant1`
    FOREIGN KEY (`Restaurant_idRestaurant` , `Restaurant_Adress_idAdress`)
    REFERENCES `mydb`.`restaurant` (`idRestaurant` , `Adress_idAdress`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Role`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Role` (
  `roleId` INT(11) NOT NULL AUTO_INCREMENT,
  `role_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`roleId`))
ENGINE = InnoDB
AUTO_INCREMENT = 5
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`Status`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`Status` (
  `IdStatus` INT(11) NOT NULL AUTO_INCREMENT,
  `status_name` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`IdStatus`))
ENGINE = InnoDB
AUTO_INCREMENT = 6
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `mydb`.`User`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `mydb`.`User` (
  `userId` INT(11) NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(64) NOT NULL,
  `surname` VARCHAR(64) NOT NULL,
  `email` VARCHAR(128) NOT NULL,
  `phone` VARCHAR(20) NOT NULL,
  `password` VARCHAR(255) NOT NULL,
  `Role_roleId` INT(11) NOT NULL,
  `Adress_idAdress` INT(11) NOT NULL,
  PRIMARY KEY (`userId`, `Role_roleId`, `Adress_idAdress`),
  UNIQUE INDEX `userId_UNIQUE` (`userId` ASC) VISIBLE,
  INDEX `fk_User_Role_idx` (`Role_roleId` ASC) VISIBLE,
  INDEX `fk_User_Adress1_idx` (`Adress_idAdress` ASC) VISIBLE,
  CONSTRAINT `fk_User_Adress1`
    FOREIGN KEY (`Adress_idAdress`)
    REFERENCES `mydb`.`adress` (`idAdress`),
  CONSTRAINT `fk_User_Role`
    FOREIGN KEY (`Role_roleId`)
    REFERENCES `mydb`.`role` (`roleId`))
ENGINE = InnoDB
AUTO_INCREMENT = 21
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
