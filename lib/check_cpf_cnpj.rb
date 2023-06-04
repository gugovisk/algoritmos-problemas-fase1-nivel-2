require "cpf_cnpj"
require "os"

class Valida_CPF_CNPJ

    def run(cp)
        return CPF.valid?(cp)
    end

end

class Cpu

    def run(cp)
        return OS.cpu_count
    end
    
end