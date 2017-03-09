# Instructions:
# you have to write a simple Morse code decoder.
# When the message is written in Morse code, a single space is used to separate the character codes and 3 spaces are used to separate words.

def decodeMorse(morse_code)
  morse_code.strip! # strip removes leading and trailing whitespaces
  morse_code.split(/\s/).map do |element|
    MORSE_CODE[element]
  end.join("|").gsub("|||", " ").gsub("|", "")
end

decodeMorse('.... . -.--   .--- ..- -.. .') # => "HEY JUDE"

# Best practice solution:
# def decodeMorse(morseCode)
#  morseCode.strip.split("   ").map { |w| w.split(" ").map { |c| MORSE_CODE[c] }.join }.join(" ")
# end
