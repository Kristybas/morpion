require_relative 'board'
require_relative 'boardcase'
require_relative 'game'
require_relative 'player'
require_relative 'show'
require 'colorize'
require 'bundler'
Bundler.require


class Application
  def self.start
    loop do
      game = Game.new
      game.play

      puts "Voulez-vous jouer à nouveau ? (Oui/Non)"
      response = gets.chomp.downcase
      break unless response == 'oui'
    end
  end
end

# Lancer le jeu
Application.start




