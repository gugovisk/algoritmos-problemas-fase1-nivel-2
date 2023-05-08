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

    it "chomp" do
      res = "abcd?".chomp("?")
      # "abcd"
      expect(res).to eq("abcd")
    end

    it "gsub" do
      string = "We have many dogs"
      res = string.gsub("dogs", "cats")
      # "We have many cats"
      expect(res).to eq("We have many cats")
    end

    it "count" do
      str = "aaab"
      res = str.count("a")
      # 3
      expect(res).to eq(3)
    end

    it "monday" do
      t = Time.new(1993, 02, 24, 12, 0, 0, "+09:00")

      res = t.monday? #=> false
      expect(res).to eq(false)
    end

    it "year" do
      t = Time.new(1993, 02, 24, 12, 0, 0, "+09:00")

      res = t.year #=> 1993
      expect(res).to eq(1993)
    end

    it "dst" do
      t = Time.new(1993, 02, 24, 12, 0, 0, "+09:00")

      res = t.dst? #=> false
      expect(res).to eq(false)
    end

    it "seconds was that since the Unix Epoch" do
      t = Time.new(1993, 02, 24, 12, 0, 0, "+09:00")

      res = t.to_i #=> 730522800
      expect(res).to eq(730522800)
    end


end