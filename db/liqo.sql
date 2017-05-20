SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

CREATE SCHEMA IF NOT EXISTS `dbliqoqiqo` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci ;
USE `dbliqoqiqo` ;

-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`id_role`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`id_role` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  PRIMARY KEY (`idrole`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`user`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`user` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NOT NULL ,
  `email` VARCHAR(45) NOT NULL ,
  `password` VARCHAR(45) NOT NULL ,
  `role_id` INT NULL ,
  `picture` INT NULL ,
  `mentor_id` INT NULL ,
  PRIMARY KEY (`id_user`) ,
  CONSTRAINT `role_id`
    FOREIGN KEY ()
    REFERENCES `dbliqoqiqo`.`id_role` ()
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`absensi`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`absensi` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `id_menti` INT NULL ,
  `id_mentor` INT NULL ,
  `time` DATETIME NULL ,
  PRIMARY KEY (`id_absensi`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`doa`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`doa` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `name` VARCHAR(45) NULL ,
  `arabic` VARCHAR(45) NULL ,
  `latin` VARCHAR(45) NULL ,
  `meaning` VARCHAR(45) NULL ,
  `history` VARCHAR(45) NULL ,
  PRIMARY KEY (`id_doa`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`riwayat`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`riwayat` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `lat` INT NULL ,
  `lon` INT NULL ,
  `address` VARCHAR(45) NULL ,
  `attendes` INT NULL ,
  `non_attendes` INT NULL ,
  `menti_id` INT NULL ,
  `time` DATETIME NULL ,
  PRIMARY KEY (`id_riwayat`) )
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `dbliqoqiqo`.`jadwal`
-- -----------------------------------------------------
CREATE  TABLE IF NOT EXISTS `dbliqoqiqo`.`jadwal` (
  `id` INT NOT NULL AUTO_INCREMENT ,
  `lat` INT NULL ,
  `lon` INT NULL ,
  `address` VARCHAR(45) NULL ,
  `time` DATETIME NULL ,
  `note` VARCHAR(45) NULL ,
  `mentor_id` INT NULL ,
  PRIMARY KEY (`id_jadwal`) )
ENGINE = InnoDB;

USE `dbliqoqiqo` ;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
