# Instructions:
# Move the first letter of each word to the end of it,
# then add 'ay' to the end of the word.

def pig_it text
  a = text.split(" ")
  a.map! do |x|
    b = x.to_s.split("").rotate(1) # splits each word into its letter and then 'rotates' the first letter to the last
    c = b.join()
    if c =~ /[A-Za-z]/ # checks if element is a letter
      x = c + "ay"
    else
      c
    end
  end
  string = a.join(" ")
end

pig_it('Pig latin is cool') # igPay atinlay siay oolcay

Best Practice Solution:

# def pig_it text
#   text.gsub(/(\w)(\w+)*/, '\2\1ay')
# end

# Explanation:
# gsub() performs in place string substitution.
# The regex expression searches for a single letter \w, and the parentheses make it a capture group, so (\w) captures the first letter of the string stored in text.
# (\w+) then captures the rest of the letters in the string.
# The second parameter is what to replace the found occurences with. In this case, \2 represents the second capture group above, and \1 represents the first capture group.
# So, for the string "hello", \2 would be "ello" and \1 would be "h". The result of the replace would be "ellohay".
