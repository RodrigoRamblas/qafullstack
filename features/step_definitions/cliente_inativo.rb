Quando("eu coloco um usuario inativo") do 
  click_button('Entrar')                                 
  @nota1 = "33181192080035000368550000000722091011209774"                             
  fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota1}) #NF
  fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
  click_button('Adicionar nota')
  click_button("expand_more")
  encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
  page.find(:xpath, encomendas).click
  click_button("Frete")
  cnpj_cpf = "17155342000183"
  fill_in 'mat-input-2', with: cnpj_cpf
  end                                                                          
                                                                               
  Entao("eu verifico se apareceu a msg de usuario inativo") do                 
    expect(page).to have_xpath("//fieldset[1]/div[@class='row']/div[@class='col-5 form-group c-input-cpf-cnpj']/span[@class='c-alert-inativo top']")
  end     
  
  Entao("eu verifico se o botão CIF está inativo") do
    sleep 3
    expect(page).to have_content("CIF") 
  end

  Quando("eu coloco um usuario ativo") do                                      
    click_button('Entrar')                                 
    @nota1 = "33181192080035000368550000000722091011209774"                             
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota1}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button('Adicionar nota')
    click_button("expand_more")
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
    click_button("Frete")
    cnpj_cpf = "33224031816"
    fill_in 'mat-input-2', with: cnpj_cpf
  end                                                                          
                                                                               
  Entao("eu verifico se o botão CIF está disponivel") do                       
    sleep 3
    expect(page).to have_content("CIF")
  end

  Quando("eu coloco um remetente ativo e um destinatario inativo") do
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "33224031816"
    destinatario_nok = '17155342000183'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in 'mat-input-22', with:  destinatario_nok #CNPJ/CPF
  end
  
  Entao("o sistema deixa o botão FOB desabilitado") do
    expect(page).should have_no_xpath("//button[@id='mat-button-toggle-4-button' and @disabled]")
  end
  
  Quando("eu coloco um remetente ativo e um destinatario ativo e um expedidor inativo") do    
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "48335762600"
    destinatario_ok = '11974117634' #msg de 5 erros
    redespachante_tomador_nok = '21126271000168'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in 'mat-input-22', with:  destinatario_ok #CNPJ/CPF
    #Redespachante/Tomador
    redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
    page.find(:xpath, redespacho).click
    fill_in 'mat-input-52', with:  redespachante_tomador_nok #CNPJ/CPF
  end                                                                                                                                     
  
  Entao("o sistema apresenta uma msg de Epa, Redespachante ou Tomador inválido, verifique se você preencheu corretamente as informações.") do                                                                                                                                                                                              
    expect(page).should have_no_xpath("//div[@class='dialog-content']/p")
  end
  
  Quando("eu coloco um remetente ativo que tenha msg") do                                          
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = '66425133000118' #msg de 5 erros
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  end
  
  Entao("o sistema apresenta as msg.") do
    expect(page).should have_no_xpath("//div[@class='header-custom-popover ng-star-inserted']")
  end 
  
  Quando("eu coloco um remetente ativo e um destinatario ativo e um tomador inativo") do
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "48335762600"
    destinatario_ok = '11974117634' #msg de 5 erros
    redespachante_tomador_nok = '21126271000168'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    #Destinatário
    fill_in 'mat-input-22', with:  destinatario_ok #CNPJ/CPF
    #Redespachante/Tomador
    click_button("Outros")
    fill_in 'mat-input-42', with:  redespachante_tomador_nok #CNPJ/CPF       
  end     
  
  Quando("eu coloco uma localidade não atendida associada no remetente") do
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "33224031816"
    cep_nok = '68912350'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
    page.find(:xpath, editar).click
    fill_in 'mat-input-6', with: ' ' 
    fill_in 'mat-input-7', with: ' '
    fill_in 'mat-input-8', with: ' ' 
    fill_in 'mat-input-10', with: ' ' 
    fill_in 'mat-input-6', with: cep_nok
    fill_in 'mat-input-7', with: ' '
  end
  
  Entao("o componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.") do
    expect(page).should have_no_xpath("//mat-error[@id='mat-error-339']")
  end

  Quando("eu coloco uma  localidade não atendida associada no expedidor") do   
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "33224031816"
    expedidor_nok = "17155342000183"
    cep_nok = '68912350'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    expedidor = "//mat-checkbox[@id='mat-checkbox-15']/label/div" 
    page.find(:xpath, expedidor).click
    fill_in 'mat-input-12', with: expedidor_nok
  end      
                                                                                           
Quando("eu coloco um cliente no Redespacho e não selecionar a opção de expedidor") do    
  click_button("Entrar")
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "48335762600"
  destinatario_ok = '11974117634' #msg de 5 erros
  redespachante_tomador_ok = '06225593624'
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with:  destinatario_ok #CNPJ/CPF
  #Redespachante/Tomador
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  fill_in 'mat-input-52', with:  redespachante_tomador_ok #CNPJ/CPF           
end                                                                                      
                                                                                         
Entao("o cliente deve ser inserido sem alteração nos campos de Prestação de Serviço.") do
  expect(page).to have_content("CLAUDIO - MG")
  expect(page).to have_content("BARBACENA - MG")           
end                                                                                                                                                          

