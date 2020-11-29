#21
require_relative 'deck'

class Twenty_one
  def initialize(player)
    @player = player
    @deck = Deck.new
    play
  end


  def play
    puts "How much do you want to wager?"
      wager = gets.strip.to_i
      if wager > 0
        first_card = @deck.pull_card
        second_card = @deck.pull_card
        third_card = @deck.pull_card
        puts "The card is #{first_card}"
        print "(hit/stay):"
        guess = gets.strip.downcase
        puts "The second card is #{second_card}"
          if guess == 'hit'
            if is_correct = first_card.to_i <= second_card.to_i
              puts "YOU WON!"
            else
              #print "hit or stay"  
              #puts "The third card is #{third_card}"
          #if guess == "hit"
           # if first_card.to_i > 21
          #else
              puts "You Lost! Better luck next time!"
            end
            wager *= -1 if !is_correct
            @player.wallet += wager 
          else
            if is_correct = first_card + second_card.to_i > third_card.to_i
              puts"YOo woon"
            else 
              puts "Yoo Looost"
            end 
            wager *= -1 if !is_correct
            @player.wallet += wager
          end
          else
            puts "go homeee"
            return
        end
      end
    end
    
