Quando("eu coloco a nota fiscal Valida na tela") do
    click_button('Entrar')                      
    @nota1 = "33181192080035000368550000000722091011209774"                             
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota1}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button('Adicionar nota')
    click_button("expand_more")
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
  end
  
  Entao("a nota deve ser add") do
    string = "Frete"          
    expect(page).to have_content(string) 
  end


