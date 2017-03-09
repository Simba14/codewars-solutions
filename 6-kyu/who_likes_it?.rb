=begin Instructions:
You probably know the "like" system from Facebook and other pages.
People can "like" blog posts, pictures or other items.
We want to create the text that should be displayed next to such an item.

Implement a function likes :: [String] -> String, which must take in input
array, containing the names of people who like an item.
=end

def likes(names)
  if names.empty?
    return "no one likes this"
  elsif names.size > 3
    return "#{names[0]}, #{names[1]} and #{(names.size) - 2} others like this"
  elsif names.size == 3
    return "#{names[0]}, #{names[1]} and #{names[2]} like this"
  elsif names.size == 2
    return "#{names[0]} and #{names[1]} like this"
  else
   return "#{names[0]} likes this"
  end
end

likes [] # must be "no one likes this"
likes ["Peter"] # must be "Peter likes this"
likes ["Jacob", "Alex"] # must be "Jacob and Alex like this"
likes ["Max", "John", "Mark"] # must be "Max, John and Mark like this"
likes ["Alex", "Jacob", "Mark", "Max"] # must be "Alex, Jacob and 2 others like this"

# Best practice solution:
# def likes(names)
#  case names.size
#  when 0
    "no one likes this"
#  when 1
#    "#{names[0]} likes this"
#  when 2
#    "#{names[0]} and #{names[1]} like this"
#  when 3
#    "#{names[0]}, #{names[1]} and #{names[2]} like this"
#  else
#    "#{names[0]}, #{names[1]} and #{names.size - 2} others like this"
#  end
# end
