class Dados_da_emissao

    def expand
        "expand_more"
    end
    
    def classificacao
         id = 2
        if id  == 1
            "//div[@class='px-button-select-container ng-star-inserted']["<<id<<"]/button[@class='mat-menu-item ng-star-inserted']"
        else
            "//div[@class='px-button-select-container ng-star-inserted'][2]/button[@class='mat-menu-item ng-star-inserted']"
        end
    end
end