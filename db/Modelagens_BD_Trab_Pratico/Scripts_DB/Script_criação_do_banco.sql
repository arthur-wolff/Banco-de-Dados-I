SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

DROP schema if exists `manual_dos_monstros`;
CREATE SCHEMA IF NOT EXISTS `manual_dos_monstros` DEFAULT CHARACTER SET utf8 ;
USE `manual_dos_monstros` ;

-- Cria Tabela CStatus:

DROP TABLE IF EXISTS `manual_dos_monstros`.`CStatus` ;

CREATE TABLE IF NOT EXISTS `manual_dos_monstros`.`CStatus` (
  `idStatus` INT NOT NULL,
  `CA` INT NOT NULL,
  `PV` varchar(45) NOT NULL,
  `Deslocamento` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idStatus`))
ENGINE = InnoDB;


-- Cria Tabela Caracteristicas:

DROP TABLE IF EXISTS `manual_dos_monstros`.`Caracteristicas` ;

CREATE TABLE IF NOT EXISTS `manual_dos_monstros`.`Caracteristicas` (
  `idCaracteristicas` INT NOT NULL,
  `Pericias` VARCHAR(100) NULL,
  `Sentidos` VARCHAR(100) NULL,
  `Idiomas` VARCHAR(100) NULL,
  `NivelDesafio` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idCaracteristicas`))
ENGINE = InnoDB;


-- Cria Tabela Habilidades:
DROP TABLE IF EXISTS `manual_dos_monstros`.`Habilidades` ;

CREATE TABLE IF NOT EXISTS `manual_dos_monstros`.`Habilidades` (
  `idHabilidades` INT NOT NULL,
  `Força` VARCHAR(45) NOT NULL,
  `Destreza` VARCHAR(45) NOT NULL,
  `Constituição` VARCHAR(45) NOT NULL,
  `Inteligencia` VARCHAR(45) NOT NULL,
  `Sabedoria` VARCHAR(45) NOT NULL,
  `Carisma` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`idHabilidades`))
ENGINE = InnoDB;


-- Cria Tabela Criatura
DROP TABLE IF EXISTS `manual_dos_monstros`.`Criatura` ;

CREATE TABLE IF NOT EXISTS `manual_dos_monstros`.`Criatura` (
  `NomeCriatura` VARCHAR(45) NOT NULL,
  `Tipo` VARCHAR(45) NOT NULL,
  `Tamanho` VARCHAR(45) NOT NULL,
  `Tendencia` VARCHAR(45) NOT NULL,
  `idStatus` INT NOT NULL,
  `idCaracteristicas` INT NOT NULL,
  `idHabilidades` INT NOT NULL,
  PRIMARY KEY (`NomeCriatura`),
  INDEX `fk_Criatura_CStatus_idx` (`idStatus` ASC) VISIBLE,
  INDEX `fk_Criatura_Caracteristicas1_idx` (`idCaracteristicas` ASC) VISIBLE,
  INDEX `fk_Criatura_Habilidades1_idx` (`idHabilidades` ASC) VISIBLE,
  CONSTRAINT `fk_Criatura_CStatus`
    FOREIGN KEY (`idStatus`)
    REFERENCES `manual_dos_monstros`.`CStatus` (`idStatus`)
    ON DELETE  CASCADE
    ON UPDATE  CASCADE,
  CONSTRAINT `fk_Criatura_Caracteristicas1`
    FOREIGN KEY (`idCaracteristicas`)
    REFERENCES `manual_dos_monstros`.`Caracteristicas` (`idCaracteristicas`)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT `fk_Criatura_Habilidades1`
    FOREIGN KEY (`idHabilidades`)
    REFERENCES `manual_dos_monstros`.`Habilidades` (`idHabilidades`)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;







SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

