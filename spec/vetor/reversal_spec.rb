require "./lib/vetor.rb"

RSpec.describe Vetor::Reversal do

    it "Error for k negative" do
        array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        k = -3
        array_res = "Error: Input Invalid of k"
  
        result =  Vetor::Reversal.new.run(array, k)
  
        expect(result).to eq(array_res)
    end

    it "Reverse and Rotate k positions in array" do
        array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
        k = 3
        array_res = [8, 9, 10, 1, 2, 3, 4, 5, 6, 7]
  
        result =  Vetor::Reversal.new.run(array, k)
  
        expect(result).to eq(array_res)
    end
end