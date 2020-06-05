create table Usuario(
    id_usuario 			integer 			not null,
    nome 				varchar2(32)		not null,
    sobrenome			varchar2(32)		not null,
    cpf 				varchar2(14) 		not null,
    rg 					integer 			not null,
    telefone 			varchar2(15),
    email 				varchar2(32),
    genero 				varchar2(10) 		not null,
    id_endereco 		integer 			not null
);

create table Endereco(
    id_endereco 		integer 		not null,
    uf 					varchar2(32) 	not null,
    cidade 				varchar2(32) 	not null,
    bairro 				varchar2(32) 	not null,
    rua 				varchar2(32) 	not null,
    numero_morada 		integer 		not null
);

create table Professor(
    formacao_academica 	varchar2(32) 	not null,
    area_atuacao 		varchar2(32) 	not null,
    preco 				number 			not null,
    horario_disponivel 	timestamp 		not null,
    tipo_aula 			varchar2(32) 	not null,
    nota 				number 			not null,
    id_usuario 			integer 		not null
);

create table Aluno(
    instituicao 		varchar2(32) 	not null,
    turma 				varchar2(32) 	not null,
    id_usuario 			integer 		not null,
);

create table Aula(
    id_aula 				integer 	not null,
    local_aula 				varchar2(32),
    data_aula 				date 		not null,
    horario_aula 			timestamp 	not null,
    avaliacao 				number,
    id_disciplina 			integer		not null,
    id_professor_usuario	integer		not null,
    id_aluno_uduario 		integer		not null
);

create table Disciplina(
    id_disciplina 			integer 		not null,
    nome 					varchar2(32) 	not null,
    conteudo				varchar2(64) 	not null
);

#Usuario
alter table Usuario add constraint  pk_usuario  primary key(id_usuario);
alter table Usuario add constraint  fk_usuario_endereco foreign key(id_usuario) references Endereco(id_endereco);

#Endereco
alter table Endereco add constraint  pk_endereco  primary key(id_endereco);

#Professor
alter table Professor add constraint  pk_professor  primary key(id_usuario);
alter table Professor add constraint  fk_professor_usuario foreign key(id_usuario) references Usuario(id_usuario);

#Aluno
alter table Aluno add constraint  pk_aluno  primary key(id_usuario);
alter table Aluno add constraint  fk_aluno_usuario foreign key(id_usuario) references Usuario(id_usuario);

#Aula
alter table Aula add constraint  pk_aula  primary key(id_aula);
alter table Aula add constraint  fk_aula_disciplina foreign key(id_usuario) references Disciplina(id_disciplina);
alter table Aula add constraint  fk_aula_disciplina foreign key(id_usuario) references Professor(id_professor_usuario);
alter table Aula add constraint  fk_aula_disciplina foreign key(id_usuario) references Aluno(id_aluno_usuario);

#Disciplina
alter table Disciplina add constraint  pk_disciplina  primary key(id_disciplina);