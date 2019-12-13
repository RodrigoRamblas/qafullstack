Quando("eu clico em Declaração") do
    click_button("Entrar")                                         
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click
  end                                                                          
                                                                               
  Quando("escolho a classificação de transporte") do                           
    click_button("expand_more")
    encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, encomendas).click
  end                                                                          
                                                                               
  Quando("clico em Frete") do                                                  
    click_button("Frete")
    sleep 3
  end                                                                          
                                                                               
  Quando("clico no botão Voltar") do                                           
    click_button("Voltar")
  end                                                                          
                                                                               
  Quando("clico em configurações") do                                          
    configuracoes = "//button[@class='btn- mat-icon-button']/span[@class='mat-button-wrapper']"
    page.find(:xpath, configuracoes).click
  end                                                                          
                                                                               
  Quando("clico em Parametrizações") do                                        
    sleep 2
    click_button("Parametrizações")
    sleep 2
    sim = "//px-button[@class='px-size-md px-important ng-star-inserted']/button[@class='px-button mat-flat-button mat-primary']/span[@class='mat-button-wrapper']"
    page.find(:xpath, sim).click
    sleep 5
end                                                                          
                                                                               
  Entao("o sistema deve ir para a tela de Parametrizações") do                 
    expect(page).to have_content("Aqui você pode padronizar informações que são comuns do seu emissor")
  end                                                                          