require "./lib/texto.rb"

RSpec.describe Texto::Missing_Chars do

    it "missing chars in pangram" do
      frase = "welcome to geeksforgeeks"
      array_pangram = "abdhijnpquvxyz"
  
      result =  Texto::Missing_Chars.new.run(frase)
  
      expect(result).to eq(array_pangram)
    end

    it "include?" do
      array = ["Javascript", "Python", "Java", "C++", "Ruby"]

      c = array.include?("C")      # false
  
      expect(c).to eq(false)
    end

    it "downcase" do
      s = 'Hello World!' # => "Hello World!"

      res = s.downcase         # => "hello world!"
  
      expect(res).to eq("hello world!")
    end

    it "capitalize" do
      s = 'hello World!' # => "hello World!"
      res = s.capitalize       # => "Hello world!"

      expect(res).to eq("Hello world!")
    end

    it "strip" do
      extra_space = "   test    "
      res = extra_space.strip

      expect(res).to eq("test")
    end
end