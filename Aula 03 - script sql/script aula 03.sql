show databases;

create database empresa;
use empresa;
CREATE TABLE clientes (
				id int NOT NULL AUTO_INCREMENT,
                nome varchar (40) NOT NULL,
                sexo enum ('M', 'F'),
                nascimento date,
                cidade varchar (20) DEFAULT 'Curitiba' ,
                uf char (2) DEFAULT 'PR' ,
                PRIMARY KEY (id) 
                

) DEFAULT CHARSET = utf8mb4 ;

show tables;


/* identifica de forma unica cada registro em uma tabela de um banco de dados */

/*  Na primary key ela precisa ter valor sempre unico e nao pode ser null  e só pode ter 1 chave primaria pode tabela, mas ela pode ser composta por mais de uma coluna */ 

/* cadastro diverso em querys*/
insert into clientes (id, nome, sexo, nascimento, cidade, uf) values ('1', 'Ana', 'F', '1990-07-15', 'Campo Largo', 'PR');

insert into clientes values
(default, 'Elaine', 'F', '1995-09-21', default, default),
(default, 'Fabio', 'M', '1998-09-30', 'Ponta Grossa', default),
(default, 'Gilberto', 'M', '1996-11-23', 'Santo André', 'SP');


/* cadastro personalizado*/
insert into clientes (nome, sexo, nascimento, cidade, uf) values ('Beatriz', 'F', '1990-07-15', 'Campo largo', 'PR');


create database nova_empresa;
use nova_empresa;

create table clientes(
			id int not null auto_increment,
            nome varchar (40),
            idade int,
            sexo char(1),
            peso float,
            bairro varchar(20),
            celular char(10),

			primary key (id)

) default charset = utf8mb4;

create table produtos (
		id int not null auto_increment,
        nome varchar(100),
        estoque int,
        preço float,
        funcionario varchar(50),
        observação varchar(200),
        primary key(id)
        
        
        ) default charset utf8mb4;
        
        insert into clientes values 
        (default, 'Marcelo', 52, 'M', '90.0', 'Novo mundo', '99111-1111'),
        (default, 'João Pedro', 21, 'M', '77.5', 'Agua verde', '99222-2222'),
        (default, 'Angelica', 29, 'F', '68.0', 'Rebouças', '99333-3333');
        
        
	insert into produtos values
    (default, 'Sabão em pó', 100, '9', 'Alcir Jr.', NULL),
    (default, 'Sabão em barra', 277, '4.50', 'Maria Rita Amorim', 'Algumas barras estão avariadas.'),
    (default, 'Vanish em pó 1 Kg', 70, '45', 'Alcir Jr.', NULL);
    
    alter table produtos add email varchar(90);
    
    alter table produtos drop column email;
    
    alter table clientes add email varchar(90);
    
    update clientes set email = 'marcelo02020@gmail.com' where id = 1;
    update clientes set email = 'jp22@outlook.com' where id = 2;
    
    alter table produtos add setor varchar (20);
    update produtos set setor = 'Limpeza' where id = 1;
    update produtos set setor = 'Limpeza' where id = 2;
    update produtos set setor = 'Limpeza' where id = 3;
    
    update clientes set email  = 'angel@hotmail.com' where id = 3;
    update produtos set estoque = 257 where id = 2;
    update produtos set preço = '40' where id = 3;
    
    desc produtos;
	select * from clientes;
    select * from produtos;
    
	
    
    
    
    
        








