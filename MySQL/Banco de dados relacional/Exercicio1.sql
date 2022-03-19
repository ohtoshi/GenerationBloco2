/* Crie um banco de dados para um serviço de RH de uma empresa,
onde o sistema trabalhará com as informações dos funcionaries desta empresa. 

Crie uma tabela de funcionaries e utilizando a habilidade de abstração e
determine 5 atributos relevantes dos funcionaries para se trabalhar com o serviço deste RH.
Popule esta tabela com até 5 dados;

Faça um select que retorne os funcionaries com o salário maior do que 2000.
Faça um select que retorne os funcionaries com o salário menor do que 2000.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_RH; -- criação do db

use db_RH; -- precisamos chamar pra funcionar o db

create table tb_funcionaries( -- criação da tabela
	id bigint auto_increment,
    nome varchar(255),
    matricula int,
    dpto varchar(255),
    cargo varchar(255),
    salario int,
    
    primary key(id) -- sempre criar chave primária
);

insert into tb_funcionaries(nome, matricula, dpto, cargo, salario) values ("Ana", 1031, "Marketing", "Designer PL", 5500);
insert into tb_funcionaries(nome, matricula, dpto, cargo, salario) values ("Marcos", 1487, "Financeiro", "Estagiário", 1500);
insert into tb_funcionaries(nome, matricula, dpto, cargo, salario) values ("Érica", 1298, "Comercial", "Vendedora PL", 3200);
insert into tb_funcionaries(nome, matricula, dpto, cargo, salario) values ("Julia", 1823, "Tecnologia", "Programadora SR", 9500);
insert into tb_funcionaries(nome, matricula, dpto, cargo, salario) values ("Bianca", 1765, "RH", "Analista de treinamento JR", 2500);

select * from tb_funcionaries;

select * from tb_funcionaries where salario < 2000;
select * from tb_funcionaries where salario > 2000;

update tb_funcionaries set cargo = "Analista de treinamento PL", salario = 3800 where id = 5;
select salario from tb_funcionaries;