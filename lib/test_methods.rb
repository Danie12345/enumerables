require_relative 'my_list'

list = MyList.new([1, 2, 3, 4])
list2 = MyList.new(%w[andres mahmoud daniel])

p(list.all? { |e| e < 5 })

p(list.all? { |e| e > 5 })

p(list2.all? { |e| e.match?(/t/) })

p(list2.all? { |e| e.match?(/a/) })

p(list.any? { |e| e == 2 })
# => true
p(list.any? { |e| e == 5 })
# => false
p(list2.any? { |e| e.match(/w/) })

p(list2.any? { |e| e.match(/a/) })

p(list.filter(&:even?))
# [2, 4]
