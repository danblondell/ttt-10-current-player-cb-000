def turn_count(board)
  counter = 0
  board.each do |position|
    if (position != "" && position != " ")
      counter += 1
    end
  end
  return counter
end

def current_player(board)
  turn_count(board).even? ? "X" : "O"
end

=begin using .even? method
def current_player(board)
  if turn_count(board).even?
    return "X"
  else
    return "O"
  end
end
=end

=begin using modulo
def current_player(board)
  if turn_count(board) % 2 == 0
    return "X"
  else
    return "O"
  end
end
=end
