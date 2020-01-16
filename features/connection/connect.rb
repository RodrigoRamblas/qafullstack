require 'oci8'

class Oracle
  
  def connect
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
        for a in r
          return a
        end
      end
      cursor.close
      connection.logoff
  end

  def cpf_cnpj_destinatario
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
        for a in r
          return a
        end
      end
      cursor.close
      connection.logoff
  end
end


