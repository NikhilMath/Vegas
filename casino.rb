require_relative "roulette"
class Casino
  def main_menu
      puts "welcome to the DPL Casino resort"        
      puts 'which game do you want to play, Slots, or Roulette?'
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
casino.main_menu


# start on player next step

# rand(10) => a random number between 0 and 9

# color = 100% payout (other than green)
# number = 3500% payout