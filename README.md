# 🚀 Projeto de Testes Automatizados - Desafio Inter

Veja mais em [API PetStore](https://petstore.swagger.io/#/)

Projeto desenvolvido como parte do desafio técnico da Inter, com o objetivo de automatizar cenários de testes de uma API pública PetStore - [API PetStore](https://petstore.swagger.io/#/).

As funcionalidades testadas incluem:

🐾 Gerenciamento de pets: Tudo sobre seus animais de estimação, incluindo cadastro, atualização e consulta.

👤 Operações de usuário: Registro, login e gerenciamento de contas.

📦 Pedidos: Criação, consulta e exclusão de pedidos relacionados aos pets.

---

## 🚀 Tecnologias Utilizadas

- Java 24
- Maven 3.9 (Gerenciador de dependências e automação de build do projeto)
- Rest Assured (Biblioteca para testes de APIs RESTful de forma fluida e legível)
- POJO (Plain Old Java Object)

A automação dos testes foi realizada em APIs RESTful, utilizando a biblioteca Rest Assured em conjunto com a abordagem POJO (Plain Old Java Object) para uma estrutura mais limpa, reutilizável e orientada a objetos.

---

## 📁 Estrutura do Projeto

---

## 🔧 Como rodar o projeto

### Pré-requisitos

- Instalar o Java 24
- Instalar o Maven 3.9
- Utilizar Biblioteca Rest Assured
- Utilizar POJO (Plain Old Java Object)

### Passos

```bash
1º passo: 
#Limpar o diretório target/ do projeto
Pasta PetStore > Cmd > mvn clean

2º passo:
#Rodar os testes
Cmd > mvn test 

3º passo: 
#Gerar o relatório no Allure
 Cmd > mvn allure:serve

```

## 🗺️ Resumo do Mapeamento dos Cenários

Os cenários de teste foram mapeados com base nas principais funcionalidades disponibilizadas pelas APIs públicas da Drogaria Araújo e da Swagger Petstore. A priorização levou em conta a relevância dos endpoints e a cobertura de fluxo completo (happy path + erros esperados).

APIs cobertas:
Drogaria Araújo – Testes focados em endpoints de produtos, buscas e simulações de compras.

Swagger Petstore – Abrangência dos seguintes módulos:
Gerenciamento de pets
Operações de usuário (cadastro, login, exclusão)
Pedidos (criação, consulta e exclusão)

PET
Método	Endpoint	Cenários Associados
POST	/pet	@Cenario2
PUT	/pet	@Cenario7, @Cenario8, @Cenario9
GET	/findByStatus	@Cenario11, @Cenario5, @Cenario10
GET	/pet/{petId}	@Cenario12, @Cenario4, @Cenario6

Store
Método	Endpoint	Cenários Associados
POST	/store/order	@Cenario1, @Cenario3
GET	/store/order/{orderId}	@Cenario13

User
Método	Endpoint	Cenários Associados
GET	/user/{username}	@Cenario14
PUT	/user/{username}	@Cenario15
DELETE	/user/{username}	@Cenario16

### 🔍 Explicação dos Cenários

@Cenario2: Cenário específico para criar um pet via POST.
@Cenario7, @Cenario8, @Cenario9: Cenários relacionados à atualização de pet via PUT.
@Cenario11, @Cenario5, @Cenario10: Cenários de consulta de pets por status via GET.
@Cenario12, @Cenario4, @Cenario6: Cenários para buscar detalhes de um pet específico via GET.
@Cenario1, @Cenario3: Cenários de criação e consulta de pedidos na loja.
@Cenario13: Cenário para consultar um pedido específico.
@Cenario14, @Cenario15, @Cenario16: Cenários de manipulação de usuários (consultar, atualizar e deletar).

---