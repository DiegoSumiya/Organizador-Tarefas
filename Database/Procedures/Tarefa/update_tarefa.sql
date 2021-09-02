USE OrganizadorTarefas
GO

CREATE PROCEDURE update_tarefa
(
	@id int,
	@descricao varchar(100),
	@data datetime
)
AS
BEGIN
	UPDATE Tarefa SET descricao = @descricao, data = @data WHERE id = @id;
END