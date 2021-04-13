
class Bike
  def initialize(bike_min)
    @bike_min = bike_min
  end
  def cost(money)
    if @bike_min <= 30
      return money
    else
      return 0
    end
  end
end
# 前 30 分鐘 5 元
# 超過 30 分鐘，但於 4 小時內還車，費率為每 30 分鐘 10 元。
# 超過 4 小時，但於 8 小時內還車，第 4~8 小時費率為每 30 分鐘 20 元。
# 超過 8 小時，於第 8 小時起將以每 30 分鐘 40 元計價。
RSpec.describe Bike do
  it "前 30 分鐘 5 元" do
    bike_min = Bike.new(30)
    cost_money = bike_min.cost(5)
    expect(bike_min.cost).to be 5
    expect(cost_money).to be 0
  end
end
