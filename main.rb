require './game'
require './questions'
require './players'

new_game = Game.new
puts "---------- START NEW GAME ----------"
new_game.start_round
new_game.turns_loop


  



