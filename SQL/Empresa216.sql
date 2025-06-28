-- Crear un BD para una empresa
-- Creo la BD

CREATE DATABASE Empresa216;
USE Empresa216;
CREATE TABLE Departamentos (
	ID_Depto INT AUTO_INCREMENT PRIMARY KEY,
    Nombre_Depto CHAR(100) NOT NULL
);

CREATE TABLE Empleados (
	ID_Empleado INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre_Empleado CHAR(60) NOT NULL,
    Ape_Pat_Empleado CHAR(40) NOT NULL,
    Ape_Mat_Empleado CHAR(40), 
    Salario DECIMAL(10,2) NOT NULL CHECK (Salario >= 5000),
    ID_Depto INT,
    FOREIGN KEY (ID_Depto) REFERENCES Departamentos(ID_Depto) ON DELETE CASCADE ON UPDATE CASCADE
);

-- Creo la tabla de proyectos

CREATE TABLE Proyectos (
    ID_Proyecto INT AUTO_INCREMENT PRIMARY KEY NOT NULL,
    Nombre_Proyecto CHAR(100) NOT NULL,
    Fecha_Inicio DATE,
    Presupuesto DECIMAL(6,2) DEFAULT 0.00
);

-- Modificar el campo el campo de PRESUPUESTO: agregamos más dígitos
ALTER TABLE Proyectos MODIFY Presupuesto DECIMAL (15, 2);
-- Ya no queremos almacenar la fecha de inicio DROP:
ALTER TABLE Proyectos DROP Fecha_Inicio;
-- COMPRUEBO Proyecto:
DESCRIBE Proyectos;
-- Agregar columna
ALTER TABLE Proyectos ADD Responsable CHAR(100) NOT NULL;
-- Borrar tabla
-- DROP Proyectos