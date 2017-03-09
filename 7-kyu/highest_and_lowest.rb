=begin Instructions:
In this little assignment you are given a string of space separated numbers, and have to return the highest and lowest number.
=end

def high_and_low(numbers)
  list = numbers.split(" ").map(&:to_i)
  high, low = nil
  list.each do |x|
    low = x if (low == nil || x < low)
    high = x if (high == nil || x > high)
  end
  return "#{high} #{low}"
end

high_and_low("1 2 3 4 5")  # return "5 1"
high_and_low("1 2 -3 4 5") # return "5 -3"
high_and_low("1 9 3 4 -5") # return "9 -5"

# Best practice solution:
# def high_and_low(numbers)
#  numbers.split.map(&:to_i).minmax.reverse.join(' ')
# end
