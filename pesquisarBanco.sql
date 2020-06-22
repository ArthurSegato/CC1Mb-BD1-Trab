#GERAÇÃO DE RELATÓRIO DA TABELA
select * from Usuarios;

#Todas as possiveis combinações
#Seleciona as colunas
select 
# 'as' é um apelido
Cliente.nome as Nome_Cliente,
Cliente.cpf as CPF_Cliente,
Vendedor.nome as Nome_Vendedor,
Vendedor.matricula as Matricula_Vendedor,
Venda.data_venda as Data_Venda,
Venda.id as Id_Venda
#Seleciona as tabelas
from cliente, vendedor, venda
#Filtra os resultados
#Seleciona as vendas que realmente aconteceram
#nesse caso a achave primária do vendedor
where Vendedor.id = Venda.id_vendedor
    and Cliente.id = Venda.id_cliente
;

Qual os estados ondem os usuários moram?
select
Usuarios.nome as Nome_Usuario,
Usuarios.sobrenome as Sobrenome_Usuario,
Enderecos.uf as Estado_Usuario
from Usuarios, Enderecos
where Usuarios.id_endereco = Enderecos.id
Quais aulas ocorreram?

Onde essas aulas ocorreram?
