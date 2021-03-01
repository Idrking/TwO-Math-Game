require './classes/player'
require './classes/question'

class Game
  
  def initialize
  @players = [Player.new(1), Player.new(2)]
  @isOver = false
  @currentTurn = 0
  end

  attr_accessor :players, :isOver, :currentTurn

  def start
    
    while players[0].lives != 0 && players[1].lives != 0
      question = Question.new
      puts "Player #{currentTurn + 1}: #{question.question_string}"
      unless question.correct?(gets.chomp.to_i)
      
      end
      ## if they get it wrong, subtract one life
      ## advance the turn

      ##this is here to stop program from hanging while I develop
      @players[0].lives -= 1
    end
    
  end
end

game = Game.new
game.start