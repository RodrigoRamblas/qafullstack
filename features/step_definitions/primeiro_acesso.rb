login = Login.new
emissao_cte = Emissao_cte.new
dados_da_emissao = Dados_da_emissao.new

u     = login.usuario
s     = login.senha
url   = login.url
c     = emissao_cte.configuracoes
sr    = emissao_cte.sair
ex    = dados_da_emissao.expand
id    = dados_da_emissao.classificacao

Dado("eu estou no meu primeiro acesso") do
  visit url
  find(id: u).set "testes"
  find(id: s).set "bgm123456"
  click_button("Entrar")
end

Entao("o campo Classificação de transporte deve estar em branco") do
    click_button(ex)
    expect(page).to have_content("Selecione a classificação de transporte")
  end

Quando("coloco a classificação de transporte") do
    click_button(ex)                                              
    page.find(:xpath, id).click
  end

Quando("saio do sistema") do   
    page.find(:xpath, c).click
    sleep 3
    page.find(:xpath, sr).click
    sleep 3               
  end                                                                                                  
                                                                                                       
  Então("devo ir para a tela de login") do
    expect(page).to have_current_path(url, url: true)                        
  end  
  
  Então("o campo classificação de transporte deve estar preenchido") do    
    expect(page).to have_content("ENCOMENDAS")#ENCOMENDAS E-COMMERCE
  end                                                                          