#language: pt
#utf-8
@api @vr
Funcionalidade: API VRPAT

    Cenário: Verificar se o JSON possui a chave "typeOfEstablishment"
    Quando que faço uma requisição GET para o endpoint de consulta
    Então a resposta deve conter a chave "typeOfEstablishment"
