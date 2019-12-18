  Quando("eu coloco a nota mais de uma vez") do                       
    fill_in("ex: 97898704021218987040212189870402198704021218", options = {:placeholder => 'ex: 97898704021218987040212189870402198704021218', :with => "33181192080035000368550000000722091011209774 "}) #NF
    fill_in("XX/XX/XXXX", options = {:placeholder => 'XX/XX/XXXX', :with => " "}) #Data
    click_button 'Adicionar nota'
  end                                                                          
                                                                               
  Entao("o sistema deve apresentar a msg de {string}") do |string|   
    string = "*Esta nota fiscal já foi inserida"          
    expect(page).to have_content(string)
  end                                                                          
