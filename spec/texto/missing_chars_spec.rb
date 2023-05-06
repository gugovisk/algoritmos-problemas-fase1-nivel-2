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

    it "start_with?" do
      string = "ruby programming"
      res = string.start_with? "ruby"

      expect(res).to eq(true)
    end

    it "end_with?" do
      string = "ruby programming"
      res = string.end_with? "programming"

      expect(res).to eq(true)
    end

    it "delete_suffix" do
      string = "bacon is expensive"
      res = string.delete_suffix(" is expensive")

      expect(res).to eq("bacon")
    end
end