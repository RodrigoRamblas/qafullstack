Quando("eu clico em {string}") do |declaracao|
    click_button("Entrar")
    sleep 2 
    declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    page.find(:xpath, declaracao).click
  end                                                                          
                                                                               
  Quando("escoclho o tipo de {string}") do |classificacao_do_transporte|                            
    click_button("expand_more")
    sleep 2
    classificacao_do_transporte = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, classificacao_do_transporte).click
    click_button("Frete") 
  end                                                                          
                                                                               
  Quando("coloco os dados do remetente e destinarario") do                     
    #fill_in 'mat-input-2', with: '76712477824' #CNPJ/CPF
    fill_in 'mat-input-2', with: "59826203866"
    fill_in 'mat-input-3', with: "Carlos Eduardo Sebastião Leandro Lima"
    fill_in 'mat-input-62', with: "ccarloseduardosebastiaoleandrolima@helpvale.com.br"
    fill_in 'mat-input-5', with: "11982710378"
    fill_in 'mat-input-6', with: "04430080"
    fill_in 'mat-input-8', with: "291"
    fill_in 'mat-input-9', with: "Portão B"
    #Destinatário
    fill_in 'mat-input-22', with: "87829418829"
    fill_in 'mat-input-23', with: "Gustavo Leonardo Vicente Aparício"  
    fill_in 'mat-input-63', with: "ggustavoleonardovicenteaparicio@lvnonline.com.be"
    fill_in 'mat-input-25', with: "1127904584"
    fill_in 'mat-input-26', with: "03925020"
    fill_in 'mat-input-28', with: "465"
    fill_in 'mat-input-29', with: "Casa 1"
    click_button 'CIF'
    sleep 2
  end                                                                          
                                                                               
  Quando("clico em {string}") do |string|                                      
    click_button("Mercadoria")
    sleep 2#00
  end                                                                          
                                                                               
  Entao("deve ir para a tela de Mercadoria") do                                
    expect(page).to have_current_path('http://localhost:90/#/emissao-cte', url: true)
    expect(page).to have_content("Declaração")
    expect(page).to have_content("Produto")
    expect(page).to have_content("Cubagem")
    expect(page).to have_selector("input")
    expect(page).to have_content("Dados da cubagem")
    expect(page).to have_content("Metragem cúbica (m3)")
    expect(page).to have_xpath("//div[@class='col-8 pl-0']/app-select-search/button[@class='px-button-select form-control mat-stroked-button']/span[@class='mat-button-wrapper']/div[@class='row m-0 align-items-center']/span[@class='col p-0 px-button-select-text']")
    expect(page).to have_xpath("//input[@id='mat-input-66']")
    expect(page).to have_xpath("//input[@id='mat-input-67']")
    expect(page).to have_xpath("//input[@id='mat-input-68']")
    expect(page).to have_xpath("//input[@id='mat-input-69']")
    expect(page).to have_xpath("//input[@id='mat-input-70']")
    expect(page).to have_xpath("//input[@id='mat-input-71']")
    expect(page).to have_xpath("//input[@id='mat-input-72']")
    expect(page).to have_xpath("//input[@id='mat-input-73']")
  end                                                                          

  Quando("preencho corretamente os campos: {string}, {string}, {string}, {string}") do |produto, quantidade, peso, valor_da_nota|                
    click_button("expand_more")
    sleep 2
    produto = "//div[@class='px-button-select-container ng-star-inserted'][1]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, produto).click
    quantidade = 'mat-input-66'
    peso = 'mat-input-67'
    valor_da_nota = 'mat-input-68'
    sleep 2
    fill_in quantidade, with: "1"
    fill_in peso, with: "10"
    fill_in valor_da_nota, with: "100"
end                                                                                                                                     

Quando("em {string} preencho os campos {string}, {string}, {string}, {string}") do |dados_da_cubagem, volume, altura, largura, profundidade|
    volume = 'mat-input-70'
    altura = 'mat-input-71'
    largura = 'mat-input-72'
    profundidade = 'mat-input-73'
    fill_in volume, with: "10"
    fill_in altura, with: "10"
    fill_in largura, with: "10"                                                        
    fill_in profundidade, with: "10"                                                      
  end                                                                                                                                     
                                                                                                                                          
  Entao("o botão {string} deve ser habilitado") do |mais| 
    mais = "add"
    expect(page).to have_content(mais)                                                                                                                                          
  end                                                                                                                                     