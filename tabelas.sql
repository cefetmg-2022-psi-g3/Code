CREATE TABLE cardapio(
	prato_proteico varchar(50) not null,
	vegetariano varchar (50) not null,
	vegano varchar (50) not null,
	guarnicao varchar (50) not null,
	arroz varchar (50) not null,
	feijao varchar (50) not null,
	salada1 varchar (50) not null,
	salada2 varchar (50) not null,
	salada3 varchar (50) not null,
	salada4 varchar (50) not null,
	sobremesa varchar (50) not null,
	dia_cardapio date not null primary key
);

create table usuario(
	nome_usuario varchar(30) not null,
	email_usuario varchar(30) not null,
	senha_usuario varchar(30) not null,
	saldo_usuario real not null default 0,
	id_usuario serial not null primary key
);

create table avaliacao(
	nota_prato_proteico int,
	nota_vegetariano int,
	nota_vegano int,
	nota_arroz int,
	nota_feijao int,
	nota_guarnicao int,
	nota_salada int,
	nota_sobremesa int,
	comentario varchar (300),
	dia_cardapio date not null, 					--referencia o dia_cardapio na tabela cardapio
	id_usuario int not null, 					--referencia o id_usuario na tabela usuario
	id_avaliacao serial not null primary key
);

create table forum(
	mensagem varchar (300),
	id_usuario int not null, 					--referencia o id_usuario na tabela usuario
	id_forum serial not null primary key
);

create table historico(
	saldo real,
	dia_historico date,
	id_usuario int not null, 					--referencia o id_usuario na tabela usuario
	id_historico serial not null primary key
);
