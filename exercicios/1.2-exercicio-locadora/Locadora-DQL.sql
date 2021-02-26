USE Locadora;

SELECT * FROM Empresa;

SELECT * FROM Veiculo;

SELECT * FROM Cliente;

SELECT * FROM Aluguel;


-- listar todos os alugueis mostrando as datas de início e fim, o nome do cliente que alugou e nome do modelo do carro
SELECT Aluguel.Data_de_Retirada, Aluguel.Data_de_Devolução, Cliente.Nome AS Nome_do_Cliente, Veiculo.Modelo AS Modelo_do_Veiculo FROM Aluguel
LEFT JOIN Cliente
ON Aluguel.idCliente = Cliente.idCliente
LEFT JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo;


-- listar os alugueis de um determinado cliente mostrando seu nome, as datas de início e fim e o nome do modelo do carro
SELECT Cliente.Nome AS Nome_do_Cliente, Aluguel.Data_de_Retirada, Aluguel.Data_de_Devolução, Veiculo.Modelo AS Modelo_do_Veiculo FROM Aluguel
INNER JOIN Veiculo
ON Aluguel.idVeiculo = Veiculo.idVeiculo
INNER JOIN Cliente
ON Aluguel.idCliente = Cliente.idCliente
Where Aluguel.idCliente = 1;