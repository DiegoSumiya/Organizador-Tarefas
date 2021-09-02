USE OrganizadorTarefas

GO

CREATE PROCEDURE insert_usuario
(
	@nome varchar(100),
	@email varchar(100)
)
AS 
BEGIN
		INSERT INTO Usuario (nome, email)
		VALUES (@nome, @email)
END