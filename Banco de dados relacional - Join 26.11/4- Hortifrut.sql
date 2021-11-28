-- Crie um banco de dados para um serviço de uma quitanda
create database db_cidade_das_frutas;
use db_cidade_das_frutas;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Criando a 1º tabela 
create table tb_categoria(
id int auto_increment not null primary key,
refrigerado boolean not null,
cortado boolean not null,
categoria varchar(255) not null
);
-- Criando a 2° tabela
create table tb_produto(
id int auto_increment primary key,
nome varchar(255) not null,
quantidade int(255) not null,
valor decimal(65,2) not null,
valor_embalado decimal(65,2),
agrotoxicos boolean not null,
fk_id_categ int,
foreign key(fk_id_categ) references tb_categoria(id)
);

-- Inserindo valores na 1º tabela
-- Verdura
insert into tb_categoria(categoria, cortado, refrigerado) values ("Verdura", true, true); 
insert into tb_categoria(categoria, cortado, refrigerado) values ("Verdura", false, false);
-- Fruta
insert into tb_categoria(categoria, cortado, refrigerado) values ("Frutas", true, true); 
insert into tb_categoria(categoria, cortado, refrigerado) values ("Frutas", false, false); 
-- Legume
insert into tb_categoria(categoria, cortado, refrigerado) values ("Legume", true, true);
insert into tb_categoria(categoria, cortado, refrigerado) values ("Legume", false, false); 
-- Inserindo valores na 2º tabela
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Abacaxi", 5, 9.90, (valor + 2), true, 3);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Alface", 1, 4.90, (valor + 2), true, 2);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Tomate", 5, 3.50, (valor + 2), false, 6);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Morango", 60, 52.90, (valor + 2), true, 4);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Pimentão", 3, 5.50, (valor + 2), false, 5);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Cenoura", 1, 2.50, (valor + 2), false, 1);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Acerola", 60, 52.45, (valor + 2), true, 4);
insert into tb_produto(nome, quantidade, valor, valor_embalado, agrotoxicos, fk_id_categ) values ("Quiabo", 10, 4.90, (valor + 2), false, 6);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";
-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id_categ;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_produto inner join tb_categoria on tb_categoria.id = tb_produto.fk_id_categ where categoria like "%Leg%";