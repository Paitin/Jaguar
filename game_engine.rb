require 'colorize'
require 'pry'
require_relative 'the_function_for_codes_and_matches'
require_relative 'messages'
require_relative 'levels'
class Engine
	def self.playerChoice
		userChoice = gets.chomp
		userChoice.upcase!
		if userChoice == "P"
			puts "Go ahead and play the game"
			game
		elsif userChoice == "I"
			puts "In this game, all you need to do is to guess correctly the initials of the colors picked by the generated_colorsorter"
			game
		elsif userChoice == "B"
			Messages.background			
		elsif userChoice == "E"
			puts "we regret you will not like to play this game"
		else
			puts "You entered something that was incorrect, try again!"
			playerChoice
		end
	end
	def self.game
		puts "To start the game, you will have to select a level"
		puts "Enter (1) for Beginner".blue
		puts "Enter (2) for Intermediate".blue
		puts "Enter (3) for Advanced".blue
		level = gets.chomp.to_i
		if level == 1
			Levels.level_1
		elsif level == 2
			Levels.level_2
		elsif level == 3
			Levels.level_3
		else
			puts "You will have to select either 1, 2 or 3"
			game
		end
	end
end

