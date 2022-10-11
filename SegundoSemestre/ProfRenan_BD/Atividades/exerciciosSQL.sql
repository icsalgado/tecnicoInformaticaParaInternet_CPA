create database empresa;
use empresa;
create table teste (codTeste int(3) not null , nome varchar(12) not null);
drop table teste;
create table clientes(codCliente int(3) primary key not null auto_increment,
nome varchar(50) not null,
endereco varchar(30) not null,
cidade varchar(20) not null,
estado char(2) not null,
sexo char(1) not null,
codClasse int(2) not null);
create table classes(codclasse int(2) primary key not null auto_increment,tipo
char(1) not null, descricao varchar(30) not null);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('João','Rua Inácio
Montanha-123','Porto Alegre','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaA','Rua ABC-123','Gravatai','RS','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoA','Rua CBA-123','Porto Alegre','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaB','RUA ABC-321','Gravatai','RS','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoB','qualquer','Porto Alegre','RS','M',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoC','br116','Canoas','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaC','Rua 2','Santa Maria','RS','F',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaD','Rua sem nome','Florianopolis','SC','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoD','Rua C','Rio de Janeiro','RJ','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoE','br101','Curitiba','PR','M',3);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('João da Silva','Rua Inácio
Montanha-123','Porto Alegre','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaA Castro','Rua ABC-123','Gravatai','RS','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoA Alves','Rua CBA-123','Porto Alegre','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaB Dornelles','RUA ABC-321','Gravatai','RS','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoB Aguiar','qualquer','Porto Alegre','RS','M',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoC Basilio','br116','Canoas','RS','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaC Clemente','Rua 2','Santa Maria','RS','F',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanaD Figueredo','Rua sem nome','Florianopolis','SC','F',2);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoD Carvalho','Rua C','Rio de Janeiro','RJ','M',1);
insert into clientes (nome,endereco,cidade,estado,sexo,codClasse) values ('FulanoE Carvalho','br101','Curitiba','PR','M',3);

desc classes;

insert into classes (tipo, descricao) values ('A','Excelente');
insert into classes (tipo, descricao) values ('B','Muito Bom');
insert into classes (tipo, descricao) values ('C','Bom');
insert into classes (tipo, descricao) values ('D','Regular');
insert into classes (tipo, descricao) values ('E','Péssimo');

select * from clientes order by codCliente;

select * from clientes order by codClasse;

delete from clientes where codCliente=2;

select * from clientes order by codCliente;

alter table clientes
add column id varchar(5),
add column renda real(7,2) not null default 0.00,
add column sit char(1),
add column idade integer(2);