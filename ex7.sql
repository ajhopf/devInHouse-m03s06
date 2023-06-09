BEGIN
    FOR produto IN (SELECT * FROM produto) LOOP
        IF produto.status = 1 THEN
            DBMS_OUTPUT.PUT_LINE('Produto Id: ' || produto.id || ' -> Status: ATIVO');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Produto Id: ' || produto.id || ' -> Status: DESATIVADO');
        END IF;
    END LOOP;
END;