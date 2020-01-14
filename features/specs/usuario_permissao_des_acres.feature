#language: pt

@usuario_permissao_des_acres
Funcionalidade: Validar cliente
Contexto: 
Dado eu estou logado com um usuario valido com apenas permissao de acréscimo
Dado eu coloco a nota fiscal Valida

Cenario: Validar a switch selecianade de acordo com a permissao do usuario
Quando o usuário tiver permissão de Desconto ou acréscimo, já vir selecionado no switch qual a opção será usada.
Entao eu verifico se apareceu a switch correta