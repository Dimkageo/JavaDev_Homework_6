CREATE TABLE `osbb_2`.`people_rols` (
  `id_people_rols` INT NOT NULL,
  `rois` VARCHAR(45) NULL,
  `owner_id` INT NOT NULL,
  PRIMARY KEY (`id_people_rols`));
  
INSERT INTO people_rols VALUES (1,'owner', 1);
INSERT INTO people_rols VALUES (2,'members_of_board', 2);
INSERT INTO people_rols VALUES (3,'accountant', 3);
INSERT INTO people_rols VALUES (4,'chapter', 4);

EXPLAIN SELECT * FROM  people_rols;

SELECT * FROM  people_rols;

SELECT 
	people_rols.rois,
	apartment_owners.full_name
    FROM people_rols
    inner join apartment_owners on apartment_owners.people_rols_id=people_rols.id_people_rols
    order by apartment_owners.people_rols_id desc



  