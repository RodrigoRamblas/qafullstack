Dado("que eu tenha uma nota errada") do |table|                              
    table.hashes.each do |valor|
        @nota = valor['Notas'].to_s
        #puts table.length
    end
  end                                                                          
                                                                               
  Quando("eu coloco uma nota errada") do
    visit 'http://localhost:90/#/login'
    find(id:"mat-input-0").set "testes"
    find(id:"mat-input-1").set "bgm123456"
    click_button("Entrar")                                     
    click_button("expand_more")
    sleep 2
    saopaulo = "//div[@class='px-button-select-list ng-star-inserted'][1]/button[@class='mat-menu-item']" 
    page.find(:xpath, saopaulo).click
    sleep 1
    click_button("Entrar")
    expect(page).to have_content("Emissão de CT-e")
    puts @nota
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => @nota}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button 'Adicionar nota'
  end                                                                          
                                                                               
  Entao("verifico se foi apresentado mensagem de erro") do      
    expect(page).to have_content("*Chave NF-e inválida")
  end                                                                          