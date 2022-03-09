Dado('que execute uma requisição POST para cadastro de um funcionário') do
    $response = @employee.postEmployee
end
  
Quando('retornar os dados dessa requisição POST') do
    puts "Response body: #{$response.body}"
    
end
  
Então('a API irá retornar status {int} ao criar funcionário') do |int|
    expect($response.code).to eq(int)
    puts "Response code: #{$response.code}"
end


Dado('que execute uma requisição GET para consulta de um funcionário por ID') do
     $get = @employee.getOneEmployee($id) 
end
  
Quando('retornar os dados dessa requisição GET com um único registro') do
    puts "Response code: #{$get.body}"
end
  
Então('a API irá retornar status {int} ao retornar um funcionário') do |int|
    expect($get.code).to eq(int)
    expect($get["id"]).to eq($response["id"])
end


