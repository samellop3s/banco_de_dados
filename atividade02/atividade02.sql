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

--7-) O departamento de recursos humanos solicitou um relatório de todos os funcionários e os
--respectivos IDs do cargo. Exiba o sobrenome concatenado com o ID do cargo (separado por
--uma vírgula e um espaço) e nomeie a coluna como “employee and title”
RESPOSTA:

SELECT last_name || ', ' || job_id AS "employee and title" FROM hr.employees;
	
--8-) Em função de questões orçamentárias, o departamento precisa de um relatório com o
--sobrenome e o salário dos funcionários que ganham mais de 12000. (employees)

RESPOTA: 

SELECT * FROM hr.employees

SELECT LAST_NAME, SALARY FROM hr.employees WHERE salary > 12000

--9-) Exiba o sobrenome e o número de departamento do funcionário 100.
RESPOSTA:

SELECT * FROM hr.employees

SELECT LAST_NAME, DEPARTMENT_ID
FROM hr.employees WHERE employee_id = 100
	
--10-) O departamento de recursos humanos precisa localizar os funcionários com altos e baixos
--salários. Exibir o sobrenome e o salário de todos os funcionários cuja faixa salarial não esteja
--entre 5000 e 12000.

RESPOSTA:

SELECT * FROM hr.employees

SELECT last_name, salary FROM hr.employees WHERE salary < 5000 OR salary > 12000

--11-) Crie um relatório para exibir o sobrenome, o ID do cargo e a data de admissão dos
--funcionários cujos sobrenomes sejam Matos e Taylor. Organize a consulta em ordem
--crescente por data de admissão.

RESPOSTA:

SELECT * FROM hr.employees

SELECT LAST_NAME, JOB_ID, HIRE_DATE 
FROM hr.employees WHERE LAST_NAME IN ('Matos', 'Taylor')
ORDER BY HIRE_DATE ASC

--12-) Exiba o sobrenome e o número do departamento de todos os funcionários nos 
--departamentos 20 e 50 em ordem alfabética crescente por nome

RESPOSTA:

SELECT * FROM hr.employees

SELECT LAST_NAME, DEPARTMENT_ID 
FROM hr.employees WHERE DEPARTMENT_ID IN (20, 50)
ORDER BY LAST_NAME ASC

--13-) Crie um relatório para exibir o sobrenome, o salário e a comissão de todos os 
--funcionários que ganham comissão. Classifique os dados em ordem decrescente de salário e 
--comissões.

RESPOSTA:

SELECT * FROM hr.employees

SELECT LAST_NAME, SALARY, COMMISSION_PCT
FROM hr.employees WHERE COMMISSION_PCT IS NOT NULL
ORDER BY SALARY DESC, COMMISSION_PCT DESC

--14-) Exiba o sobrenome de todos os funcionários que contenha “a” e “e”.

RESPOSTA:

SELECT LAST_NAME 
FROM hr.employees 
WHERE LAST_NAME	 LIKE '%a%' AND LAST_NAME LIKE '%e%'

--15-) Exiba o sobrenome, o cargo e o salário de todos os funcionários cujo cargo sejarepresentante de vendas 
--(SA_REP) ou estoquista (ST_CLERK) e cujo salário seja diferente de2500, 3500 e 7000.

RESPOSTA:

SELECT last_name, job_id, salary FROM hr.employees WHERE (job_id = 'SA_REP' OR job_id = 'ST_CLERK') AND salary NOT IN (2500, 3500, 7000);

--16-) Exibir todos os funcionários cuja comissão seja de 20% (.2)

RESPOSTA:

SELECT * FROM hr.employees WHERE commission_pct = 0.2;

--17-) Exiba o código do departamento, media de salario agrupado por departamento 
--dos departamentos 60, 100 e 20. Ordene os dados em ordem crescente por departa

RESPOSTA:

SELECT department_id, AVG(salary) AS avg_salary FROM hr.employees WHERE department_id IN (60, 100, 20) GROUP BY department_id ORDER BY department_id;

--18-) Execute o seguinte comando para a criação da tabela 
--mencionada:create table funcionarios (codigo number (8) primary key,nome varchar(30) not null,salario number(8),celular char (11));
--Faça a inserção de 10 funcionarios de forma implícita e 10 funcionários de forma explicita

RESPOSTA: 

CREATE TABLE funcionarios (
    codigo NUMBER(8) PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    salario NUMBER(8),
    celular CHAR(11)
);

INSERT INTO funcionarios VALUES
(1, 'Funcionario1', 5000, '12345678901'),
(2, 'Funcionario2', 6000, '12345678902'),
(3, 'Funcionario2', 7000, '12345678903'),
(4, 'Funcionario2', 8000, '12345678904'),
(5, 'Funcionario2', 9000, '12345678905'),
(6, 'Funcionario2', 10000, '12345678906'),
(7, 'Funcionario2', 11000, '12345678907'),
(8, 'Funcionario2', 12000, '12345678908'),
(9, 'Funcionario2', 13000, '12345678909'),
(10, 'Funcionario10', 140000, '12345678910');

INSERT INTO funcionarios (codigo, nome, salario, celular) VALUES
(11, 'Funcionario11', 15000, '12345678911'),
(12, 'Funcionario12', 16000, '12345678912'),
(13, 'Funcionario12', 17000, '12345678913'),
(14, 'Funcionario12', 18000, '12345678914'),
(15, 'Funcionario12', 19000, '12345678915'),
(16, 'Funcionario12', 20000, '12345678916'),
(17, 'Funcionario12', 21000, '12345678917'),
(18, 'Funcionario12', 22000, '12345678918'),
(19, 'Funcionario12', 23000, '12345678919'),
(20, 'Funcionario20', 24000, '12345678920');
