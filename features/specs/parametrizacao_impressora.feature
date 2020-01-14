#language: pt
@parametrizacao_impressora
Funcionalidade: Validar a funcionalidade da tela Impressão
Contexto: 
Dado eu estou logado com um usuario valido
Dado que estou na tela de Configuração do usuário

#Insert
Cenario: Selecionar impressora DACTE e impressora Etiquetas e clicar no botão Salvar
Quando eu clico no flag "Selecione a impressora para DACTE / Manifesto / Declaração / Coleta" 
E escolho a impressora Dacte
E clico no flag "Selecione a impressora para Etiquetas"
E escolho a impressora Etiqueta
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."

Cenario: Selecionar impressora DACTE e clicar no botão Salvar
Quando eu clico no flag "Selecione a impressora para DACTE / Manifesto / Declaração / Coleta" 
E escolho a impressora Dacte
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."

Cenario: Selecionar impressora Etiquetas e clicar no botão Salvar
Quando clico no flag "Selecione a impressora para Etiquetas"
E escolho a impressora Etiqueta
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."

#Updade
@teste
Cenario: Retirar a impressora DACTE e impressora Etiquetas e clicar no botão Salvar
Quando eu clico no flag "Selecione a impressora para DACTE / Manifesto / Declaração / Coleta" 
E escolho a impressora Dacte
E clico no flag "Selecione a impressora para Etiquetas"
E escolho a impressora Etiqueta
E clico no botão salvar da tela
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."

Cenario: Retirar a impressora DACTE e clicar no botão Salvar
Quando eu clico no flag "Selecione a impressora para DACTE / Manifesto / Declaração / Coleta" 
E escolho a impressora Dacte
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."

Cenario: Retirar a impressora Etiquetas e clicar no botão Salvar
Quando eu clico no flag "Selecione a impressora para Etiquetas"
E escolho a impressora Etiqueta
E clico no botão salvar da tela
Entao deve apresentar a mensagem "Impressora(s) alterada(s) com sucesso."
