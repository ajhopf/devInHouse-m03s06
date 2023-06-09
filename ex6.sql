BEGIN
    FOR i IN 1..3 LOOP
        UPDATE produto_preco
        SET valor = valor + (valor * 0.15)
        WHERE valor > 100;
    END LOOP;
END;