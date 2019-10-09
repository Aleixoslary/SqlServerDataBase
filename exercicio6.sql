--Criando o DataBase
CREATE DATABASE curso

--Entrando na tabela"
USE curso
--Criando Tabelas

CREATE TABLE curso(
	IdCurso INT IDENTITY PRIMARY KEY,
	Curso VARCHAR(20),
	Nivel VARCHAR(20),
	Duracao VARCHAR(10)
);

CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY,
	IdCurso INT FOREIGN KEY REFERENCES curso(IdCurso),
	Nome VARCHAR(30),
	CPF VARCHAR (14),
	Idade INT
);

--Inserindo dados

INSERT INTO curso(Curso, Nivel, Duracao) VALUES ('Inglês','Básico','20h')
INSERT INTO curso(Curso, Nivel, Duracao) VALUES ('Espanhol','Intermediário','60h')
INSERT INTO curso(Curso, Nivel, Duracao) VALUES ('Japonês','Avançado','90h')

SELECT * FROM curso

INSERT INTO aluno (Nome, CPF, Idade,IdCurso) VALUES ('Ana','111.111.111-11', 20,3)
INSERT INTO aluno (Nome, CPF, Idade,IdCurso) VALUES ('Bia','111.111.111-12', 22,2)
INSERT INTO aluno (Nome, CPF, Idade,IdCurso) VALUES ('Larissa','111.111.111-13', 23,1)

SELECT * FROM aluno