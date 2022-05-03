select distinct totaulas,nome from cursos
group by totaulas
order by totaulas;

select totaulas, count(*) from cursos
group by totaulas
order by totaulas;

select * from cursos where totaulas > 30;

select carga, count(nome) from cursos where totaulas = 35
group by carga;

select * from cursos where totaulas = 35;

select ano, count(*) from cursos
group by ano
having count(ano) >= 2018
order by count(*) desc;

select carga, count(nome) from cursos
group by carga;

select avg(carga) from cursos;

select carga, count(*) from cursos
where ano > 2018
group by carga
having carga > (select avg(carga) from cursos);
