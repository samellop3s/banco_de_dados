-- CONSULTAR VIEW
SELECT * FROM empregados

--DROP VIEW
DROP VIEW empregados;

--DROP SEQUENCE
DROP SEQUENCE sq_000001

DROP TABLE teste

--VIEW
CREATE OR REPLACE VIEW empregados 
AS
SELECT forst_name, last_name, email FROM hr.employees;
WHERE departament_id = 90
ORDER BY first_name;




--EXEMPLO 1 
CREATE TABLE teste
(
   	codigo NUMBER(10) PRIMARY KEY,
    nome VARCHAR2(30),
    sobrenome VARCHAR2(30) 
);

CREATE SEQUENCE sq_000001
MINVALUE 1
MAXVALUE 1000
START WITH 1 
INCREMENT BY 1 
CACHE 5 

INSERT INTO teste (codigo, nome, sobrenome) VALUES (sq_000001.nextval, 'Samuel', 'Ferreira');
INSERT INTO teste (codigo, nome, sobrenome) VALUES (sq_000001.nextval, 'Kamilly', 'Almeida');
INSERT INTO teste (codigo, nome, sobrenome) VALUES (sq_000001.nextval, 'Ramon', 'Lopes');
INSERT INTO teste (codigo, nome, sobrenome) VALUES (sq_000001.nextval, 'Liz', 'Lopes');



SELECT * FROM teste

SELECT sq_000001,nextval FROM DUAL