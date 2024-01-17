create temporary table cursos_programacao(
	id_curso integer primary key,
	nome_curso varchar(255) not null
);

insert into cursos_programacao

select	academico.curso.id,
		academico.curso.nome
	from academico.curso
	join academico.categoria on academico.categoria.id = academico.curso.categoria_id
	where categoria_id = 2;
	
select * from cursos_programacao;