=begin Instructions:
Return the number (count) of vowels in the given string.
=end

def getCount(inputStr)
  new_array = inputStr.downcase.split("").select {|i| i =~/[aeiouAEIOU]/}
  puts new_array
  puts new_array.size
end

getCount("abracadabra") # 5
getCount("AbCSDasdEEWIEeeO")
# Best practice solution:
# def getCount(inputStr)
#  inputStr.downcase.count("aeiou")
# end
