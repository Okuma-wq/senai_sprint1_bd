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