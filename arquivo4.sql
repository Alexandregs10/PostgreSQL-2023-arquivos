
CREATE or replace FUNCTION primeira_pl() returns integer as $$ 
	declare
		primeira_variavel integer := 3;
	begin
		primeira_variavel := primeira_variavel * 2;
		
		begin
			primeira_variavel := 7;
		end;
		
		return primeira_variavel;
	end
$$ language plpgsql;

select primeira_pl();