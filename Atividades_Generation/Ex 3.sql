select @@version;
create database db_escola;
use db_escola;

create table tb_estudantes(
id int auto_increment,
nome varchar(255),
idade int,
curso varchar(255),
nota decimal not null,
email varchar(255),
primary key (id)
);

insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('João', 18, 'Matemática', 8.5, 'joao@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Maria', 19, 'História', 6.9, 'maria@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Pedro', 20, 'Biologia', 7.2, 'pedro@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Ana', 18, 'Física', 9.1, 'ana@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Carlos', 19, 'Química', 6.5, 'carlos@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Mariana', 20, 'Letras', 8.8, 'mariana@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Lucas', 18, 'Geografia', 7.8, 'lucas@gmail.com');
insert into tb_estudantes (nome, idade, curso, nota, email) VALUES ('Isabela', 19, 'Educação Física', 6.3, 'isabela@gmail.com');

select * from tb_estudantes where nota < 7.0;
select * from tb_estudantes where nota between 6.0 and 9.0;
select * from tb_estudantes;
