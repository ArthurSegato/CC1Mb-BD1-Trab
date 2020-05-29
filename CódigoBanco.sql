create table Usuario(
    id_usuario integer not null,
    nome varchar2(32) not null,
    sobrenome varchar(32) not null,
    cpf integer not null,
    rg integer not null,
    telefone varchar2(15),
    email varchar2(32),
    genero varchar2(10)
);

create table Endereco(
    id_endereco integer not null,
    uf varchar2(32) not null,
    cidade varchar2(32) not null,
    bairro varchar2(32) not null,
    rua varchar2(32) not null,
    numero_morada integer not null
);

create table Professor(
    formacao_academica varchar2(32) not null,
    area_atuacao varchar2(32) not null,
    preco double not null,
    horario_disponivel timestamp not null,
    tipo_aula varchar2(32) not null,
    nota float not null
);

create table Aluno(
    instituicao varchar2(32) not null,
    turma varchar2(32) not null
);

create table Aula(
    id_aula integer not null,
    local_aula varchar2(32),
    data_aula date not null,
    horario_aula timestamp not null,
    avaliacao float
);

create table Disciplina(
    id_disciplina integer not null,
    nome varchar2(32),
    conteudo varchar2(64)
);