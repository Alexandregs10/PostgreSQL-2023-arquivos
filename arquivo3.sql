create type dois_valores as (soma integer, produto integer);

drop function soma_e_produto;
create function soma_e_produto (in numero_1 integer,in numero_2 integer) returns dois_valores as $$
	select numero_1 + numero_2 as soma, numero_1 * numero_2 as produto;
$$ language sql;

select * from soma_e_produto(3,3);

