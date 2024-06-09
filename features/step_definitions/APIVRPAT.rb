require 'httparty'

Quando('que faço uma requisição GET para o endpoint de consulta') do
    #Faço a chamada na API usando GET e quando a resposta na variável response
    @response = HTTParty.get('https://portal.vr.com.br/api-web/comum/enumerations/VRPAT')
end
  
  Então('a resposta deve conter a chave {string}') do |string|
    #valido que no response da chamada tem o atributo passodo no cucumber
    expect(@response.body).to include(string)
    #trato o response para o jormato json
    parsed_response = JSON.parse(@response.body)
    #separo todos os dados do array typeOfEstablishment
    establishment_types = parsed_response["typeOfEstablishment"]
    #pego aleatoriamente um dos arrays separados
    random_type = establishment_types.sample
    #printo os valores
    puts "Tipo de estabelecimento: #{random_type}"
  
end