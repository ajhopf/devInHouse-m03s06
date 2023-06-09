DECLARE
    soma_dos_produtos NUMBER(10,2);
BEGIN
    FOR produto IN (SELECT id FROM produto) LOOP
        soma_dos_produtos := 0;
        DBMS_OUTPUT.PUT_LINE('Produto: ' || produto.id);  

        FOR produto_preco IN (SELECT * FROM produto_preco WHERE id_produto = produto.id) LOOP
            soma_dos_produtos := soma_dos_produtos + produto_preco.valor;
        END LOOP;  
        
        CASE
            WHEN soma_dos_produtos < 150 THEN
                DBMS_OUTPUT.PUT_LINE('Soma do produto menor que 150. Soma total: ' || soma_dos_produtos);  
            WHEN soma_dos_produtos < 500 THEN
                DBMS_OUTPUT.PUT_LINE('Soma do valor do produto está entre 150 e 500. Soma total: ' || soma_dos_produtos);
            ELSE 
                DBMS_OUTPUT.PUT_LINE('Soma do produto está acim de 500. Soma total: ' || soma_dos_produtos);
        END CASE;      
    END LOOP;
END;

