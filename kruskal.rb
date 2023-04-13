require 'algorithms'
include Containers

class Kruskal
  def kruskalMST(graph)
    heap = MinHeap.new
    tree = Array.new
    to_arr = Array.new
    from_arr = Array.new
    #puts "#{graph.num_of_vertices}"
    clusters = Array.new(graph.num_of_vertices)
    for i in 0..graph.num_of_vertices - 1 # suppose to be - 1 at the end
      clusters[i] = [graph.va[i]]
      clusters.each do |r|
        puts clusters.length
        #puts r
      end
      #puts clusters.length
      #clusters[i] = graph.va[i]
    end #end statement for loop
    for x in 0..graph.num_edges - 1
      heap.push(graph.ea[x].weight, graph.ea[x])
      #puts "Weight:#{graph.ea[x].weight}"
    end # end for for loop
    while (tree.size < graph.num_of_vertices - 1)
      #puts graph.ea[x].weight
      minedge = heap.pop
      #puts "Minedge: #{minedge} "
    #  count =  0
      clusters.each do |x|
        #count += 1
        if (x.include?(minedge.to))
          #puts "MINI:#{minedge.to}"
        #  if(v = (to_arr >=< from_arr))
        #    if(v == 0)
              #there is a matching array
        #    else
              #there  exists
          to_arr = x
          #puts "TO_ARR: #{to_arr}"
          #puts "Count: #{count}"
        end
      end
      if(to_arr != from_arr)
        tree << minedge
        to_arr.concat(from_arr)
        #puts "FROM_ARR:#{from_arr}"
      end
    end #end statement for while loop
    return tree
  end #end statement for method
end#end statement end of class
=begin

worst case

http://www.personal.kent.edu/~rmuhamma/Algorithms/MyAlgorithms/GraphAlgor/kruskalAlgor.htm

http://www.geeksforgeeks.org/greedy-algorithms-set-2-kruskals-minimum-spanning-tree-mst/

https://visualgo.net/en/mst


=end
