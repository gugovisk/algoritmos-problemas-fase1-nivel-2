require "cpf_cnpj"
require "os"

class Valida_CPF_CNPJ

    def run(cp)
        if CPF.valid?(cp)
            true
        elsif CNPJ.valid?(cp)
            true
        else
            false
        end
        
    end

end

class Cpu

    def run
        return OS.cpu_count
    end
    
end