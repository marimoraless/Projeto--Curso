CREATE DATABASE dbCurso 

USE dbCurso;

CREATE TABLE tblCurso(
    IDCurso INT PRIMARY KEY IDENTITY(1,1),
    NomeCurso VARCHAR(50),
);

CREATE TABLE tblAluno(
    IDAluno INT PRIMARY KEY IDENTITY(1,1),
    Nome VARCHAR(30),
    Sobrenome VARCHAR(30),
    Email VARCHAR(50),
    IDCurso INT, 
    FOREIGN KEY (IDCurso) REFERENCES tblCurso(IDCurso)
	
);

INSERT INTO tblCurso (NomeCurso) 
VALUES ('Análise e Desenvolvimento de Sistemas');

INSERT INTO tblAluno (Nome, Sobrenome, Email, IDCurso)
VALUES ('Mariana', 'Morales', 'mariana.morales@gmail.com', 1);

SELECT * FROM tblCurso;
SELECT * FROM tblAluno;



