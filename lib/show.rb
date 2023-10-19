# cette classe sera une sorte de view. Elle affichera l'état du plateau de jeu à un instant T
class Show
    def self.display_board(board)
        puts "\n"
        (0..2).each do |row|
          (0..2).each do |col|
            print " #{board[row * 3 + col]} "
            print '|' unless col == 2
          end
          puts "\n---|---|---" unless row == 2
        end
        puts "\n"
      end
end    