Quando("eu coloco o Redespacho depois do cliente inserido Expedidor inserido") do
  sleep 3                                         
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  expedidor_ok = "06068962601"
  redespachante_tomador_ok = "66224063672"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  expedidor = "//mat-checkbox[@id='mat-checkbox-15']/label/div" 
  page.find(:xpath, expedidor).click
  fill_in 'mat-input-12', with: expedidor_ok 
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  #Falta implementar
  fill_in 'mat-input-52', with:  redespachante_tomador_ok #CNPJ/CPF                                             
end                                                                                                                          

Entao("o componente deve sobrescrever a localidade inserida anteriormente no expedidor e validar a praça e se está ativo") do
  expect(page).to have_content("Redespachante/Tomador")                                               
end                                                                                                                          

Quando("eu coloco um CEP com localidade não atendida associada no Redespacho") do                           
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  redespachante_tomador_ok = "66224063672"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '36033640'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok 
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  #Falta implementar
  fill_in 'mat-input-52', with:  redespachante_tomador_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-56', with: ' ' 
  fill_in 'mat-input-57', with: ' '
  fill_in 'mat-input-58', with: ' ' 
  fill_in 'mat-input-60', with: ' ' 
  fill_in 'mat-input-56', with: cep_nok
  fill_in 'mat-input-57', with: ' '                      
end                                                                                                         
                                                                                                            
Entao("O componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação") do
  expect(page).to_not have_content("CAMPINAS - SP")
  puts "XXXXXX -> BUG 138953 <- "                               
end      

Quando("eu coloco um CEP com localidade inativa associada no Redespacho") do                                                                              
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  redespachante_tomador_ok = "66224063672"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '68912350'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok 
  redespacho = "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
  page.find(:xpath, redespacho).click
  #Falta implementar
  fill_in 'mat-input-52', with:  redespachante_tomador_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-56', with: ' ' 
  fill_in 'mat-input-57', with: ' '
  fill_in 'mat-input-58', with: ' ' 
  fill_in 'mat-input-60', with: ' ' 
  fill_in 'mat-input-56', with: cep_nok
  fill_in 'mat-input-57', with: ' '                      
end                                                                                                                                                     
                                                                                                                                                                 
Quando("eu coloco um CEP com localidade não atendida associada no Destinatário") do                                                                                 
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '39404074'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-26', with: ' ' 
  fill_in 'mat-input-27', with: ' '
  fill_in 'mat-input-28', with: ' ' 
  fill_in 'mat-input-30', with: ' ' 
  fill_in 'mat-input-26', with: cep_nok
  fill_in 'mat-input-27', with: ' '                                                                                          
end                                                                                                                                                                 
                                                                                                                                                                    
Entao("O componente deve sobrescrever a localidade inserida anteriormente e informar que a praça não é atendida. E não deve habilitar o botão no final da tela.") do
  expect(page).should have_no_xpath("//mat-error[@id='mat-error-490']")                                                                                      
end

Quando("eu coloco um CEP com localidade inativa associada no Destinatário") do
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '14800000'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
  page.find(:xpath, editar).click
  fill_in 'mat-input-26', with: ' ' 
  fill_in 'mat-input-27', with: ' '
  fill_in 'mat-input-28', with: ' ' 
  fill_in 'mat-input-30', with: ' ' 
  fill_in 'mat-input-26', with: cep_nok
  fill_in 'mat-input-27', with: ' ' 
end

Entao("o componente deve sobrescrever a localidade inserida anteriormente e informar que está inativa. E não deve habilitar o botão no final da tela.") do
  expect(page).should have_no_xpath("//mat-error[@id='mat-error-490']")
end

Quando("eu coloco um CEP com localidade não atendida associada no Recebedor") do
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  recebedor_ok = "08415592876"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '39404074'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok
  #Recebedor
  recebedor = "//mat-checkbox[@id='mat-checkbox-17']/label/div"
  page.find(:xpath, recebedor).click
  fill_in 'mat-input-32', with: recebedor_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/div/app-pessoa/form/div/button"
  page.find(:xpath, editar).click
  fill_in 'mat-input-36', with: ' ' 
  fill_in 'mat-input-37', with: ' '                                                                                                             
  fill_in 'mat-input-38', with: ' ' 
  fill_in 'mat-input-40', with: ' ' 
  fill_in 'mat-input-36', with: cep_nok
  fill_in 'mat-input-37', with: ' '  
end

Quando("eu coloco um CEP com localidade inativa associada no Recebedor") do
  click_button 'Entrar' 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "33224031816"
  destinatario_ok = "06068962601"
  recebedor_ok = "08415592876"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  cep_nok = '37101000'                                                                                                          
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
  click_button 'Adicionar nota'
  click_button 'ENCOMENDAS'
  click_button 'Frete'
  #Remetente
  fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'mat-input-22', with: destinatario_ok
  #Recebedor
  recebedor = "//mat-checkbox[@id='mat-checkbox-17']/label/span"
  page.find(:xpath, recebedor).click
  fill_in 'mat-input-32', with: recebedor_ok
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/div/app-pessoa/form/div/button"
  page.find(:xpath, editar).click
  fill_in 'mat-input-36', with: ' ' 
  fill_in 'mat-input-37', with: ' '                                                                                                             
  fill_in 'mat-input-38', with: ' ' 
  fill_in 'mat-input-40', with: ' ' 
  fill_in 'mat-input-36', with: cep_nok
  fill_in 'mat-input-37', with: ' '
end