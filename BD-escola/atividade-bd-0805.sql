CREATE DATABASE alunosecursos;
USE alunosecursos;

CREATE TABLE Cursos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250)
);

CREATE TABLE Alunos (
id INT AUTO_INCREMENT PRIMARY KEY,
nome VARCHAR(250),
curso INT,
salario DOUBLE,
idade INT,
FOREIGN KEY (curso) References Cursos(id)
);

INSERT INTO Cursos (nome) VALUES 
('Matemática'), 
('Física'), 
('Química');

INSERT INTO Alunos (nome, curso, salario, idade) VALUES 

('João Silva', 1, 1500, 20),
('Maria Oliveira', 2, 1800, 22),
('Pedro Santos', 1, 1600, 21),
('Ana Costa', 3, 1700, 19);

SELECT
Alunos.id AS AlunoID,
Alunos.nome AS AlunoNome,
Cursos.nome AS CursoNome,
Alunos.salario,
Alunos.idade

FROM
Alunos

JOIN
Cursos ON Alunos.Curso = Cursos.id