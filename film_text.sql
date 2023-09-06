﻿CREATE TABLE `film_text` (
  `film_id` SMALLINT NOT NULL,
  `title` VARCHAR(255) NOT NULL,
  `description` TEXT DEFAULT NULL,
  PRIMARY KEY (film_id)
)
ENGINE = INNODB,
CHARACTER SET utf8mb3,
COLLATE utf8mb3_general_ci;

ALTER TABLE `film_text` 
  ADD FULLTEXT INDEX idx_title_description(title, description);