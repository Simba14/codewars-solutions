# Given an integral number, determine if it's a square number:
def is_square(x)
  if x < 0
    false
  elsif Math.sqrt(x) % 1 == 0
    true
  else
    false
  end
end

is_square(57*57)

# Best practice solution:
# def is_square(x)
#  x < 0 ? false : Math.sqrt(x) % 1 == 0
# end
