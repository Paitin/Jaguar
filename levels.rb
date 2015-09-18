require_relative 'game_engine'
require_relative 'the_function_for_codes_and_matches'
class Levels
	def self.level_1
		puts "Now that you are ready to play, Let's start by telling us your name"
		name = gets.chomp.upcase
		puts "Hi #{name},
		I have generated a beginner sequence with four elements made up of: #{'(B)lue'.blue}, #{'(G)reen'.green}, #{'(Y)ellow'.yellow} and #{'(R)ed'.red}. You are to guess the sequence in which these colors appeared e.g byrg for blue, yellow, red and green. You have 12 guesses to get these colors or you lose the game. Use (q)uit at any time to end the game. Ready to play?"
		colors = ["r","g","b","y"]
		generated_colors =[]
		arr =[]
		4.times do
			  arr << rand(4)
			end
		arr.each{|a| generated_colors << colors[a]}
		s = Time.now			
		12.times do |i|
			puts "What's your guess?"
			guess = gets.chomp.downcase.to_s
			if guess == "c"
				puts generated_colors
			end
			if guess == "q" || guess == "quit"
			exit
			end
			while guess.length < 4
				puts "your input is too short"
				guess = gets.chomp.downcase.to_s
			end
			while guess.length > 4
				puts "your input is too long"
				guess = gets.chomp.downcase.to_s
			end
			
			
			user_array = guess.split("")
			if guess == "q" || guess == "quit"
			exit
			end
			Evaluator.partial_and_matches_1(generated_colors,user_array,i,s)
			
		end
			
			puts "We are sorry but you lost the game, maybe some better luck next time."
			puts "The correct answer is #{generated_colors}"
			puts " You may try again by pressing 'T' or you may just quit by pressing any other key".red
			choice = gets.chomp.downcase
			if choice == "t"
				Engine.game
			else
				exit
			end
	end

	def self.level_2
		puts "Now that you are ready to play, Let's start by telling us your name"
		name = gets.chomp.upcase
		puts "Hi #{name},
		I have generated an Intermediate sequence with five elements made up of: #{'(B)lue'.blue}, #{'(G)reen'.green}, #{'(Y)ellow'.yellow}, (W)hite, (P)ink and #{'(R)ed'.red}. You are to guess the sequence in which these colors appeared e.g byrwg for blue, yellow, red, white and green. You have 12 guesses to get these colors or you lose the game. Use (q)uit at any time to end the game. Ready to play?"
		colors = ["r","g","b","w","y","p"]
		generated_colors =[]
		arr =[]
		5.times do                            #
			  arr << rand(6)						#
			end										# this is how to generate colors for computer
		arr.each{|a| generated_colors << colors[a]}#
		s = Time.now
		12.times do |i|
			puts "What's your guess?"
			guess = gets.chomp.downcase.to_s
			if guess == "c"
				puts generated_colors
			end
			if guess == "q" || guess == "quit"
			exit
			end
			while guess.length < 5
				puts "your input is too short"
				guess = gets.chomp.downcase.to_s
			end
			while guess.length > 5
				puts "your input is too long"
				guess = gets.chomp.downcase.to_s
			end
			
			user_array = guess.split("")
			
			Evaluator.partial_and_matches_2(generated_colors,user_array,i,s)
		end
		puts "We are sorry but you lost the game, maybe some better luck next time."
		puts "The correct answer is #{generated_colors}."
		puts "You may try again by pressing 'T' or you may just quit by pressing any other key".red
			choice = gets.chomp.downcase
			if choice == "t"
				Engine.game
			else
				exit
			end
	end

	def self.level_3
		puts "Now that you are ready to play, Let's start by telling us your name"
		name = gets.chomp.upcase
		puts "Hi #{name},
		I have generated an Advanced sequence with six elements made up of: #{'(B)lue'.blue}, #{'(G)reen'.green}, #{'(Y)ellow'.yellow}, #{'(W)hite'.white}, Pink, (V)iolet, (I)ndigo and #{'(R)ed'.red}. You are to guess the sequence in which these colors appeared e.g byrwg for blue, yellow, red, white and green. You have 12 guesses to get these colors or you lose the game. Use (q)uit at any time to end the game. Ready to play?"
		colors = ["r","g","b","w","y","p","i","v"]
		generated_colors =[]
		arr =[]
		6.times do
			  arr << rand(8)
		end
		arr.each{|a| generated_colors << colors[a]}
		s = Time.now
		
		12.times do|i| 
			puts "What's your guess?"
			guess = gets.chomp.downcase.to_s
			if guess == "c"
				puts generated_colors
			end
			if guess == "q" || guess == "quit"
			exit
			end
			while guess.length < 6 
				puts "your input is too short"
				guess = gets.chomp.downcase.to_s
			end
			while guess.length > 6
				puts "your input is too long"
				guess = gets.chomp.downcase.to_s
			end
			
			user_array = guess.split("")
			
			Evaluator.partial_and_matches_3(generated_colors,user_array,i,s)
		end
		puts "We are sorry but you lost the game, maybe some better luck next time."
		puts "The correct answer is #{generated_colors}"
		puts "You may try again by pressing 'T' or you may just quit by pressing any other key".red
		choice = gets.chomp.downcase
		if choice == "t"
			Engine.game
		else 
			exit
		end
	end 
end