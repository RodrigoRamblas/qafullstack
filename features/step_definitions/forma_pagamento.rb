Quando("eu coloco o {string} e {string}") do |remetente, destinatario|
    remetente = 33224031816
    destinatario = remetente
    fill_in 'Remetente', with: remetente                            
    fill_in 'Destinatario', with: destinatario
end                                                                          

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