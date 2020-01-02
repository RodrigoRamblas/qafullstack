cliente_inativo           = Cliente_inativo.new
frete                     = Frete.new
retira_entrega            = Retira_Entrega.new

id_remetente              = frete.remetente
id_destinatario           = retira_entrega.destinatario
cpf_cnpj_cliente_inativo  = cliente_inativo.cpf_cnpj_cliente_inativo
remetente_ok              = retira_entrega.remetente_ok
destinatario_nok          = retira_entrega.destinatario_nok
redespacho                = cliente_inativo.redespacho
redespachante_tomador_nok = cliente_inativo.redespachante_tomador_nok
destinatario_ok           = retira_entrega.destinatario_ok
id_redespachante          = cliente_inativo.redespachante 
remetente_ok_com_mgs      = retira_entrega.remetente_ok_com_mgs    
expedidor                 = cliente_inativo.expedidor     
recebedor                 = cliente_inativo.recebedor


Quando("eu coloco um usuario inativo") do 
  fill_in id_remetente, with: cpf_cnpj_cliente_inativo
  sleep 120
  end                                                                          
                                                                               
  Entao("eu verifico se apareceu a msg de usuario inativo") do                 
    expect(page).to have_xpath("//fieldset[1]/div[@class='row']/div[@class='col-5 form-group c-input-cpf-cnpj']/span[@class='c-alert-inativo top']")
    expect(page).to have_content("Cliente inativo")
  end     

  Entao("eu verifico se o botão CIF está inativo") do
    expect(page).to have_content("CIF") 
  end

  Quando("eu coloco um usuario ativo") do                                      
    fill_in id_remetente, with: cpf_cnpj_cliente_inativo
  end                                                                          
                                                                               
  Entao("eu verifico se o botão CIF está disponivel") do                       
    expect(page).to have_content("CIF")
  end

  Quando("eu coloco um remetente ativo e um destinatario inativo") do
    fill_in id_remetente, with: remetente_ok #CNPJ/CPF
    fill_in id_destinatario, with:  destinatario_nok #CNPJ/CPF
  end
  
  Entao("o sistema deixa o botão FOB desabilitado") do
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-4-button' and @disabled]")
  end
  
  Quando("eu coloco um remetente ativo e um destinatario ativo e um expedidor inativo") do    
    #Remetente
    fill_in id_remetente, with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in id_destinatario, with:  destinatario_ok #CNPJ/CPF
    #Redespachante/Tomador
    page.find(:xpath, redespacho).click
    fill_in id_redespachante, with:  redespachante_tomador_nok #CNPJ/CPF
  end                                                                                                                                     
  
  Entao("o sistema apresenta uma msg de Epa, Redespachante ou Tomador inválido, verifique se você preencheu corretamente as informações.") do                                                                                                                                                                                              
    expect(page).should have_no_xpath("//div[@class='dialog-content']/p")
  end
  
  Quando("eu coloco um remetente ativo que tenha msg") do                                          
    fill_in id_remetente, with: remetente_ok_com_mgs #CNPJ/CPF
  end
  
  Entao("o sistema apresenta as msg.") do
    expect(page).should have_no_xpath("//div[@class='header-custom-popover ng-star-inserted']")
  end 
  
  Quando("eu coloco um remetente ativo e um destinatario ativo e um tomador inativo") do
    remetente_ok = "48335762600"
    destinatario_ok = '11974117634' #msg de 5 erros
    redespachante_tomador_nok = '21126271000168'
    #Remetente
    fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in 'Destinatario', with:  destinatario_ok #CNPJ/CPF
    #Redespachante/Tomador
    click_button("Outros")
    fill_in 'Destinatario', with:  redespachante_tomador_nok #CNPJ/CPF       
  end     
  
  Quando("eu coloco uma localidade não atendida associada no remetente") do
    remetente_ok = "33224031816"
    cep_nok = '68912350'
    #Remetente
    fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
    page.find(:xpath, editar).click
    fill_in 'mat-input-11', with: ' ' 
    fill_in 'mat-input-12', with: ' '
    fill_in 'mat-input-13', with: ' ' 
    fill_in 'mat-input-12', with: ' ' 
    fill_in 'mat-input-11', with: cep_nok
    fill_in 'mat-input-12', with: ' '
  end
  
  Entao("o componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.") do
    expect(page).should have_no_xpath("//mat-error[@id='mat-error-339']")
  end

  Quando("eu coloco uma  localidade não atendida associada no expedidor") do   
    remetente_ok = "33224031816"
    expedidor_nok = "17155342000183"
    cep_nok = '68912350'
    #Remetente
    fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
    expedidor = "//mat-checkbox[@id='mat-checkbox-15']/label/div" 
    page.find(:xpath, expedidor).click
    fill_in expedidor, with: expedidor_nok
  end      
                                                                                           
Quando("eu coloco um cliente no Redespacho e não selecionar a opção de expedidor") do    
  remetente_ok = "48335762600"
  destinatario_ok = '11974117634' #msg de 5 erros
  redespachante_tomador_ok = '06225593624'
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with:  destinatario_ok #CNPJ/CPF
  #Redespachante/Tomador
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  fill_in 'mat-input-57', with:  redespachante_tomador_ok #CNPJ/CPF           
end                                                                                      
                                                                                         
Entao("o cliente deve ser inserido sem alteração nos campos de Prestação de Serviço.") do
  expect(page).to have_content("CLAUDIO - MG")
  expect(page).to have_content("BARBACENA - MG")           
