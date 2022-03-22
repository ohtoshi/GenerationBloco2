/*Atividade 3

Crie um banco de dados para um serviço de farmácia de uma empresa, o nome do banco deverá ter o seguinte nome db_farmacia_do_bem,
onde o sistema trabalhará com as informações dos produtos desta empresa. 
O sistema trabalhará com 2 tabelas tb_produto e tb_categoria.

Siga exatamente esse passo a passo:
Crie uma tabela de categorias utilizando a habilidade de abstração e determine 3 atributos relevantes do tb_categoria para se trabalhar com o serviço desta farmacia.
Crie uma tabela de tb_produto e utilizando a habilidade de abstração e determine 5 atributos relevantes dos tb_produto para se trabalhar com o serviço deste farmacia
(não esqueça de criar a foreign key de tb_categoria nesta tabela).

Popule esta tabela Categoria com até 5 dados.
Popule esta tabela Produto com até 8 dados.

Faça um select que retorne os Produtos com o valor maior do que 50 reais.
Faça um select trazendo  os Produtos com valor entre 3 e 60 reais.
Faça um select  utilizando LIKE buscando os Produtos com a letra B.
Faça um um select com Inner join entre  tabela categoria e produto.
Faça um select onde traga todos os Produtos de uma categoria específica (exemplo todos os produtos que são cosméticos).*/

CREATE DATABASE db_farmacia_do_bem;

USE db_farmacia_do_bem;

CREATE TABLE tb_categoria(
	id bigint auto_increment,
    categoria varchar(255), -- cosmético, higiene, medicamento
    generico boolean,
    apresentacao varchar(255), -- em cápsula, comprimido, pó, mastigável, líquido, sólido, em barra, etc. 
    
    primary key(id)
);

SELECT * FROM tb_categoria;

CREATE TABLE tb_produto(
	id bigint auto_increment,
    nome varchar(255),
    quantidade varchar(255), -- ml, gr, kg
	marca varchar(255), -- fabricante
    valor float,
    em_estoque boolean,
    categoria_id bigint, -- relacionamento

	primary key(id),
    foreign key (categoria_id) references tb_categoria(id)
);

INSERT INTO tb_categoria(categoria, generico, apresentacao)
VALUES("Cosmético", false, "Creme");

INSERT INTO tb_categoria(categoria, generico, apresentacao)
VALUES("Medicamento", true, "Comprimido");

INSERT INTO tb_categoria(categoria, generico, apresentacao)
VALUES("Medicamento", false, "Gotas");

INSERT INTO tb_categoria(categoria, generico, apresentacao)
VALUES("Higiene", false, "Barra");

INSERT INTO tb_categoria(categoria, generico, apresentacao)
VALUES("Cosmético", false, "Líquido");

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Shampoo","400 ml","Dove", 19.90,true,5);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Novalgina","1 gr","Sanofi", 23.95,true,2);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Dramin","30 ml","Takeda", 17.05,false,3);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Creme dental","90 gr","Colgate", 3.07,false,1);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Sabonete","85 gr","Nivea",2.29,true,4);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Protetor solar","50 gr","La Roche", 89.90,true,1);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Pasalix","500 ,g","Marjan Farma", 49.49,true,2);

INSERT INTO tb_produto(nome, quantidade, marca, valor, em_estoque, categoria_id)
VALUES("Sérum Fortalecedor Área dos Olhos","15 ml","Vichy", 147.01,true,5);

SELECT * FROM tb_produto WHERE valor > 50; -- exibir produtos com valor maior do que 50 reais

SELECT * FROM tb_produto WHERE valor BETWEEN 3 AND 60; -- exibir produtos com valores entre 3 e 60 reais

SELECT * FROM tb_produto WHERE nome LIKE "%b%"; -- exibir produtos com a letra "b"

SELECT * FROM tb_produto INNER JOIN tb_categoria ON tb_categoria.id = tb_produto.id; -- tabela produtos com as informações da tabela categoria

SELECT * FROM tb_categoria
INNER JOIN tb_produto on tb_produto.categoria_id = tb_categoria.id
WHERE categoria_id = 1; -- exibir os itens que são cosméticos