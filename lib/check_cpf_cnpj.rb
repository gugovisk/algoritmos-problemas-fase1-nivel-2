require "cpf_cnpj"

class Valida_CPF_CNPJ

    def run(cp)
        return CPF.valid?(cp)
    end
    
end