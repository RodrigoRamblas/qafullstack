Quando("eu coloco a nota fiscal Valida") do
  click_button('Entrar')   
  number = rand(2) 
  puts number
  case number
  when 0
    nota = "33181192080035000368550000000722091011209774"
  when 1
    nota = "35190543648971000155550050006365241050820173"
  when 2
    nota = "43181208879643000169550010000217631783509961"
  else
    puts "Erro de número random"
  end
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = "XX/XX/XXXX"                        
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  #click_button('Consultar SEFAZ')
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

Quando("eu coloco a nota fiscal Valida e clico no botão SEFAZ") do
  click_button('Entrar')   
  number = rand(2) 
  case number
  when 0
    nota = "33181192080035000368550000000722091011209774"
  when 1
    nota = "35190543648971000155550050006365241050820173"
  when 2
    nota = "43181208879643000169550010000217631783509961"
  else
    puts "Erro de número random"
  end
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = "XX/XX/XXXX"                        
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  click_button('Consultar SEFAZ')
  click_button('Adicionar nota')
  click_button("expand_more")
  encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
  page.find(:xpath, encomendas).click
  click_button("Frete")
end

Quando("eu clico no botão {string}") do |string|
  sleep 3
  click_button('Voltar')
  sleep 3                           
  click_button('clear')                            
end                                                                           

Quando("eu coloco a nf e vou para a tela de Frete") do
  click_button('Entrar')   
  number = rand(2) 
  case number
  when 0
    nota = "33181192080035000368550000000722091011209774"
  when 1
    nota = "35190543648971000155550050006365241050820173"
  when 2
    nota = "43181208879643000169550010000217631783509961"
  else
    puts "Erro de número random"
  end
  placeholder = 'ex: 97898704021218987040212189870402198704021218'                     
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  click_button('Consultar SEFAZ')
  click_button('Adicionar nota')
  click_button("expand_more")
  encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
  page.find(:xpath, encomendas).click
  click_button("Frete")
end

Quando("Clico no botão voltar") do
  click_button 'Voltar'
end

Quando("Add outra nf e clico no campo Data de emissão") do
  number = rand(2) 
  case number
  when 0
    nota = "33181192080035000368550000000722091011209774"
  when 1
    nota = "35190543648971000155550050006365241050820173"
  when 2
    nota = "43181208879643000169550010000217631783509961"
  else
    puts "Erro de número random"
  end
  sleep 3
  click_button 'Voltar'
  sleep 3
  click_button 'clear'                    
  placeholder = 'ex: 97898704021218987040212189870402198704021218'
  data = "XX/XX/XXXX"  
  fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
  fill_in(data, options = {:placeholder => data, :with => " "}) #Data  
  sleep 3
end

Quando("clico no botão {string}") do |adicionar_nota|
  adicionar_nota = 'Adicionar nota'
  click_button(adicionar_nota)
end