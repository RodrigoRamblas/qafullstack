Quando("eu coloco uma localidade não atendida") do 
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "48335762600"
  destinatario_ok = "33224031816"
  cep_inativo = '68912350'
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'                
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with:  destinatario_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span" 
  page.find(:xpath, editar).click
  fill_in 'mat-input-31', with: ' '
  fill_in 'mat-input-32', with: ' '
  fill_in 'mat-input-33', with: ' '
  fill_in 'mat-input-35', with: ' '
  fill_in 'mat-input-31', with: cep_inativo
  fill_in 'mat-input-32', with: ' '
  sleep 2
end                                                                          
                                                                             
Entao("eu verifico se apareceu a msg de localicade não atendida") do         
  expect(page).to have_content("Localidade não atendida")
end      

Quando("eu coloco um CEP com localidade inativa associada no Remetente") do
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "48335762600"
  destinatario_ok = "33224031816"
  cep_inativo = '68912350'
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  page.find(:xpath, editar).click
  fill_in 'mat-input-11', with: ' '
  fill_in 'mat-input-12', with: ' '
  fill_in 'mat-input-13', with: ' '
  fill_in 'mat-input-15', with: ' '
  fill_in 'mat-input-11', with: cep_inativo
  fill_in 'mat-input-12', with: ' '
end

Entao("O componente deve sobrescrever a localidade inserida anteriormente e informar que está inativa. E não deve habilitar o botão no final da tela.") do
  expect(page).to have_content("Localidade inativa")
end

Quando("eu coloco um CEP com localidade não atendida associada no Expedidor") do
  nota = '35190543648971000155550050006365241050820173'
  remetente_ok = "48335762600"
  destinatario_ok = "33224031816"
  tomador_ok = "11974117634"
  cep_inativo = '68912350'
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = 'XX/XX/XXXX'                             
  #Remetente
  fill_in 'Remetente', with: remetente_ok #CNPJ/CPF
  #Destinatário
  fill_in 'Destinatario', with:  destinatario_ok #CNPJ/CPF
  editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span" 
  page.find(:xpath, editar).click
  click_button("Outros")
  fill_in 'mat-input-47', with: tomador_ok #CNPJ/CPF
end                                                                                                          
                                                                                                           
Entao("O componente deve sobrescrever a localidade inserida anteriormente e não fazer nenhuma validação.") do
expect(page).to have_content("Sobre o transporte")#falta implementar                               
end                                                                                                          