#language: pt

@inserir_nota
Funcionalidade: Validar cliente
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Inserir nota
Quando eu coloco a nota fiscal Valida
Entao o sistema deve mostrar as notas do CT-e

Cenario: Inserir nota com consulta a SEFAZ
Quando eu coloco a nota fiscal Valida e clico no botão SEFAZ
Entao o sistema deve mostrar as notas do CT-e
