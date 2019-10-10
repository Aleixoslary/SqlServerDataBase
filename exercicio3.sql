CREATE DATABASE livros

USE livros

CREATE TABLE livro(
	IdLivro INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR(30),
	Data_Publicacao DATE,
);

CREATE TABLE autor(
	IdAutor INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR(30),
	Idade INT
);

CREATE TABLE publicacao(
	IdPublicacao INT PRIMARY KEY IDENTITY not null,
	IdLivro INT FOREIGN KEY	REFERENCES livro(IdLivro),
	IdAutor INT FOREIGN KEY REFERENCES autor(IdAutor)
);

INSERT INTO livro (Nome, Data_Publicacao) VALUES ('Harry Potter','26/06/1997') , 
('Senhor dos Anéis','29/07/1954'), ('Game of Thrones','06/08/1996')

INSERT INTO autor(Nome, Idade) VALUES ('J.K. Rowling', 54) , ('J.R.R.Tolkien', 81), ('George R. R. Martin', 71)

INSERT INTO publicacao (IdAutor,IdLivro) VALUES (1,1) , (2,2) , (3,3)

SELECT * FROM livro
SELECT * FROM autor
SELECT * FROM publicacao