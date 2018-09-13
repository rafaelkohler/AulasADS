-- criando a estrutura

create database departamento;

use departamento;

create table departamentos (
	id_departamento int  identity(1,1) primary key,
    nome_departamento varchar(50));
    
create table funcionarios (
	id_funcionario int identity(1,1) primary key,
    id_departamento int,
    nome_funcionario varchar(50),
    foreign key (id_departamento) references departamentos(id_departamento));




create table treino (
	id_treino int identity(1,1) primary key,
	nome_treino varchar(50));

insert into treino (nome_treino) values ('Aeróbico');

insert into treino (nome_treino) values ('Funcional');

insert into treino (nome_treino) values ('Musculação');

SELECT * FROM treino;


create table aluno (
	id_aluno int identity(1,1) primary key,
	id_treino int,
	nome_aluno varchar(50),
	turno varchar(10),
	foreign key (id_treino) references treino(id_treino));


insert into aluno (id_treino, nome_aluno, turno) values (1, 'Pedro', 'Manhã');

insert into aluno (id_treino, nome_aluno, turno) values (1, 'Davi', 'Noite');


SELECT * FROM aluno;

SELECT treino.*, aluno.* FROM aluno INNER JOIN treino 
	ON treino.id_treino = aluno.id_aluno;




SELECT treino.*, aluno.* FROM treino LEFT JOIN aluno 
	ON treino.id_treino = aluno.id_treino;

SELECT aluno.*, treino.* FROM aluno LEFT JOIN treino 
	ON treino.id_treino = aluno.id_treino;

SELECT aluno.*, treino.* FROM aluno LEFT JOIN treino 
	ON aluno.id_aluno = aluno.id_treino;




SELECT treino.*, aluno.* FROM treino FULL OUTER JOIN aluno 
	ON treino.id_treino = aluno.id_treino;

SELECT aluno.*, treino.* FROM aluno FULL OUTER JOIN treino 
	ON treino.id_treino = aluno.id_treino;



SELECT aluno.*, treino.* FROM aluno CROSS JOIN treino 

SELECT treino.*, aluno.* FROM treino CROSS JOIN aluno 






-- inserindo os dados    
    
insert into departamentos (nome_departamento) values ('TI');
    
insert into departamentos (nome_departamento) values ('RH');
    
insert into departamentos (nome_departamento) values ('Financeiro');
    
insert into departamentos (nome_departamento) values ('Patrimonio'); 
    
insert into funcionarios (id_departamento, nome_funcionario) values (1, 'Carlos');
    
insert into funcionarios (id_departamento, nome_funcionario) values (1, 'Marcio');
    
insert into funcionarios (id_departamento, nome_funcionario) values (2, 'Marina');
    
insert into funcionarios (id_departamento, nome_funcionario) values (3, 'Bruno');

insert into funcionarios (id_departamento, nome_funcionario) values (2, 'Joaquim');

insert into funcionarios (id_departamento, nome_funcionario) values (3, 'Marcia');

insert into funcionarios (id_departamento, nome_funcionario) values (1, 'Davi');
    
-- selecionando os dados

select * from departamentos;

select * from funcionarios;

SELECT departamentos.*, funcionarios.* FROM departamentos INNER JOIN funcionarios 
	ON departamentos.id_departamento = funcionarios.id_departamento;

SELECT departamentos.*, funcionarios.* FROM departamentos INNER JOIN funcionarios 
	ON departamentos.id_departamento = funcionarios.id_funcionario;

SELECT departamentos.*, funcionarios.* FROM departamentos LEFT JOIN funcionarios 
	ON departamentos.id_departamento = funcionarios.id_departamento;


SELECT departamentos.*, funcionarios.* FROM departamentos CROSS JOIN funcionarios 

SELECT funcionarios.*, departamentos.* FROM funcionarios CROSS JOIN departamentos