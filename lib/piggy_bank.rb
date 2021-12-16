class PiggyBank
  def initialize
    @coins = 0
  end

  def add_coins(num)
    @coins += num.to_i
  end

  def shake
    (@coins > 0) ? "CLINK!" : "You hear nothing"
  end

  def break
    total = @coins
    @coins = 0
    return total
  end
end

