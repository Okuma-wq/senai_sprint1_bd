USE pclinics;

SELECT * FROM Clinica;

SELECT * FROM Veterinario;

SELECT * FROM Pet;

SELECT * FROM Consulta;

-- listar todos os veterinários (nome e CRMV) de uma clínica (razão social)
SELECT Veterinario.Nome AS Nome_do_Veterinario, Veterinario.CRMV, Clinica.Razão_Social FROM Clinica
INNER JOIN Veterinario
ON Clinica.idClinica = Veterinario.idClinica
WHERE Clinica.idClinica = 1;

-- listar todas as raças que começam com a letra S
SELECT Pet.Raça FROM Pet WHERE Raça LIKE 'S%';

-- listar todos os tipos de pet que terminam com a letra O
SELECT Pet.Tipo_de_Pet FROM Pet Where Tipo_de_Pet LIKE '%O';

-- listar todos os pets mostrando os nomes dos seus donos
SELECT Nome, Dono FROM Pet;

-- listar todos os atendimentos mostrando o nome do veterinário que atendeu, o nome, a raça e o tipo do pet que foi atendido, o nome do dono do pet e o nome da clínica onde o pet foi atendido
SELECT Veterinario.Nome, Pet.Nome, Pet.Raça, Pet.Tipo_de_Pet, Pet.Dono, Clinica.Nome AS Nome_da_Clinica FROM Consulta
INNER JOIN Veterinario
ON Veterinario.idVeterinario = Consulta.idVeterinario
INNER JOIN Pet
ON Pet.idPet = Consulta.idPet
INNER JOIN Clinica
ON Clinica.idClinica = Veterinario.idClinica;