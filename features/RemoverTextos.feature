#language: pt
#utf-8
@removerTexto @vr
Funcionalidade: Remover textos

Esquema do Cenário:
    Dado a string de entrada "<TextoInicial>"
    Quando remover os marcadores "<Marcadores>"
    Então a saída esperada é: "<TextoFinal>"

Exemplos:
    | TextoInicial                          | Marcadores | TextoFinal|
    | bananas, tomates # e ventiladores  | ['#', '!'] |bananas, tomates|
    | o rato roeu a roupa $ do rei % de roma| ['%', '!'] | o rato roeu a roupa $ do rei|
    | the quick brown fox & jumped over * the lazy dog| ['&', '*', '%', '!'] |the quick brown fox|