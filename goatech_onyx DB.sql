-- phpMyAdmin SQL Dump
-- version 5.1.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql-goatech.alwaysdata.net
-- Generation Time: Mar 09, 2023 at 05:35 PM
-- Server version: 10.6.11-MariaDB
-- PHP Version: 7.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Database: goatech_onyx
--

-- --------------------------------------------------------

--
-- Table structure for table Alimento
--

CREATE TABLE Alimento (
  id_alimento int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(25) NOT NULL,
  medida varchar(10) NOT NULL,

  PRIMARY KEY(id_alimento)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Alimento VALUES
(1,'Manzana', 'Pieza'),
(2,'Nugget de pollo', 'Pieza'),
(3,'Papaya', 'Taza'),
(4,'Pollo', 'Gramo'),
(5,'Huevo', 'Pieza'),
(6,'Entomatadas', 'Pieza'),
(7,'Chuleta', 'Gramo');

-- --------------------------------------------------------

--
-- Table structure for table Ejercicio
--

CREATE TABLE Ejercicio (
  id_ejercicio int(11) NOT NULL AUTO_INCREMENT,
  descripcion text NOT NULL,
  video_ejercicio text NOT NULL,

  PRIMARY KEY(id_ejercicio)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Ejercicio VALUES
(1,'Curt de bicep','link bonito'),
(2,'Lagartijas','link bonito'),
(3,'Abdominales','link bonito'),
(4,'Remo','link bonito'),
(5,'Plancha','link bonito'),
(6,'Sentadillas','link bonito'),
(7,'Dominadas','link bonito');

-- --------------------------------------------------------

--
-- Table structure for table MacroNutrientes
--

CREATE TABLE MacroNutrientes (
  id_macro int(11) NOT NULL AUTO_INCREMENT,
  calorias float(7,2) NOT NULL,
  proteinas float(7,2) NOT NULL,
  carbohidratos float(7,2) NOT NULL,
  grasas float(7,2) NOT NULL,

  PRIMARY KEY(id_macro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO MacroNutrientes VALUES
(1,2500.23,342.43,457.98,579.89),
(2,4346.3,533.02,5424.54,23),
(3,3324,245.43,23.54,345.34),
(4,1200,543.5,435,234),
(5,2353.23,432.4,343,345.3),
(6,3000,534.23,433.34,345.23),
(7,2000,345.23,345.43,234.53);

-- --------------------------------------------------------

--
-- Table structure for table Medición (Por definir)
--

CREATE TABLE Medicion (
  id_medicion int(11) NOT NULL AUTO_INCREMENT,
  tipo varchar(20) NOT NULL,

  PRIMARY KEY(id_medicion)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Medicion VALUES
(1,'Cuello'),
(2,'Pecho'),
(3,'BrazoIzq'),
(4,'BrazoDer'),
(5,'Cintura'),
(6,'PiernaIzq'),
(7,'PiernaDer'),
(8,'PantorrillaIzq'),
(9,'PantorrillaDer'),
(10,'Peso');

-- --------------------------------------------------------

--
-- Table structure for table MicroNutrientes
--

CREATE TABLE MicroNutrientes (
  id_micro int(11) NOT NULL AUTO_INCREMENT,
  ceniza float(5,1) DEFAULT NULL,
  fibra_total float(5,1) DEFAULT NULL,
  calcio float(5,1) DEFAULT NULL,
  fosforo float(5,1) DEFAULT NULL,
  hierro float(5,1) DEFAULT NULL,
  tiamina float(5,1) DEFAULT NULL,
  riboflavina float(5,1) DEFAULT NULL,
  niacina float(5,1) DEFAULT NULL,
  vit_c float(5,1) DEFAULT NULL,
  vit_a float(5,1) DEFAULT NULL,
  acgrasosmin float(5,1) DEFAULT NULL,
  acgrasospoli float(5,1) DEFAULT NULL,
  acgrasossat float(5,1) DEFAULT NULL,
  colesterol float(5,1) DEFAULT NULL,
  potasio float(5,1) DEFAULT NULL,
  sodio float(5,1) DEFAULT NULL,
  zinc float(5,1) DEFAULT NULL,
  magnesio float(5,1) DEFAULT NULL,
  vit_b6 float(5,1) DEFAULT NULL,
  vit_b12 float(5,1) DEFAULT NULL,
  acfolico float(5,1) DEFAULT NULL,
  folatoeq float(5,1) DEFAULT NULL,

  PRIMARY KEY(id_micro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO MicroNutrientes VALUES
(1,4523.1,1253.1,1234.2,3728.3,32.2,123.2,2.1,3,4,9.2,293,345.2,2352,3552.2,23,2124,2344,21,232,6,23,24),
(2,234.2,312,23,56,789,847.3,234.2,2134,234.2,25,493,954,34.3,492.3,4953,2948.3,244.4,234,34,43,54,4),
(3,234.2,324.2,2345.2,345,234.2,35.2,234.2,345.2,34.2,345.2,3521.3,3,352.2,35.2,76.3,45,67.4,86,53.4,32.1,34,2),
(4,234.2,4324.3,234.2,2342.3,234.2,3452.3,443.5,20.1,435.9,542.3,432.3,342.5,234.2,345.3,34.2,10.5,231.3,12.3,35.3,235.2,11.2,54.2),
(5,35.1, 17.7,1482.4,2156.4,18.9,1.4,2.9,23.7,37.2,2271.8,27.0,18.2,28.9,865.7,3993.7,1781.7,16.1,485.1,2.2,4.5,389.3,23),
(6,35,32,54,235.2,324.2,23.2,35,67,43.2,6563,35.3,45.3,23,23,54,54,34,23,65,34,4.3,543.3),
(7,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22),
(8,34.2,43.7,34.6,3.5,34.5,3.4,443.5,4,NULL,NULL,34,NULL,234,NULL,234.4,424.5,NULL,53.2,98.3,20,21,22),
(9,NULL,345.2,NULL,9.4,10.4,54.3,76.7,23.5,65.4,90.4,3.2,4.4,6.6,7.7,8.8,9.9,21.4,67.7,45.7,23.4,56.7,45),
(10,9.3,23.5,345.4,332.5,366.3,36.9,43,54.2,43.6,347.8,34,65.8,346,45.3,656.3,545.3,45.5,43,75.9,45.3,2.1,54.9);
(11, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
(11, NULL, NULL, NULL, 2345, 7983, NULL, 6373, NULL, NULL, 7838.2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 34.2, NULL);
(12, 3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3,3)
-- --------------------------------------------------------

--
-- Table structure for table Nivel Fisico
--

CREATE TABLE NivelFisico (
  id_niv int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(20) NOT NULL,
  descripcion text NOT NULL,

  PRIMARY KEY(id_niv)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO NivelFisico VALUES
(1,'Noob','Hace menos de 12 repeticiones,no sabe técnica'),
(2,'Beginner','Ya realiza 12 repeticiones'),
(3,'Intermediate','Realiza 12 repeticiones con pesos fuertes,buena técnica'),
(4,'Advanced','Pesos pesados con buena técnica')

-- --------------------------------------------------------

--
-- Table structure for table Objetivo
--

CREATE TABLE Objetivo (
  id_obj int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(20) NOT NULL,
  descripcion text NOT NULL,
   
  PRIMARY KEY(id_obj)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Objetivo VALUES
(1,'Bajar peso','Adelgaza y tonifica cuerpo'),
(2,'Mantener peso','Se mantiene el peso, pero genera musculo'),
(3,'Subir peso','Dieta rica en carbohidratos y calorías para subir el peso');
-- --------------------------------------------------------

--
-- Table structure for table Rol
--

CREATE TABLE Rol (
  id_rol int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(20) NOT NULL,
  descripcion text NOT NULL,

  PRIMARY KEY(id_rol)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Rol VALUES
(1,'Cliente','Usa la aplicación para poder alcanzar su meta en su vida fitness'),
(2,'Administrador','Gestiona la aplicación y asigna roles');

-- --------------------------------------------------------

--
-- Table structure for table Rutina
--

CREATE TABLE Rutina (
  id_rutina int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(25) NOT NULL,
  tiporutina varchar(15) NOT NULL,
  descripcion text NOT NULL,

  PRIMARY KEY(id_rutina)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Rutina VALUES
(1,'pecho_explosivo','pecho','Realizar un fuerte entrenamiento de pecho'),
(2,'Pierna_tonifcar','Pierna','realizar un leve entrenamiento'),
(3,'Bicep_cara','bicep','Realizar entrenamiento de fuerza con mancuernas');


-- --------------------------------------------------------

--
-- Table structure for table Usuario
--

CREATE TABLE Usuario (
  id_usuario int(11) NOT NULL AUTO_INCREMENT,
  nombre varchar(30) NOT NULL,
  apellido varchar(30) NOT NULL,
  nombre_usuario varchar(15) NOT NULL,
  correo varchar(30) NOT NULL,
  contrasena varchar(15) NOT NULL,
  foto_perfil mediumtext DEFAULT NULL,
  sexo varchar(1) NOT NULL,
  fecha_nacimiento date NOT NULL,

  PRIMARY KEY(id_usuario)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

INSERT INTO Usuario 
(1,'José','Pérez','josperez','jose01@gmail.com','jose013',NULL, 'M','2003-02-01'),
(2,'Mariana','González','mariangoz','marigonz@gmail.com','coutmariti01',NULL,'F','2001-04-'),
(3,'Nashun','Wang','nwang','nashunwaang@gmail.com','extrañojapon',NULL,'M','1998-12-31'),
(4,'Mariano','Vega','marianoovega','vegamariiano@gmail.com','hogema01_',NULL,'M','1994-03-22'),
(5,'Vanessa','Lanz','enav_152003','enavlanz_01@gmail.com','unicorniofeliz',NULL,'F','2003-09-15'),
(6,'Héctor','Torres','hector.t24','hectortorres@gmail.com','torresgemelas',NULL,'M','2000-04-24'),
(7,'Uri','Gopar','uri_gopar','urigopar@gmail.com','gatitosarcoiris01',NULL,'M','1995/03/21'),
(8,'Sofia','Garcia','sofiii_garcia','sofgarciia22@gmail.com','Cg#1fQm*',NULL,'F','1993/03/21'),
(9,'Lucas','Rodriguez','roddlucc','rognw012@gmail.com','p9XhKd$r',NULL,'M','1988/07/14'),
(10,'Ana','Perez','anappperez','ezanap@gmail.com','E#7LjFt*',NULL,'F','2001/11/03'),
(11,'Daniel','Ramirez','ramdan','ledanfer@gmail.com','b4NkM@5x',NULL,'M','1993/02/28'),
(12,''),
(13,''),
(14,''),
(15,''),
(16,''),
(17,''),
(18,''),
(19,''),
(20,''),

-- --------------------------------------------------------

--
-- Table structure for table Dieta
--

CREATE TABLE Dieta (
  id_dieta int(11) NOT NULL AUTO_INCREMENT,

  id_macro int(11) NOT NULL AUTO_INCREMENT,
  id_micro int(11) NOT NULL AUTO_INCREMENT,

  -- ----------------------------------- 

  nombre varchar(25) NOT NULL,
  tipo_dieta varchar(15) NOT NULL,

  PRIMARY KEY(id_dieta),

  FOREIGN KEY(id_macro) REFERENCES MacroNutrientes(id_macro),
  FOREIGN KEY(id_micro) REFERENCES MicroNutrientes(id_micro)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table Cliente
--

CREATE TABLE Cliente (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,

  id_rutina int(11) NOT NULL AUTO_INCREMENT,
  id_dieta int(11) NOT NULL AUTO_INCREMENT,
  id_obj int(11) NOT NULL AUTO_INCREMENT,
  id_niv int(11) NOT NULL AUTO_INCREMENT,

  -- ----------------------------------- 

  imc int(11) NOT NULL,

  PRIMARY KEY(id_cliente),
  
  FOREIGN KEY(id_rutina) REFERENCES Rutina(id_rutina),
  FOREIGN KEY(id_dieta) REFERENCES Dieta(id_dieta),
  FOREIGN KEY(id_obj) REFERENCES Objetivo(id_obj),
  FOREIGN KEY(id_niv) REFERENCES NivelFisico(id_niv),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table Bitacora
--

CREATE TABLE Bitacora (
  id_cliente int(11) NOT NULL,
  id_rutina int(11) NOT NULL AUTO_INCREMENT,

  -- -----------------------------------

  fecha date NOT NULL,
  nivel_satisf int(2) DEFAULT NULL,
  descripcion_sesion varchar(500) NOT NULL,
  comentarios varchar(500) DEFAULT NULL,

  PRIMARY KEY(id_cliente,id_rutina,fecha),

  FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente)
  FOREIGN KEY(id_rutina) REFERENCES Rutina(id_rutina)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table DietasAlimentos
--

CREATE TABLE DietasAlimentos (
  id_dieta int(11) NOT NULL AUTO_INCREMENT,
  id_alimento int(11) NOT NULL AUTO_INCREMENT,

  -- -----------------------------------

  cantidad float (6,2) DEFAULT NULL,

  PRIMARY KEY(id_dieta,id_alimento),
  FOREIGN KEY(id_dieta) REFERENCES Dieta(id_dieta),
  FOREIGN KEY(id_alimento) REFERENCES Alimento(id_alimento),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table DietasFavoritas
--

CREATE TABLE DietasFavoritas (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,
  id_dieta int(11) NOT NULL AUTO_INCREMENT,

  PRIMARY KEY(id_cliente,id_dieta),

  FOREIGN KEY(id_cliente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY(id_dieta) REFERENCES Dieta(id_dieta)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table RutinaEjercicio
--

CREATE TABLE RutinaEjercicio (
  id_rutina int(11) NOT NULL AUTO_INCREMENT,
  id_ejercicio int(11) NOT NULL AUTO_INCREMENT,
  -- -----------------------------------

  series int(4) NOT NULL,
  repeticiones int(4) NOT NULL,
  dia varchar(3) NOT NULL,

  PRIMARY KEY(id_rutina,id_ejercicio),

  FOREIGN KEY(id_rutina) REFERENCES Rutina(id_rutina),
  FOREIGN key(id_ejercicio)REFERENCES Ejercicio(id_ejercicio),
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;


-- --------------------------------------------------------

--
-- Table structure for table RutinasFavoritas
--

CREATE TABLE RutinasFavoritas (
  id_ciente int(11) NOT NULL AUTO_INCREMENT,
  id_rutina int(11) NOT NULL AUTO_INCREMENT,

  PRIMARY KEY(id_ciente,id_rutina),

  FOREIGN KEY(id_ciente) REFERENCES Cliente(id_cliente),
  FOREIGN KEY(id_rutina) REFERENCES Rutina(id_rutina)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table UsuarioRol
--

CREATE TABLE UsuarioRol (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,
  id_rol int(11) NOT NULL AUTO_INCREMENT,

  PRIMARY KEY(id_cliente,id_rol),
  FOREIGN key(id_cliente)REFERENCES Cliente(id_cliente),
  FOREIGN key(id_rol)REFERENCES Rol(id_rol)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Table structure for table MedicionUsuario
--

CREATE TABLE ClienteMedicion (
  id_cliente int(11) NOT NULL AUTO_INCREMENT,
  id_rol int(11) NOT NULL AUTO_INCREMENT,

  -- -----------------------------------

  fecha date NOT NULL,
  medida float(4,1) DEFAULT NULL,

  PRIMARY KEY(id_usuarioRol),
  FOREIGN key(id_cliente)REFERENCES Cliente(id_cliente),
  FOREIGN key(id_rol)REFERENCES Rol(id_rol)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------