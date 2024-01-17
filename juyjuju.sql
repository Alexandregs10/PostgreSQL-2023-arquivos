drop table a;
create temporary table a (
	coluna1 varchar(255) not null check(coluna1 <> ''),
	coluna2 varchar(255) not null, 
	unique (coluna1, coluna2)
);

insert into teste values ('a', 'c');

select * from teste;

alter table a rename to teste
select primeira_coluna as "Primeira Coluna" from teste;



alter table teste rename coluna1 to primeira_coluna

alter table teste rename coluna2 to segunda_coluna

drop table pessoa;

create table pessoa (
);

alter table pessoa add column nome varchar(128);
alter table pessoa add column idade varchar(3);

select * from pessoa;

