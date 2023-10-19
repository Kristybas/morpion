# c'est le plateau, il doit y avoir une instance de class lor d'une partie
class Board
attr_reader :cases, :played_moves

def initialize
  @cases = Array.new(9) { |i| BoardCase.new(i + 1) }
  @played_moves = 0
end

def display
  system 'clear' # Efface le terminal (fonctionne sur Unix/Linux)
  puts " #{render_symbol(cases[0].content)} | #{render_symbol(cases[1].content)} | #{render_symbol(cases[2].content)} "
  puts "---|---|---"
  puts " #{render_symbol(cases[3].content)} | #{render_symbol(cases[4].content)} | #{render_symbol(cases[5].content)} "
  puts "---|---|---"
  puts " #{render_symbol(cases[6].content)} | #{render_symbol(cases[7].content)} | #{render_symbol(cases[8].content)} "
end

def place_symbol(position, symbol)
  cases[position - 1].content = symbol if valid_move?(position)
  @played_moves += 1
end

def game_over?(symbol)
  winning_combinations = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 3, 6], [1, 4, 7], [2, 5, 8], [0, 4, 8], [2, 4, 6]]
  winning_combinations.any? do |combo|
    combo.all? { |idx| cases[idx].content == symbol }
  end || @played_moves == 9
end

private

def valid_move?(position)
  (1..9).include?(position) && cases[position - 1].content == ' '
end

def render_symbol(symbol)
  case symbol
  when 'X'
    "\e[31mX\e[0m" # Rouge
  when 'O'
    "\e[34mO\e[0m" # Bleu
  else
    ' '
  end
end
end