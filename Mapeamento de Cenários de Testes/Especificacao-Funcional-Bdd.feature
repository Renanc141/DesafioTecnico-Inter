#language: pt
#DesafioTecnico
#ApiPetStore
#AutomacaoDeApi


Funcionalidade: Utilizar na loja de animais de estimação
  Como um usuário atendente
  Eu quero gerenciar pedido e animal
  Para utilizar na loja de animais de estimação


Dado que o atendente esteja logado no sistema PetStore


@POST
@Cenario1
@Automatizado
@Criar
# Este cenário cobre a criação de pedidos de compra com dados válidos
Esquema do Cenario: Criar um pedido de compra para um animal de estimação com dados válidos
E que exista um pedido com <Id> 
Quando inserir o <Quantidade>
E inserir <Status>
E submeter o pedido
Entao grava os dados
E o pedido de compra salvo com sucesso

Exemplos:
| Id   | Quantidade | Status |
| 8425 | 1          | Placed |



@POST
@Cenario2
@Automatizado
@Criar
# Este cenário cobre a criação de animal de estimação com dados válidos
Esquema do Cenario: Criar um animal de estimação com dados válidos
E que exista um animal com <Id> 
Quando inserir o <Nome>
E inserir o <Status>
E inserir a <Foto>
E submeter o cadastro
Entao grava os dados
E o animal de estimação salvo com sucesso

Exemplos:
| Id  | Nome     | Status  | Foto                         | 
| 825 | Caramelo | Pending | http://example.com/photo.jpg |



@POST
@Cenario3
@Automatizado
@Criar
# Este cenário cobre a criação de animal de estimação com dados inválidos
Esquema do Cenario: Criar um pedido de compra com a quantidade negativa
E que exista um pedido com <Id> 
Quando inserir a <Quantidade>
E inserir <Status>
E submeter o pedido
Entao não grava os dados
E retorna um erro informando que a quantidade é inválida

Exemplos:
| Id   | Quantidade | Status |
| 8425 | -1         | Placed |



@GET
@Cenario4
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação já criado no sistema
Esquema do Cenario: Consultar um animal de estimação já criado
E que exista um animal com <Id>
Quando inserir o <Nome>
E inserir o <Status>
E inserir a <Foto>
E submeter a consulta
Entao retorna os dados do animal

Exemplos:
| Id  | Nome     | Status  | Foto                         | 
| 825 | Caramelo | Pending | http://example.com/photo.jpg |



@GET
@Cenario5
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação com dados inválidos
Esquema do Cenario: Consultar um animal de estimação com status incorreto
E que exista um animal com <Id>
Quando inserir o <Nome>
E inserir o <Status>
E inserir a <Foto>
E submeter a consulta
Entao não retorna os dados do animal
E retorna um erro informando que o status é inválido

Exemplos:
| Id  | Nome     | Status    | Foto                         | 
| 825 | Caramelo | Available | http://example.com/photo.jpg |



@GET
@Cenario6
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação com dados inválidos
Esquema do Cenario: Consultar um animal de estimação com nome incorreto
E que exista um animal com <Id>
Quando inserir o <Nome>
E inserir o <Status>
E inserir a <Foto>
E submeter a consulta
Entao não retorna os dados do animal
E retorna um erro informando que o nome é inválido

Exemplos:
| Id  | Nome            | Status  | Foto                         | 
| 825 | Caramelo errado | Pending | http://example.com/photo.jpg |



@PUT
@Cenario7
@Automatizado
@Editar
# Este cenário cobre a edição do status de animal de estimação já criado no sistema
Esquema do Cenario: Editar o status de um animal de estimação já criado
E que exista um animal com <Id>
E que tenha o <Nome>
E que tenha o <StatusAtual>
E que tenha a <Foto>
Quando editar o <StatusNovo>
E submeter a edição
Entao grava os dados
E o animal de estimação salvo com sucesso

Exemplos:
| Id  | Nome     | StatusAtual | Foto                         | StatusNovo |
| 825 | Caramelo | Pending     | http://example.com/photo.jpg | sold       |



