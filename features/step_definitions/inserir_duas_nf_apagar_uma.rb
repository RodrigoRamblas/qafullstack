Quando("eu coloco duas notas e excluo uma") do 
  click_button("Entrar")                              
  @nota1 = "33181192080035000368550000000722091011209774"
  @nota2 = "33181192080035000368550000000722121011209796"                               
  fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota1}) #NF
  fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
  click_button 'Adicionar nota'
  fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota2}) #NF
  fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
  click_button 'Adicionar nota'
  nota = "//div[@class='row m-0']/div[@class='col-4 nova-nota ng-star-inserted'][2]/div[@class='nota']/button[@class='btn-remover-nota mat-button']/span[@class='mat-button-wrapper']/mat-icon[@class='mat-icon material-icons']"
  page.find(:xpath, nota).click
end                                                                          
                                                                             
Entao("o sistema apagar apenas a que eu exclui") do                          
  expect(page).to have_content("N° da NF:")
end 