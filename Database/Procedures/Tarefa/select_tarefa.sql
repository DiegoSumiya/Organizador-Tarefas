USE OrganizadorTarefas
GO

CREATE PROCEDURE select_tarefa
(
	@id int
)
AS
BEGIN
	SELECT descricao, data FROM Tarefa WHERE  id = @id;
END