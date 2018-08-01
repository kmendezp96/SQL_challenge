DROP TABLE IF EXISTS `challenge`.`quantity` ;

CREATE TABLE IF NOT EXISTS `challenge`.`quantity` (
  `quantity` INT NOT NULL )
ENGINE = InnoDB;

Insert into challenge.quantity select count(*) from challenge.challenge;