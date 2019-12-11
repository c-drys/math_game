
class Question
  attr_reader :num01, :num02, :is_correct
  
  def initialize
    @num01 = rand(1..20)
    @num02 = rand(1..20)
    @is_correct = num01 + num02
  end

  def get_question
    "What does #{num01} plus #{num02} equal to?"
  end
end

