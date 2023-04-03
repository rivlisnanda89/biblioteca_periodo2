-- Drop the database 'bibliotexa'
-- Connect to the 'master' database to run this snippet
-- Create a new database called 'biblioteca'
-- Connect to the 'master' database to run this snippet
USE master
GO


-- Create the new database if it does not exist already
IF NOT EXISTS (
    SELECT name
        FROM sys.databases
        WHERE name = N'biblioteca'
)
CREATE DATABASE biblioteca
GO

CREATE SCHEMA Biblioteca;

GO
-- Create the table in the specified schema
IF OBJECT_ID('Biblioteca.Livro', 'U') IS NOT NULL
DROP TABLE Biblioteca.Livro
CREATE TABLE Biblioteca.Livro (
    CDD VARCHAR(10) NOT NULL,
    Titulo VARCHAR(100) NOT NULL,
    Autor VARCHAR(100) NOT NULL,
    AnoPublicacao INT NOT NULL,
    Editora VARCHAR(50) NOT NULL,
    CONSTRAINT PK_Livro PRIMARY KEY (CDD)
);

GO

-- Create a new table called 'usuario' in schema 'Biblioteca'
-- Drop the table if it already exists
IF OBJECT_ID('Biblioteca.usuario', 'U') IS NOT NULL
DROP TABLE Biblioteca.usuario
GO
-- Create the table in the specified schema
CREATE TABLE Biblioteca.usuario
(
    CPF VARCHAR(11) NOT NULL PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    Endereco VARCHAR(200) NOT NULL,
    DataNascimento DATE NOT NULL,
    telefone VARCHAR(20) NOT NULL
    -- specify more columns here
);

GO

CREATE TABLE Biblioteca.Emprestimo (
    ID INT PRIMARY KEY,
    ID_Livro VARCHAR(10),
    ID_Usuario VARCHAR(11),
    DataEmprestimo DATE,
    DataDevolucao DATE,
    FOREIGN KEY (ID_Livro) REFERENCES Biblioteca.livro(CDD),
    FOREIGN KEY (ID_Usuario) REFERENCES Biblioteca.usuario(CPF)
);

GO
