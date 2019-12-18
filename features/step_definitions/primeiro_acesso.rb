Dado("eu estou no meu primeiro acesso") do
  visit "http://localhost:90/#/login"
  find(id:"mat-input-0").set "testes"
  find(id:"mat-input-1").set "bgm123456"
  click_button("Entrar")
end

Entao("o campo Classificação de transporte deve estar em branco") do
    click_button("expand_more")
    expect(page).to have_content("Selecione a classificação de transporte")
  end

Quando("coloco a classificação de transporte") do
    click_button("expand_more")                                              
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']"
    e_commerce = "//div[@class='px-button-select-container ng-star-inserted'][1]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
  end

Quando("saio do sistema") do                                                                                                                          
    configuracoes = "//button[@class='btn- mat-icon-button']"
    page.find(:xpath, configuracoes).click
    sair = "//div[@class='logout row justify-content-center']/button[@class='px-btn-basic mat-stroked-button']/span[@class='mat-button-wrapper']/div[@class='row m-0 align-items-center']/span[@class='px-btn-text']"
    page.find(:xpath, sair).click                
  end                                                                                                  
                                                                                                       
  Então("devo ir para a tela de login") do
    expect(page).to have_current_path('http://localhost:90/#/login', url: true)                        
  end  
  
  Então("o campo classificação de transporte deve estar preenchido") do    
    expect(page).to have_content("ENCOMENDAS")#ENCOMENDAS E-COMMERCE
  end                                                                          