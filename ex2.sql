CREATE TABLE produto_preco (
    ID NUMBER PRIMARY KEY,
    id_produto NUMBER,
    valor NUMBER(10,2),
    status NUMBER(1),
    cadastro DATE,
    CONSTRAINT fk_produto_preco FOREIGN KEY(id_produto) REFERENCES produto(id)
);

INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (1, 1, 100, 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (2, 2, 300, 0, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (3, 3, 2300, 1, TO_DATE('01-08-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (4, 4, 200, 0, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (5, 5, 1300, 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (6, 6, 140, 0, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (7, 7, 20, 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (8, 8, 34.80, 0, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (9, 9, 2000, 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (10, 10, 620.90, 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (11, 2, 359.90, 1, TO_DATE('01-10-2023', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (12, 6, 123, 1, TO_DATE('01-08-2022', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (13, 8, 99.99, 1, TO_DATE('01-03-2023', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (14, 4, 130, 1, TO_DATE('01-04-2023', 'DD-MM-YYYY'));
INSERT INTO produto_preco (id, id_produto, valor, status, cadastro)
VALUES (15, 1, 90, 0, TO_DATE('01-02-2022', 'DD-MM-YYYY'));

SELECT * FROM PRODUTO_PRECO;


SELECT * FROM produto_preco;