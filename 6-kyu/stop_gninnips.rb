=begin Instructions:
Write a function that takes in a string of one or more words,
and returns the same string, but with all five or more letter words
reversed (Just like the name of this Kata). Strings passed in will
consist of only letters and spaces. Spaces will be included only when
more than one word is present.
=end

def spinWords(string)
  array = string.split.map! {|x| (x.length > 4 ? x.reverse : x)}.join(" ")
  return array
end

spinWords( "Hey fellow warriors" ) # => returns "Hey wollef sroirraw"
spinWords( "This is a test") # => returns "This is a test"
spinWords( "This is another test" ) # => returns "This is rehtona test"

# Best practice solution:
# def spinWords(string)
#  string.gsub(/\w{5,}/, &:reverse)
# end
