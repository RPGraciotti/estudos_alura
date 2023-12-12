-- Aula 1
-- Liste todos os IDs únicos dos produtos vendidos pela empresa:

SELECT DISTINCT id_produto FROM tabela_vendas;

-- -- Identifique os clientes que se cadastraram na empresa antes de 2020

SELECT * FROM tabela_clientes WHERE data_de_cadastro <= '2020-01-01';

SELECT nome_do_cliente FROM tabela_clientes WHERE data_de_cadastro <= '2020-01-01'

-- Aula 3

-- Inserir detalhes de um novo funcionário em uma tabela
-- Primeiro é preciso criar essa tabela

CREATE TABLE tabela_funcionarios (
    ID INT PRIMARY KEY,
    Nome TEXT,
    Cargo TEXT,
    Departamento TEXT,
    Data_de_contratacao DATE,
    Salario DECIMAL (10,2)
);

INSERT INTO tabela_funcionarios (
    ID,
    Nome,
    Cargo,
    Departamento,
    Data_de_contratacao,
    Salario
)
VALUES (
    '32D',
    'João Silva',
    'Desenvolver de Software',
    'TI',
    '2023-10-24',
    6000.00
);

SELECT * FROM tabela_funcionarios;

-- Aula 5
-- 1) Criar tabela e adicionar dados
CREATE TABLE funcionarios (
    ID INT PRIMARY KEY,
    Nome VARCHAR (100),
    Departamento VARCHAR (100),
    Salario FLOAT
)

INSERT INTO funcionarios (
    ID,
    Nome,
    Departamento,
    Salario
)
VALUES 
('1', 'Heitor Vieira', 'Financeiro', 4959.22),
('2', 'Daniel Campos', 'Vendas', 3884.44),
('3', 'Luiza Dias', 'TI', 8205.78),
('4', 'Davi Lucas Moraes', 'Financeiro', 8437.02),
('5', 'Pietro Cavalcanti', 'TI', 4946.88),
('6', 'Evelyn da Mata', 'Vendas', 5278.88),
('7', 'Isabella Rocha', 'Marketing', 4006.03),
('8', 'Sra. Manuela Azevedo', 'Vendas', 6101.03),
('9', 'Brenda Cardoso', 'TI', 8853.34),
('10', 'Danilo Souza', 'TI', 8242.14)

-- 2) Selecionar tudo
SELECT * FROM funcionarios

-- 3) Selecionar 'vendas'
SELECT * FROM funcionarios WHERE Departamento = 'Vendas'

-- 4) Salário maior que 5000
SELECT * FROM funcionarios WHERE Salario > 5000

-- 5) selecione todos os departamentos distintos
SELECT DISTINCT Departamento FROM funcionarios

-- 6) Atualize salário de TI para 7500
UPDATE funcionarios SET Salario = 7500 WHERE Departamento = 'TI'
SELECT * FROM funcionarios

-- 7) Delete salarios > 3000
DELETE FROM funcionarios WHERE Salario < 3000
SELECT * FROM funcionarios

-- ... mas já não tinha antes

-- 8) Selecione nome e salario de funcionarios vendas com salario >= 6000
SELECT Nome, Salario FROM funcionarios WHERE Departamento = 'Vendas' AND Salario >= 6000

-- 9) Crie uma tabela chamada projetos
CREATE TABLE Projetos(
    ID_Projeto INT PRIMARY KEY,
    Nome_Projeto VARCHAR (100),
    ID_Gerente INT,
    FOREIGN KEY (ID_Gerente) REFERENCES funcionarios (ID)
)

INSERT INTO Projetos (
    ID_Projeto,
    Nome_Projeto,
    ID_Gerente
)
VALUES
('A', 'Controle', 1),
('B', 'Teste', 2),
('C', 'Revisão', 3)

SELECT * FROM Projetos

SELECT * FROM Projetos WHERE ID_Gerente = '2'

-- 10) Delete a tabela funcionarios
DROP TABLE funcionarios

SELECT * FROM funcionarios