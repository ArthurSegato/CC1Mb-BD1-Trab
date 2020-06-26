Todos os usuários e seus respectivos endereços?
select

Usuarios.nome as Nome,
Usuarios.sobrenome as Sobrenome,
Enderecos.uf as Estado,
Enderecos.cidade as Cidade,
Enderecos.bairro as Bairro,
Enderecos.rua as Rua,
Enderecos.numero_morada as Numero

from Usuarios, Enderecos

where Usuarios.id_endereco = Enderecos.id

Quais aulas ocorreram, quando ocorreram quais foram os alunos e quais foram os tutores?

select

Usuarios.nome as Aluno_Nome,
Aulas.data_aula as Data_Aula,
Aulas.local_aula as Local_Aula,
Aulas.horario_aula as Horario_Aula

from Usuarios, Alunos, Aulas

where Usuarios.id = Alunos.id_usuario and Aulas.id_aluno_usuario = Usuarios.id

Quais as instituições onde os alunos mais tem dificuldades em certas matérias(linkar disciplina com instituição)