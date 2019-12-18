#language: pt

@localidade_nao_atendida
Funcionalidade: Validar cliente
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida

Cenario: Validar msg de localidade não atendida
Quando eu coloco uma localidade não atendida
Entao eu verifico se apareceu a msg de localicade não atendida

Cenario: Validar msg de localidade inativa
Quando eu coloco um CEP com localidade inativa associada no Remetente
Entao O componente deve sobrescrever a localidade inserida anteriormente e informar que está inativa. E não deve habilitar o botão no final da tela.

Cenario: Validar msg de localidade não atendida
Quando eu coloco um CEP com localidade não atendida associada no Expedidor
Entao O componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.

