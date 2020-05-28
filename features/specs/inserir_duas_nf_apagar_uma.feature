#language: pt

@Inserir_duas_nf_apagar_uma
Funcionalidade: Inserir duas notas e apagar uma
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Inserir duas NF e apagar uma
Quando eu coloco duas notas e excluo uma
Entao o sistema apagar apenas a que eu exclui