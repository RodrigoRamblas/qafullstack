Dado("que estou na tela de Configuração do usuário") do                      
  click_button("Entrar") 
  engrenagem = "//button[@class='btn- mat-icon-button']/span[@class='mat-button-wrapper']"
  page.find(:xpath, engrenagem).click
  sleep 3
  click_button("Parametrizações")
  sleep 3
  configuracoes_usuario = "//div[contains(text(),'Configurações de usuário')]"
  page.find(:xpath, configuracoes_usuario).click
end                                                                          

Quando("eu clico no flag {string}") do |impressora_dacte|   
  sleep 3  
  impressora_dacte = "//mat-checkbox[@id='mat-checkbox-22']/label/div"
  page.find(:xpath, impressora_dacte).click    
end                                                                                                  
                                                                                                                
Quando("escolho a impressora Dacte") do  
  #page.first('#mat-checkbox-22[aria-checked="true"]', minimum: 0)&.click
  begin                                                                    
    expand_impressora_dacte = "//div[@class='row'][1]/div[@class='form-group col-6 margim-bottom']/app-select-search/button[@class='px-button-select form-control mat-stroked-button']/span[@class='mat-button-wrapper']"
    page.find(:xpath, expand_impressora_dacte).click
    sleep 3
    click_button("Microsoft Print to PDF")
  rescue
    impressora_dacte = "//mat-checkbox[@id='mat-checkbox-22']/label/div"
    page.find(:xpath, impressora_dacte).click 
    expand_impressora_dacte = "//div[@class='row'][1]/div[@class='form-group col-6 margim-bottom']/app-select-search/button[@class='px-button-select form-control mat-stroked-button']/span[@class='mat-button-wrapper']"
    page.find(:xpath, expand_impressora_dacte).click
    click_button("Microsoft Print to PDF")
  ensure
    puts "GAMBI DEU BOM !!!!"
  end
end                                                                                                             
                                                                                                                
Quando("clico no flag {string}") do |impressora_etiqueta| 
  impressora_etiqueta = "//mat-checkbox[@id='mat-checkbox-23']/label/div"
  page.find(:xpath, impressora_etiqueta).click                                                           
end                                                                                                             

Quando("escolho a impressora Etiqueta") do
  sleep 5
  begin
    expand_impressora_etiqueta = "//div[@class='row'][2]/div[@class='form-group col-6']/app-select-search/button[@class='px-button-select form-control mat-stroked-button']/span[@class='mat-button-wrapper']"
    page.find(:xpath, expand_impressora_etiqueta).click
    sleep 2
    click_button("Microsoft Print to PDF")
  rescue
    impressora_etiqueta = "//mat-checkbox[@id='mat-checkbox-23']/label/div"
    page.find(:xpath, impressora_etiqueta).click 
    expand_impressora_etiqueta = "//div[@class='row'][2]/div[@class='form-group col-6']/app-select-search/button[@class='px-button-select form-control mat-stroked-button']/span[@class='mat-button-wrapper']"
    page.find(:xpath, expand_impressora_etiqueta).click
    sleep 2
    click_button("Microsoft Print to PDF")
  ensure
    puts "2° GAMBI DEU BOM!!!"
  end

end

Quando("clico no botão salvar da tela") do    
  begin           
    click_button("Salvar")
  rescue
    puts "DEU RUIM"
  ensure
  end
end 

Entao("deve apresentar a mensagem {string}") do |mensagem|
  mensagem = "Impressora(s) alterada(s) com sucesso."
  expect(page).to have_content(mensagem)                                
  click_button("OK")
end


