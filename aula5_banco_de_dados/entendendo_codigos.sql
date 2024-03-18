SELECT * FROM hr.locations	
SELECT * FROM hr.employees
SELECT * FROM hr.departments
SELECT * FROM hr.locations
SELECT * FROM hr.countries
SELECT * FROM hr.regions
SELECT * FROM hr.jobs
SELECT * FROM hr.job_history


--01 – Selecione os campos LOCATION_ID, CITY E STATEPROVINCE da tabela LOCATIONS.
SELECT * FROM hr.locations

SELECT
LOCATION_ID,
CITY,
STATE_PROVINCE
FROM hr.locations

--02 – Selecione os campos DEPARTMENT_ID,DEPARTMENT_NAME e MANAGER_ID da tabelaDEPARTMENTS.

SELECT * FROM hr.departments

SELECT
DEPARTMENT_ID,
DEPARTMENT_NAME,
MANAGER_ID
FROM hr.departments

--03 – Selecione os campos COUNTRY_ID e COUNTRY NAMEda tabela COUNTRIES.

SELECT * FROM hr.countries

SELECT 
COUNTRY_ID,
COUNTRY_NAME
FROM hr.countries

--04 – Selecione os campos JOB_TITLE e MAX_SALARY databela JOBS

SELECT * FROM hr.jobs

SELECT
JOB_TITLE,
MAX_SALARY
FROM hr.jobs

--05 – Selecione o campo REGION_NAME da tabelaREGIONS.

SELECT * FROM hr.regions

SELECT
REGION_NAME
FROM hr.regions

--06 – Selecione os campos EMPLOYEE_ID, FIRST_NAME,LAST_NAME e SALARY da tabela EMPLOYEES.

SELECT * FROM hr.employees

SELECT
EMPLOYEE_ID,
FIRST_NAME,
LAST_NAME,
SALARY
FROM hr.employees

--07 – Selecione os camps EMPLOYEE_ID, START_DATE,END_DATE, JOB_ID, DEPARTMENT_ID da tabelaJOB_HISTORY. Voce consegue enxergar algo diferente nessatabela?

SELECT * FROM hr.job_history

SELECT
EMPLOYEE_ID,
START_DATE,
END_DATE,
JOB_ID,
DEPARTMENT_ID
FROM hr.job_history

--apelidando as colunas

SELECT * FROM hr.departments

SELECT
DEPARTMENT_ID "codigo",
DEPARTMENT_NAME "departamento",
MANAGER_ID "codigo do gerente",	
LOCATION_ID "codigo da localização"
FROM hr.departments

--01 – Selecione todos os campos da tabela LOCATIONS
    
SELECT * FROM hr.locations

SELECT
LOCATION_ID "codigo",
STREET_ADDRESS "endereço",
POSTAL_CODE "codigo postal",
CITY "cidade",
STATE_PROVINCE "estado",
COUNTRY_ID "uf"
FROM hr.locations

--02 – Selecione todos os campos da tabela DEPARTMENTS
    
SELECT * FROM hr.departments

SELECT
DEPARTMENT_ID "codigo",
DEPARTMENT_NAME "nome",
MANAGER_ID "id",
LOCATION_ID "localização"
FROM hr.departments

--03 – Selecione todos os campos da tabela COUNTRIES

SELECT * FROM hr.countries

SELECT 
COUNTRY_ID "uf",
COUNTRY_NAME "nome",
REGION_ID "regiao"
FROM hr.countries

-- 04 – Selecione todos os campos da tabela JOBS

SELECT * FROM hr.jobs

SELECT
JOB_ID "id" ,
JOB_TITLE "title",
MIN_SALARY "salario minimo",
MAX_SALARY "salario"
FROM hr.jobs

-- 05 – Selecione todos os campos da tabela REGIONS

SELECT * FROM hr.regions

SELECT
REGION_ID "regiao",
REGION_NAME "nome"
FROM hr.regions

-- 06 – Selecione todos os campos da tabela EMPLOYEES

SELECT * FROM hr.employees

SELECT 
EMPLOYEE_ID "funcionario/a",
FIRST_NAME "nome",
LAST_NAME "sobre nome",
EMAIL "endereço de email",
PHONE_NUMBER "numero de telefone",
HIRE_DATE "data de contrato",
JOB_ID "id de trabalho",
SALARY "salario",
COMMISSION_PCT "comissao",
MANAGER_ID "id do gerente",
DEPARTMENT_ID "id do departamento"
FROM hr.employees

-- 07 – Selecione todos os campos da tabela JOB_HISTORY.

SELECT * FROM hr.JOB_HISTORY

SELECT
EMPLOYEE_ID "funcionario/a",
START_DATE "data de início",
END_DATE "data final",
JOB_ID "id de trabalho",
DEPARTMENT_ID "id do departamento"
FROM hr.JOB_HISTORY
