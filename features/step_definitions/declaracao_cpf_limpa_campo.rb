Quando("em remetente eu coloco outro CPF") do
    click_button("Entrar")
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click
    click_button("expand_more")
    sleep 2
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
    sleep 1
    click_button("Frete")
    fill_in 'mat-input-2', with: "74555427807" 
    fill_in 'mat-input-3', with: "Rodrigo"
    fill_in 'mat-input-2', with: "74555427897" 
  end
  
  Entao("deve limpar os campo preenchidos do remetente") do
    expect(page).to have_content("Remetente")
    sleep 2
  end
  
  Quando("em destinaratio eu coloco outro CPF") do
    click_button("Entrar")
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click
    click_button("expand_more")
    sleep 2
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
    sleep 1
    click_button("Frete")
    fill_in 'mat-input-22', with: "74555427807" 
    fill_in 'mat-input-23', with: "Rodrigo"
    fill_in 'mat-input-22', with: "74555427897" 
    sleep 2
  end
  
  Entao("deve limpar os campo preenchidos do destinatario") do
    expect(page).to have_content("Remetente")
  end