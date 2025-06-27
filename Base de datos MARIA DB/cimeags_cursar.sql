-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `cursar`;

-- Creamos la tabla
CREATE TABLE `cursar` (
  `Asistencia` VARCHAR(2) DEFAULT NULL,
  `Liquidado` VARCHAR(2) DEFAULT NULL,
  `Impreso` VARCHAR(2) DEFAULT NULL,
  `IdCursoC` INT NOT NULL,
  `IdAsistenteC` INT NOT NULL,
  PRIMARY KEY (`IdCursoC`, `IdAsistenteC`),
  KEY `idx_IdAsistenteC` (`IdAsistenteC`),
  CONSTRAINT `fk_cursar_curso` FOREIGN KEY (`IdCursoC`)
    REFERENCES `curso` (`IdCurso`)
    ON UPDATE CASCADE
    ON DELETE RESTRICT,
  CONSTRAINT `fk_cursar_asistente` FOREIGN KEY (`IdAsistenteC`)
    REFERENCES `asistente` (`IdAsistente`)
    ON UPDATE CASCADE
    ON DELETE RESTRICT
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

-- Insertamos los datos
INSERT INTO `cursar` (`Asistencia`, `Liquidado`, `Impreso`, `IdCursoC`, `IdAsistenteC`)
VALUES
('SI', 'SI', 'NO', 1, 1),
('SI', 'NO', 'NO', 1, 3),
('SI', 'NO', 'NO', 1, 4);