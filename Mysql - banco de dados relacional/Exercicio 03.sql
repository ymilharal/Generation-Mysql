/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com as
informações dos estudantes deste registro dessa escola.*/

create database db_escola;
use db_escola;

create table tb_estudantes(
id_aluno int(255) auto_increment,
nome varchar(255) not null,
idade int(255) not null,
turma int(255) not null,
curso varchar(255) not null,
primary key(id_aluno)
);

insert into tb_estudantes(nome, idade, turma, curso) values ("Yasmim Marques", 19, 39, "Desenvolvedor web Java");
insert into tb_estudantes(nome, idade, turma, curso) values ("Ayla Santos", 23, 30, "Web Design");
insert into tb_estudantes(nome, idade, turma, curso) values ("Lara Silva", 18, 38, "Biomedicina");
insert into tb_estudantes(nome, idade, turma, curso) values ("Justin Bieber", 24, 37, "Veterinaria");
insert into tb_estudantes(nome, idade, turma, curso) values ("Collete Collins", 23, 39, "Desenvolvedor web Java");
insert into tb_estudantes(nome, idade, turma, curso) values ("Jennet McCulen", 19, 36, "Gastronomia");
insert into tb_estudantes(nome, idade, turma, curso) values ("Gloria Perez", 19, 35, "Advocacia");
insert into tb_estudantes(nome, idade, turma, curso) values ("Jaqueline Feitosa", 22, 34, "Astronomia");

select * from tb_estudantes;

create table tb_media(
id_aluno int(255) not null auto_increment,
faltas int(255) not null,
nota1 decimal(65,1),
nota2 decimal(65,2),
notafinal decimal(65,2),
id_notas int(255) not null,
primary key (id_aluno),
foreign key (id_notas) references tb_estudantes(id_aluno)
);

insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (2, 7, 08.3, 05.5, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (3,7, 07.2, 05.6, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (4, 7, 08.4, 07.3, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (5, 7, 04.2, 09.7, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (6, 7, 10.0, 9.8, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (7, 7, 09.1, 08.7, (nota1 + nota2)/2);
insert into tb_media(id_notas, faltas, nota1, nota2, notafinal) values (8, 7, 08.6, 09.4, (nota1 + nota2)/2);

select * from tb_estudantes, tb_media;
select * from tb_estudantes, tb_media where notafinal > 7;
select * from tb_estudantes, tb_media where notafinal < 7;

update tb_estudantes set turma = 31 where id_aluno = 2;
select * from tb_estudantes, tb_media;