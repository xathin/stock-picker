# Takes a list of stock prices and finds the best
# day to buy and sell to obtain the highest profit
# @param prices [Array<Numeric>] list of stock prices
# @return [Array(Numeric, Numeric)] best days to buy and sell
def stock_picker(prices)
  combinations = prices.combination(2).to_a
  profits = combinations.map { |days| days[1] - days[0] }
  (0...prices.size).to_a.combination(2).to_a[profits.index(profits.max)]
end

puts stock_picker([17,3,6,9,15,8,6,1,10]).to_s