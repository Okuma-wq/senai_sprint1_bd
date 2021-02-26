USE Locadora;

INSERT INTO Empresa
VALUES	('Locadora 1')
		, ('Locadora 2');

INSERT INTO Veiculo (idEmpresa,Marca,Modelo,Placa)
VALUES	(2, 'Toyota', 'RAV4', 'XXX-0000')
		, (1, 'Hyundai', 'Creta', 'XXX-0000');

INSERT INTO Cliente (Nome, CPF)
VALUES	('André', '000.000.000-00')
		, ('Roberto', '000.000.000-00');

INSERT INTO Aluguel (idVeiculo, idCliente, Data_de_Retirada, Data_de_Devolução)
VALUES	(2, 1, '03/01/2019', '10/01/2019')
		, (1, 2, '09/02/2020', '16/02/2020')
		, (1, 1, '17/02/2020', '24/02/2020');