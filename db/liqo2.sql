SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `liqoqiqo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `liqoqiqo` ;

-- -----------------------------------------------------
-- Table `liqoqiqo`.`role`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`role` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `avatar` VARCHAR(45) NULL ,
  `role_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `role_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`role` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`mentoring`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`mentoring` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `lat` VARCHAR(45) NULL ,
  `lon` VARCHAR(45) NULL ,
  `address` VARCHAR(45) NULL ,
  `note` VARCHAR(45) NULL ,
  `day` VARCHAR(45) NULL ,
  `date` DATETIME NULL ,
  `mentor_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `mentor_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`kehadiran`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`kehadiran` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `mentor_id` INT NULL ,
  `menti_id` INT NULL ,
  `mentoring_id` INT NULL ,
  `status_kehadiran` VARCHAR(45) NULL ,
  `day` VARCHAR(45) NULL ,
  `date` DATETIME NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `mentor_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `menti_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `mentoring_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`menti`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`menti` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `mentor_id` INT NULL ,
  `menti_id` INT NULL ,
  `mentoring_id` INT NULL ,
  PRIMARY KEY (`id`) ,
  CONSTRAINT `mentor_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `menti_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `mentoring_id`
    FOREIGN KEY ()
    REFERENCES `liqoqiqo`.`user` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`doa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`doa` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `arabic` VARCHAR(45) NULL ,
  `latin` VARCHAR(45) NULL ,
  `meaning` VARCHAR(45) NULL ,
  `history` VARCHAR(45) NULL ,
  PRIMARY KEY (`id`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `liqoqiqo`.`table1`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `liqoqiqo`.`table1` (
)
ENGINE = InnoDB;

USE `liqoqiqo` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
