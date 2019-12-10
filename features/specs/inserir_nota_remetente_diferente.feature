#language: pt

@Inserir_nota_com_remetente_diferente
Funcionalidade: Inserir nota com remetente diferente
Contexto: 
Dado que eu estou logado no sistema com usuario valido

@Inserir_nota_remetente_diferente
Cenario: Inserir a NF com remetente diferente
Quando eu coloco o CPF ou CNPJ do remetente da NF-e diferente
Entao o sistema apresenta a msg de o CPF ou CNPJ do remetente da NF-e está diferente da inserida