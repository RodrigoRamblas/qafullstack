Quando("eu coloco uma nota e mudo para a aba de declaracao") do
  sleep 10                                                                                                                                                                          
  declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
  page.find(:xpath, declaracao).click                                                                           
  sleep 2                                                                                                                                                                          
end                                                                                                                                                      

Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos") do                               
  sleep 2                                                                                                                                                                          
  string = "Deseja mesmo prosseguir?"                                                                         
  expect(page).to have_content(string)                                                                           
  sleep 2                                                                                                                                                                          
end                                                                                                                                                                                                                                                                                                            

Quando("eu coloco uma nota e mudo para a aba de declaracao e clico em Sim") do                                                                                                          
  sleep 2                                                                                                                                                                          
  declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
  page.find(:xpath, declaracao).click                                     
  sim = "//px-button[@class='px-size-md px-important ng-star-inserted']/button[@class='px-button mat-flat-button mat-primary']/span[@class='mat-button-wrapper']"
  page.find(:xpath, sim).click                                                                           
  sleep 2                                                                                                                                                                          
end                                                                                                                                                      

Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e ir para a tela de declaracao") do
  sleep 2                                                                                                                                                                          
  string = "Classificação do transporte"          
  expect(page).to have_content(string)                                                                        
  sleep 2                                                                                                                                                                          
end                                                                                                                                                      

Quando("eu coloco uma nota e mudo para a aba de declaracao e clico em Nao") do                                                                           
  sleep 2                                                                                                                                                                          
  declaracao = "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
  page.find(:xpath, declaracao).click                                          
  nao = "//px-button[@class='px-size-md px-fluid ng-star-inserted']/button[@class='px-button mat-flat-button mat-primary']"
  page.find(:xpath, nao).click                                                                          
  sleep 2                                                                                                                                                                          
end                                                                                                                                                      

Entao("o sistema deve validar que já existe uma nota inserida e informar que ao alterar a aba os dados serão perdidos e voltar para a tela NF-e") do     
  sleep 2                                                                                                                                                                          
  string = "Notas do CT-e:"          
  expect(page).to have_content(string)                                                                          
  sleep 2                                                                                                                                                                          
end