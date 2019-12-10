#language: pt
@login
Funcionalidade: Testar Login usuário cadastrado e sem cadastro
Contexto: 
Dado que estou na tela de login

@login_com_sucesso
Cenario: Login Usuário inválido
Quando tento fazer um login com um usuario valido
Entao devo me logar

@login_sem_sucesso
Cenario: Login Usuário Válido
Quando tento fazer um login com um usuario invalido
Entao nao devo me logar

@Login_com_outro_usuario
Cenario: Login com outro usuário
Quando eu entro no sistema com outro usuario
Entao devo clicar em "Não é você? Entre com outro usuário"
