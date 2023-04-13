class MyEdge
  include Comparable

  attr_accessor :eid, :label, :weight, :to, :from

  def initialize(label = false, weight, eid)
    @label = label
    @weight = weight
    @eid = eid
    @to = to
    @from = from
  end

  def other(vertex)
    (vertex == @from) ? @to : @from
  end
end
