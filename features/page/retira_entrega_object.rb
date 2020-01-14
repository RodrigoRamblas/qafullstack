class Retira_Entrega

    def bairro_destinatario
        'mat-input-35'
    end

    def bairro_remetente
        'mat-input-15'
    end

    
    def bairro_tomador
        'mat-input-55'
    end
    
    def bairro
        %w(Centro).sample
    end
    
    def cep_remetente
        'mat-input-11'
    end
    
    def cep_destinatario
        'mat-input-31'
    end
    
    def cep_tomador
        'mat-input-51'
    end
    
    def cpf_cnpj_tomador_ok
        %w(05772286684 03293456642 63816636004 48700606634 30411577050 34896029860).sample
    end
    
    def cep_nok
        %w(68912350).sample
    end

    def cif
        'CIF'
    end
    
    def destinatario
        'Destinatario'
    end
    
    def destinatario_ok
        %w(69437211604 07633886617 48700606634 30411577050 05772286684 03293456642 30411577050).sample
    end
    
    def destinatario_nok
        %w(17155342000183 11974117634).sample
    end
    
    def redespachante_tomador_nok
        %w(21126271000168).sample
    end
    
    def editar_remetente
        "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button"
    end
    
    def editar_destinatario
        "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
    end    
    
    def editar_tomador
        "//div[@id='cdk-step-content-0-1']/app-frete/div/app-empresa-destino-entrega/div/app-tomador/app-pessoa/form/div/button"
    end
    
    def editar_remetente
        "//div[@id='cdk-step-content-0-1']/app-frete/div/app-remetente/app-pessoa/form/div/button/span"
    end
    
    def editar_destinatario
        "//div[@id='cdk-step-content-0-1']/app-frete/div/app-destinatario/app-pessoa/form/div/button/span"
    end
    
    def limpar_campo(mat = [])
        
        for x in mat
            puts x
        end
    end

    def logradouro
        %w(Centro).sample
    end
    
    def logradouro_destinatario
        'mat-input-32'
    end

    def logradouro_remetente
        'mat-input-12'
    end
    
    def logradouro_tomador
        'mat-input-52'
    end

    def mercadoria
        'Mercadoria'
    end
    
    def numero_remetente
        'mat-input-13'
    end

    def numero_destinatario
        'mat-input-33'
    end

    def numero_tomador
        'mat-input-53'
    end

    def numero
        (rand() * 10).to_i
    end

    def outros
        'Outros'
    end

    def remetente_ok
        %w(48700606634 63816636004 03293456642 30411577050 33224031816 48335762600).sample
    end

    def remetente_ok_com_mgs
        %w(66425133000118).sample
    end

    def tomador_ok
         'Tomador'
    end

    def redespachante_tomador_ok 
        %w(66224063672).sample
    end
end