#language: pt

@inserir_nota_mais_de_uma_vez
Funcionalidade: Inserir nota mais de uma vez
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida na tela

Cenario: Inserir a NF mais de uma vez
Quando eu coloco a nota mais de uma vez
Entao o sistema deve apresentar a msg de "*Esta nota fiscal já foi inserida"