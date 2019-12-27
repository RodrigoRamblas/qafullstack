class Login

    def usuario
         'mat-input-0'
    end
    
    def senha
        'mat-input-1'
    end    
    
    def msg_senha_invalidos
        "//div[@class='px-toast-position ']/div[@class='px-toast-content']/div[@class='px-toast-container']/p[@class='toast-message']"
    end

    def seja_bem_vindo
        "//h6[@class='saludos']"
    end

    def url
        "http://localhost:90/#/login"
    end
       
    def outro_usuario
        "//div[@class='px-form']/div[@class='action']"
    end
end