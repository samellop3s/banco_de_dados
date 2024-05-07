DROP TABLE funcionarios
DROP SEQUENCE sq_0001


CREATE TABLE funcionarios
(
    cd_funcionarios NUMBER(20), 
    cpf NUMBER(11) PRIMARY KEY,
    nome VARCHAR(30),
    cargo VARCHAR(20),
    id_depto NUMBER(11),
    salario NUMBER(10,2)
);

CREATE SEQUENCE sq_0001
MINVALUE 1
MAXVALUE 1000
START WITH 1 
INCREMENT BY 1 
CACHE 5;



INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 10049935948, 'Samuel', 'DESENVOLVEDOR', 1, '8000.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 26913932588, 'Kamilly', 'RH', 2, '6000.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 37393143984, 'Ramon', 'ATENDENTE', 3, '1800.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 47036697989, 'Liz', 'GERENTE', 4, '2000.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 57996920800, 'Zeli', 'DONA', 5, '10000.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 57996920800, 'Arthur', 'CHEFE', 5, '10500.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 57996920800, 'Antonio', 'CLIENTE', 5, '10000.00');

SELECT * FROM funcionarios


CREATE OR REPLACE VIEW VW_FUNC AS
SELECT cd_funcionarios, nome, cargo, id_depto, salario
FROM funcionarios;

SELECT * FROM VW_FUNC;


CREATE OR REPLACE VIEW VW_FUNC2 AS
SELECT nome, salario
FROM funcionarios
WHERE salario > 5000;

SELECT * FROM VW_FUNC2;

CREATE OR REPLACE VIEW VW_FUNC3 AS
SELECT *
FROM funcionarios
WHERE salario >= 1000 AND nome LIKE ('A%');

SELECT * FROM VW_FUNC3;
