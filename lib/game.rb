class Game
  attr_reader :board, :players

  def initialize
    @board = Board.new
    @players = [Player.new('Joueur 1', 'X'), Player.new('Joueur 2', 'O')]
  end

  def play
    current_player = players[0]

    loop do
      board.display
      position = current_player.make_move
      board.place_symbol(position, current_player.symbol)

      if board.game_over?(current_player.symbol)
        board.display
        if board.played_moves == 9
          puts "Match nul !"
        else
          puts "#{current_player.name} a gagné !"
        end
        break
      end

      current_player = (current_player == players[0]) ? players[1] : players[0]
    end
  end
end
