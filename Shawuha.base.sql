-- MySQL Workbench Synchronization
-- Generated: 2017-10-26 17:51
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: akulik

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `shaurmadb` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`menu` (
  `menu_id` INT(11) NOT NULL COMMENT '',
  `shaurma_id` INT(11) NULL DEFAULT NULL COMMENT '',
  `price` DECIMAL NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`menu_id`)  COMMENT '',
  INDEX `fk_menu_shaurma1_idx` (`shaurma_id` ASC)  COMMENT '',
  CONSTRAINT `fk_menu_shaurma1`
    FOREIGN KEY (`shaurma_id`)
    REFERENCES `shaurmadb`.`shaurma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`shaurma` (
  `id` INT(11) NOT NULL COMMENT '',
  `ingredients_set_id` INT(11) NULL DEFAULT NULL COMMENT '',
  `name` VARCHAR(256) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`order` (
  `orderNumber` VARCHAR(32) NOT NULL COMMENT '',
  `totalCosts` DECIMAL(5) NULL DEFAULT NULL COMMENT '',
  `ordercol` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`orderNumber`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`ingredients` (
  `id` INT(11) NOT NULL COMMENT '',
  `name` VARCHAR(45) NULL DEFAULT NULL COMMENT '',
  `cost` DECIMAL NULL DEFAULT NULL COMMENT '',
  PRIMARY KEY (`id`)  COMMENT '')
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`order_has_shaurma` (
  `order_orderNumber` VARCHAR(32) NOT NULL COMMENT '',
  `shaurma_id` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`order_orderNumber`, `shaurma_id`)  COMMENT '',
  INDEX `fk_order_has_shaurma1_shaurma1_idx` (`shaurma_id` ASC)  COMMENT '',
  INDEX `fk_order_has_shaurma1_order1_idx` (`order_orderNumber` ASC)  COMMENT '',
  CONSTRAINT `fk_order_has_shaurma1_order1`
    FOREIGN KEY (`order_orderNumber`)
    REFERENCES `shaurmadb`.`order` (`orderNumber`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_order_has_shaurma1_shaurma1`
    FOREIGN KEY (`shaurma_id`)
    REFERENCES `shaurmadb`.`shaurma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;

CREATE TABLE IF NOT EXISTS `shaurmadb`.`ingredients_has_shaurma` (
  `ingredients_id` INT(11) NOT NULL COMMENT '',
  `shaurma_id` INT(11) NOT NULL COMMENT '',
  PRIMARY KEY (`ingredients_id`, `shaurma_id`)  COMMENT '',
  INDEX `fk_ingredients_has_shaurma_shaurma1_idx` (`shaurma_id` ASC)  COMMENT '',
  INDEX `fk_ingredients_has_shaurma_ingredients1_idx` (`ingredients_id` ASC)  COMMENT '',
  CONSTRAINT `fk_ingredients_has_shaurma_ingredients1`
    FOREIGN KEY (`ingredients_id`)
    REFERENCES `shaurmadb`.`ingredients` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ingredients_has_shaurma_shaurma1`
    FOREIGN KEY (`shaurma_id`)
    REFERENCES `shaurmadb`.`shaurma` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8
COLLATE = utf8_general_ci;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
