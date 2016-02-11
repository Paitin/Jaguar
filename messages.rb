class Messages
	def self.welcome
		puts  "Welcome to Master_mind, your very first Ruby App!"+ 
		  " Would you like to " + "Play".colorize(:green) + 	  " or would you rather read the " + "Instructions".colorize(:blue) + 
		  " or a brief " +"(B)ackground".colorize(:yellow)+ " on mastermind. You may choose to " + "(E)xit".colorize(:red) + " as well." + 
		  "But if you want to go ahead and play, press 'P'."
	end

	def self.background
		puts  "Just a little background on MASTERMIND Mastermind".colorize(:blue) + 
	" Mastermind is a board game with an interesting history (or rather a legend?). 
	Some game books report that it was invented in 1971 by Mordecai Meirowitz, an Israeli postmaster and telecommunications expert.
	After many rejections by leading toy companies, the rights were obtained by a small British firm, Invicta Plastics Ltd.
	The firm originally manufactured the game itself, though it has since licensed its manufacture to Hasbro in most of the world.
	However, Mastermind is just a clever readaptation of an old similar game called 'Bulls and cows' in English, and 'Numerello' in Italian...
	Actually, the old British game 'Bulls and cows' was somewhat different from the commercial version.
	It was played on paper, not on a board... Over 50 million copies later, Mastermind is still marketed today!
	The idea of the game is for one player (the code-breaker) to guess the secret code chosen by the other player (the code-maker).
	The code is a sequence of 4 colored pegs chosen from six colors available. The code-breaker makes a series of pattern guesses -
	after each guess the code-maker gives feedback in the form of 2 numbers, the number of pegs that are of the right color and in the correct
	position, and the number of pegs that are of the correct color but not in the correct position -
	these numbers are usually represented by small black and whitepegs.
	In 1977, the mathematician Donald Knuth demonstrated that the code-breaker can solve the pattern in five moves
	or less, using an algorithm that progressively reduced the number of possible patterns."
	end
end