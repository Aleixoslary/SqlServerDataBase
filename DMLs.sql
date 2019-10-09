--Inserir dado na tabela aluno
INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Larissa', 'R123', 23);
INSERT INTO aluno (Nome, Ra, Idade) VALUES ('Larissa', 'R123', 23);

--Inserir dado na tabela materia
INSERT INTO materia (Materia) VALUES ('Matemática');
INSERT INTO materia (Materia) VALUES ('Português');

--Alterar dado(s)
UPDATE aluno SET 
	Nome='Larissa Aleixos', 
	Idade=20
WHERE IdAluno=2;

--Exluir dado
DELETE FROM materia 
WHERE IdMateria = 2;