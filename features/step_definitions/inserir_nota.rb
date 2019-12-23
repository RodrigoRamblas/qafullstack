Quando("eu coloco a nota fiscal Valida") do
  click_button('Entrar')                                 
  @nota1 = "33181192080035000368550000000722091011209774"
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = "XX/XX/XXXX"                        
  fill_in(placeholder, options = {:placeholder => placeholder, :with => @nota1}) #NF
  fill_in(data, options = {:placeholder => data, :with => " "}) #Data
  click_button('Adicionar nota')
  click_button("expand_more")
  encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
  page.find(:xpath, encomendas).click
  click_button("Frete")
end
  
Entao("o sistema deve mostrar as notas do CT-e") do
  expect(page).to have_content("Remetente") 
end