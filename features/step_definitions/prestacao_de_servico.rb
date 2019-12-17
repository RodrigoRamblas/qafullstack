Quando("eu coloco uma localidade não atendida") do                           
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "48335762600"
    destinatario_ok = "33224031816"
    cep_inativo = '68912350'
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
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span" 
    page.find(:xpath, editar).click
    sleep 2
    fill_in 'mat-input-26', with: ' '
    fill_in 'mat-input-27', with: ' '
    fill_in 'mat-input-28', with: ' '
    fill_in 'mat-input-30', with: ' '
    fill_in 'mat-input-26', with: cep_inativo
    fill_in 'mat-input-27', with: ' '
    sleep 2
  end                                                                          
                                                                               
  Entao("eu verifico se apareceu a msg de localicade não atendida") do         
    expect(page).to have_content("Localidade não atendida")
  end      
  
  Quando("eu coloco um CEP com localidade inativa associada no Remetente") do
    click_button 'Entrar' #Btn Entrar da tela Selecione Filial/Garagem
    nota = '35190543648971000155550050006365241050820173'
    remetente_ok = "48335762600"
    cep_inativo = '68912350'
    placeholder = 'ex: 97898704021218987040212189870402198704021218'
    data = 'XX/XX/XXXX'
    fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => ' '}) #Data
    click_button 'Adicionar nota'
    click_button 'ENCOMENDAS'
    click_button 'Frete'
    #Remetente
    fill_in 'mat-input-2', with: remetente_ok #CNPJ/CPF
    editar = "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    page.find(:xpath, editar).click
    fill_in 'mat-input-6', with: ' '
    fill_in 'mat-input-7', with: ' '
    fill_in 'mat-input-8', with: ' '
    fill_in 'mat-input-10', with: ' '
    fill_in 'mat-input-6', with: cep_inativo
    fill_in 'mat-input-7', with: ' '
    sleep 2
  end
  
  Entao("O componente deve sobrescrever a localidade inserida anteriormente e informar que está inativa. E não deve habilitar o botão no final da tela.") do
    expect(page).to have_content("Localidade inativa")
end