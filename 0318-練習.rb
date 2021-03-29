# 第一題
# 規則：
#
# 16 = 1 + 6 = 7
#
# 942 = 9 + 4 + 2 = 15  
#     = 1 + 5 = 6
#
# 132189 = 1 + 3 + 2 + 1 + 8 + 9 = 24
#        = 2 + 4 = 6 
#
# 493193 = 4 + 9 + 3 + 1 + 9 + 3 = 29
#        = 2 + 9 = 11
#        = 1 + 1 = 2

def number_root(n)
  # while n > 10
  #   n = n.digits.sum
  # end
  loop do
    n = n.digits.sum #.digits 數字拆解 .sum 總和
    break n < 10
  end
  return n
end

puts number_root(16)      # 印出 7
puts number_root(942)     # 印出 6
puts number_root(132189)  # 印出 6
puts number_root(493193)  # 印出 2

# 第二題
#
# 規則：同樣的數字最多只能出現 N 次
#
# 範例：
# [1, 2, 3, 1, 2, 2, 2]，如果 N = 2 表示同樣的數字最多只能出現 2 次
# 所以會得到 [1, 2, 3, 1, 2]

def remove_extra_number(list, n)
  # 空陣列
  result = []
  list.each do |num|
    if result.count(num) < n # .count(a)尋找陣列 這數字有幾個 ;這陣列裡面針對 a值 有幾個
      result << num
    end
    # 改 result << num if result.count(num) < n
  end
  result
end

p remove_extra_number([1, 1, 1, 1], 1)           # 印出 [1]
p remove_extra_number([1, 1, 1, 1], 2)           # 印出 [1, 1]
p remove_extra_number([20, 37, 20, 21], 1)       # 印出 [20, 37, 21]
p remove_extra_number([1, 2, 3, 1, 2, 2, 2], 2)  # 印出 [1, 2, 3, 1, 2]
p remove_extra_number([1, 2, 3, 4], 0)           # 印出 [1, 2, 3, 4]