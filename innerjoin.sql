alter table pessoasinfo add column cursopreferido int;

alter table pessoasinfo add foreign key (cursopreferido)
references cursos(idcurso);

describe cursos;

update pessoasinfo set cursopreferido = '5' where id = '1';

select * from pessoasinfo;

select pessoasinfo.nome, cursos.nome, cursos.ano
from pessoasinfo inner join cursos 
on cursos.idcurso = pessoasinfo.cursopreferido
order by pessoasinfo.nome;

select pessoasinfo.id, pessoasinfo.nome, cursos.nome, cursos.ano
from pessoasinfo left outer join cursos 
on cursos.idcurso = pessoasinfo.cursopreferido
order by pessoasinfo.nome;

create table assistecurso (
	id int not null auto_increment,
    data date,
    idpessoasinfo int,
    idcurso int,
    primary key (id),
    foreign key (idpessoasinfo) references pessoasinfo (id),
    foreign key (idcurso) references cursos (idcurso)); 
    
insert into assistecurso values
(default, '2012-12-12', '1', '2');

select * from assistecurso;

insert into assistecurso values
(default, '2013-11-11', '2', '3');

insert into assistecurso values
(default, '2017-11-07', '3', '2'),
(default, '2013-06-03', '1', '1'),
(default, '2015-11-11', '2', '3');

select * from pessoasinfo
inner join assistecurso
on pessoasinfo.id = assistecurso.idpessoasinfo;

select pessoasinfo.id, pessoasinfo.nome, cursos.nome from pessoasinfo
inner join assistecurso
on pessoasinfo.id = assistecurso.idpessoasinfo
inner join cursos
on cursos.idcurso = assistecurso.idcurso
order by pessoasinfo.nome;

select pessoasinfo.id, pessoasinfo.nome, cursos.nome from pessoasinfo
inner join assistecurso
on pessoasinfo.id = assistecurso.idpessoasinfo
inner join cursos
on cursos.idcurso = assistecurso.idcurso
order by pessoasinfo.id;