=begin Instructions
Your goal in this kata is to implement a difference function,
which subtracts one list from another.
It should remove all values from list a, which are present
in list b.
=end

def array_diff(a, b)
  c = a - b
end

#def array_diff(a, b)
#   a.reject {|e| b.include? e}
#end

array_diff([1,2],[1])
