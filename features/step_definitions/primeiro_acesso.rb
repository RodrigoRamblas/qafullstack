Quando("entro no sistema") do
    sleep 2                                              
    expect(page).to have_current_path('http://localhost:90/#/emissao-cte', url: true)
  end                                                                          
                                                                               
  Entao("o campo Classificação de transporte deve estar em branco") do
    expect(page).to have_content("Selecione a classificação de transporte")         
  end                                                                          