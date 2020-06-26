#	Quais são os usuários e seus respectivos endereços?
select
Usuarios.nome as Nome,
Usuarios.sobrenome as Sobrenome,
Usuarios.cpf as Cpf,
Usuarios.rg as Rg,
Usuarios.telefone as Telefone,
Usuarios.email as Email,
Usuarios.genero as Genero,
Enderecos.uf as Estado,
Enderecos.cidade as Cidade,
Enderecos.bairro as Bairro,
Enderecos.rua as Rua,
Enderecos.numero_morada as Numero
from Usuarios, Enderecos
where Usuarios.id_endereco = Enderecos.id


#	Quais aulas ocorreram, quando ocorreram, onde ocorreram, e quais foram os alunos?
select
Aulas.id as Nº,
Aulas.data_aula as Data,
Aulas.horario_aula as Horario,
Aulas.local_aula as Local,
Usuarios.nome as Aluno_Nome,
Usuarios.sobrenome as Aluno_Sobrenome
from Usuarios, Aulas
where Usuarios.id = Aulas.id_aluno_usuario


#	Quais são as matérias que os alunos de uma determinada instituição de dificuldades
select
Disciplinas.nome as Disciplina,
Alunos.instituicao as instituição
from Disciplinas, Alunos, Aulas
where Aulas.id_disciplina = Disciplinas.id and Alunos.instituicao = 'uvv' and Alunos.id_usuario = Aulas.id_aluno_usuario


# Informações completas de todos os professores.
select
Usuarios.nome as Nome_Professor,
Usuarios.sobrenome as Sobrenome_Professor,
Usuarios.cpf as Cpf,
Usuarios.rg as Rg,
Usuarios.telefone as Telefone,
Usuarios.email as Email,
Usuarios.genero as Genero,
Professores.formacao_academica as Formação,
Professores.area_atuacao as Área_Atuação,
Professores.preco as Preço_das_Aulas,
Professores.horario_disponivel as Horário_Disponivel,
Professores.tipo_aula as Tipo_da_Aula,
Professores.nota as Nota,
Enderecos.uf as Estado,
Enderecos.cidade as Cidade,
Enderecos.bairro as Bairro,
Enderecos.rua as Rua,
Enderecos.numero_morada as Numero_Aula
from Usuarios, Enderecos, Professores
where Usuarios.id_endereco = Enderecos.id
and Professores.id_usuario = Usuarios.id

# Informações completas aspenas dos professores que deram aulas, e as matérias das aulas
select
Usuarios.nome as Nome_Professor,
Usuarios.sobrenome as Sobrenome_Professor,
Usuarios.cpf as Cpf,
Usuarios.rg as Rg,
Usuarios.telefone as Telefone,
Usuarios.email as Email,
Usuarios.genero as Genero,
Professores.formacao_academica as Formação,
Professores.area_atuacao as Área_Atuação,
Professores.preco as Preço_das_Aulas,
Professores.horario_disponivel as Horário_Disponivel,
Professores.tipo_aula as Tipo_da_Aula,
Professores.nota as Nota,
Enderecos.uf as Estado,
Enderecos.cidade as Cidade,
Enderecos.bairro as Bairro,
Enderecos.rua as Rua,
Enderecos.numero_morada as Numero_Aula,
Aulas.data_aula as Data_Aula,
Aulas.horario_aula as Horario_Aula,
Aulas.local_aula as Local_Aula,
Disciplinas.nome as Disciplina,
Disciplinas.conteudo as Conteudo_Disciplina
from Usuarios, Enderecos, Professores, Aulas, Disciplinas
where Usuarios.id_endereco = Enderecos.id
and Professores.id_usuario = Usuarios.id
and Aulas.id_professor_usuario = Professores.id_usuario
and Disciplinas.id = Aulas.id_disciplina