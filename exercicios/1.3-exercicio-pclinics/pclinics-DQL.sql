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