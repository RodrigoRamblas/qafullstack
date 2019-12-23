#language: pt

@campos_tela_mercadoria
Funcionalidade: Verificar os campos a tela de mercadoria
Contexto: 
Dado eu estou logado com um usuario valido

Cenario: Verificar se estão visiveis os campos de tela Mercadoria
Quando eu clico em "Declaração"
E escoclho o tipo de "Classificação de transporte"
E coloco os dados do remetente e destinarario
E clico em "Mercadoria"
Entao deve ir para a tela de Mercadoria

@ttt
Cenario: Verificar se estão visiveis os campos de tela Mercadoria
Quando eu clico em "Declaração"
E escoclho o tipo de "Classificação de transporte"
E coloco os dados do remetente e destinarario
E clico em "Mercadoria"
E preencho corretamente os campos: "Produto", "Quantidade", "Peso", "Valor da Nota"
E em "Dados da Cubagem" preencho os campos "Volume", "Altura", "Largura", "Profundidade" 
Entao o botão "+" deve ser habilitado