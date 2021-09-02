USE OrganizadorTarefas
GO

CREATE PROCEDURE delete_tarefa
(
	@id int
)
AS 
BEGIN
	DELETE FROM Tarefa WHERE id = @id;
END