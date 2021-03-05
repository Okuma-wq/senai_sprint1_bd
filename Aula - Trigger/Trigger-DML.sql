USE Aula_Trigger;

INSERT INTO Estoque(Produto, Quantidade_no_Estoque, Ultima_Atualização)
VALUES	('PS5', 100, GETDATE());

CREATE TRIGGER att_Estoque
ON tlb_HistoricoVendas
FOR INSERT
AS
BEGIN
	DECLARE	@Quantidade INT
			, @Produto VARCHAR(200)
			, @Data DATETIME

	SELECT @Data = Data_da_Venda, @Quantidade = Quantidade_Vendida, @Produto = Prod_Vendido FROM inserted

	UPDATE Estoque
	SET	Quantidade_no_Estoque = Quantidade_no_Estoque - @Quantidade
		, Ultima_Atualização = @Data
	WHERE Produto = @Produto

END

INSERT INTO tlb_HistoricoVendas (Prod_Vendido, Quantidade_Vendida, Data_da_Venda)
VALUES	('PS5', 30, GETDATE());