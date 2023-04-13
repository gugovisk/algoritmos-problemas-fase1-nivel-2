require './my_edge'
require './my_vertex'
require './my_graph'
require './krustal'
require 'algorithms'
include Containers

class Benchmarktester

    graph = MyGraph.new
    mykrustal = Krustal.new

    num =0

    file = File.open('Test1.csv', 'w')
    benefit = Random.rand(1..100)
    (1..100).each do |size| # data points going to have |size| = the the varaible in there like t
      for t in 0..(size*100) -1
      
      end # end of for loop on line 16
      fraction.newItem(label, benefit, weight, amount, value)

      local = fraction.real

      #puts "#{fraction.numOfItems}"
      num = num + 1
      #puts "#{fraction.real}"
      #puts "#{fraction.weight}"
      puts "#{num}"

      time = Benchmark.measure do |i|
        10.times do
          fraction.Knapsack(local)
        end # end for 10.times do on line 33
      end # end for benchmark on 32
      file.write("#{size*10},#{time.real/10}\n")
    end # end of for loop each do size on line 18
  file.close
end # end of method

#end # end of class
