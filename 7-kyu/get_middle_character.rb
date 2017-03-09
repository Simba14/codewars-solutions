# Instructions:
# You are going to be given a word. Your job is to return the middle character of the word. If the word's length is odd, return the middle character. If the word's length is even, return the middle 2 characters.

def get_middle(s)
  letters = s.split("") # splits word into array of its letters
  mid_digit = s.length / 2 # gets middle digit from length of word
  if s.length % 2 == 0 # Check if length of word is even
    middle = letters[mid_digit-1..mid_digit].join("") # joins two middle letters
  else
    middle = letters[mid_digit]
  end
end

get_middle("Creations")
get_middle("Tree")

# Best practice solution:
# def get_middle(s)
#  s[(s.size-1)/2..s.size/2]
# end
