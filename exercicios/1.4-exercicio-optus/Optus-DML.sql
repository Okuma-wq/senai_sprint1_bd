USE Optus;

INSERT INTO Artista (Nome)
VALUES	('Zé da feira')
		, ('Capenga');

INSERT INTO Album (idArtista, Titulo, Data_de_lançamento, Localizaçao, Tempo_Total, Ativo_para_visualizaçao)
VALUES	(1, 'Album 1', '2021-02-26', 'Brasil', '00:24:00.000', 'sim')
		, (2, 'Album 2', '2021-02-26', 'Brasil', '00:19:30.000', 'não')
		, (1, 'Album 3', '2022-01-30', 'Brasil', '00:25:00.00', 'não');

INSERT INTO Estilo (Nome)
VALUES	('Indie')
		, ('Rock');

INSERT INTO Estilos_do_Album (idAlbum, idEstilo)
VALUES	(1, 1)
		, (2, 2)
		, (3,2);

INSERT INTO Usuario (Nome, Email, Senha, Tipo_de_Permissao)
VALUES	('Henrique', 'Henrique@email.com', '12345', 'Administrador')
		, ('André', 'André@email.com', '54321', 'Comum');