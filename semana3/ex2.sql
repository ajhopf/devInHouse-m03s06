CREATE OR REPLACE VIEW ApenasLeituraProdutoPreco(identificacao, valor) AS
    SELECT p.id, pp.valor
    FROM produto p 
    inner join produto_preco pp
    ON p.id = pp.id_produto
    ORDER BY p.id
WITH READ ONLY CONSTRAINT apenas_leitura;