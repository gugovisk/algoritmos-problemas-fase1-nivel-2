require "./lib/check_cpf_cnpj.rb"

RSpec.describe Valida_CPF_CNPJ do

    it "check cpf valid" do
      a = 51577122941
  
      result = Valida_CPF_CNPJ.new.run(a)
  
      expect(result).to eq(true)
    end
  
end

RSpec.describe Cpu do

    it "check cpu core" do
  
      result = Cpu.new.run
  
      expect(result).to eq(4)
    end
  
end