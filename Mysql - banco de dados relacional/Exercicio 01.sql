create database db_rhbanco;

use db_rhbanco;

create table tb_funcionario(
id_funcionario int(11) auto_increment,
nome varchar(255) not null,
idade int(255),
salario decimal(65,2),
funcao varchar(255),
cargo varchar(255),
primary key(id_funcionario)
);

insert into tb_funcionario(nome, idade, funcao, cargo, salario) values ("Ricardo Bezerra", 20, "repositor", "estagiario", 800);
insert into tb_funcionario(nome, idade, funcao, cargo, salario) values ("Jaqueline Peres", 35, "atendente", "gerente", 2800);
insert into tb_funcionario(nome, idade, funcao, cargo, salario) values ("Joao Filho", 49, "dono", "patrão", 35000);
insert into tb_funcionario(nome, idade, funcao, cargo, salario) values ("Yasmim Marques", 40, "atendente", "sub-gerente", 2000);
insert into tb_funcionario(nome, idade, funcao, cargo, salario) values ("Ayla Santos", 21, "operadora", "estagiario", 800);

select * from tb_funcionario;
select * from tb_funcionario where salario > 2000;
select * from tb_funcionario where salario < 2000;

update tb_funcionario set salario = 3400 where id_funcionario = 2;

select * from tb_funcionario;
