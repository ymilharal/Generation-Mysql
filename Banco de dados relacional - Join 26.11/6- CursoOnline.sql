-- Crie um banco de dados para um serviço de um site de cursos online
create database db_cursoDaMinhaVida;
use db_cursoDaMinhaVida;
-- O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.
-- Criando a 1º tabela 
create table tb_categoria(
id int auto_increment not null primary key,
categoria varchar(255) not null,
certificado boolean not null,
blackFRIDAY boolean not null
);
-- Criando a 2° tabela
create table tb_curso(
id int auto_increment primary key,
curso varchar(255) not null,
nivel varchar(255) not null,
duracao time not null,
valor decimal(65,2) not null,
valor_Oferta decimal(65,2) not null,
fk_id_categ int,
foreign key(fk_id_categ) references tb_categoria(id)
);
-- Inserindo valores na 1º tabela
insert into tb_categoria(categoria, certificado, blackFRIDAY) values ("Desenvolvimento", true, true);
insert into tb_categoria(categoria, certificado, blackFRIDAY) values ("Marketing", true, false);
insert into tb_categoria(categoria, certificado, blackFRIDAY) values ("Design", true, true);
insert into tb_categoria(categoria, certificado, blackFRIDAY) values ("Fotografia e Video", false, false);
insert into tb_categoria(categoria, certificado, blackFRIDAY) values ("Finanças", false, true);
-- Inserindo valores na 2º tabela
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("JavaScript+projetos", "Iniciante", "95:50", 184.90, 22.90, 1);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Banco de dados e SQL", "Iniciante", "58:00", 199.90, 22.90, 1);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Google Ads+Remarketing", "Avançado", "16:00", 229.90, 22.90, 2);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Marketing Digital", "Intermediario", "18:00", 129.90, 34.90, 2);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("AutoCAD 2D e 3D", "Intermediario", "67:00", 249.90, 22.90, 3);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Adope Photoshop", "Iniciante", "18:50", 234.90, 22.90, 3);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Fotografia Masterclass", "Iniciante", "17:50", 219.90, 22.90, 4);
insert into tb_curso(curso, nivel, duracao, valor, valor_Oferta, fk_id_categ) values ("Day Trade e Swing Trade", "Intermediario", "06:50", 184.90, 22.90, 5);

-- Faça um select que retorne os Produtos com o valor maior do que 50 reais.
select * from tb_curso where valor > 50;
-- Faça um select trazendo os Produtos com valor entre 3 e 60 reais.
select * from tb_curso where valor_Oferta between 3 and 60;
-- Faça um select utilizando LIKE buscando os Produtos com a letra J.
select * from tb_curso where curso like "%J%";
-- Faça um um select com Inner join entre tabela categoria e produto.
select * from tb_categoria inner join tb_curso on tb_curso.fk_id_categ = tb_categoria.id;
-- Faça um select onde traga todos os Produtos de uma categoria específica.
select * from tb_categoria inner join tb_curso on tb_curso.fk_id_categ = tb_categoria.id where categoria like "%Desenvolvimento%";