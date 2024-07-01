-- Creación de la tabla de Pacientes CREATE TABLE Pacientes ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     nombre VARCHAR(50), 
    apellido VARCHAR(50), 
    fecha_nacimiento DATE,     direccion VARCHAR(100),     telefono VARCHAR(20), 
    correo_electronico VARCHAR(50) 
); 
 
-- Creación de la tabla de Médicos CREATE TABLE Medicos ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     nombre VARCHAR(50),     apellido VARCHAR(50),     especialidad VARCHAR(50),     telefono VARCHAR(20),     correo_electronico VARCHAR(50) 
); 
 
-- Creación de la tabla de Citas CREATE TABLE Citas ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     paciente_id INT,     medico_id INT, 
    fecha_hora DATETIME, 
    estado VARCHAR(20), 
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id), 
    FOREIGN KEY (medico_id) REFERENCES Medicos(id) 
); 
 
-- Creación de la tabla de Historias Clínicas CREATE TABLE Historias_Clinicas (     id INT AUTO_INCREMENT PRIMARY KEY,     paciente_id INT,     medico_id INT,     fecha DATE,     detalles TEXT, 
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id), 
    FOREIGN KEY (medico_id) REFERENCES Medicos(id) 
); 
 
-- Creación de la tabla de Inventarios CREATE TABLE Inventarios ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     producto VARCHAR(100), 
    cantidad INT, 
    fecha_vencimiento DATE,     proveedor_id INT, 
    FOREIGN KEY (proveedor_id) REFERENCES Proveedores(id) 
); 
 
-- Creación de la tabla de Facturas 
CREATE TABLE Facturas ( 
    id INT AUTO_INCREMENT PRIMARY KEY, 
    paciente_id INT,     fecha DATE,     total DECIMAL(10, 2),     estado VARCHAR(20), 
    FOREIGN KEY (paciente_id) REFERENCES Pacientes(id) ); 
 
-- Creación de la tabla de Proveedores CREATE TABLE Proveedores ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     nombre VARCHAR(100), 
    contacto VARCHAR(100) 
); 
 
-- Creación de la tabla de Reportes CREATE TABLE Reportes ( 
    id INT AUTO_INCREMENT PRIMARY KEY,     tipo_reporte VARCHAR(50),     fecha_creacion DATE,     detalles TEXT 
); 
