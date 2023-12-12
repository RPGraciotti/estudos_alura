-- Consultando dados

-- Filtros

SELECT * FROM tabela_pedidos WHERE TotaldoPedido >= 200;

SELECT * FROM tabela_pedidos WHERE TotaldoPedido <> 200;

SELECT * FROM tabela_pedidos WHERE TotaldoPedido = 200;

SELECT * FROM tabela_clientes WHERE Nome_Cliente > 'C';

SELECT * FROM tabela_pedidos WHERE DatadoPedido > '2023-09-19';

-- Filtros compostos

SELECT * FROM tabela_pedidos WHERE TotaldoPedido >= 200 AND Status = 'Pendente';

SELECT * FROM tabela_pedidos WHERE Status = 'Pendente' OR Status = 'Processando';

SELECT * FROM tabela_pedidos WHERE NOT Status = 'Pendente'

-- ou

SELECT * FROM tabela_pedidos WHERE Status != 'Pendente'

-- ou

SELECT * FROM tabela_pedidos WHERE Status <> 'Pendente'

-- funcionam igualmente

SELECT * FROM tabela_pedidos WHERE DatadeEnvioEstimada BETWEEN '2023-08-01' AND '2023-09-01'

-- Ordenando com order by

SELECT * FROM tabela_produtos WHERE Preco_de_Compra BETWEEN 200 AND 600 ORDER BY Nome_do_Produto

SELECT * FROM tabela_produtos WHERE Preco_de_Compra BETWEEN 200 AND 600 ORDER BY Preco_de_Compra

-- ASC é o padrão

SELECT * FROM tabela_produtos WHERE Preco_de_Compra BETWEEN 200 AND 600 ORDER BY Data_de_Inclusão DESC

SELECT * FROM tabela_produtos WHERE Preco_de_Compra BETWEEN 200 AND 600 ORDER BY Data_de_Inclusão ASC

SELECT * FROM tabela_produtos WHERE Preco_de_Compra BETWEEN 200 AND 600 ORDER BY Fornecedor DESC

-- Alias: "apelidos"
-- Apenas na consulta
SELECT Informacoes_de_Contato AS email_cliente FROM tabela_clientes