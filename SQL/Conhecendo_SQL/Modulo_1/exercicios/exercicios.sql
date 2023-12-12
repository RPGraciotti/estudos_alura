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