-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `curso`;

-- Creamos la tabla
CREATE TABLE `curso` (
  `IdCurso` INT NOT NULL AUTO_INCREMENT,
  `NombreCurso` VARCHAR(50) NOT NULL,
  `Cupo` INT DEFAULT NULL,
  `Horas` INT NOT NULL,
  `Recolectado` FLOAT DEFAULT NULL,
  `IdSedeC` INT DEFAULT NULL,
  `IdInstructorC` INT DEFAULT NULL,
  `Fecha` DATE DEFAULT NULL,
  PRIMARY KEY (`IdCurso`),
  KEY `idx_IdSedeC` (`IdSedeC`),
  KEY `idx_IdInstructorC` (`IdInstructorC`),
  CONSTRAINT `fk_curso_sede` FOREIGN KEY (`IdSedeC`)
    REFERENCES `sede` (`IdSede`)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  CONSTRAINT `fk_curso_instructor` FOREIGN KEY (`IdInstructorC`)
    REFERENCES `instructor` (`IdInstructor`)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
) ENGINE=InnoDB
  AUTO_INCREMENT=3
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

-- Insertamos los datos
INSERT INTO `curso` (`IdCurso`,`NombreCurso`,`Cupo`,`Horas`,`Recolectado`,`IdSedeC`,`IdInstructorC`,`Fecha`)
VALUES 
(1, 'NOM-001-SENER-2012', 40, 12, 1000, 1, 1, '2024-03-22'),
(2, 'BASE DE DATOS', 10, 20, 0, 1, 1, '2024-12-11');
