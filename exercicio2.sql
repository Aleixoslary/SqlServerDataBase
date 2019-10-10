CREATE DATABASE empresa

USE empresa

CREATE TABLE diretor(
	IdDiretor INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR(30),
	Cargo VARCHAR(20)
);

CREATE TABLE departamento(
	IdDep INT PRIMARY KEY IDENTITY not null,
	IdDiretor INT FOREIGN KEY REFERENCES diretor(IdDiretor),
	Nome_Dep VARCHAR(20)
);

ALTER TABLE diretor DROP COLUMN cargo;

ALTER TABLE diretor ADD Area VARCHAR(20);

INSERT INTO diretor (Nome, Area) VALUES ('Itamar', 'Financeiro')

INSERT INTO departamento (IdDiretor, Nome_Dep) VALUES (2, 'Fincanças'), (1,'Criativo')

SELECT * FROM departamento
SELECT * FROM diretor