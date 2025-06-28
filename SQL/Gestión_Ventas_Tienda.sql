CREATE DATABASE IF NOT EXISTS `Gestión_Ventas_Tienda` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;

USE `Gestión_Ventas_Tienda`;

CREATE TABLE IF NOT EXISTS `Empleados` (
    `id_cliente` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` CHAR(60) NOT NULL,
    `salario` DECIMAL(10, 2) NOT NULL DEFAULT 22000.00
);

CREATE TABLE IF NOT EXISTS `Departamentos` (
    `id_departamento` INT AUTO_INCREMENT PRIMARY KEY,
    `departamento` CHAR(60) NOT NULL,
    `ubicacion` CHAR(50) NOT NULL
); 

CREATE TABLE IF NOT EXISTS `Departamentos_Asignados` (
    `id_empleado` INT NOT NULL,
    `id_departamento` INT NOT NULL,
    FOREIGN KEY (`id_empleado`) REFERENCES `Empleados`(`id_cliente`) ON DELETE CASCADE ON UPDATE CASCADE,
    FOREIGN KEY (`id_departamento`) REFERENCES `Departamentos`(`id_departamento`) ON DELETE CASCADE ON UPDATE CASCADE
);

ALTER TABLE `Empleados` ADD Edad INT NOT NULL CHECK (Edad >= 18 AND Edad <= 65);
ALTER TABLE `Empleados` DROP COLUMN `salario`;
ALTER TABLE `Empleados` ADD Sexo ENUM('H', 'M');
ALTER TABLE `Departamentos` MODIFY `ubicacion` VARCHAR(100) NOT NULL; 
 
INSERT INTO `Empleados` (`nombre`, `Edad`, `Sexo`) VALUES
('Juan Pérez', 30, 'H');

DESCRIBE `Empleados`;
DESCRIBE `Departamentos`;

SELECT * FROM `Empleados`;