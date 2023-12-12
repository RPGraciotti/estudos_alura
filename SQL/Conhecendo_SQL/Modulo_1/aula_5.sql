-- Aula 5 - Atualizando e excluindo dados

-- Alterar processados para enviados

UPDATE tabela_pedidos SET Status = 'Enviado' WHERE Status = 'Processando'

-- atualize a tabela tornando coluna igual a y onde a coluna for x
-- sobrescreve e modifica a tabela

SELECT * FROM tabela_pedidos

-- Alterando apenas uma linha
-- Cliente 2 mudou de endereço e email

UPDATE tabela_clientes SET Informacoes_de_Contato = 'j.santos@email.com', 
Endereco_cliente = 'Rua dos paralelepípedos, 30'
WHERE ID_Cliente = 2;

SELECT * FROM tabela_clientes

-- Deletando com DELETE

SELECT * FROM tabela_fornecedores WHERE PaísdeOrigem = 'Turquia'

DELETE FROM tabela_fornecedores WHERE PaísdeOrigem = 'Turquia'

SELECT PaísdeOrigem from tabela_fornecedores ORDER BY PaísdeOrigem

-- Também sobrescreve o conjunto de dados

SELECT ID FROM tabela_fornecedores

DELETE FROM tabela_fornecedores WHERE ID > 35

SELECT ID FROM tabela_fornecedores

-- Delete Cascade https://cursos.alura.com.br/course/sqlite-online-conhecendo-instrucoes-sql/task/145354

CREATE TABLE Clientes (
    ID INT PRIMARY KEY,
    Nome VARCHAR(50)
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    Descricao VARCHAR(100),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ID) ON DELETE CASCADE
);
