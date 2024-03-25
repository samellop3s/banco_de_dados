SELECT * FROM hr.employees

--1-) Esta instrução SELECT 
--é executada com sucesso?

SELECT last_name, job_id, salary AS 'sal' FROM employees

RESPOSTA: Ela não é executada com sucesso.
	
codigo correto: SELECT LAST_NAME, JOB_ID, SALARY AS "SAL" FROM hr.employees

--2-) Verdadeiro/FalsoHá 
--quatro erros de codificação na instrução a seguir. 
--Você consegue identifica-los?

--select employee_id, 
--last_namesal x 12 ANNUAL SALARY
--from employees

RESPOSTA: 

1-Depois de las_name, falta uma virgula.
2-A multiplicação é feita pelo asterisco "*"e não pelo "X"
3-O nome da coluna não é "sal", mas sim "salary"
4-A expressão "ANNUAL SALARY" deve ser escrita como "ANNUAL_SALATY" sem espaço

-- CODIGO CORRIGIDO:
SELECT employee_id, last_name, salary * 12 AS ANNUAL_SALARY FROM hr.employees


--3-) Qual será o comando que deveremos executar para termos a seguinte saída de dados:

RESPOSTA:
	
SELECT * FROM hr.jobs    
	
SELECT 'O presidente possui o job_title ' ||  job_title || ' e o salario maximo é ' || max_salary AS "presidente"
FROM hr.jobs WHERE job_title = 'President'
    
--4-) Selecionar todos os registros da tabela departments que possuam manager_id 200 oulocation_id = 1700.

RESPOSTA:

SELECT * FROM hr.departments

SELECT * FROM hr.departments WHERE manager_id = 200 AND LOCATION_ID = 1700

--5-)Exibir todos os códigos de cargo da tabela employees com salario maior que 10000.

RESPOSTA:
    
SELECT job_id
FROM hr.employees
WHERE salary > 10000

--6-) O departamento de recursos humanos deseja cabeçalhos de coluna mais descritivos em umrelatório de funcionários. 
--Nomeie os cabeçalhos de coluna como EMP#, JOB# e assim pordiante.

RESPOTA: 

SELECT 
    EMPLOYEE_ID AS "EMP#", 
    JOB_ID AS "JOB#", 
    FIRST_NAME AS "Nome", 
    LAST_NAME  AS "Sobrenome", 
    HIRE_DATE  AS "Data de Contratação"
FROM hr.employees
