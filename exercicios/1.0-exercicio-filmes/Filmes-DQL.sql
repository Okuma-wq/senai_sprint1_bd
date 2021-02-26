USE Filmes;

SELECT * FROM Generos;

SELECT * FROM Filmes;

SELECT Filmes.idFilme, Filmes.Titulo, Generos.Nome AS Genero FROM Filmes
INNER JOIN Generos
ON Filmes.idGenero = Generos.idGenero
WHERE Generos.idGenero = 1;