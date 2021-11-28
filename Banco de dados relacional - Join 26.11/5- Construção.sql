-- Crie um banco de dados para um serviço de uma loja produtos de construção
create database db_construindo_a_nossa_vida;
use db_construindo_a_nossa_vida;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Criando a 1º tabela 
create table tb_categoria(
id int auto_increment not null primary key,
departamentos varchar(255) not null,
servicos varchar(255) not null,
ofertas varchar(255) not null
);
-- Criando a 2° tabela
create table tb_produto(
id int auto_increment primary key,
produto varchar(255) not null,
estoque int(255) not null,
valor decimal(65,2) not null,
valor_oferta decimal(65,2) not null,
validade date not null,
fk_id_categ int,
foreign key(fk_id_categ) references tb_categoria(id)
);
-- Inserindo valores na 1º tabela
insert into tb_categoria(departamentos, servicos, ofertas) values ("Pintura e acessorios", "delivery", "10%");
insert into tb_categoria(departamentos, servicos, ofertas) values ("Ferramentas gerais", "delivery", "15%");
insert into tb_categoria(departamentos, servicos, ofertas) values ("Materiais de Construção", "delivery", "10%");
insert into tb_categoria(departamentos, servicos, ofertas) values ("Materiais Eletricos", "retirada", "5%");
insert into tb_categoria(departamentos, servicos, ofertas) values ("Materiais Hidraulicos", "retirada", "20%");
-- Inserindo valores na 2º tabela
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Corantes", 25, 7.99, (valor - 0.79), "2022-11-28", 1);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Rolo Angular", 17, 15.99, (valor - 1.59), "2025-12-25", 1);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Jogo de soquetes 40pc", 10, 62.40, (valor - 9.36), "2025-12-26", 2);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Chapa de drywall 1,80x1,20m", 16, 32.90, (valor - 3.29),  "2023-08-16", 3);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Telha Ecologica 2mx95cm", 11, 59.90, (valor - 5.99), "2025-10-30", 3);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Estabilizador Mono300VA", 3, 379.90, (valor - 18.99), "2024-11-04", 4);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Purificador de agua", 5, 349.90, (valor - 69.98), "2026-12-05", 5);
insert into tb_produto(produto, estoque, valor, valor_oferta, validade, fk_id_categ) values ("Torneira Eletrica", 6, 309.80, (valor - 61.96),"2025-03-15", 5);
-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_produto where valor > 50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_produto where valor between 3 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_produto where nome like "%C%";
-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_categoria inner join tb_produto on tb_produto.fk_id_categ = tb_categoria.id;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_categoria inner join tb_produto on tb_produto.fk_id_categ = tb_categoria.id where departamentos like "%hidra%";