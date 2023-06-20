CREATE OR REPLACE PROCEDURE AtualizarProdutoPreco(
    p_id IN PRODUTO.ID%TYPE,
    p_valor IN PRODUTO.VALOR%TYPE) IS
    
    v_produto_nao_existe_exception EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_nao_existe_exception, -20001);
    v_produto_inativo_exception EXCEPTION;
    PRAGMA EXCEPTION_INIT(v_produto_inativo_exception, -20002);
    
    v_produto_existente NUMBER := 0;
    v_produto_ativo NUMBER;
BEGIN

    SELECT COUNT(*) INTO v_produto_existente FROM produto WHERE id = p_id;
    
    IF v_produto_existente = 0 THEN
        RAISE v_produto_nao_existe_exception;
    END IF;
        
    SELECT status INTO v_produto_ativo FROM produto WHERE id = p_id;
    
    IF v_produto_ativo = 0 THEN
        RAISE v_produto_inativo_exception;
    END IF;
    
    UPDATE produto
    SET valor = p_valor
    WHERE id = p_id;
    
EXCEPTION
    WHEN v_produto_nao_existe_exception THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' não existe.'); 
        DBMS_OUTPUT.PUT_LINE('Número do erro: ' || SQLCODE);
        
    WHEN v_produto_inativo_exception THEN
        DBMS_OUTPUT.PUT_LINE('Erro: produto com id ' || p_id || ' está desativado na tabela.'); 
        DBMS_OUTPUT.PUT_LINE('Número do erro: ' || SQLCODE);
END;
