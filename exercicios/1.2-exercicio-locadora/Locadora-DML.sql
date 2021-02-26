USE Locadora;

INSERT INTO Empresa
VALUES	('Locadora 1')
		, ('Locadora 2');

INSERT INTO Veiculo (idEmpresa,Marca,Modelo,Placa)
VALUES	(2, 'Toyota', 'RAV4', 'XXX-0000')
		, (1, 'Hyundai', 'Creta', 'XXX-0000');

INSERT INTO Cliente (Nome, Numero_de_Identidade, CPF)
VALUES	('André', '00.000.000-00', '000.000.000-00')
		, ('Roberto', '00.000.000-00', '000.000.000-00');

INSERT INTO Aluguel (idVeiculo, idCliente, Preço, Data)
VALUES	(2, 1, 425.00, 03/09/2021)
		, (1, 2, 500.00, 09/05/2021);