require './toggle.rb'
require './start.rb'

class Game
    attr_reader :player1, :player2
    attr_accessor :current_player

    def initialize
        @player1 = "Player 1"
        @player2 = "Player 2"
        @current_player = player1
    end

    include Toggle

    include Start

end


