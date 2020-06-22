create table Enderecos(
    id                  integer         not null,
    uf                  varchar2(32)    not null,
    cidade              varchar2(32)    not null,
    bairro              varchar2(32)    not null,
    rua                 varchar2(32)    not null,
    numero_morada       integer         not null,

    primary key(id)
);

create table Usuarios(
    id					integer 			not null,
    nome 				varchar2(32)		not null,
    sobrenome			varchar2(32)		not null,
    cpf 				varchar2(14) 		not null,
    rg 					integer 			not null,
    telefone 			varchar2(15),
    email 				varchar2(32),
    genero 				varchar2(10) 		not null,
    id_endereco 		integer 			not null,

    primary key(id),
    unique(cpf, email),
    foreign key(id_endereco) references Enderecos(id)
);

create table Professores(
    formacao_academica 	varchar2(32) 	not null,
    area_atuacao 		varchar2(32) 	not null,
    preco 				number 			not null,
    horario_disponivel 	number 		not null,
    tipo_aula 			varchar2(32) 	not null,
    nota 				number 			not null,
    id_usuario 			integer 		not null,

    primary key(id_usuario),
    foreign key(id_usuario) references Usuarios(id)
);

create table Alunos(
    instituicao 		varchar2(32) 	not null,
    turma 				varchar2(32) 	not null,
    id_usuario 			integer 		not null,

    primary key(id_usuario),
    foreign key(id_usuario) references Usuarios(id)
);

create table Disciplinas(
    id                  integer         not null,
    nome                varchar2(32)    not null,
    conteudo            varchar2(64)    not null,

    primary key(id)
);

create table Aulas(
    id 						integer 	not null,
    local_aula 				varchar2(32),
    data_aula 				number 		not null,
    horario_aula 			number 	    not null,
    avaliacao 				number,
    id_disciplina 			integer		not null,
    id_professor_usuario	integer		not null,
    id_aluno_usuario 		integer		not null,

    primary key(id),
    foreign key(id_disciplina) references Disciplinas(id),
    foreign key(id_professor_usuario) references Professores(id_usuario),
    foreign key(id_aluno_usuario) references Alunos(id_usuario)
);