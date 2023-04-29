require "./lib/texto.rb"

RSpec.describe Texto::CountTypeChars do

    it "Count type chars" do
      chars = "Gustavo+-/*1992"
      array_CountTypeChars = "1644"
  
      result = Texto::CountTypeChars.new.run(chars)
  
      expect(result).to eq(array_CountTypeChars)
    end
end