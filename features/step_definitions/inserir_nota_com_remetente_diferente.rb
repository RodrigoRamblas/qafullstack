Dado("que eu estou logado no sistema com usuario valido") do                 
    visit 'http://localhost:90/#/login'
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")                                     
    click_button("expand_more")
    sleep 2
    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
    page.find(:xpath, saopaulo).click
    sleep 1
    click_button("Entrar")
    expect(page).to have_content("Emissão de CT-e")
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => "23180322165464000190550010002116581117718352"}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button 'Adicionar nota'
  end                                                                          
                                                                               
  Quando("eu coloco o CPF ou CNPJ do remetente da NF-e diferente") do       
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => "42180310832644000108550010006234201143460688"}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button 'Adicionar nota'
  end                                                                                                                                                
                                                                               
  Entao("o sistema apresenta a msg de o CPF ou CNPJ do remetente da NF-e está diferente da inserida") do
    expect(page).to have_content("*O CPF/CNPJ do remetente da NF-e está diferente da inserida")
  end                                                                          