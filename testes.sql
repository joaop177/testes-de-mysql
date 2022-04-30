
create database cadastro
default character set utf8mb3
default collate utf8_general_ci;

create table pessoas(
	id int not null auto_increment,
	nome varchar(30) not null,
	nascimento date,
	sexo enum ('M', 'F'),
	cpf int,
	nacionalidade varchar(20) not null,
	primary key (id)
) default charset = utf8;

use cadastro;

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('joao', '1999-06-08', 'M', '10888633963', 'brasil');

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('maria', '2000-11-24', 'F', '10455577744', 'brasil');

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('thiago', '2000-09-30', 'M', '10455599944', 'angola');

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('izeni', '1984-09-30', 'f', '10455599955', 'angola');

insert into pessoas
(nome, nascimento, sexo, cpf, nacionalidade)
values
('jose', '1984-09-23', 'M', '10655554355', 'australia'),
('claudio', '1985-06-30', 'M', '10755554355', 'china'),
('antonio', '1986-11-22', 'M', '10855554355', 'angola'),
('miguel', '1987-09-30', 'M', '10955554355', 'japão');

select * from pessoas;

alter table pessoas
add column profissao varchar(30);

alter table pessoas
drop column profissao;

alter table pessoas
add column profissao varchar(30) after sexo;

alter table pessoas
modify column profissao varchar(20);

alter table pessoas
change column profissao prof varchar(20);

alter table pessoas
rename to pessoasinfo;

create table if not exists testedrop(
	nome varchar(20),
    cpf int(11)
);

drop table testedrop;  
