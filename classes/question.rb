class Question

  def initialize
    @val_one = rand(1..20)
    @val_two = rand(1..20)
    @answer = @val_one + @val_two
  end
  attr_accessor :val_one, :val_two, :answer
  
  def question_string
    "What does #{val_one} plus #{val_two} equal?"
  end

  def correct?(a)
    a == self.answer
  end
end
