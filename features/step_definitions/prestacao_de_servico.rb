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
    fill_in 'mat-input-26', with: ' '
    fill_in 'mat-input-27', with: ' '
    fill_in 'mat-input-28', with: ' '
    fill_in 'mat-input-30', with: ' '
    fill_in 'mat-input-26', with: cep_inativo
    sleep 200
  end                                                                          
                                                                               
  Entao("eu verifico se apareceu a msg de localicade não atendida") do         
    expect(page).to have_content("Aqui você pode padronizar informações que são comuns do seu emissor")
 end                                                                          