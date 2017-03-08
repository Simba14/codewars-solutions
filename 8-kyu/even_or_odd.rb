def even_or_odd(number)
# checks whether number is even by evaluating whether the remainder is 0 when divided by 2
  if number % 2 == 0
    return "Even"
  else
    return "Odd"
  end
end

puts tst = even_or_odd(0)

## Best practice solution
# def even_or_odd(number)
#  number.even? ? "Even" : "Odd"
# end
