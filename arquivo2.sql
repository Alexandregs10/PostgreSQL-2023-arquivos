drop table instrutor cascade;

CREATE TABLE instrutor (
	id SERIAL PRIMARY KEY,
	nome VARCHAR(255) NOT NULL,
	salario DECIMAL(10, 2)
);

INSERT INTO instrutor (nome, salario) VALUES ('Vinicius Dias', 100);
INSERT INTO instrutor (nome, salario) VALUES ('Diogo Mascarenhas', 200);
INSERT INTO instrutor (nome, salario) VALUES ('Nico Steppat', 300);
INSERT INTO instrutor (nome, salario) VALUES ('Juliana', 400);
INSERT INTO instrutor (nome, salario) VALUES ('Priscila', 500);

update instrutor set nome = 'Juliana' where id = 5;
CREATE FUNCTION dobro_do_salario(instrutor) RETURNS DECIMAL AS $$
	SELECT $1.salario * 2 AS dobro;
$$ LANGUAGE SQL;

SELECT nome, dobro_do_salario(instrutor.*)  AS desejo FROM instrutor;

CREATE OR REPLACE FUNCTION cria_instrutor_falso() RETURNS instrutor AS $$
	SELECT 22, 'Nome falso', 200:: decimal;
$$ LANGUAGE SQL;

select * from cria_instrutor_falso();

select id, salario from cria_instrutor_falso();

drop function instrutores_bem_pagos;
create function instrutores_bem_pagos(valor_salario decimal, out nome varchar, out salario decimal) returns setof record as $$
	select nome, salario from instrutor where salario > valor_salario;
$$ language sql;

select * from instrutores_bem_pagos(300);

;