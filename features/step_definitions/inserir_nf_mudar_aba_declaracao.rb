Dado("estou logado sistema com usuario valido") do                                                                        
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
    nota = "33181192080035000368550000000722091011209774"
    texto = "ex: 97898704021218987040212189870402198704021218"
    data = "XX/XX/XXXX"
    fill_in(texto, options = {:placeholder => texto, :with => nota}) #NF
    fill_in(data, options = {:placeholder => data, :with => " "}) #Data
    click_button 'Adicionar nota'                                             
end                                                                                                                       

Quando("eu coloco uam nota e mudo para a aba de declaracao") do                                                           
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click
end                                                                                                                       

Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos") do
    string = "Deseja mesmo prosseguir?"          
    expect(page).to have_content(string)                                     
end 

Quando("eu coloco uma nota e mudo para a aba de declaracao e clico em Sim") do
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click                                          
    sim = "//px-button[@class='px-size-md px-important ng-star-inserted']/button[@class='px-button mat-flat-button mat-primary']/span[@class='mat-button-wrapper']"
    page.find(:xpath, sim).click
  end
  
  Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e ir para a tela de declaracao") do
    string = "Classificação do transporte"          
    expect(page).to have_content(string)    
  end

  Quando("eu coloco uma nota e mudo para a aba de declaracao e clico em Nao") do                                                                      
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click                                          
    nao = "//px-button[@class='px-size-md px-fluid ng-star-inserted']/button[@class='px-button mat-flat-button mat-primary']"
    page.find(:xpath, nao).click                                                                       
  end                                                                                                                                                 
                                                                                                                                                      
  Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e voltar para a tela NF-e") do
    string = "Notas do CT-e:"          
    expect(page).to have_content(string)                                                                          
  end                                                                                                                                                 