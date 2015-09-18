require 'pry'
require 'colorize'
require_relative 'game_engine'
require_relative 'messages'
require_relative 'the_function_for_codes_and_matches'

=begin
The main code body is naturally scanty for clarity purposes. For an insight into the mind of the game, you can just
easily check the 'game_engine' and the 'the_function_for_codes_and_matches' files.
=end

Messages.welcome
#The welcome message stops where the playerChoice message naturally starts maintaining the flow
Engine.playerChoice