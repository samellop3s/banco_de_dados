CREATE TABLE estoque (
    id INT PRIMARY KEY,
    produto VARCHAR(100),
    quantidade INT,
    quantidade_min INT,
    preco DECIMAL(10, 2),
    grupo VARCHAR(11)
);

insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (1, 'Arroz 5kg', 120, 50, 20.50, '1');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (2, 'Manteiga 500g', 13, 20, 16.00, '2');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (3, 'Leite Integral', 850, 120, 3.95, '1');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (4, 'Carne: Contra-filé 1kg', 63, 40, 42.50, '2');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (5, 'Carne: Picanha 1kg', 30, 10, 62.50, '2');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (6, 'Óleo Vegetal', 233, 30, 12.00, '1');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (7, 'Coca-cola', 30, 60, 8.99, '3');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (8, 'Feijão Carioca 1kg', 80, 20, 16.75, '1');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (9, 'Guanará Antártica', 50, 30, 6.49, '3');
insert into estoque(id, produto, quantidade, quantidade_min, preco, grupo) values (10, 'Carne: Coxão Duro', 43, 40, 27.50, '2');


select * from estoque


SELECT * FROM estoque
ORDER BY produto ASC;


SELECT * FROM estoque
where grupo = 1
ORDER BY quantidade DESC;

SELECT * FROM estoque
WHERE quantidade < quantidade_min
   OR quantidade < 50;

SELECT * FROM estoque
WHERE quantidade > 100
  AND preco > 10.00
ORDER BY quantidade;

SELECT * FROM estoque
WHERE produto LIKE '%Carne%';