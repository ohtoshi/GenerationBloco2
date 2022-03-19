/*Crie um banco de dados para um registro de uma escola, onde o sistema trabalhará com
as informações dos estudantes deste registro dessa escola. 

Crie uma tabela estudantes e utilizando a habilidade de abstração e
determine 5 atributos relevantes dos estudantes para se trabalhar com o serviço dessa escola.
Popule esta tabela com até 8 dados;

Faça um select que retorne o/as estudantes com a nota maior do que 7.
Faça um select que retorne o/as estudantes com a nota menor do que 7.
Ao término atualize um dado desta tabela através de uma query de atualização.*/

create database db_escola;
use db_escola;

create table tb_estudantes( 
	id bigint auto_increment,
    nome varchar(255),
    matricula int,
    idade int,
    serie varchar(255),
    nota float,
    
    primary key(id) -- sempre criar chave primária
);

insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Heloisa", 1231, 5, "Pré", 8.5);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Joaquim", 1265, 5, "Pré", 6.5);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Lilian", 1330, 15, "1º EM", 7.5);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Vitória", 1130, 13, "8º ano", 9);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Antonio", 1456, 7, "2º ano", 6.75);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Davi", 1897, 12, "7º ano", 8);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Jefferson", 1155, 13, "8º ano", 5.5);
insert into tb_estudantes(nome, matricula, idade, serie, nota) values ("Juliana", 1277, 17, "3º EM", 10);

select * from tb_estudantes;

select * from tb_estudantes where nota > 7;
select * from tb_estudantes where nota < 7;

update tb_estudantes set serie = "8º ano" where id = 5;
