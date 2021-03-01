USE Optus;

SELECT * FROM Artista;

SELECT * FROM Album;

SELECT * FROM Estilo;

SELECT * FROM Estilos_do_Album;

SELECT * FROM Usuario;

-- listar todos os usuários administradores, sem exibir suas senhas
SELECT Nome, Email, Tipo_de_Permissao  FROM Usuario
WHERE Tipo_de_Permissao = 'Administrador';

-- listar todos os álbuns lançados após o um determinado ano de lançamento
SELECT * FROM Album
WHERE Data_de_lançamento >= '2022';

-- listar os dados de um usuário através do e-mail e senha
SELECT * FROM Usuario
WHERE Email = 'André@email.com' AND Senha = '54321';

-- listar todos os álbuns ativos, mostrando o nome do artista e os estilos do álbum
SELECT Album.Titulo, Artista.Nome, Estilo.Nome FROM Album
INNER JOIN Artista
ON Artista.idArtista = Album.idArtista
INNER JOIN Estilos_do_Album
ON Estilos_do_Album.idAlbum = Album.idAlbum
INNER JOIN Estilo
ON Estilo.idEstilo = Estilos_do_Album.idEstilo
WHERE Album.Ativo_para_visualizaçao = 'sim';