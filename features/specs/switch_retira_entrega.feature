#language: pt

@switch_retira_entrega
Funcionalidade: Validar o switch Retira/Entrega
Contexto: 
Dado eu estou logado com um usuario valido
Dado eu coloco a nota fiscal Valida

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
