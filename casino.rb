#Find a gem that allows you to play sound and find casino sounds 
#that will play on each game change/events

#Gem discovery: go to rubygems.org and find more gems that you want to implement in your project and use


require_relative "roulette"
require_relative "player"

class Casino
  def main_menu
      #puts "welcome to the Casino DPL Royal"        
      puts 'Which game do you want to play, Slots, or Roulette?'
         user_bet
       end
  def user_bet
        choice = gets.chomp
        if choice == 'roulette'
            roulette = Roulette.new(player)
        elsif choice == 'slots'
            slots = Slots.new
            # send to slots
        else
            puts 'please select either "slots" or roulette"'
        end
    end
end
casino = Casino.new        

def casino.main_menu
ask_age
@casino
@main_choices

end

def ask_age(player_name)
    puts " Nice of you to join us tonight #{player_name}. I also need to see some I.D.  How old are you?"
    new_age = gets.to_i
   if new_age < 21 
     puts "Sorry pal, try agin when you're older! Next time I'll put your name in the black book! Go on, Get OUTA here!" 
     exit
   else new_age  
     puts "Alright #{player_name} get ready for some action!"
     return new_age
   end
     
  end
  puts "Please type in your name"
   new_player_name = gets.strip
  player_age = ask_age(new_player_name)
  puts "please type in your wallet amount"
  player_wallet = gets.to_f
  
  player_one = Player.new(new_player_name, player_age, player_wallet)
  puts player_one.name
  puts player_one.age
  puts player_one.wallet

  
  
# start on player next step

# rand(10) => a random number between 0 and 9

# color = 100% payout (other than green)
# number = 3500% payout
class Main_choices
    puts "What would you like to do #{player_name}?"
    puts "1. Show your winnings"
    puts "2. Choose a different game"
    puts "3. Leave the casino"
    choice = gets.to_i
    if choice == 1
      bank_role
      #show_pets
    elsif choice == 2
      show_wallet
     
    elsif choice == 3
      puts "Come back soon!"
      exit
    end
  end
  