#language: pt

@Navegacao_pela_timeline
Funcionalidade: Conexao com oracle database
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Teste de Timeline Declaração e clicar em configurações e Parametrizações
Quando eu clico em Declaração
E escolho a classificação de transporte
E clico em Frete
E clico no botão Voltar
E clico em configurações
E clico em Parametrizações
Entao o sistema deve ir para a tela de Parametrizações