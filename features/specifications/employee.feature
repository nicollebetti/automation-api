#language: pt
@employee
Funcionalidade: Manter dados dos empregados via API
Como um usuário da aplicação
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro dos empregados

Cenário: Cadastrar um empregado
    Dado o endereço da API para manter o cadastro de um empregado
    Quando realizar uma requisição para cadastrar uma empregado
    Então a API irá retornar os dados do cadastro da Startup respondendo o código 200
