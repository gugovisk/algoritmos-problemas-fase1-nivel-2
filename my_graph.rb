class MyGraph
  attr_accessor :va, :label, :ea, :num_of_edges, :num_of_vertices

  def initialize(label = false)
    @label = label
    @va = Array.new
    @ea = Array.new
    @num_of_vertices = 0
    @num_of_edges = 0
  end

  def new_vertex(label=false, value=false, vid)
    #For this method, We are going to create a vertex for our graph
    v = MyVertex.new(label, value, vid)      #creates a new vertex object for the graph
    @va.push(v)                              #adds vertex to the vertex array
    @num_of_vertices += 1
    v
  end

  def new_edge(label = false, value = false, v, w, eid)
    #For this method, we are adding a edge to two vertices in our graph
    edge = MyEdge.new(label, value,eid)    #COME BACK TO THIS LINE
    edge.to = v
    edge.from = w
    @ea.push(edge)
    v.connect(w,edge)
    w.connect(v,edge)
    @num_of_edges += 1
    edge
  end

  def num_vertices
    #For this method, we are getting the size of the graph and returning it as the number of vertices
    @num_of_vertices
  end

  def num_edges
    #For this method, we are getting the size of each vertex and adding it to an array and then returning the size
    @num_of_edges
  end
end
