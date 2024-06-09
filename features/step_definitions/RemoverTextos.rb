require_relative '../support/page/TratamentoTexto.rb'

Dado('a string de entrada {string}') do |string|
    @textoEntrada = string
end
  
  Quando('remover os marcadores {string}') do |string|
    @textoFinal = removerTextos(@textoEntrada, string)
  end
  
  Então('a saída esperada é: {string}') do |string|
    expect(string).to eq(@textoFinal)
  end