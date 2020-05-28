frete            = Frete.new
dados_da_emissao = Dados_da_emissao.new

ex               = dados_da_emissao.expand
cpf              = frete.cpf
remetente        = frete.remetente
d                = frete.declaracao
razao            = frete.remetente_razao_social
nome             = frete.nome
email            = frete.email 
remetente_email  = frete.remetente_email


Quando("eu clico em {string}") do |declaracao|
    click_button("Entrar")
    declaracao = d
    page.find(:xpath, declaracao).click
  end                                                                          
                                                                               
  Quando("escoclho o tipo de {string}") do |classificacao_do_transporte|                            
    click_button(ex)

    classificacao_do_transporte = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, classificacao_do_transporte).click
    click_button("Frete") 
  end                                                                          
                                                                               
  Quando("coloco os dados do remetente e destinarario") do  
    fill_in remetente, with: cpf
    fill_in razao, with: nome
    fill_in remetente_email, with: email
    fill_in 'mat-input-10', with: "11982710378"
    fill_in 'mat-input-11', with: "04430080"
    fill_in 'mat-input-13', with: "291"
    fill_in 'mat-input-14', with: "Portão B"
    #Destinatário
    fill_in 'Destinatario', with: cpf
    fill_in 'mat-input-28', with: nome  
    fill_in 'mat-input-72', with: email
    fill_in 'mat-input-30', with: "1127904584"
    fill_in 'mat-input-31', with: "03925020"
    fill_in 'mat-input-33', with: "465"
    fill_in 'mat-input-34', with: "Casa 1"
    click_button 'CIF'
  end                                                                          
                                                                               
  Quando("clico em {string}") do |mercadoria| 
    begin                  
      click_button("Mercadoria")
    rescue
      sleep 10
      click_button("Mercadoria")
    ensure
      puts "Clico no botão Mercadoria"
    end
    
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
  end                                                                          

  Quando("preencho corretamente os campos: {string}, {string}, {string}, {string}") do |produto, quantidade, peso, valor_da_nota|                
    click_button("expand_more")
    produto = "//div[@class='px-button-select-container ng-star-inserted'][1]/button[@class='mat-menu-item ng-star-inserted']" 
    page.find(:xpath, produto).click
    quantidade = 'mat-input-75'
    peso = 'mat-input-76'
    valor_da_nota = 'mat-input-77'
    fill_in quantidade, with: "1"
    fill_in peso, with: "10"
    fill_in valor_da_nota, with: "100"
end                                                                                                                                     

Quando("em {string} preencho os campos {string}, {string}, {string}, {string}") do |dados_da_cubagem, volume, altura, largura, profundidade|
  volume = 'mat-input-79'
  altura = 'mat-input-80'
  largura = 'mat-input-81'
  profundidade = 'mat-input-82'
  fill_in volume, with: "10"
  fill_in altura, with: "10"
  fill_in largura, with: "10"                                                        
  fill_in profundidade, with: "10"                                                      
end                                                                                                                                     
                                                                                                                                          
  Entao("o botão {string} deve ser habilitado") do |mais| 
    mais = "add"
    expect(page).to have_content(mais)                                                                                                                                          
  end                                                                                                                                     