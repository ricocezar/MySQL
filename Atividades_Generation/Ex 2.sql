select @@version;

create database db_e_commerce;

use db_e_commerce;

create table tb_e_commerce(
id int auto_increment,
nome varchar(255),
tipo varchar(255),
quantidade int,
preco decimal not null,
PRIMARY KEY (id)
);

insert into tb_e_commerce(nome, tipo, quantidade, preco) 
values 
	('Air Fryer', 'Eletro Domestico', '100', 450.00),
    ('Celular', 'Eletronicos', '5000', 1500.00),
    ('Toalha', 'Cama,Mesa e Banho', '80', 50.00),
    ('Computador', 'Eletronico', '1000', 5000.00),
    ('Tablet', 'Eletronico', '30', 1000.00),
    ('Geladeira', 'Eletro Domestico', '10', 2000.00),
    ('Travesseiro', 'Cama, Mesa e Banho', '30', 80.00),
    ('Edredom', 'Cama, Mesa e Banho', '80', 450.00);
    
select * from tb_e_commerce;

select * FROM tb_e_commerce WHERE preco > 500;
select * FROM tb_e_commerce WHERE salario < 500;

update tb_e_commerce set quantidade = 1000 where id = 8;