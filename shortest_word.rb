def find_short(s)
    list = s.split(" ") # splits a given string into an array of its consituent words
    list.sort! { |a, b| a.length <=> b.length } # sorts list by length of each word, from shortest to longest
    l = list[0].length # Sets l equal to the length of first variable in the sorted list array
    puts l
    return l # l: length of the shortest word
end

# Examples
find_short("bitcoin take over the world maybe who knows perhaps")
find_short("turns out random test cases are easier than writing out basic ones")
find_short("lets talk about javascript the best language")
find_short("i want to travel the world writing code one day")
find_short("Lets all go on holiday somewhere very cold")

=begin Best practice solution
def find_short(s)
  s.split.map(&:size).min
end
=end 
