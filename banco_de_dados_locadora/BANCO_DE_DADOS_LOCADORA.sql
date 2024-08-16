create table filme (
    cod_filme number(6) not null,
    nome varchar2(80) not null,
    duracao number(3) null,
    classificacao number(2) not null,
    ano number(4) null,
    cod_diretor number(3) null,
    nro_copias number(3) not null,
    constraint pk_filme primary key (cod_filme)
);

create table diretor (
	cod_diretor number(3) not null,
	nome varchar2(50) not null,
	constraint pk_diretor primary key (cod_diretor)
);

create table cliente (
    cod_cliente NUMBER(5) not null,
    nome VARCHAR(50) not null,
    celular VARCHAR(20) null,
    telefone VARCHAR(20) null,
    email VARCHAR(30) null,
    dt_nascimento DATE null,
    constraint pk_cliente primary key (cod_cliente)
);

create table pedidos (
  cod_pedido NUMBER(5) not null,
  cod_cliente number(5) not null,  
  cod_filme number(5) not null,
  dt_retirada date not null,  
  dt_devolucao date null,
  constraint pk_pedido primary key (cod_pedido),
  constraint fk_cliente foreign key (cod_cliente)
  references cliente(cod_cliente),
  constraint fk_filme foreign key (cod_filme)
  references filme(cod_filme)  
);

alter table filme 
    add nro_copias_emprestadas number(3,0) null;

alter table filme
    modify nome varchar2(100);

alter table filme
    drop column duracao;

alter table filme
    add constraint fk_filme2 foreign key (cod_diretor)
    references diretor(cod_diretor);

insert into cliente(cod_cliente, nome, celular, telefone, email,dt_nascimento)
    values(1'Tony Stark', '3943-4443', '2234-3443', 'tony@hotmail.com', TO_DATE('01/04/1970', 'DD/MM/YYYY'))


insert into diretor(cod_diretor, nome) values (1, 'Quentim Tarantino');
insert into diretor(cod_diretor, nome) values (2, 'James Gunn');
insert into diretor(cod_diretor, nome) values (3, 'Guilherme Del Toro');
insert into diretor(cod_diretor, nome) values (4, 'José Padilha');
insert into diretor(cod_diretor, nome) values (5, 'Steven Spilberg');
insert into diretor(cod_diretor, nome) values (6, 'Winston Duke');
insert into diretor(cod_diretor, nome) values (7, 'Jaume Collet-Serra');
insert into diretor(cod_diretor, nome) values (8, 'Chris Columbus');
insert into diretor(cod_diretor, nome) values (9, 'William Brent Bell');
insert into diretor(cod_diretor, nome) values (10, 'Chad Stahelski');

insert into filme values (1, 'Pantera Negra: Wakanda para Sempre', 161, 12, 2022, null, 5);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (2, 'Pantera Negra', 135, 14, 2018, 4);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (3, 'Adão Negro', 125, 12, 2022, 7);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (4, 'Percy Jackson e o Ladrão de Raios', 122, 12, 2010, 3);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (5, 'Orfã 2: A Origem', 99, 16, 2022, 6);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (6, 'John Wick - Um novo dia para matar', 123, 16, 2017, 7);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (7, 'O Lobo de Wall Street', 179, 18, 2014, 3);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (8, 'A Múmia', 72, 99, 1932, 1);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (9, 'A Múmia', 165, 12, 1999, 1);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (10, 'A Múmia', 101, 12, 2017, 1);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (11, 'Máquinas Mortais', 128, 14, 2018, 2);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (12, 'Mary Poppins', 139, 4, 1964, 1);
insert into filme(cod_filme, nome, duracao, classificacao, ano, nro_copias)
values (13, 'À Espera de Um Milagre', 189, 14, 1999, 2);
