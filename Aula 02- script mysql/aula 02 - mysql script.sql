show databases;
use sys;
create database if not exists empresa;
use empresa;
create table cliente (nome varchar(30), 
	idade int,
	sexo char(1),
	peso float,
	bairro varchar(20),
	celular char(9)
);

create table produtos (
	nome varchar(30),
	unidades_estoque int,
	preco float(6,2)
);

show tables;
describe cliente;
describe cliente;
desc cliente;

create table funcionarios (nome varchar(30), 
	idade int,
	sexo char(1),
	endereco varchar(100),
	celular char(9)
);

Insert into funcionarios values ('Leandro',36, 'M','Luiz Carlos, 342, Cachoeira, Araucária', '987198123');
insert into funcionarios (nome, idade, sexo, endereco, celular) values ('Carolina',38,'F','Luiz Carlos, 342, Cachoeira, Araucária', NULL), 
 ('Beatriz', 25,'F','Rua Brigadeiro Franco, n.5522, Bairro Mercês, Cidade de Curitiba', '987651234'),
 ('Roberto', 25,'M','Rua Marechal Floriano Peixoto, n.822, Bairro Centro, Cidade de Curitiba', '987651234'),
 ('Luis', 25,'M','Rua Augusto Stresser, n.302, Bairro Mercês, Cidade de Curitiba', '987651234'),
 ('Larissa', 25,'F','Rua Candido Hartmann, n.3700, Bairro Mercês, Cidade de Curitiba', '987651234');
 
 Insert into cliente values ('Romário',39, 'M', '70.0', 'Mercês', '999999999'), 
 ('Ronaldo', 39, 'M', '90.0', 'Hauer', '987567456' ),
 ('Marta', 40, 'F', '60.2', 'Cabral', '966569741');
 
 Insert into produtos values ('Monitores',200, '62.30'),
 ('Teclados',600, '98.30'),
 ('Mouses',8000, '20.21');

select * from funcionarios;
select * from cliente;
select * from produtos;
 
 
 /* Quando voce quiser inserir valores depois de ja ter adicionado os anteriores, basta comentar o que ja foi inserido, inserir os novos e depois descomentar*/
 
 
 /* produtos 
 nome varchar(30),
	unidades_estoque int,
	preco float(6,2)*/