# 存錢功能
# 可以存錢
# 不可以存 0 元或是小於 0 元的金額（越存錢越少！）

# 領錢功能
# 可以領錢
# 不能領 0 元或是小於 0 元的金額（越領錢越多！）
# 不能領超過本身餘額

# 實際專案 
# class ATM
#   # 公開行為
#   def initialize(amount)
#     @amount = amount
#   end

#   # def deposit(money)
#   #   # @amount+= money
#   #   # 如果領的前 大於 0 執行
#   #   if money > 0
#   #     @amount = @amount + money
#   #   end
#   # end
#   def deposit(money)
#     @amount += money if money > 0
#   end

#   def withdraw(money)
#     # @amount-= money
#     if money > 0 and money <= @amount
#       @amount = @amount - money
#       return money
#     else
#       # 回傳驗證我領多少
#       return 0
#     end
#   end

#   def balance
#     @amount
#   end

# end

# 簡化
class ATM
  # 公開行為
  attr_accessor :balance
  def initialize(balance)
    @balance = balance
  end
  def deposit(money)
    @balance += money if money > 0
  end

  def withdraw(money)
    # @amount-= money;enough? 夠不夠
    if money > 0 and enough?(money)
      @balance = @balance - money
      return money
    else
      # 回傳驗證我領多少
      return 0
    end
  end

  # 為了讓人理解 夠不夠錢私人不用公開
  private
  def enough?(money)
    money <= @balance
  end

end