end                                                                                                                                                          

# Quando("eu coloco o Redespacho depois do cliente inserido Expedidor inserido") do
#   remetente_ok = "33224031816"
#   expedidor_ok = "06068962601"
#   redespachante_tomador_ok = "66224063672"
#   #Remetente
#   fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
#   expedidor = "//mat-checkbox[@id='mat-checkbox-15']/label/div" 
#   page.find(:xpath, expedidor).click
#   fill_in 'mat-input-17', with: expedidor_ok 
#   sleep 300
#   redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
#   page.find(:xpath, redespacho).click
#   #Falta implementar
#   fill_in 'mat-input-57', with:  redespachante_tomador_ok #CNPJ/CPF                                             
# end                                                                                                                          

# Entao("o componente deve sobrescrever a localidade inserida anteriormente no expedidor e validar a praça e se está ativo") do
#   expect(page).to have_content("Redespachante/Tomador")                                               
# end                                                                                                                          

Quando("eu coloco um CEP com localidade não atendida associada no Redespacho") do                           
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  redespachante_tomador_ok = "66224063672"
  cep_nok = '36033640'                                                                                                          
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok 
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  #Falta implementar
  fill_in 'mat-input-57', with:  redespachante_tomador_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-61', with: ' ' 
  fill_in 'mat-input-62', with: ' '
  fill_in 'mat-input-63', with: ' ' 
  fill_in 'mat-input-65', with: ' ' 
  fill_in 'mat-input-61', with: cep_nok
  fill_in 'mat-input-62', with: ' '                      
end                                                                                                         
                                                                                                            
Entao("O componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação") do
  expect(page).to_not have_content("CAMPINAS - SP")
  puts "XXXXXX -> BUG 138953 <- "                               
end      

Quando("eu coloco um CEP com localidade inativa associada no Redespacho") do                                                                              
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  redespachante_tomador_ok = "66224063672"
  cep_nok = '68912350'                                                                                                          
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok 
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  #Falta implementar
  fill_in 'mat-input-57', with:  redespachante_tomador_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-61', with: ' ' 
  fill_in 'mat-input-62', with: ' '
  fill_in 'mat-input-63', with: ' ' 
  fill_in 'mat-input-65', with: ' ' 
  fill_in 'mat-input-61', with: cep_nok
  fill_in 'mat-input-62', with: ' '                      
end                                                                                                                                                     
                                                                                                                                                                 
Quando("eu coloco um CEP com localidade não atendida associada no Destinatário") do                                                                                 
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  cep_nok = '39404074'                                                                                                          

  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-31', with: ' ' 
  fill_in 'mat-input-32', with: ' '
  fill_in 'mat-input-33', with: ' ' 
  fill_in 'mat-input-30', with: ' ' 
  fill_in 'mat-input-35', with: cep_nok
  fill_in 'mat-input-32', with: ' '                                                                                          
end                                                                                                                                                                 

Entao("O componente deve sobrescrever a localidade inserida anteriormente e informar que a praça não é atendida. E não deve habilitar o botão no final da tela.") do
  expect(page).should have_no_xpath("//mat-error[@id='mat-error-490']")                                                                                      
end

Quando("eu coloco um CEP com localidade inativa associada no Destinatário") do
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  cep_nok = '14800000'                                                                                                          
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click

  fill_in 'mat-input-31', with: ' ' 
  fill_in 'mat-input-32', with: ' '
  fill_in 'mat-input-33', with: ' ' 
  fill_in 'mat-input-30', with: ' ' 
  fill_in 'mat-input-35', with: cep_nok
  fill_in 'mat-input-32', with: ' '    
end

Entao("o componente deve sobrescrever a localidade inserida anteriormente e informar que está inativa. E não deve habilitar o botão no final da tela.") do
  expect(page).should have_no_xpath("//mat-error[@id='mat-error-490']")
end

Quando("eu coloco um CEP com localidade não atendida associada no Recebedor") do
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  recebedor_ok = "08415592876"
  cep_nok = '39404074'                                                                                                          
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok
  #Recebedor
  recebedor = "//mat-checkbox[@id='mat-checkbox-17']/label/div"
  page.find(:xpath, recebedor).click
  fill_in recebedor, with: recebedor_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/div/app-pessoa/form/div/button"
  page.find(:xpath, editar).click
  fill_in 'mat-input-41', with: ' ' 
  fill_in 'mat-input-42', with: ' '                                                                                                             
  fill_in 'mat-input-43', with: ' ' 
  fill_in 'mat-input-45', with: ' ' 
  fill_in 'mat-input-41', with: cep_nok
  fill_in 'mat-input-42', with: ' '  
end

Quando("eu coloco um CEP com localidade inativa associada no Recebedor") do
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  recebedor_ok = "08415592876"
  cep_nok = '37101000'                                                                                                          
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with: destinatario_ok
  #Recebedor
  recebedor = "//mat-checkbox[@id='mat-checkbox-17']/label/span"
  page.find(:xpath, recebedor).click
  fill_in 'mat-input-37', with: recebedor_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/div/app-pessoa/form/div/button"
  page.find(:xpath, editar).click
  fill_in 'mat-input-41', with: ' ' 
  fill_in 'mat-input-42', with: ' '                                                                                                             
  fill_in 'mat-input-43', with: ' ' 
  fill_in 'mat-input-45', with: ' ' 
  fill_in 'mat-input-41', with: cep_nok
  fill_in 'mat-input-42', with: ' ' 
end