drop table instrutor;

create table instrutor (
	id serial primary key,
	nome varchar(255) not null,
	salario decimal(10, 2)
);
select count(*) from instrutor;
do $$
	declare
	begin
		for i in 1..1000000 loop
			insert into instrutor (nome, salario) values ('Instrutor(a) ' || i, random() * 1000 + 1);
		end loop;
	end;
$$;
update instrutor set salario = salario * 2 where id % 2 = 1;
delete from instrutor where id % 2 = 0;
vacuum verbose;
vacuum full;
vacuum analyze instrutor;

select relname, n_dead_tup from pg_stat_user_tables;
select pg_size_pretty(pg_relation_size('instrutor'));

select * from instrutor;
analyze;
