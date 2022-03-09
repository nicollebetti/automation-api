Dado('o endereço da API para manter o cadastro de um empregado') do
    
end
  
Quando('realizar uma requisição para cadastrar uma empregado') do
    $response = @employee.postEmployee
end
  
Então('a API irá retornar os dados do cadastro da Startup respondendo o código {int}') do |int|
  
    puts "Response code: #{$response.body}"

end