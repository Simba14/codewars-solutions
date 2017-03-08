=begin Instructions
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Finish the solution so that it returns the sum of all the multiples of 3 or 5 below the number passed in.
=end

def solution(number)
 array = (1...number).to_a # creates array of the range of numbers from 1 to the number given.
  multiples = [] # create empty array
  array.each do |word|
    if word % 3 == 0 || word % 5 == 0
      multiples.push(word) # pushes only multiples of 3 and 5 to array
    end
  end
  sum = multiples.inject(0){|sum, x| sum + x} # variable that captures the sum of the multiples array
  puts sum
end

solution(10)

# Best practice solution
#def solution(number)
#  (1...number).select {|i| i%3==0 || i%5==0}.inject(:+)
#end
