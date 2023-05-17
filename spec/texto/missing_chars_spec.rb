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

    it "take" do
      array = [0,1,2,3,4]
      
      res = array.take(3)
      expect(res).to eq([0,1,2])
    end

    it "drop" do
      array = [0,1,2,3,4]
      
      res = array.drop(3)
      expect(res).to eq([3,4])
    end

    it "shift" do
      array = [0,1,2,3,4]
      
      res = array.shift
      expect(res).to eq(0)
    end

    it "push" do
      array = [0,1,2,3,4]
      
      res = array.push(99)
      expect(res).to eq([0,1,2,3,4,99])
    end

    it "fetch" do
      a = [ 11, 22, 33, 44 ]
      res = a.fetch(1)   #=> 22

      expect(res).to eq(22)
    end

    it "flatten" do
      a = [ 1, 2, [3, [4, 5] ] ]
      res = a.flatten(1)   #=> [1, 2, 3, [4, 5]]

      expect(res).to eq([1, 2, 3, [4, 5]])
    end

    it "keed_if" do
      a = %w{ a b c d e f }
      res = a.keep_if { |v| v =~ /[aeiou]/ }  #=> ["a", "e"]

      expect(res).to eq(["a", "e"])
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

    it "mday" do
      t = Time.now

      res = t.mday
      expect(res).to eq(t.day)
    end

    it "mday" do
      t = Time.now

      res = t.mon
      expect(res).to eq(5)
    end

    it "data convencional" do
      t = Time.new(2007,11,19,8,37,48,"-06:00") 

      res = t.strftime("Printed on %m/%d/%Y")
      expect(res).to eq("Printed on 11/19/2007")
    end

    it "hora convencional" do
      t = Time.new(2007,11,19,8,37,48,"-06:00") 

      res = t.strftime("at %I:%M %p")
      expect(res).to eq("at 08:37 AM")
    end

    it "log2" do
      res = Math.log2(2)

      expect(res).to eq(1.0)
    end

    it "sin" do
      res = Math.sin(Math::PI/2) #=> 1.0

      expect(res).to eq(1.0)
    end

     it "cos" do
      res = Math.cos(Math::PI) #=> -1.0

      expect(res).to eq(-1.0)
    end

    it "exp" do
      res = Math.exp(0)

      expect(res).to eq(1.0)
    end

    it "hypot" do
      res = Math.hypot(3, 4)   #=> 5.0

      expect(res).to eq(5.0)
    end

    it "gamma" do
      res = Math.gamma(4)   #=> 6.0

      expect(res).to eq(6.0)
    end

    it "sinh" do
      res = Math.sinh(0) #=> 0.0

      expect(res).to eq(0.0)
    end

    it "sqrt" do
      res = Math.sqrt(9)   #=> 3.0

      expect(res).to eq(3.0)
    end

    it "first" do
      arr = ['a', 'b', 'c', 'd', 'e', 'f']
      
      res = arr.first #=> 1

      expect(res).to eq(1)
    end

    it "last" do
      arr = ['a', 'b', 'c', 'd', 'e', 'f']
      
      res = arr.last #=> 6

      expect(res).to eq(6)
    end

end