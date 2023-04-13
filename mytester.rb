require './my_vertex.rb'
require './kruskal.rb'
require './my_edge.rb'
require './my_graph.rb'


class MyTester
  graph = MyGraph.new

=begin
  v1 = graph.new_vertex('SFO',nil,0)
  v2 = graph.new_vertex('ORD',nil,1)
  v3 = graph.new_vertex('HNL',nil,2)
  v4 = graph.new_vertex('LAX',nil,3)
  v5 = graph.new_vertex('DFW',nil,4)
  v6 = graph.new_vertex('PVD',nil,5)
  v7 = graph.new_vertex('LGA',nil,6)
  v8 = graph.new_vertex('MIA',nil,7) #getting 11 edges instead 10 edges

  e1 = graph.new_edge(nil,1843,v1,v2,0)
  e2 = graph.new_edge(nil,2555,v3,v4,1)
  e3 = graph.new_edge(nil,377,v1,v4,2)
  e4 = graph.new_edge(nil,1743,v2,v4,3)
  e5 = graph.new_edge(nil,1233,v4,v5,4)
  e6 = graph.new_edge(nil,802,v2,v5,5)
  e7 = graph.new_edge(nil,849,v2,v6,6)
  e8 = graph.new_edge(nil,142,v6,v7,7)
  e9 = graph.new_edge(nil,1387,v5,v7,8)
  e10 = graph.new_edge(nil,1120,v5,v8,9)
  e11 = graph.new_edge(nil,1099,v7,v8,10)
=end
  a = graph.new_vertex('A',nil,0)
  b = graph.new_vertex('B',nil,1)
  c = graph.new_vertex('C',nil,2)
  d = graph.new_vertex('D',nil,3)
  e = graph.new_vertex('E',nil,4)

  aTOb = graph.new_edge(nil,2,a,b,0)
  aTOc = graph.new_edge(nil,4,a,c,1)
  bTOc = graph.new_edge(nil,9,b,c,2)
  bTOe = graph.new_edge(nil,3,b,e,3)
  bTOd = graph.new_edge(nil,5,b,d,4)
  cTOe = graph.new_edge(nil,4,c,e,5)
  dTOc = graph.new_edge(nil,7,d,c,7)
  dTOe = graph.new_edge(nil,8,d,e,6)

  k = Kruskal.new
  tree = k.kruskalMST(graph)
  tree.each do |r|
    puts r.weight
  end
  #puts tree

  #puts graph.num_of_edges
  #puts graph.num_of_vertices
end
