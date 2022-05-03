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

#teste: quantas pessoas nasceram apos dataX:
select sexo, count(*) from pessoasinfo where nascimento > ('1990-01-01')
order by sexo;

#teste: uma lista de quem nasceu fora do brasil, mostrando pais de origem e total de pessoas

select nacionalidade, count(*) from pessoasinfo where nacionalidade not in ('brasil');

select * from pessoasinfo;