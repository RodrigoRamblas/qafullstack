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

Cenario: Inserir uma localidade não atendida associada no remetente
Quando eu coloco uma localidade não atendida associada no remetente
Entao o componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.

Cenario: Inserir uma  localidade não atendida associada no expedidor
Quando eu coloco uma  localidade não atendida associada no expedidor
Entao o componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.

Cenario: Inserir um cliente no Redespacho e não selecionar a opção de expedidor
Quando eu coloco um cliente no Redespacho e não selecionar a opção de expedidor
Entao o cliente deve ser inserido sem alteração nos campos de Prestação de Serviço.
@test
Cenario: Selecionar o Redespacho depois do cliente inserido Expedidor inserido
Quando eu coloco o Redespacho depois do cliente inserido Expedidor inserido
Entao o componente deve sobrescrever a localidade inserida anteriormente no expedidor e validar a praça e se está ativo