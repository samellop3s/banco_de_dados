create table medicos (
    id number not null,
    medico varchar2(80) not null,
    especialidade varchar2(30) not null,
    valor_consulta number(7,2) not null,
    constraint pk_medicos primary key (id)
);

create table clientes (
    id number not null,
    nome varchar2(80) not null,
    dt_cadastro date not null,
    constraint pk_clientes primary key (id)
);

create table consulta (
    id number not null,
    medico_id number not null,
    cliente_id number not null,
    dia_hora date not null,
    pgto char(1) null,
    constraint pk_consulta primary key (id),
    constraint fk_medico 
	foreign key (medico_id) references medicos(id),
    constraint fk_cliente 
	foreign key (cliente_id) references clientes(id)  
);

insert into medicos(id, medico, especialidade, valor_consulta)values (1,'Gaspar da Silva', 'cirurgia plástica', 500.00);
insert into medicos(id, medico, especialidade, valor_consulta)values (2, 'José Alencar', 'ortopedia', 300.00);
insert into medicos(id, medico, especialidade, valor_consulta)values (3, 'Aline Santiago', 'gastrologia', 300.00);
insert into medicos(id, medico, especialidade, valor_consulta)values (4, 'Penélope Félix', 'dermatologista', 400.00);
insert into medicos(id, medico, especialidade, valor_consulta)values (5, 'Matusalem Borges', 'geriatria', 300.00);


insert into clientes(id, nome, dt_cadastro)values (1,'José da Silva', to_date('13/03/2023', 'dd/mm/yyyy'));
insert into clientes(id, nome, dt_cadastro)values (2,'Mariana Teles', to_date('02/04/2020', 'dd/mm/yyyy'));
insert into clientes(id, nome, dt_cadastro)values (3,'Rosangela Guedes', to_date('01/05/2020', 'dd/mm/yyyy'));
insert into clientes(id, nome, dt_cadastro)values (4,'Aline Santos', to_date('03/07/2015', 'dd/mm/yyyy'));
insert into clientes(id, nome, dt_cadastro)values (5,'João Santos de Souza', to_date('04/03/2019', 'dd/mm/yyyy'));


insert into consulta values (1, 1, 2, to_date('12/04/2023 14:15', 'dd/mm/yyyy hh24:mi'), 'S');
insert into consulta values (2, 3, 1, to_date('13/03/2023 10:00', 'dd/mm/yyyy hh24:mi'), 'S');
insert into consulta values (3, 3, 4, to_date('13/03/2023 12:00', 'dd/mm/yyyy hh24:mi'), 'S');
insert into consulta values (4, 2, 5, to_date('20/04/2023 11:00', 'dd/mm/yyyy hh24:mi'), null);
insert into consulta values (5, 4, 4, to_date('01/04/2023 07:00', 'dd/mm/yyyy hh24:mi'), 'S');

insert into consulta values (6, 3, 4, sysdate, 'N');

select *  from medicos;

select * from medicos where id = 3;

select * from consulta;

select * from consulta where pgto = 'S';

select * from consulta where pgto = 'N';

select * from consulta where pgto is null;

select * from consulta where pgto != 'S';

select * from consulta where pgto is null or pgto = 'N';

select * from consulta where pgto = 'S' or pgto = 'N';

select * from consulta where pgto in ('S','N');

select * from consulta where pgto is not null;

select * from consulta where pgto is not null order by dia_hora asc;

select * from consulta where pgto is not null order by dia_hora desc;

select * from consulta where pgto is not null order by 4 desc;

select id as codigo, medico_id as "Código do medico", cliente_id  "Código do clt", to_char(dia_hora, 'dd/mm/yyyy') as data_hora, pgto from consulta