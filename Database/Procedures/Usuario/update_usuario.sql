USE OrganizadorTarefas
GO

CREATE PROCEDURE update_usuario
(
	@id int,
	@nome varchar(100),
	@email varchar(100)
)
AS
BEGIN
	UPDATE Usuario set nome = @nome, email = @email WHERE  id = @id;
END