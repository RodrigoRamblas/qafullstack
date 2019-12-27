login = Login.new
u     = login.usuario
s     = login.senha
sbv   = login.seja_bem_vindo
url   = login.url
o     = login.outro_usuario
i     = login.msg_senha_invalidos

Dado("que estou na tela de login") do                                        
    visit url
  end                                                                          
                                                                               
  Quando("tento fazer um login com um usuario valido") do 
    find(id: u).set "testes" 
    find(id:s).set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("devo me logar") do
    expect(page).to have_xpath(sbv, text: 'seja bem-vindo')                                                    
  end                                                                          
                                                                               
  Quando("tento fazer um login com um usuario invalido") do                    
    find(id: u).set "errado" 
    find(id:s).set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("nao devo me logar") do                                            
    expect(page).to have_xpath(i, text: 'Usuário ou senha Inválidos')
  end 
  
  Quando("eu entro no sistema com outro usuario") do                           
    find(id: u).set "testes" 
    find(id:s).set "bgm123456"
    click_button("Entrar")
  end                                                                          
                                                                               
  Entao("devo clicar em {string}") do |outro_usuario|                                 
    outro_usuario  = o
    page.find(:xpath, outro_usuario).click
    expect(page).to have_xpath(sbv, text: 'seja bem-vindo')
  end                                                                          