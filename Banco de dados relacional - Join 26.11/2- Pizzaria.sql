-- Crie um banco de dados para um serviço de pizzaria de uma empresa
create database db_pizzaria_legal;
use db_pizzaria_legal;

-- O sistema trabalhará com 2 tabelas tb_pizza e tb_categoria.
-- Criando a 1º tabela.
create table tb_categoria (
id_pedido int auto_increment,
tipo varchar(20) not null,
tamanho varchar(20) not null,
vegetariana boolean not null,
primary key(id_pedido)
);
-- Criando a 2º tabela.
create table tb_pizza (
id_pedido int auto_increment primary key,
sabor varchar(255) not null,
refrigerante varchar(255) not null,
azeitona boolean not null,
valor decimal(65,2) not null,
borda varchar(20) not null,
id int not null,
foreign key(id) references tb_categoria(id_pedido)
);
-- Inserindo valores na 1º tabela
insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "grande", true);
insert into tb_categoria(tipo, tamanho, vegetariana) values ("doce", "pequena", true);
insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "media", false);
insert into tb_categoria(tipo, tamanho, vegetariana) values ("salgada", "pequena", false);
insert into tb_categoria(tipo, tamanho, vegetariana) values ("doce", "grande", true);
-- Inserindo valores na 2º tabela
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Frango Catupiry", "Coca-cola", true, "Cheddar", 35.50, 4);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Calabresa", "Pepsi", true, "Catupiry", 49.90, 3);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Brigadeiro", "Coca-cola", false, "sem", 17.90, 2);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Prestigio", "sem", false , "sem", 17.90, 2);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("M&M's", "Guarana", false, "ninho", 28.90, 5);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("4 queijos", "Guaraviton", true, "sem", 45.90, 1);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Palmito", "Schweps", false, "Cheddar", 49.90, 1);
insert into tb_pizza(sabor, refrigerante, azeitona, borda, valor, id) values ("Bacon", "Dolly", false, "catupiry", 49.90, 4);
-- Faça um select que retorne os Produtos com o valor maior do que 45 reais.
select * from tb_pizza where valor > 45;
-- Faça um select trazendo os Produtos com valor entre 29 e 60 reais.
select * from tb_pizza where valor between 29 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra C.
select * from tb_pizza where sabor like "%C%";
-- Faça um um select com Inner join entre tabela categoria e pizza.
select * from tb_pizza inner join tb_categoria on tb_categoria.id_pedido = tb_pizza.id;
-- Faça um select onde traga todos os Produtos de uma categoria específica
select * from tb_pizza inner join tb_categoria on tb_categoria.id_pedido = tb_pizza.id where tipo like "%doce%";