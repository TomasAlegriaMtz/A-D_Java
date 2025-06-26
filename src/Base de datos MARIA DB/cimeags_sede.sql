-- Eliminamos la tabla si existe
DROP TABLE IF EXISTS `sede`;

-- Creamos la tabla
CREATE TABLE `sede` (
  `IdSede` INT NOT NULL AUTO_INCREMENT,
  `Nombre` VARCHAR(30) DEFAULT NULL,
  `CupoSede` INT NOT NULL,
  `Calle` VARCHAR(40) DEFAULT NULL,
  `CP` INT DEFAULT NULL,
  `Colonia` VARCHAR(30) DEFAULT NULL,
  PRIMARY KEY (`IdSede`)
) ENGINE=InnoDB 
  AUTO_INCREMENT=2 
  DEFAULT CHARSET=utf8mb4 
  COLLATE=utf8mb4_general_ci;

-- Insertamos los datos
INSERT INTO `sede` (`IdSede`,`Nombre`,`CupoSede`,`Calle`,`CP`,`Colonia`)
VALUES 
(1, 'Oficinas CIME', 60, 'CC. AGUASCALIENTES LOCAL 91 MODULO13', 20250, 'La Huerta');
