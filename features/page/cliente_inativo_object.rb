class Cliente_inativo
    def cpf_cnpj_cliente_inativo
        %w(17155342000183 33224031816).sample
    end

    def redespacho
        "//div[@class='col mt-4 row mr-0 ml-0 align-items-center form-group nopadding']"
    end

    def redespachante_tomador_nok
        %w(21126271000168).sample
    end

    def redespachante
        'Redespachante'
    end

    def expedidor
        'Expedidor'
    end

    def recebedor
        'Recebedor'
    end

    def endereço_igual_expedidor
        "//mat-checkbox[@id='mat-checkbox-15']/label[@class='mat-checkbox-layout']/span[@class='mat-checkbox-label']"
    end

    def cep_nok
        %w(68912350).sample 
    end
end