login = Login.new

url   = login.url

Quando("acesso a url") do
    visit '/#/login'
  end 
  
  Entao("eu verifico se estou na pagina correta") do
    expect(page).to have_current_path(url, url: true)
  end