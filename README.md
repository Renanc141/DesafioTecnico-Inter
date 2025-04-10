# 📌 Projeto PetStore (Loja de Animais) - https://petstore.swagger.io/#/

Projeto desenvolvido como parte do desafio técnico da Inter, com o objetivo de automatizar cenários de testes de uma API pública (PetStore - https://petstore.swagger.io/#/).

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

