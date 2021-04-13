require "./02-1-ATM.rb"

# ATM 測試區域
# describe 類別方法 ATM參數（常數）
RSpec.describe ATM do
  # 情境context("存錢") 類別方法 
  # 做分類 不一定要寫
  context "存錢" do
    # let(:atm) { ATM.new(10) } 把裡面所有 "atm = ATM.new(10)" 刪除
    # it 也是方法 發生什麼事（描述）使用方法
    it "可以存錢1" do
      # 本身有 10
      atm = ATM.new(10)
      # 設計這段名稱 deposit
      atm.deposit(5)
      # expect 也是方法 希望如何
      # expect(1).to be 1 預期是2 但我帶 1
      # to(be(15)) be希望 拿掉 15
      expect(atm.balance).to be 15
    end
    it "可以存錢2" do
      atm = ATM.new(10)
      atm.deposit(10)
      expect(atm.balance).to be 20
    end
    it "不可以存 0 元或是小於 0 元的金額" do
      atm = ATM.new(10)
      atm.deposit(-1)
      expect(atm.balance).to be 10
    end
  end

  context "領錢" do
    it "可以領錢" do
      atm = ATM.new(10)
      # 互叫回值 指定給 get_money(可以寫中文)
      get_money = atm.withdraw(5)
      # 預期 餘剩5
      expect(atm.balance).to be 5
      # 預期 領5
      expect(get_money).to be 5
    end
    it "不能領 0 元或是小於 0 元的金額" do
      atm = ATM.new(20)
      get_money = atm.withdraw(-5)
      expect(atm.balance).to be 20
      expect(get_money).to be 0
    end
    it "不能領超過本身餘額" do
      atm = ATM.new(20)
      get_money = atm.withdraw(25)
      expect(atm.balance).to be 20
      expect(get_money).to be 0
    end
  end
end
