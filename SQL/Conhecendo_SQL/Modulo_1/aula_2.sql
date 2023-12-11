-- Aula 2 - Criando tabelas

-- CREATE TABLE tabela_clientes (
--    ID_Cliente INT PRIMARY KEY,
--    Nome_Cliente VARCHAR (250),
--    Informacoes_de_Contato VARCHAR (250) 
--    );

-- ALTER TABLE tabela_clientes ADD Endereco_Cliente VARCHAR (250);

-- DROP TABLE tabela_clientes;

-- Criar novamente para continuidade do exercício

CREATE TABLE tabela_clientes (
    ID_Cliente INT PRIMARY KEY,
    Nome_Cliente VARCHAR(250),
    Informacoes_de_Contato VARCHAR (250)
);

ALTER TABLE tabela_clientes ADD Endereco_cliente VARCHAR (250);

-- Chave primária: não existe duplicidade, identificador principal

CREATE TABLE tabela_categorias (
    ID_Categoria INT PRIMARY KEY,
    Nome_Categoria VARCHAR (250),
    Descricao_Categoria TEXT
);

-- Chave estrangeira

CREATE TABLE tabela_produtos (
    ID_Produto INT PRIMARY KEY,
    Nome_do_Produto VARCHAR (250),
    Descricao TEXT,
    Categoria INT,
    Preco_de_Compra DECIMAL (10,2),
    Unidade VARCHAR(50),
    Fornecedor INT,
    Data_de_Inclusão DATE,
    FOREIGN KEY (Categoria) REFERENCES tabela_categorias (ID_Categoria),
    FOREIGN KEY (Fornecedor) REFERENCES tabela_fornecedores (ID)
);

-- Chave estrangeira SEMPRE é ligada com a chave primária de outra tabela