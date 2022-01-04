class Question

  def initialize(question, answer)
    @question = question
    @answer = answer
  end

  def isCorrect(answer)
    if @answer == answer
      return true
    else
      return false
    end
  end

  def question()
    @question
  end
end