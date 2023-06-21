CREATE OR REPLACE VIEW BuscarProduto AS
SELECT p.id, p.descricao, pp.valor FROM produto p
INNER JOIN produto_preco pp
ON p.id = pp.id_produto
WHERE pp.valor >= 100 AND pp.valor <= 200
WITH CHECK OPTION;