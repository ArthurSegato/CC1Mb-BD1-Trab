insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (100,'es','vilavelha','praia da costa','cavalo marinho',37);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (101,'es','vitoria','ponta da fruta','luiza grinalda',1337);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (102,'sp','sao paulo','zona sul','farofa',4);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (103,'sp','santos','zona norte','suco',10);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (104,'mg','poços de caldas','azaleias','rua da pizza',52);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (105,'mg','belo horizonte','nao sei','alguma rua',69);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (106,'ro','porto velho','fim do mundo','virando a esquina',13);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (107,'ro','jaru','quase longe demais','mas a rua é longe',46);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (108,'rj','rio de janeiro','labeuf','favela',99);
insert into Enderecos (id, uf, cidade, bairro, rua, numero_morada) values (109,'rj','campos','ipanema','morro da batata',021);

insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (01, 'arthur', 'segato', '000.000.000-00', 501285325, '27992630101', 'arthursegato@outlook.com', 'masculino', 101);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (02, 'joao', 'ferreira', '111.111.111-11', 501285325, '27992630101', 'joaoferreira@outlook.com', 'masculino', 100);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (03, 'victor', 'pretti', '222.222.222-22', 501285325, '27992630101', 'victorpretti@outlook.com', 'masculino', 103);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (04, 'gustavo', 'coltz', '333.333.333-33', 501285325, '27992630101', 'gustavocoltz@outlook.com', 'masculino', 102);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (05, 'maraques', 'graci', '444.444.444-44', 501285325, '27992630101', 'maraquesgraci@outlook.com', 'feminino', 106);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (06, 'thiago', 'paulo', '555.555.555-55', 501285325, '27992630101', 'erlonbabaca@outlook.com', 'masculino', 104);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (07, 'paulo', 'soares', '666.666.666-66', 501285325, '27992630101', 'pauloblack@outlook.com', 'masculino', 105);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (08, 'andré', 'kaleque', '777.777.777-77', 501285325, '27992630101', 'andregay@outlook.com', 'masculino', 107);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (09, 'rosangela', 'souza', '888.888.888-88', 501285325, '27992630101', 'r0souza@outlook.com', 'feminino', 108);
insert into Usuarios (id, nome, sobrenome, cpf, rg, telefone, email, genero, id_endereco) values (10, 'sophia', 'kezia', '999.999.999-99', 501285325, '27992630101', 'aaaaaaa@outlook.com', 'feminino', 109);

insert into Professores (formacao_academica, area_atuacao, preco, horario_disponivel, tipo_aula, nota, id_usuario) values ('fisico', 'fisica', 200, 7, 'online', 7.1, 01);
insert into Professores (formacao_academica, area_atuacao, preco, horario_disponivel, tipo_aula, nota, id_usuario) values ('matemática', 'calculo', 150, 6, 'presencial', 6.3, 02);
insert into Professores (formacao_academica, area_atuacao, preco, horario_disponivel, tipo_aula, nota, id_usuario) values ('letras', 'filosofia', 35, 3, 'online', 2, 03);

insert into Alunos (instituicao, turma, id_usuario) values ('uvv','fisica',04);
insert into Alunos (instituicao, turma, id_usuario) values ('uvv','fisica',05);
insert into Alunos (instituicao, turma, id_usuario) values ('uvv','fisica',06);
insert into Alunos (instituicao, turma, id_usuario) values ('ufes','calculo',07);
insert into Alunos (instituicao, turma, id_usuario) values ('ufes','calculo',08);
insert into Alunos (instituicao, turma, id_usuario) values ('ufmg','calculo',09);
insert into Alunos (instituicao, turma, id_usuario) values ('uvv','filosofia',10);

insert into Disciplinas (id, nome, conteudo) values (010,'fisica 1','fisica 1 para novatos');
insert into Disciplinas (id, nome, conteudo) values (020,'calculo 1','calculo 1 para novatos');
insert into Disciplinas (id, nome, conteudo) values (030,'filosofia 1','filosofia 1 para novatos');

insert into Aulas (id, local_aula, data_aula, horario_aula,avaliacao,id_disciplina,id_professor_usuario,id_aluno_usuario) values (1221,'casa', 2019, 20, 10, 010, 02, 04);
insert into Aulas (id, local_aula, data_aula, horario_aula,avaliacao,id_disciplina,id_professor_usuario,id_aluno_usuario) values (1222,'discord', 2020, 12, 5, 020, 02, 04);
insert into Aulas (id, local_aula, data_aula, horario_aula,avaliacao,id_disciplina,id_professor_usuario,id_aluno_usuario) values (1223,'discord', 2020, 10, 7, 020, 01, 05);