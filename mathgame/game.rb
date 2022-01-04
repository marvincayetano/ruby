class Game

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @turn = 1
  end

  def newTurn()
    puts "----- NEW TURN -----"

    current_question = nil
    current_questioner = nil
    current_player = nil

    if(@turn == 1)
      current_question = @player1.question
      current_player = @player2
      current_questioner = @player1
      @turn = 2
    else
      current_question = @player2.question
      current_player = @player1
      current_questioner = @player2
      @turn = 1
    end

    puts current_questioner.name + ": " + current_question.question
    answer = gets.chomp

    isCorrect = current_question.isCorrect(answer)

    if isCorrect
      puts "YES! You are correct."
    else
      # Deduct life means winning. Isn't it weird?
      if @turn == 2
        @player1.deduct_life
      else
        @player2.deduct_life
      end

      puts "Seriously? NO!"
    end

    puts "P1: #{@player1.life}/3 vs P2: #{@player2.life}/3"
  end

  def end()
    if @player1.life < @player2.life
      printWinner(@player1)
    elsif @player2.life < @player1.life
      printWinner(@player2)
    else
      puts "There is no winner. Both players are tie with the score of #{@player1.life}/3"
    end
    puts "----- GAME OVER ------"
    puts "Goodbye"
  end

  def printWinner(player)
    puts "#{player.name} wins with the score of #{player.life}/3"
  end
end