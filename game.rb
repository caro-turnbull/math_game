#current player
#input
#loop here or in main??
#start round
#show points
#check for loser
#end game
#define a turn
#where to loop?

class Game
  attr_reader :player_1, :player_2
  attr_accessor :current_player

  def initialize
    @player_1 = Player.new("Player 1")
    @player_2 = Player.new("Player 2")
  
  end

  def start_round
    @current_player=@player_1
  #   puts "You have #{@current_player.lives} lives."
  end

  # def print_info
  #   puts "testing player1 #{@player_1.name}"
  #   puts "testing player2 #{@player_2.name}"
  #   puts "testing current player #{:current_player.name}"
  # end

  def turns_loop
    puts "-------- New Turn --------"
    puts "#{@current_player.name} it is your turn."
    @current_player.ask_a_question
    switch_turn
    if (game_over) 
      puts "xxxxxxxxxxxxxxxxxxxxxxxxxxx"
    else
      turns_loop
    end
  end
  
  def switch_turn
    puts "P1: #{@player_1.lives}/3 --vs-- P2: #{@player_2.lives}/3"
    if (@current_player == @player_1)
      @current_player = @player_2
    else
      @current_player = @player_1
    end
  end

  def game_over
    if (@player_1.lives == 0)
      puts "xxxxxxx Game Over. xxxxxxxx"
      puts "Player 2 wins. Score: #{@player_1.lives} to #{@player_2.lives}"

      true
    elsif (@player_2.lives == 0)
      puts "xxxxxxx Game Over. xxxxxxxx"
      puts "Player 1 wins. Score: #{@player_2.lives} to #{@player_1.lives}"
      true
    else
      false
    end
  end

end
