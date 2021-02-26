USE pclinics;

INSERT INTO Clinica (Nome, Endereço, Razão_Social)
VALUES	('Clinica Gato Vagabundo', 'XXXXXXXXXX-1', 'XXXX')
		, ('Clinica Cada Cão Com Seu Próprio Rabo', 'XXXXXXXXX-2', 'xxxx');

INSERT INTO Veterinario (idClinica, Nome, CRMV)
VALUES	(1, 'Caique', '0000-00')
		, (1, 'Roberto', '0000-00')
		, (2, 'Marcos', '0000-00');

INSERT INTO Pet (Nome, Data_de_Nascimento, Tipo_de_Pet, Raça, Dono)
VALUES	('Bola de Pelo', '15/09/1997', 'Gato', 'Siames', 'Rodrigo')
		, ('Pol', '29/02/2016', 'Cachorro', 'Husky Siberiano', 'Maria')
		, ('Piriquito', '31/01/2020', 'Hamster', 'Anão Russo', 'William');

INSERT INTO Consulta (idVeterinario, idPet, Descrição_da_Consulta, Data_da_Consulta)
VALUES	(2, 1, 'Esse gato vagabundo veio só para cortar a unha e eu que acabei todo cortado', '02/03/2021 13:30:00')
		, (1, 2, 'Veio por vomitar repetidamente, recebeu prescrição para remédio contra vermes', '02/03/2021 15:00:00')
		, (2, 3, 'Morreu', '02/03/2021 17:00:00');