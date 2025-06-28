CREATE DATABASE IF NOT EXISTS `Inventario_Productos_Proveedores`;
USE `Inventario_Productos_Proveedores`;

CREATE TABLE IF NOT EXISTS `Proveedores` (
    `id_proveedor` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre_proveedor` CHAR(100) NOT NULL,
    `direccion` VARCHAR(200) NOT NULL
);

CREATE TABLE IF NOT EXISTS `Productos` (
    `id_producto` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre_producto` CHAR(100) NOT NULL,
    `category` CHAR(50) NOT NULL,
    `id_proveedor` INT NOT NULL,
    FOREIGN KEY (`id_proveedor`) REFERENCES `Proveedores`(`id_proveedor`)
);

ALTER TABLE `Productos` ADD `numero_telefono` INT CHECK (`numero_telefono` > 0) NOT NULL;
ALTER TABLE `Productos` MODIFY COLUMN `nombre_producto` VARCHAR(150) NOT NULL;
ALTER TABLE `Productos` DROP `category`;

DESCRIBE `Proveedores`;
DESCRIBE `Productos`;