create table if not exists cursos(
	nome  varchar(30) not null unique,
    descricao text,
    carga int unsigned,
    totaulas int,
    ano year default '2016'
)default charset=utf8;

alter table cursos
add column idcurso int first;

alter table cursos
add primary key (idcurso);

select * from cursos;

insert into cursos values
('1','java','curso java', '40', '45', '2016'),
('2', 'java script','curso java script', '50', '43', '2017'),
('3','php', 'curso php', '45', '35', '2018'),
('4', 'sql','curso sql', '40', '34', '2016'),
('5', 'html','curso html', '49', '54', '2019'),
('6','css','curso css', '40', '45', '2021');

select * from cursos;
select * from pessoasinfo;

update cursos
set nome = 'JAVA'
where idcurso = '1';

update cursos
set nome = 'SQL', carga = '76', ano = '2022'
where idcurso = '4'
limit 1;

delete from cursos
where idcurso = '6'
limit 1;

truncate cursos;
