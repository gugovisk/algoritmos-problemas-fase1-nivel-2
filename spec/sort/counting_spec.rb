require "./lib/sort.rb"

RSpec.describe Sort::Counting do

    it "sorted" do
      array = [64, 34, 25, 11, 22, 11, 90]
      array_sorted = [11, 11, 22, 25, 34, 64, 90]
  
      result =  Sort::Counting.new.run(array)
  
      expect(result).to eq(array_sorted)
    end
end