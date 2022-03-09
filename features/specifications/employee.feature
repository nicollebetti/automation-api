#language: pt
@employee
Funcionalidade: Manter dados dos funcionários via API
Como um usuário da aplicação
Eu quero realizar as requisições na API
A fim de manipular as informações do cadastro dos funcionários

Cenário: Cadastrar um funcionário
 Dado que execute uma requisição POST para cadastro de um funcionário
 Quando retornar os dados dessa requisição POST
 Então a API irá retornar status 200 ao criar funcionário

Cenário: Consultar somente um funcionário
 Dado que execute uma requisição GET para consulta de um funcionário por ID
 Quando retornar os dados dessa requisição GET com um único registro
 Então a API irá retornar status 200 ao retornar um funcionário


