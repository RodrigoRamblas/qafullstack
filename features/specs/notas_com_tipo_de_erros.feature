#language: pt

@Notas_erradas
Funcionalidade: Notas com tipos de erros
Contexto:
Dado que eu tenha uma nota errada
|Outra UF                               |33-18/11-11.137.051/0406-41-55-007-000.667.326-183.344.608-2|
|Mês incorreto                          |35-18/13-11.137.051/0406-41-55-007-000.667.326-183.344.608-2|
|CNPJ incorreto                         |35-18/11-27.137.051/0406-41-55-007-000.667.326-183.344.608-2|
|Modelo incorreto                       |35-18/11-11.137.051/0406-41-01-007-000.667.326-183.344.608-2|
|Serie incorreta "56"                   |35-18/11-11.137.051/0406-41-55-056-000.667.326-183.344.608-2|
|Número da nota incorreto "055.457.326" |35-18/11-11.137.051/0406-41-55-007-044.667.326-183.344.608-2|
|Forma de Emissão incorreta "2"         |35-18/11-11.137.051/0406-41-55-007-000.667.326-283.344.608-2|
|Código incorreto "85.368.624"          |35-18/11-11.137.051/0406-41-55-007-000.667.326-185.368.624-2|
|Dígito Verificador incorreto "6"       |35-18/11-11.137.051/0406-41-55-007-000.667.326-183.344.608-6|

Cenario: Colocar uma nota errada
Quando eu coloco uma nota errada
Entao verifico se foi apresentado mensagem de erro