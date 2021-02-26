USE pclinics;

INSERT INTO Clinica
VALUES	('XXXXXXXXXX-1')
		, ('XXXXXXXXX-2');

INSERT INTO Veterinario (idClinica, Nome)
VALUES	(1, 'Caique')
		, (1, 'Roberto');

INSERT INTO Pet (Nome,Tipo_de_Pet, Raça, Dono)
VALUES	('Bola de Pelo', 'Gato', 'Siames', 'Rodrigo')
		, ('Pol', 'Cachorro', 'Husky Siberiano', 'Maria');

INSERT INTO Consulta (idVeterinario, idPet, Data)
VALUES	(2, 1, 2021-03-02)
		, (1, 2, 2021-03-02);