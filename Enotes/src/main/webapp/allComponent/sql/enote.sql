CREATE TABLE `enote`.`user` (  
  `id` INT NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(50) NOT NULL,
  `email` VARCHAR(50) NOT NULL,
  `password` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`id`) 
);



CREATE TABLE `enote`.`addnote` (  
  `id` INT(10) NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(50),
  `content` VARCHAR(100),
  `date` TIMESTAMP DEFAULT NOW(),
  `uid` INT(10) NOT NULL,
  PRIMARY KEY (`id`) ,
  FOREIGN KEY (`uid`) REFERENCES `enote`.`user`(`id`) ON UPDATE CASCADE ON DELETE CASCADE
) ENGINE=INNODB CHARSET=utf8 COLLATE=utf8_general_ci;

