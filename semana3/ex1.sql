/*Criar uma função que calcule o desconto do produto, 
passar os parâmetros código do produto e aplicarDesconto boolean

Regra
Fazer um select bucando o valor do produto
Se a parametro aplicarDseconto for igual verdadeiro aplicar desconto de 10%*/

CREATE OR REPLACE FUNCTION CalcularDesconto(
produto_id PRODUTO.ID%TYPE,
aplicar_desconto BOOLEAN) 
RETURN NUMBER IS
    v_valor NUMBER;
BEGIN 
    SELECT valor INTO v_valor FROM produto WHERE id = produto_id;
    
    IF aplicar_desconto = true THEN
        RETURN v_valor*0.9;
    ELSE
        RETURN v_valor;
    END IF;
END;
    
