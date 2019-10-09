--Mostrar dados
SELECT * FROM aluno;

SELECT * FROM materia;

--Mostrar dados específicos de um aluno pelo ID
SELECT * FROM aluno WHERE IdAluno=2;

--Mostrar dados em uma "busca" dom LIKE
--% - significa pode começar com qualuqer coisa ou terminar com qualquer coisa
SELECT * FROM aluno WHERE nome LIKE '%Larissa';

--Ordenar por nome de forma ascendente
SELECT * FROM aluno ORDER BY Nome ASC;

