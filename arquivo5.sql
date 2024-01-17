drop function salario_ok;
create function salario_ok(id_instrutor integer) returns varchar as $$ 
	declare
		instrutor instrutor;
	begin
	select * from instrutor where id = id_instrutor into instrutor;
		-- se o salario do instrutror for maior que 300, esta ok. Se for 300 reais, entao pode aumenta. caso contrario
		/*if instrutor.salario > 100 then
			return 'Salario muito baixo';
		elseif instrutor.salario = 300 then
			return 'Salario pode aumentar';
		else
			return 'Salario esta defasado';
		end if;*/
		case instrutor.salario
			when 100 then
				return 'Salario muito baixo';
			when 200 then
				return 'Salario baixo';
			when 300 then
				return 'Salario ok';
			else
				return 'Salario otimo';
		end case;
	end;
$$ language plpgsql;

select nome, salario_ok(instrutor.id)  from instrutor;