Quando("eu o Destinatário Tomador Localidade R|R|R") do
    remetente_ok = "48700606634"
    destinatario_ok = "69437211604"
    tomador_ok = "05772286684"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
end                                                                                     

Entao("O sistema deve selecionar a opção de Retira sem a possibilidade de alteração") do  
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-9-button']/div[@class='mat-button-toggle-label-content']")
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-8-button']/div[@class='mat-button-toggle-label-content']")
end           

Quando("eu o Destinatário Tomador Localidade NULL|R|R") do
    remetente_ok = "48700606634"
    destinatario_ok = "07633886617"
    tomador_ok = "05772286684"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
end

Quando("eu o Destinatário Tomador Localidade R|NULL|R") do               
    remetente_ok = "48700606634"
    destinatario_ok = "69437211604"
    tomador_ok = "03293456642"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro' 
  end

  Quando("o Destinatário Tomador Localidade NULL|NULL|R") do                   
    remetente_ok = "48700606634"
    destinatario_ok = "30411577050"
    tomador_ok = "63816636004"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37177000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end                                                                          
  
  Quando("eu o Destinatário Tomador Localidade R|R|E") do                                  ##############################################################################
    remetente_ok = "48700606634"
    destinatario_ok = "69437211604"
    tomador_ok = "05772286684"
    localidade = "48745000"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok  
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok    
  end                                                                                      
                                                                                           
  Entao("O sistema deve selecionar a opção de Entrega sem a possibilidade de alteração") do
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-9-button']/div[@class='mat-button-toggle-label-content']")
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-8-button']/div[@class='mat-button-toggle-label-content']")            
  end 
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|E") do
    remetente_ok = "48700606634"
    destinatario_ok = "03293456642"
    tomador_ok = "48700606634"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|E") do 
    remetente_ok = "48700606634"
    destinatario_ok = "48700606634"
    tomador_ok = "03293456642"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|E") do
    remetente_ok = "48700606634"
    destinatario_ok = "30411577050"
    tomador_ok = "03293456642"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '46920000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade R|R|RE") do
    remetente_ok = "48700606634"
    destinatario_ok = "48700606634"
    tomador_ok = "05772286684"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|RE") do
    remetente_ok = "48700606634"
    destinatario_ok = "30411577050"
    tomador_ok = "05772286684"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|RE") do
    remetente_ok = "48700606634"
    destinatario_ok = "05772286684"
    tomador_ok = "30411577050"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|RE") do
    remetente_ok = "63816636004"
    destinatario_ok = "03293456642"
    tomador_ok = "30411577050"
    cep_retira = '13000000'
    cep_retira1 = '37210000'
    cep_retira2 = '1000000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
    sleep 10
  end
  ##############################################################################################
  Entao("O sistema deve selecionar a opção de Retira podendo alterar também para Entrega") do
    #expect(page).has_content? (:css, "background#535669")
  end
  
  Quando("eu o Destinatário Tomador Localidade R|R|NULL") do
    remetente_ok = "48700606634"
    destinatario_ok = "30411577050"
    tomador_ok = "63816636004"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|R|NULL") do
    remetente_ok = "03293456642"
    destinatario_ok = "30411577050"
    tomador_ok = "63816636004"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade R|NULL|NULL") do
    remetente_ok = "30411577050"
    destinatario_ok = "03293456642"
    tomador_ok = "63816636004"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end
  
  Quando("eu o Destinatário Tomador Localidade NULL|NULL|NULL") do
    remetente_ok = "30411577050"
    destinatario_ok = "03293456642"
    tomador_ok = "34896029860"
    cep_retira = '48745000'
    cep_retira1 = '48405000'
    cep_retira2 = '37210000'
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    editar1 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"                                                                                                       
    editar2 = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    #Remetente
    fill_in 'mat-input-7', with: remetente_ok #CNPJ/CPF
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: cep_retira
    fill_in 'mat-input-15',with: 'Centro'
    fill_in 'mat-input-13', with: '0' 
    #Destinatário
    fill_in 'mat-input-27', with: destinatario_ok 
    page.find(:xpath, editar1).click
    fill_in 'mat-input-31', with: ' '
    fill_in 'mat-input-32', with: ' '  
    fill_in 'mat-input-33', with: ' '
    fill_in 'mat-input-35', with: ' '
    fill_in 'mat-input-31', with: cep_retira1
    fill_in 'mat-input-32', with: 'Centro'
    fill_in 'mat-input-33', with: '0'
    fill_in 'mat-input-35', with: 'Centro'                
    click_button("Outros")
    fill_in 'mat-input-47', with: tomador_ok
    page.find(:xpath, editar2).click
    fill_in 'mat-input-51', with: ' '
    fill_in 'mat-input-52', with: ' '  
    fill_in 'mat-input-53', with: ' '
    fill_in 'mat-input-55', with: ' '
    fill_in 'mat-input-51', with: cep_retira2
    fill_in 'mat-input-52', with: 'Centro'  
    fill_in 'mat-input-53', with: '0'
    fill_in 'mat-input-55', with: 'Centro'
  end