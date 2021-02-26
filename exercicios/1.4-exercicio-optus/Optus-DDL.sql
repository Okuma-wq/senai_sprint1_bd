CREATE DATABASE Optus;

USE Optus;

CREATE TABLE Artista
(
	idArtista INT PRIMARY KEY IDENTITY
	, Nome VARCHAR(200)
);

CREATE TABLE Album
(
	idAlbum INT PRIMARY KEY IDENTITY
	, idArtista INT FOREIGN KEY REFERENCES Artista(idArtista)
	, Titulo VARCHAR(200)
	, Data_de_lançamento DATE
	, Localizaçao VARCHAR(200)
	, Tempo_Total TIME
	, Ativo_para_visualizaçao VARCHAR(3)
);

CREATE TABLE Estilo
(
	idEstilo INT PRIMARY KEY IDENTITY
	, Nome VARCHAR(200)
);

CREATE TABLE Estilos_do_Album
(
	idAlbum INT FOREIGN KEY REFERENCES Album(idAlbum)
	, idEstilo INT FOREIGN KEY REFERENCES Estilo(idEstilo)
);

CREATE TABLE Usuario
(
	idUsuario INT PRIMARY KEY IDENTITY
	, Nome VARCHAR(200)
	, Email VARCHAR(200)
	, Senha VARCHAR(200)
	, Tipo_de_Permissao VARCHAR(200)
);