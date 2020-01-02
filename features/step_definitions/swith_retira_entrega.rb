retira_entrega              = Retira_Entrega.new
frete                       = Frete.new

id_remetente                = frete.remetente
cpf_cnpj_remetente_ok       = retira_entrega.remetente_ok
id_tomador                  = retira_entrega.tomador_ok
cpf_cnpj_tomador_ok         = retira_entrega.cpf_cnpj_tomador_ok
id_destinatario             = retira_entrega.destinatario
cpf_cnpj_destinatario_ok    = retira_entrega.destinatario_ok
editar_remetente            = retira_entrega.editar_remetente
editar_destinatario         = retira_entrega.editar_destinatario
editar_tomador              = retira_entrega.editar_tomador
id_cep_remetente            = retira_entrega.cep_remetente
id_bairro_remetente         = retira_entrega.bairro_remetente
id_numero_remetente         = retira_entrega.numero_remetente
numero_residencia           = retira_entrega.numero
bairro                      = retira_entrega.bairro
id_cep_destinatario         = retira_entrega.cep_destinatario
id_logradouro_destinatario  = retira_entrega.logradouro_destinatario
id_numero_destinatario      = retira_entrega.numero_destinatario
id_bairro_destinatario      = retira_entrega.bairro_destinatario
logradouro                  = retira_entrega.logradouro
id_outros                   = retira_entrega.outros
id_cep_tomador              = retira_entrega.cep_tomador
id_logradouro_tomador       = retira_entrega.logradouro_tomador
id_numero_tomador           = retira_entrega.numero_tomador
id_bairro_tomador           = retira_entrega.bairro_tomador


Quando("eu o Destinatário Tomador Localidade R|R|R") do
    cep_remetente = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    sleep 5
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_remetente
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia 
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro               
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro  
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro
end                                                                                     

Entao("O sistema deve selecionar a opção de Retira sem a possibilidade de alteração") do  
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-9-button']/div[@class='mat-button-toggle-label-content']")
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-8-button']/div[@class='mat-button-toggle-label-content']")
end           

Quando("eu o Destinatário Tomador Localidade NULL|R|R") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    # >> Remetente <<
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    # >> Destinatário <<
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    # >> Tomador <<
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
end

Quando("eu o Destinatário Tomador Localidade R|NULL|R") do               
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in 'mat-input-13', with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro              
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end

  Quando("o Destinatário Tomador Localidade NULL|NULL|R") do                   
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente, with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                 
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end                                                                          
  
  Quando("eu o Destinatário Tomador Localidade R|R|E") do ##############################################################################
    localidade = "48745000"
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok    
  end                                                                                      
                                                                                           
  Entao("O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração") do
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-9-button']/div[@class='mat-button-toggle-label-content']")
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-8-button']/div[@class='mat-button-toggle-label-content']")            
  end 
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|E") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                  
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|E") do 
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|E") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                  
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade R|R|RE") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in 'mat-input-13', with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro              
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|RE") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente,with: bairro
    fill_in id_numero_remetente, with: numero_residencia 
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|RE") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|RE") do
    cep_retira = '13000000'
    cep_retira1 = '37210000'
    cep_retira2 = '1000000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente,with: bairro
    fill_in id_numero_remetente, with: '0' 
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro               
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  ##############################################################################################
  Entao("O sistema deve selecionar a opção de Retira podendo alterar também para Entrega") do
    #expect(page).has_content? (:css, "background#535669")
  end
  
  Quando("eu o Destinatário Tomador Localidade R|R|NULL") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                 
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|NULL") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|NULL") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in 'mat-input-13', with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro           
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|NULL") do
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    #Remetente
    fill_in id_remetente, with: cpf_cnpj_remetente_ok #CNPJ/CPF
    page.find(:xpath, editar_remetente).click
    fill_in id_cep_remetente, with: cep_retira
    fill_in id_bairro_remetente ,with: bairro
    fill_in id_numero_remetente, with: numero_residencia
    #Destinatário
    fill_in id_destinatario, with: cpf_cnpj_destinatario_ok 
    page.find(:xpath, editar_destinatario).click
    fill_in id_cep_destinatario, with: ' '
    fill_in id_logradouro_destinatario, with: ' '
    fill_in id_numero_destinatario, with: ' '
    fill_in id_bairro_destinatario, with: ' '
    fill_in id_cep_destinatario, with: cep_retira1
    fill_in id_logradouro_destinatario, with: logradouro
    fill_in id_numero_destinatario, with: numero_residencia
    fill_in id_bairro_destinatario, with: bairro                
    click_button(id_outros)
    fill_in id_tomador, with: cpf_cnpj_tomador_ok
    page.find(:xpath, editar_tomador).click
    fill_in id_cep_tomador, with: ' ' 
    fill_in id_logradouro_tomador, with: ' '
    fill_in id_numero_tomador, with: ' ' 
    fill_in id_bairro_tomador, with: ' '
    fill_in id_cep_tomador, with: cep_retira2
    fill_in id_logradouro_tomador, with: logradouro
    fill_in id_numero_tomador, with: numero_residencia
    fill_in id_bairro_tomador, with: bairro  
  end