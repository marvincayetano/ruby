# Player 1
# Asks a question that Player 2 will answer
# Player 2 will answer
# Player 1 return result

# Player 2
# Asks a question that Player 1 will answer
# Player 1 will answer
# Player 2 return result

# What information is relevant to each class?
  # question
  # question answer

# What will they need in order to be initialized?
  # name, questions

# What public methods will be defined on them?
  # name
  # question
  # question answer

# Which class will contain the game loop (where each instance of the loop is the other players turn)?
  # game class

# Which class should manage who the current_player is?
  # game class

# Which class(es) will contain user I/O and which will not have any?
  # game class

require_relative "game"
require_relative "player"
require_relative "question"

player1_questions = [Question.new("What does 5 plus 3 equal?", "8"), Question.new("What does 5 minus 3 equal?", "2"), Question.new("What does 5 times 3 equal?", "15")]
player2_questions = [Question.new("What does 6 plus 6 equal?", "12"), Question.new("What does 55 plus 33 equal?", "88"), Question.new("What does 3 times 33 equal?", "99")]

average_questions = player1_questions.length() + player2_questions.length()

player1 = Player.new("Player 1", player1_questions)
player2 = Player.new("Player 2", player2_questions)

game = Game.new(player1, player2)

i = 0

while i < average_questions  do
  game.newTurn()
  i +=1
end

game.end()