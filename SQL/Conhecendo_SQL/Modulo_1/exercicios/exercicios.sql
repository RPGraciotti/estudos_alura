-- Liste todos os IDs únicos dos produtos vendidos pela empresa:

-- SELECT DISTINCT id_produto FROM tabela_vendas;

-- Identifique os clientes que se cadastraram na empresa antes de 2020

SELECT * FROM tabela_clientes WHERE data_de_cadastro <= '2020-01-01';

-- SELECT nome_do_cliente FROM tabela_clientes WHERE data_de_cadastro <= '2020-01-01'
