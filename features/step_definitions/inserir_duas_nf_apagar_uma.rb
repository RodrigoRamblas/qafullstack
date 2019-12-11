Dado("estou logado no sistema com usuario valido") do                        
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
end                                                                          

Quando("eu coloco duas notas e excluo uma") do
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