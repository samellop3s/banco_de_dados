--SELECT first_name, salary FROM hr.employees

SELECT first_name, salary AS "SALARIO", (salary*10)/100 AS "10%", 
salary+((salary*10)/100) AS "SALARIO COM AUMENTO" FROM hr.employees

-- A TAG WHERE É PARA FILTRAR INFORMAÇÕES NECESSARIAS Q VC DESEJA 

SELECT * FROM hr.employees WHERE first_name  = 'Steven'
SELECT * FROM hr.employees WHERE employee_id = 100
SELECT * FROM hr.departments WHERE department_name = 'Marketing'

SELECT
first_name AS "NOME",
salary AS "SALARIO",
(salary*10)/100 AS "10%",
salary + ((salary*10)/100) AS "SALARIO COM AUMENTO",
department_id
FROM  hr.employees WHERE department_id = 60

-- AQUI PODEMOS VER QUANTOS FUNCIONARIOS RECEBE DE R$ 10,000 a R$ 5,000
    
SELECT first_name, salary FROM hr.employees 
WHERE salary <= 10000 AND salary >= 5000

-- BETWEEN faz a mesma função q o codigo anterior
SELECT first_name, salary FROM hr.employees WHERE salary BETWEEN 5000 AND 10000

-- OR e IN serve para selecionar informações especificas 
SELECT department_id, department_name 
FROM hr.departments WHERE department_name = 'Administration' 
OR department_name = 'Marketing'

SELECT department_id, department_name 
FROM hr.departments WHERE department_name IN('Administration','Marketing')

-- NOT IN serve pra retirar informações desnecessarias q vc n deseja 
SELECT department_id, department_name 
FROM hr.departments WHERE department_name NOT IN('Administration','Marketing')

-- LIKE (e qualquer letra com %) vai procurar qualquer 
--função q começa com a letra q vc escolheu
SELECT department_id, department_name 
FROM hr.departments WHERE department_name LIKE 'M%'

-- IS NULL serve pra procurar informações sem registro
SELECT employee_id, first_name, job_id, manager_id 
FROM hr.employees WHERE manager_id IS NULL

-- IS NOT NULL server pra retornar informações q n estão nulas
SELECT employee_id, first_name, job_id, manager_id 
FROM hr.employees WHERE manager_id IS NOT NULL