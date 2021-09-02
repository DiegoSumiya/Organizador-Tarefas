USE OrganizadorTarefas
GO

CREATE PROCEDURE select_usuario
(
	@id int
)
AS
BEGIN
	select nome, email FROM Usuario WHERE id = @id;
END