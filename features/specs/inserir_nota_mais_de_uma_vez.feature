#language: pt

@Inserir_nota_mais_de_uma_vez
Funcionalidade: Inserir nota mais de uma vez
Contexto: 
Dado que estou logado no sistema com usuario valido

@Inserir_nota_2
Cenario: Inserir a NF mais de uma vez
Quando eu coloco a nota mais de uma vez
Entao o sistema deve apresentar a msg de "*Esta nota fiscal já foi inserida"