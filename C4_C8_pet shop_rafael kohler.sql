create database PetShop;
GO
USE PetShop
GO
create table fornecedor
	(id_fornecedor int identity(1,1),
	razao_social varchar(50),
	nome_fantasia varchar(50),
	cnpj varchar(15),
	telefone varchar(12),
	primary key (id_fornecedor));
GO
create table veterinario
	(id_vet int identity(1,1),
	nome_vet varchar(50),
	especialidade varchar(50),
	crmv varchar(10),
	telefone varchar(12),
	email varchar(50),
	primary key (id_vet));
GO
create table cliente
	(id_cliente int identity(1,1),
	nome_cliente varchar(50),
	sexo varchar(10),
	telefone varchar(12),
	email varchar(50),
	primary key (id_cliente));
GO
create table produto
	(id_produto int identity(1,1),
	id_fornecedor int,
	nome_produto varchar(50),
	marca_produto varchar(50),
	tipo varchar(50),
	valor_compra numeric(8,2),
	valor_venda numeric(8,2),
	primary key (id_produto),
	foreign key (id_fornecedor) references fornecedor);
GO
create table compra
	(id_compra int identity(1,1),
	id_veterinario int,
	id_cliente int,
	produto varchar(50),
	valor_total numeric(8,2),
	data varchar(50),
	primary key(id_compra),
	foreign key (id_veterinario) references veterinario,
	foreign key (id_cliente) references cliente);
GO
create table compratemproduto
	(id_compratemproduto int identity(1,1),
	id_compra int,
	id_produto int,
	foreign key (id_compra) references compra,
	foreign key (id_produto) references produto);


select * from fornecedor;

alter table fornecedor
	alter column cnpj varchar(15) not null;

alter table fornecedor
	add constraint cnpj unique (cnpj);

alter table fornecedor
	add constraint razao_social unique (razao_social);

alter table fornecedor
	add constraint id_fornecedor unique (id_fornecedor);

insert into fornecedor (razao_social, nome_fantasia, cnpj, telefone) values ('Hills Pet Nutrition Incorporated', 'Hills Pet Nutrition', 13076886/0001-07., 413985-7898);
insert into fornecedor (razao_social, nome_fantasia, cnpj, telefone) values ('Total Alimentos S/A', 'Equilíbrio', 18631739/0001-67, 413056-8795);
insert into fornecedor (razao_social, nome_fantasia, cnpj, telefone) values ('Royal Canin Do Brasil Industria E Comercio Ltda', 'Royal Canin', 62527619/0001-06, 193583-2194);
insert into fornecedor (razao_social, nome_fantasia, cnpj, telefone) values ('Premier Comercio LTDA - EPP', 'Premier', 20133342/0001-97, 114404-5438);

update fornecedor set razao_social='Premier Comercio LTDA EPP' where id_fornecedor='4'


select * from veterinario;

alter table veterinario
	add constraint nome_vet unique (nome_vet);

alter table veterinario
	add constraint especialidade unique (especialidade);

alter table veterinario
	add constraint crmv unique (crmv);

insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('André Richter', 'Clínico Geral', 2275, 987896558, 'andre@gmail.com');
insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('Ana Beatriz Soder da Silva', 'Cirurgiã', 8653, 991831818, 'ana_b@hotmail.com');
insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('Ana Elisa Arruda Rocha', 'Dermatologista', 5102, 99844180, 'a.elisa@gmail.com');
insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('Valeska Regina Reque Ruiz', 'Odontologia', 8792, 999810798, 'valeska@uol.com.br');
insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('Maira Helena Falkoski', 'Radiologista', 2457, 999745739, 'ma_helena@gmail.com');
insert into veterinario (nome_vet, especialidade, crmv, telefone, email) values ('Giovana Domingues Fernandes Rumiatto', 'Plantonista', 2298, 991144636, 'giovana_vet@gmail.com');


select * from cliente;

insert into cliente (nome_cliente, sexo, telefone, email) values ('Jorge da Silva', 'Masculino', 965984555, 'jorge@gmail.com');
insert into cliente (nome_cliente, sexo, telefone, email) values ('Marina Barbosa', 'Feminino', 999972122, 'marina_b@gmail.com');
insert into cliente (nome_cliente, sexo, telefone, email) values ('Davi Andrade', 'Masculino', 988645881, 'davi@gmail.com');
insert into cliente (nome_cliente, sexo, telefone, email) values ('Ana Arcanjo', 'Feminino', 987696498, 'ana.arc@gmail.com');
insert into cliente (nome_cliente, sexo, telefone, email) values ('Osvaldo Arlindo', 'Masculino', 30458998, 'osvaldo_lindo@gmail.com');


select * from produto;

alter table produto
	add constraint FK_fornecedor foreign key (id_fornecedor) references fornecedor;

insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (4,'Frango & Arroz 2kg', 'Premier', 'Ração', 25.60, 49.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (4,'Golden Special Frango e Carne 15kg', 'Premier', 'Ração', 65.50, 110.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (4,'Premier Pet Fórmula Cães Adultos 2.5kg', 'Premier', 'Ração', 29.00, 61.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (3,'Royal Canin Maxi 8+ Cães Adultos - 15kg', 'Royal Canin', 'Ração', 89.40, 219.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (3,'Royal Canin Golden Retriever para Cães Filhotes', 'Royal Canin', 'Ração', 93.60, 224.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (3,'Royal Canin Veterinary Hypoallergenic Small', 'Royal Canin', 'Ração', 47.40, 94.99);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (1,'Hills Prescription Diet C/D Multicare', 'Hills', 'Ração', 101.90, 182.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (1,'Hills Science Diet Crescimento Saudável', 'Hills', 'Ração', 115.90, 207.90);
insert into produto (id_fornecedor, nome_produto, marca_produto, tipo, valor_compra, valor_venda) values (1,'Hills Prescription Diet K/D Cuidado Renal', 'Hills', 'Ração', 46.50, 89.90);

update produto set nome_produto = 'Golden Frango & Arroz' where id_produto = '1'
update produto set nome_produto = 'Golden Special Frango e Carne' where id_produto = '2'
update produto set nome_produto = 'Premier Pet Fórmula Cães Adultos' where id_produto = '3'
update produto set nome_produto = 'Royal Canin Maxi 8+ Cães Adultos' where id_produto = '4'


select * from compra;
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (4, 5, 'Frango & Arroz 2kg', 95.00, '27/02/2017');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (2, 1, 'Royal Canin Veterinary Hypoallergenic Small', 180.00, '12/04/2017');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (6, 5, 'Premier Pet Fórmula Cães Adultos 2.5kg', 61.90, '03/06/2017');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (1, 4, 'Golden Special Frango e Carne 15kg', 110.90, '06/11/2016');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (5, 3, 'Hills Prescription Diet K/D Cuidado Renal', 89.90, '22/02/2016');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (2, 1, 'Royal Canin Golden Retriever para Cães Filhotes', 95.00, '16/12/2016');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (3, 2, 'Frango & Arroz 2kg', 49.90, '09/03/2017');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (3, 3, 'Hills Prescription Diet C/D Multicare', 365.80, '30/05/2017');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (3, 2, 'Premier Pet Fórmula Cães Adultos 2.5kg', 247.60, '26/09/2016');
insert into compra (id_veterinario, id_cliente, produto ,valor_total, data) values (1, 2, 'Hills Prescription Diet K/D Cuidado Renal', 539.40, '16/05/2017');


select * from compratemproduto;
insert into compratemproduto (id_compra, id_produto) values (4, 2);
insert into compratemproduto (id_compra, id_produto) values (10, 9);
insert into compratemproduto (id_compra, id_produto) values (7, 1);
insert into compratemproduto (id_compra, id_produto) values (2, 6);
insert into compratemproduto (id_compra, id_produto) values (3, 3);
insert into compratemproduto (id_compra, id_produto) values (1, 1);
insert into compratemproduto (id_compra, id_produto) values (6, 5);
insert into compratemproduto (id_compra, id_produto) values (8, 7);
insert into compratemproduto (id_compra, id_produto) values (5, 9);

delete from compratemproduto where id_compratemproduto = 9;


SELECT produto, valor_total FROM compra WHERE valor_total >= 100.00


SELECT nome_produto, valor_compra FROM produto WHERE valor_compra < 60.00


SELECT nome_cliente, sexo FROM cliente WHERE sexo = 'Feminino'


SELECT compra.*, fornecedor.* FROM compra INNER JOIN fornecedor
	ON compra.id_compra != fornecedor.id_fornecedor


SELECT compra.*, cliente.* FROM compra INNER JOIN cliente
	ON compra.id_compra = cliente.id_cliente


SELECT produto.*, compra.* FROM compra LEFT JOIN produto
	ON produto.valor_compra < 50.00


SELECT * FROM compra WHERE valor_total BETWEEN '0' AND '200';


SELECT * FROM compra WHERE (valor_total BETWEEN 200 AND 600)
AND NOT id_veterinario IN (2);


SELECT * FROM veterinario ORDER BY nome_vet;



CREATE VIEW compraProduto AS 
SELECT c.produto, c.valor_total, p.nome_produto 
FROM compra AS c JOIN 
produto AS p 
ON c.id_compra = p.id_produto;

SELECT produto ,valor_total, data
FROM compra
ORDER BY valor_total;

SELECT produto ,valor_total, data
FROM compra
ORDER BY produto;


SELECT * FROM veterinario WHERE nome_vet LIKE 'Ana %'