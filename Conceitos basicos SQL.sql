SHOW DATABASES;

CREATE DATABASE RegistroPublicacoes;

USE RegistroPublicacoes;

SHOW TABLES;

DROP DATABASE RegistroPublicacoes;

CREATE DATABASE firstExample;

USE firstExample;

CREATE TABLE periodicos(
	id INTEGER AUTO_INCREMENT PRIMARY KEY,
    nome_periodico VARCHAR(20),
    issn INT,
    id_editora INT
);

select * from periodicos; 

create table editora(
	id integer auto_increment,
    nome_editora varchar(120) unique,
    pais varchar(5),
    primary key(id)
);

show tables;

alter table periodicos 
	add constraint fk_editora_periodico 
		foreign key(id_editora) 
			references editora(id);
            
insert into editora(nome_editora, pais) 
	values 
		('IEEE', 'EUA'),
        ("DataScienceMagazine", "EUA");
        
select * from periodicos;

select * from editora;



