SELECT 
    p.id AS produto_id,
    pp.id AS produto_preco_id,
    p.descricao,
    pp.valor,
    to_char(pp.cadastro, 'MM/YYYY') as data_cadastro_preco_produto 
FROM produto p 
INNER JOIN 
    produto_preco pp ON p.id = pp.id_produto;
