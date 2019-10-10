CREATE DATABASE equipe

USE equipe

CREATE TABLE Equipe (
	IdEquipe INT PRIMARY KEY IDENTITY not null,
	Nome_Equipe VARCHAR(20)
);

CREATE TABLE Jogador(
	IdJogador INT PRIMARY KEY IDENTITY not null,
	IdEquipe INT FOREIGN KEY REFERENCES Equipe(IdEquipe),
	Nome VARCHAR(30),
	Idade INT
);

INSERT INTO Equipe (Nome_Equipe) VALUES ('A'), ('B'), ('C')
INSERT INTO Jogador (IdEquipe, Nome, Idade) VALUES (1, 'Larissa', 23),(2, 'Maria', 3), (3, 'Elisa', 3)

SELECT * FROM Equipe
SELECT * FROM Jogador 
