Quando("acesso a url") do
    visit '/presencial/ensino/graduacao/tecnologicos/index.aspx'
  end 
  
  Entao("eu verifico se estou na pagina correta") do
    expect(page).to have_current_path('https://www.unip.br/presencial/ensino/graduacao/tecnologicos/index.aspx', url: true)
  end