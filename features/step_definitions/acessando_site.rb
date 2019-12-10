Quando("acesso a url") do
    visit '/#/login'
  end 
  
  Entao("eu verifico se estou na pagina correta") do
    expect(page).to have_current_path('http://localhost:90/#/login', url: true)
  end