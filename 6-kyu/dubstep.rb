=begin Instructions:
Let's assume that a song consists of some number of words.
To make the dubstep remix of this song, Polycarpus inserts
a certain number of words "WUB" before the first word of
the song (the number may be zero), after the last word
(the number may be zero), and between words (at least
one between any pair of neighbouring words), and then
the boy glues together all the words, including "WUB", in
one string and plays the song at the club.
Recently, Jonny has heard Polycarpus's new dubstep track,
but since he isn't into modern music, he decided to find
out what was the initial song that Polycarpus remixed.
Help Jonny restore the original song.
=end

def song_decoder(song)
  array = song.split("WUB").reject {|c| c.empty?} # reject removes empty strings from array
  original = array.join(" ")
end

song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") # WE ARE THE CHAMPIONS MY FRIEND

# Best Practice Solution:
# def song_decoder(song)
#  song.gsub(/(WUB)+/, ' ').strip
# end
