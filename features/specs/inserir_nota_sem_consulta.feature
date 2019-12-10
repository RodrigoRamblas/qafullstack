#language: pt
@Inserir_nota_sem_consulta
Funcionalidade: Inserir nota sem consulta Sefaz
Contexto: 
Dado logado no sistema com usuario valido

@Escolher_uma_filial_garagem
Cenario: Escolher uma filial garagem
Quando eu estou logado devo escolher uma filial ou garagem "30- São Paulo"
E eu digito uma nota valida sem consultar a Sefaz
Entao O sistema deve validar a nota por uma algoritmo e deixar a nota ser inserida

@Data_futura
Cenario: Escolher uma data futura
Quando eu coloco uma data futura
Entao o sistema deve apresentar a msg de data invalida

