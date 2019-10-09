--Criando o DataBase
CREATE DATABASE loja

--Entrando na tabela
USE loja

--Criando Tabelas
CREATE TABLE departamento(
	IdDep INT IDENTITY PRIMARY KEY,
	Nome_Dep VARCHAR(30)
);

CREATE TABLE localizacao(
	IdLoc INT IDENTITY PRIMARY KEY,
	IdDep INT FOREIGN KEY REFERENCES departamento(IdDep),
	Localizacao VARCHAR(20)
);

CREATE TABLE cadDep(
	IdCadDep INT IDENTITY PRIMARY KEY,
	IdDep INT FOREIGN KEY REFERENCES departamento(IdDep),
	IdLoc INT FOREIGN KEY REFERENCES localizacao(IdLoc)
);

CREATE TABLE projetos(
	IdProjeto INT IDENTITY PRIMARY KEY,
	IdDep INT FOREIGN KEY REFERENCES departamento(IdDep),
	Projeto VARCHAR(30),
	Data_Inicial DATE,
	Data_Final DATE
);

CREATE TABLE funcionario(
	IdFunc INT IDENTITY PRIMARY KEY,
	IdDep INT FOREIGN KEY REFERENCES departamento(IdDep),
	Nome VARCHAR(30),
	Cargo VARCHAR(30)
);

CREATE TABLE membroproj(
	IdMembro INT IDENTITY PRIMARY KEY,
	IdProjeto INT FOREIGN KEY REFERENCES projetos(IdProjeto),
	IdFunc INT FOREIGN KEY REFERENCES funcionario(IdFunc)
);

CREATE TABLE dependentes(
	IdDependente INT IDENTITY PRIMARY KEY,
	IdFunc INT FOREIGN KEY REFERENCES funcionario(IdFunc),
	Nome VARCHAR(30)
);

--Inserindo dados
INSERT INTO departamento(Nome_Dep) VALUES('Gerencia'),('Diretoria'),('Marketing')

INSERT INTO localizacao (IdDep, Localizacao ) VALUES (3,'Prédio A'),(3,'Prédio E'),(1,'Prédio F')

INSERT INTO projetos (IdDep, Projeto, Data_Inicial, Data_Final) VALUES (3,'Azul', '25/03/2019', '25/05/2019'),  
(1,'Vermelho', '20/01/2019', '25/05/2019'),  (2,'Roxo', '25/07/2019', '20/12/2019')

INSERT INTO funcionario (IdDep, Nome, Cargo) VALUES (2, 'Larissa', 'Diretora'), (1, 'Joana', 'Gerente'),
(3, 'Itamar', 'Gerente Marketing')

INSERT INTO membroproj (IdProjeto, IdFunc) VALUES (1,2), (3,1),(2,1)

INSERT INTO dependentes (IdFunc, Nome) VALUES (1, 'Maria Clara'), (1, 'Elisa'), (3, 'Hugo')

SELECT * FROM localizacao
SELECT * FROM departamento
SELECT * FROM projetos
SELECT * FROM funcionario
SELECT * FROM membroproj
SELECT * FROM dependentes
