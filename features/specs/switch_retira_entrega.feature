#language: pt

@switch_retira_entrega
Funcionalidade: Validar o switch Retira/Entrega
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida
@test
Cenario: Destinatário Tomador Localidade 
            R	        R	         R	
Quando eu o Destinatário Tomador Localidade R|R|R	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
          NULL	        R	         R
Quando eu o Destinatário Tomador Localidade NULL|R|R	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
          R	        NULL	         R
Quando eu o Destinatário Tomador Localidade R|NULL|R	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
          NULL	        NULL	         R
Quando o Destinatário Tomador Localidade NULL|NULL|R	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
       R	        R	         E	
Quando eu o Destinatário Tomador Localidade R|R|E	   
Entao O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
              NULL        R	         E		
Quando eu o Destinatário Tomador Localidade NULL|R|E	   
Entao O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
               R	   NULL	  E	  	
Quando eu o Destinatário Tomador Localidade R|NULL|E	   
Entao O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
    NULL	       NULL         E	
Quando eu o Destinatário Tomador Localidade NULL|NULL|E	   
Entao O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
         R	          R            RE	 
Quando eu o Destinatário Tomador Localidade R|R|RE	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
          NULL          R            RE	    
Quando eu o Destinatário Tomador Localidade NULL|R|RE	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
         R	          R            RE	 
Quando eu o Destinatário Tomador Localidade R|R|RE	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
               R	   NULL         RE 
Quando eu o Destinatário Tomador Localidade R|NULL|RE	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração


@refatoracao
Cenario: Destinatário Tomador Localidade 
          NULL        NULL         RE	 
Quando eu o Destinatário Tomador Localidade NULL|NULL|RE	   
Entao O sistema deve selecionar a opção de Retira podendo alterar também para Entrega

Cenario: Destinatário Tomador Localidade 
              R          R            NULL	 
Quando eu o Destinatário Tomador Localidade R|R|NULL	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
              NULL       R             NULL	 
Quando eu o Destinatário Tomador Localidade NULL|R|NULL	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração

Cenario: Destinatário Tomador Localidade 
       R             NULL         NULL	 
Quando eu o Destinatário Tomador Localidade R|NULL|NULL	   
Entao O sistema deve selecionar a opção de Retira sem a possibilidade de alteração
@tt
Cenario: Destinatário Tomador Localidade 
         NULL	         NULL         NULL	 
Quando eu o Destinatário Tomador Localidade NULL|NULL|NULL	   
Entao O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração

# cucumber features/specs/cliente_inativo.feature:8 # Cenario: Validar msg de usuario inativo
# cucumber features/specs/cliente_inativo.feature:12 # Cenario: Validar msg de usuario inativo
# cucumber features/specs/cliente_inativo.feature:16 # Cenario: Validar botão CIF de um usuario ativo
# cucumber features/specs/cliente_inativo.feature:20 # Cenario: Inserir um remetente ativo e um destinatario inativo
# cucumber features/specs/cliente_inativo.feature:24 # Cenario: Inserir um remetente ativo e um destinatario ativo e expedidor inativo
# cucumber features/specs/cliente_inativo.feature:28 # Cenario: Inserir um remetente e verificar as msg
# cucumber features/specs/cliente_inativo.feature:32 # Cenario: Inserir um tomador inativo abre modal
# cucumber features/specs/cliente_inativo.feature:36 # Cenario: Inserir uma localidade não atendida associada no remetente
# cucumber features/specs/cliente_inativo.feature:40 # Cenario: Inserir uma  localidade não atendida associada no expedidor
# cucumber features/specs/cliente_inativo.feature:44 # Cenario: Inserir um cliente no Redespacho e não selecionar a opção de expedidor
# cucumber features/specs/cliente_inativo.feature:48 # Cenario: Selecionar o Redespacho depois do cliente inserido Expedidor inserido
# cucumber features/specs/cliente_inativo.feature:52 # Cenario: Inserir um CEP com localidade não atendida associada no Redespacho
# cucumber features/specs/cliente_inativo.feature:56 # Cenario: Inserir um CEP com localidade não atendida associada no Destinatário
# cucumber features/specs/cliente_inativo.feature:60 # Cenario: Inserir um CEP com localidade inativa associada no Destinatário
# cucumber features/specs/cliente_inativo.feature:64 # Cenario: Inserir um CEP com localidade não atendida associada no Recebedor
# cucumber features/specs/cliente_inativo.feature:68 # Cenario: Inserir um CEP com localidade inativa associada no Recebedor
# cucumber features/specs/prestacao_de_servico.feature:9 # Cenario: Validar msg de localidade não atendida
# cucumber features/specs/prestacao_de_servico.feature:13 # Cenario: Validar msg de localidade inativa
# cucumber features/specs/prestacao_de_servico.feature:17 # Cenario: Validar msg de localidade não atendida
# cucumber features/specs/campos_tela_mercadoria.feature:8 # Cenario: Verificar se estão visiveis os campos de tela Mercadoria
# cucumber features/specs/campos_tela_mercadoria.feature:15 # Cenario: Verificar se estão visiveis os campos de tela Mercadoria
# cucumber features/specs/declaracao_cpf_limpa_campo.feature:8 # Cenario: Verificar se limpou os campo remetente
# cucumber features/specs/declaracao_cpf_limpa_campo.feature:12 # Cenario: Verificar se limpou os campo destinatario

