require_relative 'game_engine'
class Evaluator
    def self.partial_and_matches(comp,player,s)
        all = comp.zip(player)
        comp_array = []
        player_array = []
        match = 0
        all.each do |a,b|
            if a==b
                match+=1
            else
                comp_array << a
                player_array << b
            end
        end
        comp_hash = Hash.new(0)
        comp_array.each do |word|
            comp_hash[word] += 1
        end
        user_hash = Hash.new(0)
        player_array.each do |word|
            user_hash[word] += 1
        end
        result = 0
        user_hash.each do |key, value|
            if comp_hash[key] >= value
                result += value
            else
                result += comp_hash[key]
            end
        end
        p = Time.now
        time_taken = p - s
        return match, time_taken, result
    end
  
  
  def self.partial_and_matches_2(comp,player,attempts,s)
       all = comp.zip(player)
       comp_array = []
       player_array = []
       match = 0
       all.each do |a,b|
         if a==b 
         match+=1
         else
         comp_array << a
         player_array << b
        end
      end
      comp_hash = Hash.new 0
        comp_array.each do |word|
        comp_hash[word] += 1
      end
      user_hash = Hash.new 0
        player_array.each do |word|
        user_hash[word] += 1
      end
      result =0
      user_hash.each do |key, value|
        if comp_hash[key] >= value
          result +=value
        else
          result +=comp_hash[key]
        end
     end

      if match == 5
        p = Time.now
        puts "Congratulations, you have guessed correctly with #{attempts + 1} attempts and have won the game in #{(p - s).ceil} seconds".blue
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
        puts "you have #{match.to_s} " + "perfect matches".green + " and #{result.to_s} " + "partial matches".blue
        puts "you have attempted #{attempts + 1} time(s) and now have #{12 - (attempts + 1)} trials left"
      end
  end 

  def self.partial_and_matches_3(comp,player,attempts,s)
    all = comp.zip(player)
    comp_array = []
    player_array = []
    match = 0
    all.each do |a,b|
      if a==b 
      match +=1
      else
      comp_array << a
      player_array << b
      end
    end
    comp_hash = Hash.new 0
    comp_array.each do |word|
    comp_hash[word] += 1
    end
    user_hash = Hash.new 0
    player_array.each do |word|
      user_hash[word] += 1
    end
    result =0
    user_hash.each do |key, value|
      if comp_hash[key] >= value
          result +=value
      else
          result +=comp_hash[key]
      end
    end
      
    if match == 6
      p = Time.now
        puts "Congratulations, you have guessed correctly with #{attempts + 1} attempts and have won the game in #{(p - s).ceil} seconds".blue
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

      puts "you have #{match.to_s} " + "perfect matches".green + " and #{result.to_s} " + "partial matches".blue
      puts "you have attempted #{attempts + 1} time(s) and now have #{12 - (attempts + 1)} trials left"
    end
  end
end