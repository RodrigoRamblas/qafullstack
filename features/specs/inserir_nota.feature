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
@xx
Cenario: Inserir nf ir para a tela de Frete voltar e add outra nf 
Quando eu coloco a nf e vou para a tela de Frete
E Clico no botão voltar
E Add outra nf e clico no campo Data de emissão
E clico no botão "ADICIONAR NOTA"
Entao o sistema deve mostrar as notas do CT-e
