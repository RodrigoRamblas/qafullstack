Dado("que estou na tela de login") do                                        
    visit "http://localhost:90/#/login"
  end                                                                          
                                                                               
  Quando("tento fazer um login com um usuario valido") do                      
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("devo me logar") do
    expect(page).to have_xpath("//h6[@class='saludos']", text: 'seja bem-vindo')                                                    
  end                                                                          
                                                                               
  Quando("tento fazer um login com um usuario invalido") do                    
    find(id:"mat-input-0").set "errado"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("nao devo me logar") do                                                
    expect(page).to have_xpath("//div[@class='px-toast-position ']/div[@class='px-toast-content']/div[@class='px-toast-container']/p[@class='toast-message']", text: 'Usuário ou senha Inválidos')
  end 
  
  Quando("eu entro no sistema com outro usuario") do                           
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("devo clicar em {string}") do |outro_usuario|                                 
    outro_usuario = "//div[@class='px-form']/div[@class='action']"
    page.find(:xpath, outro_usuario).click
    expect(page).to have_xpath("//h6[@class='saludos']", text: 'seja bem-vindo')
  end                                                                          