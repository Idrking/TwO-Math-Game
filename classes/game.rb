require './classes/player'
require './classes/question'

class Game
  
  def initialize
  @players = [Player.new(1), Player.new(2)]
  @isOver = false
  @currentTurn = 0
  end

  attr_accessor :players, :isOver, :currentTurn

  
  def game_over?
    players[0].lives == 0 || players[1].lives == 0
  end
  
  def game_end(currentTurn)
    winning_player = players[currentTurn]
    puts "\n---- GAME OVER ----"
    puts "Player #{winning_player.id} wins with a score of #{winning_player.lives}/3" 
  end

  def advance_turn
    self.currentTurn = self.currentTurn == 0 ? 1 : 0
    puts "P1: #{players[0].lives}/3 vs P2: #{players[1].lives}/3"
  end
  
  def run
    while players[0].lives != 0 && players[1].lives != 0

      question = Question.new
      puts "Player #{currentTurn + 1}: #{question.question_string}"
      
      unless question.correct?(gets.chomp.to_i)
        players[currentTurn].lives -= 1
        puts "Wrong! You just lost a life bucko"
      else
        puts "Correct!"
      end

      self.advance_turn
      
      if self.game_over?
        self.game_end(self.currentTurn)
      else
        puts "\n---- NEW TURN ----"
      end
      
    end
    
  end

end
