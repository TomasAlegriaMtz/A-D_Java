-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `instructor`;

-- Creamos la tabla
CREATE TABLE `instructor` (
  `IdInstructor` INT NOT NULL AUTO_INCREMENT,
  `NombreInstructor` VARCHAR(50) DEFAULT NULL,
  `ApellidoMatInstructor` VARCHAR(50) DEFAULT NULL,
  `ApellidoPatInstructor` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`IdInstructor`)
) ENGINE=InnoDB 
  AUTO_INCREMENT=2 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- Insertamos los datos iniciales
INSERT INTO `instructor` (`IdInstructor`,`NombreInstructor`,`ApellidoMatInstructor`,`ApellidoPatInstructor`)
VALUES (1, 'Roberto', 'Gómez', 'Ruelas');
