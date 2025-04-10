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
And que exista um pedido com <Id> 
When inserir o <Quantity>
And inserir <Status>
And submeter o pedido
Then grava o <SetComplete>
And retorna o <StatusCode>

Exemplos:
| Id   | Quantity | Status | SetComplete | StatusCode |
| 8425 | 1        | Placed | true        | 200        |



@POST
@Cenario2
@Automatizado
@Criar
# Este cenário cobre a criação de animal de estimação com dados válidos
Esquema do Cenario: Criar um animal de estimação com dados válidos
And que exista um animal com <Id> 
When inserir o <Name>
And inserir o <Status>
And inserir a <PhotoUrl>
And submeter o cadastro
Then grava os dados
And retorna o <StatusCode>

Exemplos:
| Id  | Name     | Status  | PhotoUrl                     | StatusCode |
| 825 | Caramelo | Pending | http://example.com/photo.jpg | 200        |



@POST
@Cenario3
@Automatizado
@Criar
# Este cenário cobre a criação de animal de estimação com dados inválidos
Esquema do Cenario: Criar um pedido de compra com a quantidade negativa
And que exista um pedido com <Id> 
When inserir a <Quantity>
And inserir <Status>
And submeter o pedido
Then não grava os dados
And retorna o <StatusCode>
And retorna a <Message>

Exemplos:
| Id   | Quantidade | Status | StatusCode | Message       |
| 8425 | -1         | Placed | 400        | Invalid Order |



@GET
@Cenario4
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação já criado no sistema
Esquema do Cenario: Consultar um animal de estimação já criado
And que exista um animal com <Id>
When inserir o <Name>
And inserir o <Status>
And inserir a <PhotoUrl>
And submeter a consulta
Then retorna o <StatusCode>
And retorna a <Message>

Exemplos:
| Id  | Name     | Status  | PhotoUrl                     | StatusCode | Message              |
| 825 | Caramelo | Pending | http://example.com/photo.jpg | 200        | Successful operation |



@GET
@Cenario5
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação com dados inválidos
Esquema do Cenario: Consultar um animal de estimação com status incorreto
And que exista um animal com <Id>
When inserir o <Name>
And inserir o <Status>
And inserir a <PhotoUrl>
And submeter a consulta
Then retorna o <StatusCode>
And retorna a <Message>

Exemplos:
| Id  | Name     | Status    | PhotoUrl                     | StatusCode | Message       |
| 825 | Caramelo | Available | http://example.com/photo.jpg | 404        | Pet not found |



@GET
@Cenario6
@Automatizado
@Consulta
# Este cenário cobre a consulta de animal de estimação com dados inválidos
Esquema do Cenario: Consultar um animal de estimação com nome incorreto
And que exista um animal com <Id>
When inserir o <Name>
And inserir o <Status>
And inserir a <PhotoUrl>
And submeter a consulta
Then retorna o <StatusCode>
And retorna a <Message>

Exemplos:
| Id  | Name            | Status  | PhotoUrl                     | StatusCode | Message       |
| 825 | Caramelo errado | Pending | http://example.com/photo.jpg | 404        | Pet not found |



@PUT
@Cenario7
@Automatizado
@Editar
# Este cenário cobre a edição do status de animal de estimação já criado no sistema
Esquema do Cenario: Editar o status de um animal de estimação já criado
And E que exista um animal com <Id>
And que tenha o <Name>
And que tenha o <Status>
And que tenha a <PhotoUrl>
When editar o <Status>
And submeter a edição
Then grava os dados
And retorna o <StatusCode>

Exemplos:
| Id  | Name     | Status  | PhotoUrl                     | Status | StatusCode |
| 825 | Caramelo | Pending | http://example.com/photo.jpg | sold   | 200        |


@PUT
@Cenario8
@Automatizado
@Editar
# Este cenário cobre a edição do nome de animal de estimação já criado no sistema
Esquema do Cenario: Editar o nome de um animal de estimação já criado
And que exista um animal com <Id>
And que tenha o <Name>
And que tenha o <Status>
And que tenha a <PhotoUrl>
When editar o <Name>
And submeter a edição
Then grava os dados
And retorna o <StatusCode>

Exemplos:
| Id  | Name     | Status  | PhotoUrl                     | Name                | StatusCode |
| 825 | Caramelo | Pending | http://example.com/photo.jpg | Caramelo atualizado | 200        |



@PUT
@Cenario9
@Automatizado
@Editar
# Este cenário cobre a edição de ID inexistente do sistema
Esquema do Cenario: Editar o ID de um animal de estimação já criado
And que exista um animal com <Id>
And que tenha o <Name>
And que tenha o <Status>
And que tenha a <PhotoUrl>
When editar o <Id>
And submeter a edição
Then não grava os dados
And retorna o <StatusCode>

Exemplos:
| Id  | Name     | Status  | PhotoUrl                     | Id   | StatusCode |
| 825 | Caramelo | Pending | http://example.com/photo.jpg | 8255 | 405        |



@GET
@Cenario10
@Automatizado
@Consulta
# Este cenário cobre a consulta de todos os animais de estimação pelo Status
Esquema do Cenario: Consultar todos os animais de estimação pelo status
And que exista um <Status>
When inserir o <Status>
And submeter a consulta
Then retorna o <StatusCode>
And retorna a <Message>

Exemplos:
| Status  | Status  | StatusCode | Message              |
| Pending | Pending | 200        | Successful operation |


