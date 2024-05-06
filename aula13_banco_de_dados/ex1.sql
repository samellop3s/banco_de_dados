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

INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 10049935948, 'Samuel', 'DESENVOLVEDOR', 1, '5000.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 26913932588, 'Kamilly', 'RH', 2, '5100.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 37393143984, 'Ramon', 'ATENDENTE', 3, '1500.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 47036697989, 'Liz', 'GERENTE', 4, '1800.00');
INSERT INTO funcionarios (cd_funcionarios, cpf, nome, cargo, id_depto, salario) VALUES (sq_0001.nextval, 57996920800, 'Zeli', 'DONA', 5, '5000.00');

SELECT * FROM funcionarios


DROP TABLE funcionarios
DROP SEQUENCE sq_0001