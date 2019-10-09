-- COMANDOS DE DMLs (ESTRUTURA)

/*Criar Banco*/
CREATE DATABASE boletim;

/*Excluir Banco*/
DROP DATABASE boletim;


/*USAR O BANCO*/
USE boletim;

--Criar tabela de aluno
-- IDENTITY- Autoincrementa de 1 em 1 "gera o código automáticamente"
-- not null- Obriga os dados a serem inseridos
CREATE TABLE aluno(
	IdAluno INT IDENTITY PRIMARY KEY not null,
	Nome VARCHAR(100), 
	Ra VARCHAR(20),
	Idade INT
); 

--Criar tabela de matéria
CREATE TABLE materia(
	IdMateria INT IDENTITY PRIMARY KEY not null,
	Materia VARCHAR(50)
); 

--Criar tabela de trabalho
-- FOREIGN KEY REFERENCES - chave estrangeiras
CREATE TABLE trabalho(
	IdTrabalho INT IDENTITY PRIMARY KEY not null,
	Nota DECIMAL,
	IdMateria INT FOREIGN KEY REFERENCES materia(IdMateria),
	IdAluno INT FOREIGN KEY REFERENCES aluno (IdAluno)
);


--ALTER TABLE - Altera a tabela
--Incluir nova coluna
ALTER TABLE materia ADD Teste VARCHAR(2);

--Excluir coluna
ALTER TABLE materia DROP COLUMN Teste;