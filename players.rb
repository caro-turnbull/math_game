# name and lives
#update score
#check if lost
#new question in here to it relates to the player

class Player
  attr_reader :name
  attr_accessor :current_question, :lives, :answer

  def initialize (name)
    @name = name
    @lives = 3
  end

  def ask_a_question
    current_question = Question.new
    current_question.question_output
    puts ">>>"
    user_answer = gets.chomp
    @answer = current_question.verify_answer(user_answer)
    update_score(@answer)
  end

  def update_score(answer)
    if(answer == false)
      @lives -= 1
    end
  end


end
