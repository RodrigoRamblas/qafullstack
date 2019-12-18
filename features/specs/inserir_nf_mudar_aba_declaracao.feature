#language: pt

@Inserir_nf_mudar_aba_declaracao
Funcionalidade: Inserir uma nota e mudar para aba de declacao
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida na tela

Cenario: Inserir uma nota e mudar para aba de declacao
Quando eu coloco uma nota e mudo para a aba de declaracao
Entao o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos

Cenario: Inserir uma nota e mudar para aba de declacao e clicar em Sim
Quando eu coloco uma nota e mudo para a aba de declaracao e clico em Sim
Entao o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e ir para a tela de declaracao

Cenario: Inserir uma nota e mudar para aba de declacao e clicar em Nao
Quando eu coloco uma nota e mudo para a aba de declaracao e clico em Nao
Entao o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e voltar para a tela NF-e