/*Atividade 1

Crie um banco de dados para um serviço de um game online, o nome do banco deverá ter o seguinte nome db_generation_game_online, onde,
o sistema trabalhará com as informações dos personagens desse game. 
O sistema trabalhará com 2 tabelas tb_personagem e tb_classe.

Siga exatamente esse passo a passo:

Crie uma tabela tb_classe utilizando a habilidade de abstração e determine 3 atributos relevantes da classe para se trabalhar com o serviço desse game online.
Crie uma tabela tb_personagem e utilizando a habilidade de abstração e determine 5 atributos relevantes dos personagens para
se trabalhar com o serviço desse game online (não esqueça de criar a foreign key de tb_classe nesta tabela).

Popule esta tabela classe com até 5 dados.
Popule esta tabela personagem com até 8 dados.

Faça um select que retorne os personagens com o poder de ataque maior do que 2000.
Faça um select trazendo os personagens com poder de defesa entre 1000 e 2000.
Faça um select utilizando LIKE buscando os personagens com a letra C.
Faça um select com Inner join entre tabela classe e personagem.
Faça um select onde traga todos os personagens de uma classe específica (exemplo todos os personagens que são arqueiros).*/


CREATE DATABASE db_generation_game_online;

USE db_generation_game_online;

CREATE TABLE tb_classe(
	id bigint auto_increment,
    nivel int,
    classe varchar(255),
    habilidade varchar(255),
    arma varchar(255),
    
    primary key(id)
);

SELECT * FROM tb_classe;

CREATE TABLE tb_personagem(
	id bigint auto_increment,
    nome varchar(255),
    raca varchar(255),
    vida int,
    defesa int,
    ataque int,
    classe_id bigint, -- relacionamento

	primary key(id),
    foreign key (classe_id) references tb_classe(id)
);

SELECT * FROM tb_personagem;

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(99,"Guerreiro","Perícia em armas","Espada de duas mãos");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(200,"Mago","Resistência a magia","Cajado");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(100,"Ladino","Mãos leves","Adaga");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(149,"Arqueiro","Arquerismo","Arco e flecha");

INSERT INTO tb_classe(nivel, classe, habilidade, arma)
VALUES(50,"Bardo","Lábia","Alaude");

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Cleison","Anão",1500,3000,12000,1);

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Josias","Elfo Negro",1000,1200,3000,5);

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Vanuza","Centauro",5000,700,7500,2);

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Cleide","Humana",500,6000,2000,3);

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Ariel","Constructo",2000,8800,4000,4);

INSERT INTO tb_personagem(nome, raca, vida, defesa,ataque,classe_id)
VALUES("Anitta","Elfa",2500,6000,8000,3);

SELECT * FROM tb_personagem WHERE ataque > 2000;

SELECT * FROM tb_personagem WHERE defesa BETWEEN 1000 AND 2000;
-- SELECT * FROM tb_personagem WHERE defesa >= 1000 AND defesa <= 2000; (outra maneira de fazer)

SELECT * FROM tb_personagem WHERE nome LIKE "%c%";  -- para palavras que começam com a letra c "c%", para palavras que terminam "%c"

SELECT * FROM tb_personagem INNER JOIN tb_classe ON tb_classe.id = tb_personagem.id;

SELECT * FROM tb_classe
INNER JOIN tb_personagem on tb_personagem.classe_id = tb_classe.id
WHERE classe_id = 3; -- para trazer todos os personagens da mesma classe 