# Instructions:
# Your task is to write a function that takes a string and return a new string with all vowels removed.

def disemvowel(str)
  str = str.delete 'AEIOUaeiou'
end

disemvowel("Help I'm a rabbit!")
