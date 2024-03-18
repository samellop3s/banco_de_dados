--a) Exibir o menor salário da empresa.
SELECT MIN(salary) FROM hr.employees

--b) Exibir o maior salário da empresa
SELECT MAX(salary) FROM hr.employees

--c) Exibir a média salarial da empresa.
SELECT AVG(salary) FROM hr.employees

--d) Exibir a somatória do salário agrupada por cargo
SELECT job_id, SUM(salary) FROM hr.employees
GROUP BY job_id

--e) Exibir a média salarial de cada departamento (department_id)
SELECT department_id, AVG(salary) FROM hr.employees
GROUP BY department_id

--f) Exibir a média salarial dos funcionários com ID de departamento maior que 80
SELECT AVG(salary) FROM hr.employees WHERE department_id > 80

--2) Crie um relatório para exibir o número do gerente e o salário do 
--funcionário com menorremuneração desse gerente. 
--Exclua todas as pessoas cujo gerente seja desconhecido. 
--Excluatodos os grupos em que o salário seja menor ou igual a 6000. 
--Classifique a saída em ordemdecrescente.

SELECT * FROM hr.employees
SELECT manager_id, MIN(salary) FROM hr.employees
WHERE manager_id IS NOT NULL AND salary > 6000
GROUP BY manager_id
ORDER BY manager_id DESC