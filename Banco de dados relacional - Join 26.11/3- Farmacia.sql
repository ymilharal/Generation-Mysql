-- Crie um banco de dados para um serviço de farmácia de uma empresa
create database db_farmacia_do_bem;
use db_farmacia_do_bem;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Criando a 1º tabela 
create table tb_categoria(
id int auto_increment not null primary key,
receita boolean not null,
categoria varchar(255) not null,
laboratorio varchar(255) not null
);
-- Criando a 2° tabela
create table tb_produto(
id int auto_increment primary key,
nome varchar(255) not null,
quantidade int(255) not null,
valor decimal(65,2) not null,
tipo varchar(255) not null,
fk_id_categ int,
foreign key(fk_id_categ) references tb_categoria(id)
);

-- Inserindo valores na 1º tabela
insert into tb_categoria(categoria, receita, laboratorio) values ("Medicamento", false, "Cimed");
insert into tb_categoria(categoria, receita, laboratorio) values ("Cosmeticos", false, "Avamiller");
insert into tb_categoria(categoria, receita, laboratorio) values ("Medicamento", false, "Medley");
insert into tb_categoria(categoria, receita, laboratorio) values ("Tintura", false, "Gemu Group");
insert into tb_categoria(categoria, receita, laboratorio) values ("Medicamento", true, "Euro Farma");
-- Inserindo valores na 2º tabela
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Simeticona", 10, 19.90, "capsula", 3);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Beauty Color", 1, 18.90, "tinta", 4);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Impala", 1, 4.90, "esmalte", 2);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Baby Dove", 1, 19.90, "Hidratante", 2);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Cor&Ton", 1, 12.90, "tinta", 4);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Cimegripe", 20, 15.90, "capsula", 1); 
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Antara", 30, 57.90,"comprimido", 5);
insert into tb_produto(nome, quantidade, valor, tipo, fk_id_categ) values ("Dexalgen", 1, 52.90, "Dose", 5);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra B.
select * from tb_produto where nome like "%B%";
-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id_categ;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id_categ where categoria like "%Cosmeticos%";