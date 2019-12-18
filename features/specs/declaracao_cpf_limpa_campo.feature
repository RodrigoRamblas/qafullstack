#language: pt

@Declaracao_cpf_limpa_campo
Funcionalidade: Verificar se os campos foram limpos após trocar o CPF
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Verificar se limpou os campo remetente
Quando em remetente eu coloco outro CPF 
Entao deve limpar os campo preenchidos do remetente

Cenario: Verificar se limpou os campo destinatario
Quando em destinaratio eu coloco outro CPF
Entao deve limpar os campo preenchidos do destinatario