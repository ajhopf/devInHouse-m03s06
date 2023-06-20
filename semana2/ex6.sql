CREATE OR REPLACE PROCEDURE DeletarProduto(
    p_id IN PRODUTO.ID%TYPE) IS
    
    v_produto_nao_existe_exception EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_nao_existe_exception, -20001);
    v_produto_ativo_exception EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_ativo_exception, -20003);
    v_produto_utilizado EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_utilizado, -20004);
    
    v_produto_existente NUMBER := 0;
    v_produto_ativo NUMBER;
    v_existe_produto_preco NUMBER := 0;
BEGIN
    SELECT COUNT(*) INTO v_produto_existente FROM produto WHERE id = p_id;
    
    IF v_produto_existente = 0 THEN
        RAISE v_produto_nao_existe_exception;
    END IF;
        
    SELECT status INTO v_produto_ativo FROM produto WHERE id = p_id;
    
    IF v_produto_ativo = 1 THEN
        RAISE v_produto_ativo_exception;
    END IF;
    
    SELECT COUNT(*) INTO v_existe_produto_preco
    FROM produto_preco
    WHERE id_produto = p_id;
    
    IF v_existe_produto_preco > 0 THEN
        RAISE v_produto_utilizado;
    END IF;
    
    DELETE FROM produto WHERE id = p_id;
    
EXCEPTION
    WHEN v_produto_nao_existe_exception THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' não existe.'); 
        DBMS_OUTPUT.PUT_LINE('Número do erro: ' || SQLCODE);
        
    WHEN v_produto_ativo_exception THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' está ativo na tabela. Não foi possível fazer sua exclusão.'); 
        DBMS_OUTPUT.PUT_LINE('Número do erro: ' || SQLCODE);
        
    WHEN v_produto_utilizado THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' tem registro na tabela produto_preco. Não foi possível fazer sua exclusão.'); 
        DBMS_OUTPUT.PUT_LINE('Número do erro: ' || SQLCODE);
END;