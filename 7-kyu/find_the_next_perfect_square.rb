# Task:
# Complete the findNextSquare method that finds the next integral perfect square after the one passed as a parameter.

def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  if sq < 0 ? false : Math.sqrt(sq) % 1 == 0
    nxt_sq = sq + 1
    until Math.sqrt(nxt_sq) % 1 == 0
      nxt_sq += 1
    end
    return nxt_sq
  else
  -1
  end
end

# Best practice solution:
#def find_next_square(sq)
# Return the next square if sq is a perfect square, -1 otherwise
#  number = Math.sqrt(sq) + 1
#  number % 1 == 0 ? number**2 : -1
#end
