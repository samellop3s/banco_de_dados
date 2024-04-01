--EX 1
SELECT JOB_ID, LAST_NAME, salary, ROUND (salary + ((salary * 15)/100),0) "NOVO SALARIO"
FROM hr.employees

--EX 2    
SELECT JOB_ID, LAST_NAME, salary, ROUND (salary + ((salary * 15)/100),0) "NOVO SALARIO",
ROUND((salary * 15)/100,0) "AUMENTO"
FROM hr.employees

--EX 3

SELECT INITCAP(last_name) "SOBRENOME", LENGTH(last_name) "CARACTERES"
FROM hr.employees
WHERE last_name LIKE('J%') OR
last_name LIKE('A%') OR
last_name LIKE('M%')
ORDER BY last_names

--EXEMPLOS DE CRIAÇÃO DE TABELA 

--exemplo 1
CREATE TABLE funcionarios
(
  codigo NUMBER(20) PRIMARY KEY,
  nome VARCHAR2(30),
  sobrenome VARCHAR2(30),
  salario NUMBER(20,2)
);

INSERT INTO funcionarios VALUES (1, 'LUIZ', 'LOZANO', 600,00);
INSERT INTO funcionarios VALUES (2, 'MARCOS', 'ERIK', 700,00);
INSERT INTO funcionarios VALUES (3, 'MARCOS', 'ERIK', 700,00);

SELECT * FROM funcionarios
DROP TABLE funcionarios


--exemplo 2
CREATE TABLE funcionarios
(
    cd_func NUMBER(20) PRIMARY KEY.
    nm_func VARCHAR2(30),
    salario NUMBER(20,2),
    cd_depto NUMBER(10)
)

CREATE TABLE departamentos 
(
    cd_depto NUMBER(10) PRIMARY KEY,
    nm_depto VARCHAR2(30)
)

--exemplo 3 

CREATE TABLE funcionarios
(
    cd_func NUMBER(20) PRIMARY KEY,
    nm_func VARCHAR2(30),
    salario NUMBER(20,2),
    cd_depto NUMBER(10) REFERENCES departamentos(cd_depto)
);

CREATE TABLE departamentos 
(
    cd_depto NUMBER(10) PRIMARY KEY,
    nm_depto VARCHAR2(30)
);

INSERT INTO funcionarios (cd_func, nm_func, salario)VALUES (1, 'LUIZ',600.00,1);
INSERT INTO departamento VALUES (1,'Rh')

SELECT * FROM funcionarios
SELECT * FROM departamentos



DROP TABLE departamentos