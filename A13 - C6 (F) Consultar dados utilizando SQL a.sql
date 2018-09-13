create database pessoas;
go
use pessoas;
go
create table Pessoas (
	id int identity(1,1) primary key,
	nome varchar(50));
go
create table Profissoes (
	id int identity(1,1) primary key,
	profissao varchar(50));
go
insert into Pessoas (nome) values ('Jose');
insert into Pessoas (nome) values ('Maria');
insert into Pessoas (nome) values ('Renata');
insert into Pessoas (nome) values ('Roberto');
go
insert into Profissoes (profissao) values ('Estivador');
insert into Profissoes (profissao) values ('Gerente');
insert into Profissoes (profissao) values ('Porteiro');
insert into Profissoes (profissao) values ('Engenheiro');


-- SELECT INNER JOIN
-- instru��o usada para comparar duas tabelas
-- inner join � inclusivo e s� funciona quando os atributos s�o correspondentes

SELECT Pessoas.*, Profissoes.* FROM Pessoas INNER JOIN Profissoes 
	ON Pessoas.id = Profissoes.id
-- ON instru��o de jun��o com mesmos atributos correspondentes


-- SELECT LEFT JOIN
-- instru��o usada para mostrar os registros que a TABELA 2 tem em comum com a TABELA 1

SELECT Pessoas.*, Profissoes.* FROM Pessoas LEFT JOIN Profissoes 
	ON Pessoas.id = Profissoes.id

-- SELECT OUTER JOIN

SELECT Pessoas.*, Profissoes.* FROM Pessoas FULL OUTER JOIN Profissoes 
	ON Pessoas.id = Profissoes.id

-- SELECT CROSS

SELECT Pessoas.*, Profissoes.* FROM Pessoas CROSS JOIN Profissoes 

SELECT * FROM Pessoas;

SELECT * FROM Profissoes;