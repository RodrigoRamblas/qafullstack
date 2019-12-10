Dado("logado no sistema com usuario valido") do
    visit "http://localhost:90/#/login"                     
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")
  end
  
  Quando("eu estou logado devo escolher uma filial ou garagem {string}") do |string|
    click_button("expand_more")
    sleep 2
    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
    page.find(:xpath, saopaulo).click
    sleep 1
    click_button("Entrar")
  end
  
  Quando("eu digito uma nota valida sem consultar a Sefaz") do
    expect(page).to have_content("Emissão de CT-e")
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => ' '}) #Data
    click_button 'Adicionar nota'
    
  end                                                                                    
  Entao("O sistema deve validar a nota por uma algoritmo e deixar a nota ser inserida") do
    sleep 2
    expect(page).to have_css(".nota")     
  end 

  Quando("eu coloco uma data futura") do
    click_button("expand_more")
    sleep 2
    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
    page.find(:xpath, saopaulo).click
    sleep 1
    click_button("Entrar")
    expect(page).to have_content("Emissão de CT-e")
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '35190543648971000155550050006365241050820173'}) #NF
    @data = Time.now
    @day = @data.day + 1
    @month = @data.month
    @year = @data.year
    puts @Data_futura = "#@day#@month#@year"
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with =>  @Data_futura}) #Data
  end
  
  Entao("o sistema deve apresentar a msg de data invalida") do
    expect(page).to have_content("*Data Inválida")
  end

#  Quando("eu coloco uma NF com UF inválida") do
#    click_button("expand_more")
#    sleep 2
#    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
#    page.find(:xpath, saopaulo).click
#    sleep 1
#    click_button("Entrar")
#    expect(page).to have_content("Emissão de CT-e")
#    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => '33181111137051040641550070006673261833446082'}) #NF
#    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
#    click_button 'Adicionar nota'
#  end
#  Entao("O sistema deve validar a nota e informar que é inválida") do
#    expect(page).to have_content("*Chave NF-e inválida")
#  end