@PUT
@Cenario8
@Automatizado
@Editar
# Este cenário cobre a edição do nome de animal de estimação já criado no sistema
Esquema do Cenario: Editar o nome de um animal de estimação já criado
E que exista um animal com <Id>
E que tenha o <NomeAtual>
E que tenha o <Status>
E que tenha a <Foto>
Quando editar o <NomeNovo>
E submeter a edição
Entao grava os dados
E o animal de estimação salvo com sucesso

Exemplos:
| Id  | NomeAtual | Status  | Foto                         | NomeNovo            |
| 825 | Caramelo  | Pending | http://example.com/photo.jpg | Caramelo atualizado |



@PUT
@Cenario9
@Automatizado
@Editar
# Este cenário cobre a edição de ID inexistente do sistema
Esquema do Cenario: Editar o ID de um animal de estimação já criado
E que exista um animal com <IdAtual>
E que tenha o <NomeAtual>
E que tenha o <Status>
E que tenha a <Foto>
Quando editar o <IdNovo>
E submeter a edição
Entao não grava os dados
E retorna um erro informando que o ID não pode ser alterado

Exemplos:
| IdAtual | Nome     | Status  | Foto                         | IdNovo |
| 825     | Caramelo | Pending | http://example.com/photo.jpg | 8255   |



@GET
@Cenario10
@Automatizado
@Consulta
# Este cenário cobre a consulta de todos os animais de estimação pelo Status
Esquema do Cenario: Consultar todos os animais de estimação pelo status
E que exista um <StatusAtual>
Quando inserir o <StatusConsultado>
E submeter a consulta
Entao retorna todos os dados dos animais com status consultado

Exemplos:
| Status  | StatusConsultado |
| Pending | Pending          |



@GET
@Cenario11
@Manual
@Consulta
# Este cenário cobre a consulta de animal de estimação com status existente
Esquema do Cenario: Consultar um animal de estimação por status 
E que exista um animal com <Id>
Quando inserir o <Status>
E submeter a consulta
Entao retorna os dados do animal

Exemplos:
| Id  | Status  |
| 825 | Pending |



@GET
@Cenario12
@Manual
@Consulta
# Este cenário cobre a consulta de animal de estimação pelo ID
Esquema do Cenario: Consultar um animal de estimação por ID
E que exista um animal com <Id>
Quando inserir o <IdConsultado>
E submeter a consulta
Entao retorna os dados do animal

Exemplos:
| Id  | IdConsultado |
| 825 | 825          |



@GET
@Cenario13
@Manual
@Consulta
# Este cenário cobre a consulta de um pedido de compra pelo ID
Esquema do Cenario: Consultar um pedido de compra por ID
E que exista um animal com <Id>
Quando inserir o <IdConsultado>
E submeter a consulta
Entao retorna os dados do pedido de compra

Exemplos:
| Id | IdConsultado |
| 08 | 08           |



@GET
@Cenario14
@Manual
@Criar
# Este cenário cobre a criação de usuário para login
Esquema do Cenario: Criar um usuário para login no PetStore
Quando inserir o <Nome>
E submeter o cadastro
Entao grava os dados
E o usuário salvo com sucesso

Exemplos:
| Nome  |
| user1 |



@PUT
@Cenario15
@Manual
@Editar
# Este cenário cobre a edição de usuário criado
Esquema do Cenario: Editar um usuário de login no PetStore
E que exista um <NomeAtual>
Quando inserir o <NomeNovo>
E submeter o cadastro
Entao grava os dados
E o usuário salvo com sucesso

Exemplos:
| NomeAtual | NomeNovo |
| user1     | user2    |



@DELETE
@Cenario16
@Manual
@Editar
# Este cenário cobre a exclusão de usuário criado
Esquema do Cenario: Excluir um usuário de login no PetStore
E que exista um <NomeAtual>
Quando clicar no <NomeExcluido>
E submeter a exclusão
Entao apaga os dados
E o usuário excluído com sucesso

Exemplos:
| NomeAtual | NomeExcluido |
| user2     | user2        |


