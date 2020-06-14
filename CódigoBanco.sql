create table Usuario(
    id					integer 			not null,
    nome 				varchar2(32)		not null,
    sobrenome			varchar2(32)		not null,
    cpf 				varchar2(14) 		not null,
    rg 					integer 			not null,
    telefone 			varchar2(15),
    email 				varchar2(32),
    genero 				varchar2(10) 		not null,
    id_endereco 		integer 			not null,

    primary key(id)
    unique(cpf, email)
);

create table Endereco(
    id 					integer 		not null,
    uf 					varchar2(32) 	not null,
    cidade 				varchar2(32) 	not null,
    bairro 				varchar2(32) 	not null,
    rua 				varchar2(32) 	not null,
    numero_morada 		integer 		not null,

    primary key(id)
);

create table Professor(
    formacao_academica 	varchar2(32) 	not null,
    area_atuacao 		varchar2(32) 	not null,
    preco 				number 			not null,
    horario_disponivel 	timestamp 		not null,
    tipo_aula 			varchar2(32) 	not null,
    nota 				number 			not null,
    id_usuario 			integer 		not null,

    primary key(id_usuario)
);

create table Aluno(
    instituicao 		varchar2(32) 	not null,
    turma 				varchar2(32) 	not null,
    id_usuario 			integer 		not null,

    primary key(id_usuario)
);

create table Aula(
    id 						integer 	not null,
    local_aula 				varchar2(32),
    data_aula 				date 		not null,
    horario_aula 			timestamp 	not null,
    avaliacao 				number,
    id_disciplina 			integer		not null,
    id_professor_usuario	integer		not null,
    id_aluno_usuario 		integer		not null,

    primary key(id)
);

create table Disciplina(
    id			integer 		not null,
    nome 					varchar2(32) 	not null,
    conteudo				varchar2(64) 	not null,

    primary key(id)
);


#Inserir dados
insert into Usuario 	(id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco)
			values		(01, 'arthur', 'segato', '000.000.000-00', 501285325, '27992630101', 'arthursegato@outlook.com', 'masculino', 01) ;
