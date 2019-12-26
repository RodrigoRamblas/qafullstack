#language: pt

@forma_pagamento
Funcionalidade: Validar forma de pagamento
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida

Cenario: Validar forma de pagamento
Quando eu coloco o "Remetente" e "Destinatario"
# E eu escolho a "Empresa destino"
E eu escolho o tipo de frete "CIF"
E clico em "Mercadoria"
E eu escolho a produto  
Entao deve ir para a tela de "Conclusão"

# @test
# Cenario: Validar forma de pagamento sem consultar a SEFAZ
# Quando eu clico no botão "Consultar SEFAZ"
# # E eu escolho a "Empresa destino"
# E eu escolho o tipo de frete "CIF"
# E clico em "Mercadoria"
# E eu escolho a produto  
# Entao deve ir para a tela de "Conclusão"
