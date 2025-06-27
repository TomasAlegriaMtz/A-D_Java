-- Eliminamos la tabla si ya existe
DROP TABLE IF EXISTS `asistente`;

-- Creamos la tabla
CREATE TABLE `asistente` (
  `IdAsistente` INT NOT NULL AUTO_INCREMENT,
  `NombreA` VARCHAR(50) NOT NULL,
  `ApellidoP` VARCHAR(50) NOT NULL,
  `ApellidoM` VARCHAR(50) DEFAULT NULL,
  `Telefono` VARCHAR(10) NOT NULL,
  `Tipo` VARCHAR(15) DEFAULT NULL,
  `Carrera` VARCHAR(50) DEFAULT NULL,
  PRIMARY KEY (`IdAsistente`)
) ENGINE=InnoDB
  AUTO_INCREMENT=5
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

-- Insertamos los datos
INSERT INTO `asistente` (`IdAsistente`,`NombreA`,`ApellidoP`,`ApellidoM`,`Telefono`,`Tipo`,`Carrera`)
VALUES
(1, 'Tomás', 'Alegría', 'Martínez', '499000000', 'Estudiante', 'ISC'),
(3, 'Yahir Eduardo', 'Tostado', 'Nieto', '1492223300', 'Estudiante', 'ISC'),
(4, 'Beatriz', 'Osorio', 'Urrutia', '4491188262', 'Estudiante', 'ISC');
