create database db_ecommerce; -- criando o banco
use db_ecommerce; -- selecionando o banco a ser usado

create table tb_produtos( -- criando a tabela e cetando os atributos
id_produto int(8) auto_increment,
nome varchar(255) not null,
valor decimal(65,2) not null,
quantidade int(255) not null,
validade date not null,
cor varchar(255) not null,
primary key(id_produto)
);

insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Base liquida", 120, 3, "2022-07-26", "tons claros");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Base liquida", 120, 5, "2022-07-05", "tons medios");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Paleta Oceane", 540, 7, "2022-12-09", "24 shades");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Corretivo", 600, 4, "2022-11-08", "claro");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Gloss Labial", 140, 9, "2022-05-19", "rose");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Batom Matte", 350, 3, "2022-07-08", "Vermelho");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Primer Blue", 602, 5, "2022-04-03", "incolor");
insert into tb_produtos(nome, valor, quantidade, validade, cor) values ("Contorno", 780, 7, "2022-07-19", "tons escuros");

select * from tb_produtos; -- vendo a tabela
select * from tb_produtos where valor > 500; -- selecionando os valores a serem vistos
select * from tb_produtos where valor < 500;

update tb_produtos set valor = 130 where id_produto = 1; -- atualizando valores
update tb_produtos set valor = 140 where id_produto = 2;

select * from tb_produtos;

