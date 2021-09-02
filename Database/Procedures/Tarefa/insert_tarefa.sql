USE OrganizadorTarefas
GO

CREATE PROCEDURE insert_tarefa
(
	@descricao varchar(100),
	@data datetime
)
AS
BEGIN
	INSERT INTO Tarefa (descricao, data) VALUES (@descricao, @data);
END