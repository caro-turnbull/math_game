# numbers and answer
# ask question
# check answer
# export if_correct???

class Question
  attr_reader :rightOrWrong
  attr_reader :current_player

  def initialize
    @num1 = rand(21)
    @num2 = rand(21)
    @answer = @num1 + @num2
    @current_player=current_player
  end

  def question_output
    puts "What is #{@num1} plus #{@num2}?"
  end

  def verify_answer(user_answer)
     if (user_answer.to_i == @answer)  #needs to return true or false
      puts "Yes!, Thats correct."
      true
     else
      puts "No, you got it wrong."
      false
     end
  end

end
