CREATE FUNCTION primeira_funcao() RETURNS INTEGER AS '
	SELECT (5 - 3) * 2
' LANGUAGE SQL;

SELECT * FROM primeira_funcao() AS numero;

CREATE FUNCTION soma_dois_numeros( INTEGER,  INTEGER) RETURNS INTEGER AS '
	SELECT $1 + $2;
' LANGUAGE SQL;


SELECT soma_dois_numeros(3, 17);

CREATE TABLE a (nome VARCHAR(255) NOT NULL);

DROP FUNCTION cria_a;
CREATE OR REPLACE FUNCTION cria_a(nome VARCHAR) RETURNS VARCHAR AS '
	INSERT INTO a (nome) VALUES (cria_a.nome);
	
	SELECT nome;
' LANGUAGE SQL;

SELECT cria_a('Vinicius Dias');

CREATE OR REPLACE FUNCTION cria_a(nome VARCHAR) RETURNS void AS $$
	INSERT INTO a (nome) VALUES('Patricia');
$$ LANGUAGE SQL;

SELECT cria_a('Vinicius Dias');
















