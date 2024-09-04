create table DEPARTMENTS (
deptno number,
name varchar2(50) not null,
location varchar2(50),
constraint pk_departments primary key (deptno)
);

create table EMPLOYEES (
empno number,
name varchar2(50) not null,
job varchar2(50),
manager number,
salary number(7,2),
deptno number,
constraint pk_employees primary key (empno)
);

insert into departments (deptno, name, location) values
(1, 'Financeiro','São Paulo');
insert into departments (deptno, name, location) values
(2, 'Desenvolvimento','São Paulo');
insert into departments (deptno, name, location) values
(3, 'Desenvolvimento','Campinas');
insert into departments (deptno, name, location) values
(4, 'Vendas','São Paulo');



insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (1, 'José da Silva','Programador', 5000, 2);
insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (2, 'Maria Rita','Analista Financeiro', 7000, 1);
insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (3, 'Lorena Alves','Analista', 7500.57, 2);
insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (4, 'João Roberto','Representante de Vendas', 4000, 4);
insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (5, 'Maria Alice','Programador', 5500, 3);
insert into EMPLOYEES
(empno, name, job, salary, deptno)
values (6, 'Luiz Miguel','Programador', 5500, 2);


select * from employees;

select name, salary from employees;

--SALARIO EM ORDEM DO MENOR PARA O MAIOR
select name, salary from employees order by salary desc;

--SALARIO MAX
select max(salary) as maior_salario from employees;

--SALARIO MIN
select min(salary) as menor_salario from employees;

--SALARIO MEDIO
select avg(salary) as medio_salario from employees;

--SOMA DE SALARIO
select sum(salary) as soma_salario from employees;

--PRA SELECIONAR O MAIOR SALARIO DA COLUNA ESPECIFICA 
select max(salary) as maior_salario_colun4 from employees where deptno = 4;

--PARA SELECIONAR O MAIRO SALARIO ESPECIFICO MAS COM O NAME DA PESSOA 
select name, salary from employees 
    where  deptno = 4 and salary = (select max(salary) 
    from employees where deptno = 4);

--PUXANDO SALARIOS MENOR Q 7000
select name, salary from employees 
    where  salary = (select max(salary) 
    from employees where salary < 7000);

select name, salary from employees 
    where  salary in (select salary 
    from employees where salary < 7000);

select 2 as "Departamento",
	sum(salary)"Total Salários",
	avg(salary)"Média Salarial",
	count(salary)"Nro, Funcionarios"
from employees where deptno = 2;