-- Crie um Cursor utilizando um loop que faça um UPDATE na tabela Produto 
-- mudando a coluna Status = 0 dos registros 1, 2 e 3;

DECLARE
    CURSOR c_status IS SELECT id, status FROM produto;
    status NUMBER := 0;
    v_id produto.id%TYPE;
    v_status produto.status%TYPE;
BEGIN
    OPEN c_status;
    LOOP
        FETCH c_status INTO v_id, v_status;
        EXIT WHEN c_status%NOTFOUND;
        
        IF v_id < 4 THEN
            UPDATE produto
            SET status = 0
            WHERE produto.id = v_id;
        END IF;    
        
    END LOOP;
    CLOSE c_status;
END;