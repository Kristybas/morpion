class Player
  attr_reader :name, :symbol

  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  def make_move
    puts "#{name}, entrez un nombre de 1 à 9 : "
    gets.chomp.to_i
  end
end