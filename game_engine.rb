
def playerChoice
	userChoice = gets.chomp
	userChoice.upcase!
	if userChoice == "P"
		puts "Go ahead and play the game"
		game
	elsif userChoice == "I"
		puts "In this game, all you need to do is to guess correctly the initials of the colors picked by the computer"
		game
	elsif userChoice == "B"
		background			
	elsif userChoice == "E"
		puts "we regret you will not like to play this game"
	else
		puts "You entered something that was incorrect, try again!"
		playerChoice
	end
end
def game
	puts "To start the game, you will have to select a level"
	puts "Enter (1) for Beginner"
	puts "Enter (2) for Intermediate"
	puts "Enter (3) for Advanced."
	level = gets.chomp.to_i
	if level == 1
		level_1
	elsif level == 2
		level_2
	elsif level == 3
		level_3
	else
		game
	end
end

def level1
	puts "Now that you are ready to play, Let's start by telling us your name"
	name = gets.chomp.upcase
	puts "Hi #{name} I have generated a beginner sequence with four elements made up of:
		(b)lue, (g)reen, (y)ellow and (o)range. You are to guess the sequence in which t
		hese colors appeared e.g BPAO for (b)lue, (p)urple, (a)mber and (o)range. You ha
		ve 12 guesses to get these colors or you lose the game. Use (q)uit at any time t
		o end the game.
		Ready to play?
		What's your guess? ,"
end
	