=begin Instructions:
A digital root is the recursive sum of all the digits in a number.
Given n, take the sum of the digits of n. If that value has two digits,
continue reducing in this way until a single-digit number is produced.
This is only applicable to the natural numbers.
=end

def digital_root(n)
 while n.to_s.length > 1 # continues iterating until n is 1 digit
 array = n.to_s.split("").map(&:to_i)
 sum = 0
 array.each do |x|
   sum += x
 end
 n = sum
 end
 return n
end

digital_root(942) # => 6
digital_root(132189) # => 6
digital_root(493193) # => 2
