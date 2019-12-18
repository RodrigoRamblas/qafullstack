  Quando("eu coloco o CPF ou CNPJ do remetente da NF-e diferente") do
    sleep 20    
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => "42180310832644000108550010006234201143460688"}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button 'Adicionar nota'
  end                                                                                                                                                
                                                                               
  Entao("o sistema apresenta a msg de o CPF ou CNPJ do remetente da NF-e está diferente da inserida") do
    expect(page).to have_content("*O CPF/CNPJ do remetente da NF-e está diferente da inserida")
  end                                                                          