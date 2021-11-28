-- Crie um banco de dados para um serviço de um game Online
-- Criando o banco de dados
create database db_generation_game_online;

-- selecionando o banco
use db_generation_game_online;

-- Criando a 1° tabela
create table tb_classe (
id int auto_increment,
nickname varchar(255) not null,
vitorias int not null,
perdas int not null,
primary key (id)
); 

-- Inserindo valores a tabela
insert into tb_classe(nickname, vitorias, perdas) values ("Tihuanna", 13, 6);
insert into tb_classe(nickname, vitorias, perdas) values ("ymilharal", 13, 5);
insert into tb_classe(nickname, vitorias, perdas) values ("Yumarin", 9, 11);
insert into tb_classe(nickname, vitorias, perdas) values ("aaVemaria", 5, 2);
insert into tb_classe(nickname, vitorias, perdas) values ("YliNnia", 1, 4);
insert into tb_classe(nickname, vitorias, perdas) values ("Tihuanna", 15, 6);

-- Criando a 2° tabela
create table tb_personagem(
id int auto_increment primary key,
classe varchar(255) not null,
ataque int not null,
defesa int not null,
habilidade varchar(255) not null,
nivel int not null,
id_perso int not null,
foreign key(id_perso) references tb_classe(id)
);

-- Inserindo valores a segunda tabela
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Mago", 2100, 3400, "poderes naturais/elementais", 15, 1);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Assassino", 2300, 1100, "armas/precisão", 17, 1);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Guerreiro", 2009, 1800, "armas", 15, 2);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Necromante", 2200, 1500, "comunicação com mortos", 16, 2);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Feiticeiro", 1900, 2500, "magia negra", 13, 3);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Arqueiro", 3100, 1200, "arco-flecha", 14, 4);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Animago", 3000, 1000, "transformar em animal", 15, 4);
insert into tb_personagem(classe, ataque, defesa, habilidade, nivel, id_perso) values ("Guerreiro", 2009, 1800, "armas", 13, 5);

-- Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
select * from tb_personagem where ataque > 2000;
-- Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
select * from tb_personagem where defesa between  1000 and 2000;
-- Faça um select utilizando LIKE buscando os personagens com a letra C.
select * from tb_classe where nickname like "%c%";

-- Faça um um select com Inner join entre tabela classe e personagem.
select * from tb_personagem inner join  tb_classe on tb_classe.id = tb_personagem.id_perso;
/* Faça um select onde traga todos os personagem de uma classe específica (exemplo todos
os personagens que são arqueiros).*/
select * from tb_personagem where classe like "%arqueiro%";