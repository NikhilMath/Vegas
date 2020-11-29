def welcome_screen
  puts ""
  puts "Welcome to roulette, please choose a number 0-34"
  @bet = gets.to_i
  puts "your bet is on #{bet}."
end

def win_maybe
  if @answer == bet
    puts "you win"
    win = Wallet.increase_money(35)
    puts "your money in your wallet is: #{Money}"
  else
    puts "you lose"
    Money / 35
    puts "your money in your wallet is: #{Money}"
  end
end




welcome_screen

rand (34)  = answer

puts "#{answer} is the result"

win_maybe