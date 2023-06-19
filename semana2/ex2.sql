--Crie um Cursor que imprima na tela os dados Id, Status e Preco, 
--utilizando FORALL para listar e IF e Else para 
--verificar se o status do produto está ativo e se o preço está menor que 1000,00.

DECLARE
    CURSOR c_dados_produto IS SELECT id, status, valor FROM produto;
    v_produto_id PRODUTO.ID%TYPE;
    v_produto_status PRODUTO.STATUS%TYPE;
    v_valor PRODUTO.VALOR%TYPE;
BEGIN
    OPEN c_dados_produto;
    LOOP
        FETCH c_dados_produto INTO v_produto_id, v_produto_status, v_valor;

        EXIT WHEN c_dados_produto%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Produto id: ' || v_produto_id);
        
        IF v_produto_status = 0 THEN
        DBMS_OUTPUT.PUT_LINE('Produto inativo');
        ELSE
        DBMS_OUTPUT.PUT_LINE('Produto ativo');
        END IF;
        
        IF v_valor < 1000 THEN
        DBMS_OUTPUT.PUT_LINE('Valor abaixo de R$1000. Valor: ' || v_valor);
        ELSE
        DBMS_OUTPUT.PUT_LINE('Valor acima de R$1000. Valor: ' || v_valor);
        END IF;
    
    END LOOP;
    
    CLOSE c_dados_produto;
END;