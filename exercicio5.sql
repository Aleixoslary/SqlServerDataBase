CREATE DATABASE compra

USE compra

CREATE TABLE cliente(
	IdCliente INT PRIMARY KEY IDENTITY not null,
	Nome VARCHAR(30),
);

CREATE TABLE produto(
	IdProduto INT PRIMARY KEY IDENTITY not null,
	Produto VARCHAR(20),
	Preco FLOAT,
);

CREATE TABLE pedido (
	IdPedido INT PRIMARY KEY IDENTITY not null,
	IdCliente INT FOREIGN KEY REFERENCES cliente(IdCliente),
	IdProduto INT FOREIGN KEY REFERENCES produto(IdProduto)
);

INSERT INTO cliente (Nome) VALUES ('Larissa'), ('Maria'), ('Elisa')
INSERT INTO produto (Produto, Preco) VALUES ('Maquiagem',15.80), ('Boneca',80.00), ('Vestido',75.00)
INSERT INTO pedido (IdCliente, IdProduto) VALUES (1,1) , (2,2) , (3,3)

SELECT * FROM cliente
SELECT * FROM produto
SELECT * FROM pedido