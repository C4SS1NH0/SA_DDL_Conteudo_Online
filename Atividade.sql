

--1. Tabela de Usuários
CREATE TABLE Usuarios (
    usuario_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    email VARCHAR(150) NOT NULL UNIQUE,
    data_cadastro DATE NOT NULL
);

--2. Tabela de Professores
CREATE TABLE Professores (
    professor_id INT PRIMARY KEY,
    nome VARCHAR(150) NOT NULL,
    especialidade VARCHAR(100) NOT NULL,
    salario_base DECIMAL(10, 2)
);

--3. Tabela de Cursos
CREATE TABLE Cursos (
    curso_id INT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL UNIQUE,
    descricao TEXT,
    carga_horaria INT,
    data_lancamento DATE
);

--4. Tabela de Aulas
CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY,
    titulo_aula VARCHAR(255) NOT NULL,
    duracao_minutos INT NOT NULL,
    tipo_conteudo VARCHAR(50)
);


--PARTE 2: MODIFICAÇÃO (ALTERAÇÃO) DAS TABELAS

ALTER TABLE Professores
ADD COLUMN email_corporativo VARCHAR(150);

ALTER TABLE Cursos
MODIFY COLUMN carga_horaria DECIMAL(5, 2);


--PARTE 3: REMOÇÃO E RECRAÇÃO DA TABELA 'Aulas'


--Remove a tabela 'Aulas'
DROP TABLE Aulas;

-- Recria a tabela 'Aulas' 
CREATE TABLE Aulas (
    aula_id INT PRIMARY KEY,
    titulo_aula VARCHAR(255) NOT NULL,
    duracao_minutos INT NOT NULL,
    tipo_conteudo VARCHAR(50)

);
