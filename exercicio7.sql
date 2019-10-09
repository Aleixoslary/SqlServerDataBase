CREATE DATABASE escola

--Entrando na tabela"
USE escola
--Criando Tabelas

CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY,
	Nome VARCHAR(30),
	Idade INT,
	Responsavel VARCHAR (30),
	Telefone VARCHAR (14)
);

CREATE TABLE turma(
	IdTurma INT IDENTITY PRIMARY KEY,
	IdAluno INT FOREIGN KEY REFERENCES aluno(IdAluno),
	Materia VARCHAR(15)
);

--Inserindo dados

INSERT INTO aluno (Nome,Idade,Responsável,Telefone) VALUES('Bia', 21,'Maria', '(11)11111-1111'),('Maria Clara', 3 ,'Carol', '(11)11111-1111')

SELECT * FROM aluno

INSERT INTO turma(IdAluno,Materia) VALUES (2,'Português'),(1,'Japonês'),(3,'Inglês')

SELECT * FROM turma
