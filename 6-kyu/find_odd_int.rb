# Instructions:
# Given an array, find the int that appears an odd number of times.
# There will always be only one integer that appears an odd number of times.

def find_it(seq)
  counts = Hash.new 0 # Create hash that will count each integer
  seq.each do |x|
    counts[x] += 1
  end
  counts.each do |key, value|
    if value % 2 != 0 # Checks whether count is odd
      return key # returns the corresponding key of odd values
    end
  end
end

find_it([20,1,-1,2,-2,3,3,5,5,1,2,4,20,4,-1,-2,5])

# Best practice solution:
# def find_it(seq)
# seq.detect { |n| seq.count(n).odd? }
# end
