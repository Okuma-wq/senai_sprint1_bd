USE pclinics;

SELECT * FROM Clinica;

SELECT * FROM Veterinario;

SELECT * FROM Pet;

SELECT * FROM Consulta;

-- listar todos os veterin�rios (nome e CRMV) de uma cl�nica (raz�o social)
SELECT Veterinario.Nome AS Nome_do_Veterinario, Veterinario.CRMV, Clinica.Raz�o_Social FROM Clinica
INNER JOIN Veterinario
ON Clinica.idClinica = Veterinario.idClinica
WHERE Clinica.idClinica = 1;

-- listar todas as ra�as que come�am com a letra S
SELECT Pet.Ra�a FROM Pet WHERE Ra�a LIKE 'S%';

-- listar todos os tipos de pet que terminam com a letra O
SELECT Pet.Tipo_de_Pet FROM Pet Where Tipo_de_Pet LIKE '%O';

-- listar todos os pets mostrando os nomes dos seus donos
SELECT Nome, Dono FROM Pet;

-- listar todos os atendimentos mostrando o nome do veterin�rio que atendeu, o nome, a ra�a e o tipo do pet que foi atendido, o nome do dono do pet e o nome da cl�nica onde o pet foi atendido
SELECT Veterinario.Nome, Pet.Nome, Pet.Ra�a, Pet.Tipo_de_Pet, Pet.Dono, Clinica.Nome AS Nome_da_Clinica FROM Consulta
INNER JOIN Veterinario
ON Veterinario.idVeterinario = Consulta.idVeterinario
INNER JOIN Pet
ON Pet.idPet = Consulta.idPet
INNER JOIN Clinica
ON Clinica.idClinica = Veterinario.idClinica;