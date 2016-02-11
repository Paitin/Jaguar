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
			while guess == "c"
				print generated_colors
				print "\nYou have cheated, but I have no qualms with that, you can still try to play by entering the sequence you have seen on the screen\n"
				guess = gets.chomp.to_s
			end
			exit if guess == "q"
			while guess.length < 4 && guess != 'q' && guess != 'c'
				puts "your input is too short"
				guess = gets.chomp.downcase.to_s
				while guess == "c"
					print generated_colors
					puts "\nYou have cheated, but I have no qualms with that, you can still try to play by entering the sequence you have seen on the screen"
					guess = gets.chomp.to_s
				end
				exit if guess == "q"
			end
			while guess.length > 4
				puts "your input is too long"
				guess = gets.chomp.downcase.to_s
				while guess == "c"
					print generated_colors
					puts "\nYou have cheated, but I have no qualms with that, you can still try to play by entering the sequence you have seen on the screen"
					guess = gets.chomp.to_s
				end
				exit if guess == "q"
			end
			while guess.include? (" ")
				puts "you have entered a space as your guess".white
				puts "Try again and ensure there are no spaces this time"
				guess = gets.chomp.downcase.to_s
				while guess.length < 4 && guess != 'q' && guess != "c"
					puts "your input is too short"
					guess = gets.chomp.downcase.to_s
				end
				while guess.length > 4
					puts "your input is too long"
					guess = gets.chomp.downcase.to_s
				end
				while guess == "c"
					print generated_colors
					guess = gets.chomp.to_s
				end
				exit if guess == "q"
			end
			user_array = guess.split("")
			if Evaluator.partial_and_matches(generated_colors,user_array,s)[0] == 4
				puts "Congratulations, you have guessed correctly with #{i + 1} attempts and have won the game in #{(Evaluator.partial_and_matches(generated_colors,user_array,s)[1]).ceil} seconds".blue
    			puts "You may decide to play again by pressing "+"P".green + " or you may choose to quit by inputting any other key"
    			decision = gets.chomp.downcase
			    if decision == "p"
					Engine.game
				else
					puts "Thank you for playing Mastermind! We would love to have you play some other time".red
			       	puts "Goodbye!"
			       	exit
			    end
    
			else 
			    puts "you have #{Evaluator.partial_and_matches(generated_colors,user_array,s)[0].to_s} " + "perfect matches".green + " and #{Evaluator.partial_and_matches(generated_colors,user_array,s)[2].to_s} " + "partial matches".blue
			    puts "you have attempted #{i + 1} time(s) and now have #{11 - i} trials left"
			end
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
		5.times do
			arr << rand(6)
		end
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