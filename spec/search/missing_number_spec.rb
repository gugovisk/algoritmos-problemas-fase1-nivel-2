require "./lib/search.rb"

RSpec.describe Search::MissingNumber do

    it "Missing number" do
      arr = [1,2,3,4,6,3,7,8]
  
      result =  Search::MissingNumber.new.run(arr)
  
      expect(result).to eq("The missing number between 1 and 8 is 5")
    end

end