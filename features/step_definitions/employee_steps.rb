Dado('que execute uma requisição POST para cadastro de um funcionário') do
    $response = @employee.postEmployee
end
  
Quando('retornar os dados dessa requisição POST') do
    puts "Response body: #{$response.body}"
    
end
  
Então('a API irá retornar status {int} ao criar funcionário') do |int|
    expect($response.code).to eq(int)
    puts "Response code: #{$response.code}"
    expect($response.message).to eq("OK")
    puts "Response Message: #{$response.message}"
end

Dado('que execute uma requisição GET para consulta dos funcionários') do
    $responseGet = HTTParty.get('http://dummy.restapiexample.com/api/v1/employees')
end
  
Quando('retornar os dados dessa requisição GET') do
    puts "Response body: #{$responseGet.body}"
end
  
Então('a API irá retornar status {int} com a lista de funcionários') do |int|
    expect($responseGet.code).to eq(int)
    puts "Response code: #{$responseGet.code}"
end