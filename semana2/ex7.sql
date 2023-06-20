/*Criar uma procedure precisa criar o par�metro in do tipo ID e utilizar 
par�metro out do valor somado do produto pre�o

Regra

Criar o INNER JON entre a tabela produto e produto pre�o
Fazer o filtro por IDProduto*/

CREATE OR REPLACE PROCEDURE ListarProdutoPrecoPorIdProduto(
    p_id IN PRODUTO.ID%TYPE, 
    p_mensagem OUT VARCHAR2) IS
    
    v_produto_nao_existe_exception EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_nao_existe_exception, -20001);
    
    v_produto_existente NUMBER := 0;
    v_soma NUMBER := 0;
    
BEGIN
    SELECT COUNT(*) INTO v_produto_existente FROM produto WHERE id = p_id;
    
    IF v_produto_existente = 0 THEN
        RAISE v_produto_nao_existe_exception;
    END IF;
    
    FOR valor IN (SELECT produto_preco.valor FROM PRODUTO INNER JOIN PRODUTO_PRECO 
    ON PRODUTO.ID = PRODUTO_PRECO.ID_PRODUTO
    WHERE PRODUTO.ID = p_id) LOOP
        v_soma := v_soma + valor.valor;
    END LOOP;
    
    p_mensagem := 'Soma total do valor do produto: ' || to_char(v_soma);
    DBMS_OUTPUT.PUT_LINE(p_mensagem);
        
EXCEPTION
    WHEN v_produto_nao_existe_exception THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' n�o existe.'); 
        DBMS_OUTPUT.PUT_LINE('N�mero do erro: ' || SQLCODE);   
END;
