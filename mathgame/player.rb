class Player

  def initialize(name, questions)
    @name = name
    @questions = questions
    @life = 3
  end

  def name()
    @name
  end

  def question()
    return @questions.pop
  end

  def deduct_life()
    @life -= 1
  end

  def life()
    @life
  end
end