CREATE TABLE PRODUTO (
    ID NUMBER PRIMARY KEY,
    descricao VARCHAR(50),
    status NUMBER(1),
    cadastro DATE,
    quantidade_em_estoque NUMBER
);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (1, 'PRODUTO A', 1, TO_DATE('01-05-2022', 'DD-MM-YYYY'), 100);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (2, 'PRODUTO B', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 130);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (3, 'PRODUTO C', 1, TO_DATE('01-01-2023', 'DD-MM-YYYY'), 1000);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (4, 'PRODUTO D', 0, TO_DATE('01-08-2021', 'DD-MM-YYYY'), 30);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (5, 'PRODUTO E', 0, TO_DATE('27-02-2020', 'DD-MM-YYYY'), 67);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (6, 'PRODUTO F', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 323);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (7, 'PRODUTO G', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 10);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (8, 'PRODUTO H', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 1120);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (9, 'PRODUTO I', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 800);

INSERT INTO PRODUTO(id, descricao, status, cadastro, quantidade_em_estoque)
VALUES (10, 'PRODUTO J', 0, TO_DATE('01-06-2023', 'DD-MM-YYYY'), 230);
    
