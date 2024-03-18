
CREATE TABLE cadastro

(

  nome VARCHAR2(30),

  sobrenome VARCHAR2(30),

  salario NUMBER(10,2),

  endereco VARCHAR2(30),

  dt_cadastro DATE

);



INSERT INTO cadastro VALUES ('Marcelo','Diniz',1000,'Piracema 100', SYSDATE)

INSERT INTO cadastro VALUES ('Fernando','Romero',2000,'Correia 100', SYSDATE)

INSERT INTO cadastro VALUES ('Carlos','Martins',2500,'Siria 100', SYSDATE)

INSERT INTO cadastro VALUES ('Miguel','Carmim',4000,'Piaui 100', SYSDATE)

INSERT INTO cadastro VALUES ('Camila','Pacheco',8000,'Sao Jorge 84', SYSDATE)

INSERT INTO cadastro VALUES ('Marina','Augusto',1400,'Nova Tatuape 100', SYSDATE)

INSERT INTO cadastro VALUES ('Roberto','Eduardo',800,'Jurubatuva 505', SYSDATE)

INSERT INTO cadastro VALUES ('Eduardo','Gomes',1000,'Estrela 14', SYSDATE)

INSERT INTO cadastro VALUES ('Maria','Temer',3500,'Moreira 10', SYSDATE)

INSERT INTO cadastro VALUES ('Marcelo','Juracy',7350,'Santa Elvira 100', SYSDATE)


-- QUESTÃO 2
SELECT * FROM cadastro

-- QUESTAO 3
SELECT nome, sobrenome FROM cadastro

-- QUESTAO 4
SELECT * FROM cadastro WHERE cadastro.nome  = 'Marina' OR cadastro.nome = 'Eduardo'

-- QUESTAO 5
SELECT nome, salario*12 AS "Anual" FROM cadastro

-- QUESTAO 6
SELECT 
nome, 
sobrenome,     
(salario*10)/100 AS "AUMENTO"
FROM cadastro

-- QUESTAO 7
SELECT * FROM cadastro WHERE salario >= 4000 AND salario <= 5000

-- QUESTAO 8
SELECT * FROM cadastro WHERE salario >= 4000 

-- QUESTAO 9

SELECT * FROM cadastro WHERE salario IN (4000, 8000)

-- QUESTAO 10

SELECT * FROM cadastro WHERE nome LIKE '%a%'

-- QUESTAO 11

SELECT * FROM cadastro WHERE nome LIKE 'M%'

-- QUESTAO 12

SELECT * FROM cadastro WHERE nome = 'Marcelo'

-- QUESTAO 13
SELECT nome, sobrenome FROM cadastro WHERE nome NOT IN ('Carlos', 'Fernando')

-- QUESTAO 14
SELECT * FROM cadastro WHERE salario <> 1000