#language: pt

@cliente_inativo
Funcionalidade: Validar cliente
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Validar msg de usuario inativo
Quando eu coloco um usuario inativo
Entao eu verifico se apareceu a msg de usuario inativo

Cenario: Validar msg de usuario inativo
Quando eu coloco um usuario inativo
Entao eu verifico se o botão CIF está inativo

Cenario: Validar botão CIF de um usuario ativo
Quando eu coloco um usuario ativo
Entao eu verifico se o botão CIF está disponivel

Cenario: Inserir um remetente ativo e um destinatario inativo
Quando eu coloco um remetente ativo e um destinatario inativo
Entao o sistema deixa o botão FOB desabilitado

Cenario: Inserir um remetente ativo e um destinatario ativo e expedidor inativo
Quando eu coloco um remetente ativo e um destinatario ativo e um expedidor inativo
Entao o sistema apresenta uma msg de Epa, Redespachante ou Tomador inválido, verifique se você preencheu corretamente as informações.

Cenario: Inserir um remetente e verificar as msg
Quando eu coloco um remetente ativo que tenha msg
Entao o sistema apresenta as msg.

Cenario: Inserir um tomador inativo abre modal
Quando eu coloco um remetente ativo e um destinatario ativo e um tomador inativo
Entao o sistema apresenta uma msg de Epa, Redespachante ou Tomador inválido, verifique se você preencheu corretamente as informações.