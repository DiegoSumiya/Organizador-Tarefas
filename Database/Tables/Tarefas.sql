CREATE TABLE Tarefas
(	
	id int IDENTITY(1,1) PRIMARY KEY NOT NULL,
	descricao varchar(100) NOT NULL,
	data datetime not null,
	CONSTRAINT fk_tarefas FOREIGN KEY (id) REFERENCES Usuarios (id)
)
