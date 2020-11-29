#Basic Objectives:

#Start game player has a name and an initial bankroll
#Player can go to different games via menu
#Slots
#Roulette
#Player places bet and wins / loses (hint: rand)
#Player's bankroll goes up and down with wins and losses


#have player put name in
#have player decide how much is in his wallet.
#have the winnings add to his wallet or losings
#check Id, make sure player is of age

require_relative 'twenty_one'

def main_menu
  @player
  @main_choices
 # @Bank_role
end

class Player
  attr_accessor :name, :age, :wallet
  
  def initialize(name, age, wallet)
    @name = name
    @age = age
    @wallet = wallet
  end
 
  def increase_age(number)
    @age += number
  end
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

class Main_choices
  puts "What would you like to do player?"
  puts "1. Show your winnings"
  puts "2. Go to the Roulette table"
  puts "3. Got to the Slots!"
  puts "4. Leave the casino"
  choice = gets.to_i
  if choice == 1
    wallet
  elsif choice == 2
    roulette
  elsif choice == 3
    twenty_one
  else choice == 4
    puts "Come back soon!"
    exit
  end
  end

class Bank_role
  attr_accessor :winnings, :losings
  
  def initialize (winnings, losings)
    @winnings = winnings
    @losings = losings
  end
  
  def increase_winnings(number)
    @winnings += wallet
  end

def decrease_losings(number)
  @losings -= wallet
  def show_wallet
  end

    puts "Here is what is in your wallet."
    if @winnings == 0
      #if @cart.length == 0
      puts "There is nothing in your wallet, better luck next time."
    else 
      ## puts @cart
      #@cart.each_with_index do | pet, index | 
      # puts "#{index + 1}. Name: #{player[:name]}, Cost: $#{player[:cost]}"
    end
  end
  
  
  
  end
  #main_menu
  #def buy_in
  ##def show_pets
  # puts "How much are you losing tonight? I mean, how much would you like?"
  #new_amount = gets.to_i
  ##@pets.each_with_index do | pet, index | 
  ## puts "#{index + 1}. Name: #{pet[:name]}, Cost: $#{pet[:cost]}"
  
  
  #  puts "Congratulations on your winnings #{player_name}! Tell me how much you won"
  ##@wallet << new_amount[choice + 0]
  ##@cart << @pets[choice + 0]
  ##main_menu
  #main_choices
  #end
  
  #def player_name
   # puts "Welcome to the casino DPL Royal, who will be joining us tonight?"
    #new_name = gets.chomp 
  #end
  
  
  #@pets = [
   # {name: "dog", cost: 10}, 
    #{name: "cat", cost: 12}, 
    #{name: "snake", cost: 8}, 
    #{name: "pig", cost: 2}, 
  #]
  #@wallet =[]
  #@cart = []
  
  
#end

