#language: pt

@Primeiro_acesso
Funcionalidade: Acessar o sistema pela primeira vez
Contexto: 
Dado xeu estou logado com um usuario valido

Cenario: Primeiro acesso
Quando eu escolho a Filial Garagem
E entro no sistema
Entao o campo Classificação de transporte deve estar em branco 
