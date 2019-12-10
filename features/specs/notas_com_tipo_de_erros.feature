#language: pt

@Notas_erradas
Funcionalidade: Notas com tipos de erros
Contexto:
Dado que eu tenha uma nota errada
#Outra UF|Mês incorreto|CNPJ incorreto|Modelo incorreto|Serie incorreta "56"|Número da nota incorreto "055.457.326"|Forma de Emissão incorreta "2"|Código incorreto "85.368.624"|Dígito Verificador incorreto "6"  
|Notas                                                       |
|33-18/11-11.137.051/0406-41-55-007-000.667.326-183.344.608-2| 
|35-18/13-11.137.051/0406-41-55-007-000.667.326-183.344.608-2|                           
|35-18/11-27.137.051/0406-41-55-007-000.667.326-183.344.608-2|
|35-18/11-11.137.051/0406-41-01-007-000.667.326-183.344.608-2|
|35-18/11-11.137.051/0406-41-55-056-000.667.326-183.344.608-2|
|35-18/11-11.137.051/0406-41-55-007-044.667.326-183.344.608-2|
|35-18/11-11.137.051/0406-41-55-007-000.667.326-283.344.608-2|
|35-18/11-11.137.051/0406-41-55-007-000.667.326-185.368.624-2|
|35-18/11-11.137.051/0406-41-55-007-000.667.326-183.344.608-6|

Cenario: Colocar uma nota com UF errada
Quando eu coloco uma nota errada
Entao verifico se foi apresentado mensagem de erro