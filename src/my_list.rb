require_relative 'my_enumerable'

class MyList
  include MyEnumerable
  attr_reader :list

  def initialize(arr)
    @list = arr
  end

  def each(&block)
    @list.each(&block)
  end
end

list = MyList.new([1, 2, 3, 4])
list2 = MyList.new(%w[andres mahmoud daniel])

p list.all? { |e| e < 5 }

p list.all? { |e| e > 5 }

p list2.all? { |e| e.match?(/t/) }

p list2.all? { |e| e.match?(/a/) }
