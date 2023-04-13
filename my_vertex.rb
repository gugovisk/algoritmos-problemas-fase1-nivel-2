class MyVertex
  attr_accessor :vid, :label, :value, :adj_v, :in_edges, :edges
  #This method will remove the specified linked list
  def initialize(label=false, value = false, vid)
    if !label
      @label = self.__id__
    else
      @label = label
    end
    @vid = vid
    @value = value
    @adj_v = Array.new
    @in_edges = Array.new
    @edges = Hash.new
  end

  def connect(vertex, edge)
    adj_v.push(vertex)
    in_edges.push(edge)
  end
  #I think this is how it will work
  def disconnect(edge)
    #adj_v.delete(vertex)
    in_edges.delete(edge)
  end
end
