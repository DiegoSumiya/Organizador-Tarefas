USE [OrganizadorTarefas]
GO
/****** Object:  StoredProcedure [dbo].[delete_usuario]    Script Date: 29/08/2021 19:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER PROCEDURE [dbo].[delete_usuario]
(	
	@id int
)
AS
BEGIN
	DELETE FROM Tarefa WHERE id = @id
	DELETE FROM Usuario WHERE id = @id;
END