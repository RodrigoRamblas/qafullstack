frete                     = Frete.new
login                     = Login.new
retira_entrega            = Retira_Entrega.new
emissao_cte               = Emissao_cte.new
dados_da_emissao          = Dados_da_emissao.new
mer                       = Mercadoria.new

c                         = emissao_cte.configuracoes
sr                        = emissao_cte.sair
ex                        = dados_da_emissao.expand
id                        = dados_da_emissao.classificacao
u                         = login.usuario
s                         = login.senha
url                       = login.url
id_remetente              = frete.remetente
remetente                 = retira_entrega.remetente_ok
id_destinatario           = retira_entrega.destinatario
destinatario              = retira_entrega.destinatario_ok
cif                       = retira_entrega.cif
mercadoria                = retira_entrega.mercadoria
quantidade_mercadoria     = mer.quantidade
peso_mercadoria           = mer.peso
valor_nf_mercadoria       = mer.valor_da_nota 


Dado("eu estou logado com um usuario valido com apenas permissao de acréscimo") do      
    visit url
    find(id: u).set "RAMBLASAC"
    find(id: s).set "123456"
    i = 0
    while i < 1
        click_button("Entrar")
        sleep 2   
    i += 1
    end    
end           

Quando("o usuário tiver permissão de Desconto ou acréscimo, já vir selecionado no switch qual a opção será usada.") do
    fill_in id_remetente, with: remetente
    fill_in id_destinatario, with: destinatario
    sleep 2
    click_button(cif)
    begin
        click_button(mercadoria)  
    rescue 
        sleep 10
        click_button(mercadoria)
    ensure
    end
    click_button 'Selecione o produto'
    find('button', text: '(TE1)', exact_text: false).click
    sleep 2
    fill_in quantidade_mercadoria, with: '1'
    fill_in peso_mercadoria, with: '1'
    fill_in valor_nf_mercadoria, with: '1'
    sleep 400
end
  
Entao("eu verifico se apareceu a switch correta") do

end
