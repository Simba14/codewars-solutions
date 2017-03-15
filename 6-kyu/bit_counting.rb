# Instructions:
# Write a function that takes an (unsigned) integer as input,
# and returns the number of bits that are equal to one in the
# binary representation of that number.

def count_bits(n)
  str = n.to_s(2)
  return str.count("1")
end

count_bits(1234)
