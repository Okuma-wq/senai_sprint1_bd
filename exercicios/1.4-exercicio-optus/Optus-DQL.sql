USE Optus;

SELECT * FROM Artista;

SELECT * FROM Album;

SELECT * FROM Estilo;

SELECT * FROM Estilos_do_Album;

SELECT * FROM Usuario;

-- listar todos os usu�rios administradores, sem exibir suas senhas
SELECT Nome, Email, Tipo_de_Permissao  FROM Usuario
WHERE Tipo_de_Permissao = 'Administrador';

-- listar todos os �lbuns lan�ados ap�s o um determinado ano de lan�amento
SELECT * FROM Album
WHERE Data_de_lan�amento >= '2022';

-- listar os dados de um usu�rio atrav�s do e-mail e senha
SELECT * FROM Usuario
WHERE Email = 'Andr�@email.com' AND Senha = '54321';

-- listar todos os �lbuns ativos, mostrando o nome do artista e os estilos do �lbum
SELECT Album.Titulo, Artista.Nome, Estilo.Nome FROM Album
INNER JOIN Artista
ON Artista.idArtista = Album.idArtista
INNER JOIN Estilos_do_Album
ON Estilos_do_Album.idAlbum = Album.idAlbum
INNER JOIN Estilo
ON Estilo.idEstilo = Estilos_do_Album.idEstilo
WHERE Album.Ativo_para_visualiza�ao = 'sim';