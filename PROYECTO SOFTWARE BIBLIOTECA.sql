create database SistemaBibliotecaDB;

USE SistemaBibliotecaDB;

drop table Usuarios;

CREATE TABLE Usuarios (
    IdUsuario INT PRIMARY KEY IDENTITY(1,1),
    Usuario NVARCHAR(50),
    Contrase�a NVARCHAR(100),
    NombreCompleto NVARCHAR(100),
    TipoUsuario NVARCHAR(50)
);


-- Insertar usuarios
INSERT INTO Usuarios (Usuario, Contrase�a, NombreCompleto, TipoUsuario)
VALUES 
('admin', '1234', 'Administrador General', 'Admin'),
('lector1', 'abc123', 'Lector Prueba', 'Lector');


drop table Autores;

USE SistemaBibliotecaDB;
GO

-- Tabla de Categor�as
CREATE TABLE Categorias (
    IdCategoria INT PRIMARY KEY IDENTITY(1,1),
    Nombre NVARCHAR(100) NOT NULL
);

-- Tabla de Libros
CREATE TABLE Libros (
    IdLibro INT PRIMARY KEY IDENTITY(1,1),
    Codigo NVARCHAR(20) NOT NULL,
    Nombre NVARCHAR(150) NOT NULL,
    Autor NVARCHAR(100),
    Editorial NVARCHAR(100),
    Categoria NVARCHAR(100),
    FechaEdicion DATE,
    FechaPublicacion DATE,
    Paginas INT,
    Edicion NVARCHAR(50)
);


-- Insertar categor�as
INSERT INTO Categorias (Nombre) VALUES
('Ficci�n'),
('Ciencia'),
('Filosof�a'),
('Tecnolog�a');

-- Insertar libros de prueba
INSERT INTO Libros (Codigo, Nombre, Autor, Editorial, Categoria, FechaEdicion, FechaPublicacion, Paginas, Edicion)
VALUES 
('L001', 'Cien a�os de soledad', 'Gabriel Garc�a M�rquez', 'Sudamericana', 'Ficci�n', '1967-05-01', '1967-06-01', 471, 'Primera'),
('L002', 'El origen de las especies', 'Charles Darwin', 'Planeta', 'Ciencia', '1859-11-01', '1860-01-01', 502, 'Primera');

INSERT INTO Libros (Codigo, Nombre, Autor, Editorial, Categoria, FechaEdicion, FechaPublicacion, Paginas, Edicion)
VALUES 
('L001', 'Cien a�os de soledad', 'Gabriel Garc�a M�rquez', 'Sudamericana', 'Ficci�n', '1967-05-01', '1967-06-01', 471, 'Primera'),
('L002', 'El origen de las especies', 'Charles Darwin', 'Planeta', 'Ciencia', '1859-11-01', '1860-01-01', 502, 'Primera'),
('L003', '1984', 'George Orwell', 'Debolsillo', 'Distop�a', '1949-06-08', '1950-01-01', 328, 'Primera'),
('L004', 'Don Quijote de la Mancha', 'Miguel de Cervantes', 'Alfaguara', 'Cl�sico', '1605-01-16', '1605-03-01', 863, 'Primera'),
('L005', 'La teor�a del todo', 'Stephen Hawking', 'Cr�tica', 'Ciencia', '2002-05-15', '2003-01-01', 212, 'Segunda'),
('L006', 'El c�digo Da Vinci', 'Dan Brown', 'Umbriel', 'Suspenso', '2003-03-18', '2003-04-01', 454, 'Primera'),
('L007', 'Harry Potter y la piedra filosofal', 'J.K. Rowling', 'Salamandra', 'Fantas�a', '1997-06-26', '1998-01-01', 309, 'Primera'),
('L008', 'El Principito', 'Antoine de Saint-Exup�ry', 'Reynal & Hitchcock', 'F�bula', '1943-04-06', '1943-05-01', 96, 'Tercera'),
('L009', 'Los juegos del hambre', 'Suzanne Collins', 'RBA', 'Ciencia Ficci�n', '2008-09-14', '2009-01-01', 400, 'Primera'),
('L010', 'Cr�nica de una muerte anunciada', 'Gabriel Garc�a M�rquez', 'Sudamericana', 'Ficci�n', '1981-03-15', '1981-04-01', 120, 'Primera');

drop table Usuario;
CREATE TABLE Usuario (
    IdUsuario INT PRIMARY KEY IDENTITY(1,1),
    Codigo NVARCHAR(20),
    Cuenta NVARCHAR(50),
    Contrase�a NVARCHAR(100)
);


CREATE TABLE Lectores (
    IdLector INT PRIMARY KEY IDENTITY(1,1),
    Codigo NVARCHAR(20),
    Cedula NVARCHAR(20),
    Nombre NVARCHAR(100),
    Telefono NVARCHAR(20),
    Direccion NVARCHAR(200)
);

INSERT INTO Lectores (Codigo, Cedula, Nombre, Telefono, Direccion)
VALUES 
('L001', '12345678', 'Mar�a L�pez', '987654321', 'Av. Las Flores 123'),
('L002', '87654321', 'Juan P�rez', '912345678', 'Calle Los Olivos 456');

CREATE TABLE Prestamos (
    IdPrestamo INT PRIMARY KEY IDENTITY(1,1),
    Lector NVARCHAR(100),
    Libro NVARCHAR(100),
    FechaPrestamo DATE,
    FechaDevolucion DATE
);
