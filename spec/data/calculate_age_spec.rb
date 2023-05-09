require "./lib/data.rb"

RSpec.describe Data::Calculate_age do

    it "Calcula idade" do
      frase = "welcome to geeksforgeeks"
      array = "abdhijnpquvxyz"
  
      result = Data::Calculate_age.new.run(frase)
  
      expect(result).to eq(array_pangram)
    end

   
end