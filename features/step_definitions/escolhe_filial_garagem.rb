Dado("xeu estou logado com um usuario valido") do                             
    visit 'http://localhost:90/#/login'
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")                                     
  end  

  Quando("eu escolho a Filial Garagem") do                                      
    sleep 2
    click_button("expand_more")
    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
    page.find(:xpath, saopaulo).click
    sleep 1
    click_button("Entrar")
end                                                                           

Entao("eu entro no sistema") do                                               
    expect(page).to have_content("Emissão de CT-e")
  end 