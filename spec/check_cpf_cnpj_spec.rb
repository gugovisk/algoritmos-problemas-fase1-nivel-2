require "./lib/check_cpf_cnpj.rb"

RSpec.describe Valida_CPF_CNPJ do

    it "check cpf valid" do
      a = 51577122941
  
      result = Valida_CPF_CNPJ.new.run(a)
  
      expect(result).to eq(true)
    end

    it "do cpf is formatted" do
      
      a = 51577122941
      cpf = CPF.new(a)
      result = cpf.formatted         # Return formatted CPF (xxx.xxx.xxx-xx)

      expect(result).to eq("515.771.229-41")
    end

    it "check cnpj valid" do

      a = "00394460005887"

      result = Valida_CPF_CNPJ.new.run(a)
  
      expect(result).to eq(true)

    end
  
end
