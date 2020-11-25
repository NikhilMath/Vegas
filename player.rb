class Wallet
  attr_accessor :money

  def initialize (money)
    @money = money
  end

  def increase_money(number)
    @money += number
  end
end


 