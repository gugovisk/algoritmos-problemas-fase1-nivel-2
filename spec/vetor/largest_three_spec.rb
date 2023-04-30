require "./lib/vetor.rb"

RSpec.describe Vetor::Largest_Tree do

    it "Error for Lenght array < 3" do
      array = [10,6]
      array_res = "Error: Invalid Input"
  
      result =  Vetor::Largest_Tree.new.run(array)
  
      expect(result).to eq(array_res)
    end

    it "Find largest three values in array" do
        array = [4,10,6]
        array_res = [10,6,4]

        result = Vetor::Largest_Tree.new.run(array)
  
        expect(result).to eq(array_res)

    end
end