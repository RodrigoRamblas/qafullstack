Entao("o campo Classificação de transporte deve estar em branco") do
    click_button("Entrar")
    expect(page).to have_content("Selecione a classificação de transporte")
  end

Quando("coloco a classificação de transporte") do
    click_button("expand_more")
    sleep 5                                                   
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']"
    e_commerce = "//div[@class='px-button-select-container ng-star-inserted'][1]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
  end

Quando("saio do sistema") do                                                                                                                          
    configuracoes = "//button[@class='btn- mat-icon-button']"
    page.find(:xpath, configuracoes).click
    sair = "//div[@class='logout row justify-content-center']/button[@class='px-btn-basic mat-stroked-button']/span[@class='mat-button-wrapper']/div[@class='row m-0 align-items-center']/span[@class='px-btn-text']"
    page.find(:xpath, sair).click
    sleep 10                 
  end                                                                                                  
                                                                                                       
  Então("devo ir para a tela de login") do
    expect(page).to have_current_path('http://localhost:90/#/login', url: true)                        
  end  
  
  Então("o campo classificação de transporte deve estar preenchido") do
    sleep 2       
    expect(page).to have_content("ENCOMENDAS")#ENCOMENDAS E-COMMERCE
  end                                                                          