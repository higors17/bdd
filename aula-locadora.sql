CREATE DATABASE LocadoraDB;

USE LocadoraDB;

CREATE TABLE Diretores (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(200) NOT NULL );

    CREATE TABLE Generos (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(200) NOT NULL UNIQUE );

    CREATE TABLE Filmes (
    Id INT PRIMARY KEY IDENTITY,
    Nome VARCHAR(150) NOT NULL,
    Ano INT,
    IdDiretor INT,
    FOREIGN KEY ( IdDiretor )
        REFERENCES Diretores(Id)  );

    CREATE TABLE FilmesGeneros (
    Id INT PRIMARY KEY IDENTITY,
    IdFilme INT,
    IdGenero INT,
    FOREIGN KEY ( IdFilme )
        REFERENCES Filmes(Id),
    FOREIGN KEY ( IdGenero )
        REFERENCES Generos(Id) );