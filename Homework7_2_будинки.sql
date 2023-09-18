CREATE TABLE `osbb_2`.`buildings` (
  `id_buildings` INT NOT NULL AUTO_INCREMENT,
  `adress` VARCHAR(45) NULL,
  `house_number` VARCHAR(45) NULL,
  PRIMARY KEY (`id_buildings`));
  
INSERT INTO `osbb_2`.`buildings` (`id_buildings`, `adress`, `house_number`) VALUES ('15', 'Sunny Street', '15');

EXPLAIN SELECT * FROM osbb_2.buildings;

SELECT * FROM osbb_2.buildings;