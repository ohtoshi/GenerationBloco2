/*Crie um banco de dados para um e commerce, onde o sistema trabalhará com as informações
dos produtos deste ecommerce. 

Crie uma tabela produtos e utilizando a habilidade de abstração e
determine 5 atributos relevantes dos produtos para se trabalhar com o serviço deste ecommerce.
Popule esta tabela com até 8 dados;

Faça um select que retorne os produtos com o valor maior do que 500.
Faça um select que retorne os produtos com o valor menor do que 500.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_ecommerce; -- criação do db

use db_ecommerce; -- precisamos chamar pra funcionar o db

create table tb_produtos( -- criação da tabela
	id bigint auto_increment,
    nome varchar(255),
    codigo int,
    cor varchar(255),
    quantidade_estoque int,
    valor_unid int,
    
    primary key(id) -- sempre criar chave primária
);

insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("cadeira", 698, "azul", 35, 99);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("mesa escritório com duas gavetas", 315, "verde", 14, 1580);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("luminaria de chão", 554, "preto", 5, 299);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("tapete 50x90cm", 963, "branco", 23, 510);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("sofá 3 lugares", 878, "cinza", 4, 2599);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("sofá 2 lugares", 879, "cinza", 4, 1989);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("ventilador de chão", 158, "branco", 89, 199);
insert into tb_produtos(nome, codigo, cor, quantidade_estoque, valor_unid) values ("poltrona", 446, "amarelo", 15, 599);

select * from tb_produtos;

select * from tb_produtos where valor_unid > 500;
select * from tb_produtos where valor_unid < 500;

update tb_produtos set valor_unid = 500 where id = 4;