require './classes/player'

class Game
  
  def initialize
  @players = [Player.new(1), Player.new(2)]
  @isOver = false
  @currentTurn = nil
  end

  attr_accessor :players, :isOver, :currentTurn

  def start
    
    while @players[0].lives != 0 && @players[1].lives != 0
      ##ask current a question
      ## if they get it wrong, subtract one life
      ## advance the turn

      ##this is here to stop program from hanging while I develop
      @players[0].lives -= 1
    end
    
  end
end

game = Game.new
game.start