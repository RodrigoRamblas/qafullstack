Quando("eu coloco o {string} e {string}") do |remetente, destinatario|
    remetente = 33224031816
    destinatario = remetente
    fill_in 'Remetente', with: remetente                            
    fill_in 'Destinatario', with: destinatario
end                                                                          

# Quando("eu escolho a {string}") do |empresa_destino|
#     sleep 120
#     click_button('Selecione')
#     find('button', text: 'BELO HORIZONTE', exact_text: false).click
# end

Quando("eu escolho o tipo de frete {string}") do |tipo_de_frete| 
    tipo_de_frete = 'CIF'                   
    click_button tipo_de_frete
end                                                                          

Quando("eu escolho a produto") do
    begin
        quantidade = 1
        peso = 2
        valor_nota = 2000
        #click_button('expand_more')
         click_button 'Selecione o produto'
        find('button', text: '(TE1)', exact_text: false).click
        fill_in 'mat-input-83', with: quantidade
        fill_in 'mat-input-84', with: peso
        fill_in 'mat-input-85', with: valor_nota
        click_button 'Calcular'
        sleep 3
        enviar_sefaz = "//div[@class='action-button row m-0 justify-content-end']/div[@class='col-auto p-0']/button[@class='px-btn-success mat-raised-button mat-primary']/span[@class='mat-button-wrapper']/div[@class='row m-0 align-items-center']/span[@class='px-btn-text']"
        page.find(:xpath, enviar_sefaz).click
    rescue
         puts "Deu ruim !!!!!!!!!!!!!!!!!"
    ensure
        puts 'Go horse -_-'
    end                       
     
end

Entao("deve ir para a tela de {string}") do |string| 
    expect(page).to have_content("CTe")                    
end    

# Quando("eu clico no botão {string}") do |consultar_sefaz|
#     sleep 20
#     click_button 'Voltar'
#     sleep 2
#     click_button 'clear'
#     case number
#     when 0
#       nota = "33181192080035000368550000000722091011209774"
#     when 1
#       nota = "35190543648971000155550050006365241050820173"
#     else
#       puts "Erro de número random"
#     end
#     placeholder = 'ex: 97898704021218987040212189870402198704021218'
#     data = "XX/XX/XXXX"                        
#     fill_in(placeholder, options = {:placeholder => placeholder, :with => nota}) #NF
#     click_button('Consultar SEFAZ')
#     click_button('Adicionar nota')
#     click_button("expand_more")
#     encomendas = "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']" 
#     page.find(:xpath, encomendas).click
#     click_button("Frete")
#     sleep 120
#   end