class Frete

    def remetente
        'Remetente'
    end

    def remetente_razao_social
        'mat-input-8'
    end

    def cpf
        %w(59826203866 87829418829 23606952406 89903434103 41113586591 39863634832).sample
    end

    def nome
        %w(Wuenten Luten Tostili Votudin Wient Puguand Urlio Zeilogur Riaror Albolond).sample
    end
    
    def remetente_email
        'mat-input-71'
    end

    def email
        %w(noahotaviopietrolopes@atualmarcenaria.com.br oolivercalebedrumond@outershoes.com.br gustavodanielcardoso@triunfante.com.br hhenrypedrosilveira@lphbrasil.com.br anthonycauanogueira@laramjeirabaumann.com.br alexandreotaviomateussales@gmx.de isaacemanuelyagoaraujo@publicarbrasil.com.br eduardofernandopedroporto@ntiequipamentos.com.br luisgaelteixeira92@engineer.com rrafaelfabiodanieldacosta@transportesflores.com.br).sample
    end

    def telefone
        %w(1126062809 1135824991 11995694988 1129178918 11995354976 1127886523 11983001337).sample
    end 

    def sair
        "//div[@class='logout row justify-content-center']/button[@class='px-btn-basic mat-stroked-button']/span[@class='mat-button-wrapper']/div[@class='row m-0 align-items-center']/span[@class='px-btn-text']"
    end    

    def declaracao
        "//div[@id='mat-tab-label-0-1']/div[@class='mat-tab-label-content']" 
    end

    def teste
        connection = OCI8.new( 'GARDENIA_TESTE', 'GARDENIA_TESTE', 'ORA12C')
        cursor = connection.exec('SELECT  *
            FROM    (
                SELECT cpf_cnpj
                FROM   enc7_cliente
                ORDER BY
                        dbms_random.value
                )
            WHERE rownum <= 1')
        while r = cursor.fetch()
          puts r.join(' | ')
        end
    end
end