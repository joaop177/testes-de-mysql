select * from pessoas
order by nome;

select nome, carga, ano from cursos;

select * from cursos
where ano = '2016'
order by nome;

select nome, carga from cursos
where ano = '2016'
order by nome;

select nome, descricao, ano from cursos
where ano <= 2019
order by ano, nome;

select nome, ano, descricao from cursos 
where ano between 2016 and 2019;


select * from cursos
where carga > 35 and totaulas < 50
order by nome;

select * from cursos
where carga > 35 or totaulas < 50
order by nome;

select * from cursos
where nome like '%h';

select * from cursos
where nome like 'h%';

select * from cursos
where nome like '%h%';

select * from cursos
where nome not like '%h%';

select distinct nacionalidade from pessoas
order by nacionalidade;

select count(*) from cursos where carga <=40;

select max(carga) from cursos;

select max(totaulas) from cursos where ano = '2019';

select min(totaulas) from cursos where ano = '2019';

select sum(totaulas) from cursos where ano = '2019';

select avg(totaulas) from cursos where ano = '2019';