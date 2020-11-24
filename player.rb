#have player put name in
#have player decide how much is in his wallet.
#have the winnings add to his wallet or losings
#check Id, make sure player is of age

def player_name
  puts "Welcome to the casino DPL Royal, who will be joining us tonight?"
  new_name = gets.chomp 
end


#@pets = [
 # {name: "dog", cost: 10}, 
  #{name: "cat", cost: 12}, 
  #{name: "snake", cost: 8}, 
  #{name: "pig", cost: 2}, 
#]
@wallet =[]
#@cart = []

def buy_in
#def show_pets
  puts "How much are you losing tonight? I mean, how much would you like?"
  new_amount = gets.to_i
  #@pets.each_with_index do | pet, index | 
   # puts "#{index + 1}. Name: #{pet[:name]}, Cost: $#{pet[:cost]}"
  

  puts "Congratulations on your winnings #{player_name}! Tell me how much you won"
  choice = gets.to_i
  @wallet << new_amount[choice + 0]
  #@cart << @pets[choice + 0]
  #main_menu
  main_choices
end


def show_wallet
  puts "Here is what is in your wallet."
  if @wallet.length == 0
  #if @cart.length == 0
    puts "There is nothing in your wallet, better luck next time."
  else 
    ## puts @cart
    #@cart.each_with_index do | pet, index | 
     # puts "#{index + 1}. Name: #{player[:name]}, Cost: $#{player[:cost]}"
    end
  end
  
#end


def main_menu
  player_name
  ask_age
  main_choices
end 


def ask_age
   puts " Nice of you to join us tonight #{player_name}. I also need to see some I.D.  How old are you?"
   new_age = gets.to_i
  if new_age < 21 
    puts "Sorry pal, try agin when you're older! Next time I'll put your name in the black book! Go on, Get OUTA here!" 
    exit
  elsif new_age > 20 
    puts "Alright #{player_name} get ready for some action!"
  end
    
end


  def main_choices
  puts "What would you like to do #{player_name}?"
  puts "1. Decide your buy in?"
  puts "2. Show your winnings"
  #puts "3. Add a drink to your tab?"
  puts "3. Leave the casino"
  choice = gets.to_i
  if choice == 1
    buy_in
    #show_pets
  elsif choice == 2
    show_wallet
    #show_cart
  #elsif choice == 3
   # add_pet
  elsif choice == 3
    puts "Come back soon!"
    exit
  end
end
#main_menu
