#language: pt

@Primeiro_acesso
Funcionalidade: Acessar o sistema pela primeira vez
Contexto: 
Dado eu estou no meu primeiro acesso

Cenario: Primeiro acesso
Quando eu escolho a Filial Garagem
Entao o campo Classificação de transporte deve estar em branco 

Cenario: Escolher uma classificação de transporte
Quando eu escolho a Filial Garagem
E coloco a classificação de transporte
E saio do sistema
Então devo ir para a tela de login

Cenario: verificar a classificação de transporte
Quando eu escolho a Filial Garagem
Então o campo classificação de transporte deve estar preenchido