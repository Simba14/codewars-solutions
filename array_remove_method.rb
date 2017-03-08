# The below method does not work as expected. Correct it
=begin
def remove_odd_numbers_from_array(a)
  a.each do |x|
      if x%2!=0
          a.delete x
      end
  end
  return a
end
=end

# Reason why: each is operating on indices, so when delete removes an element, an uniterated element slides over into a "completed" index spot. You can see this if you try arrays like [1,3,5,7,9]. Every other one is missed.

#removing all odd numbers from an array
def remove_odd_numbers_from_array(a)
  a.select{ |x| (x%2).zero?}
end

# Best practice solution:
# def remove_odd_numbers_from_array(a)
#  a.reject(&:odd?)
# end
