# Should work like...
# Input stock price for each day
# stock_picker([17,3,6,9,15,8,6,1,10])
# Returns the best low day to buy and the best day to sell after for max profit

def stock_picker(stocks)
  profit = 0
  buy = 0
  sell = 0

  #iterate through the array and assign both a bough_price/sold_price to each value as well as a buy/sell_date for each index
  stocks.each_with_index do |bought_price, buy_date|
    stocks.each_with_index do |sold_price, sell_date|
      #Make sure the sell_date is after the buy_date
      if sell_date > buy_date
        #Find an store the greatest profit
        if sold_price - bought_price > profit
          profit = sold_price - bought_price
          buy = buy_date
          sell = sell_date
        end
      end
    end
  end
  puts "Buy on day #{buy} and sell on day #{sell} and make a profit of $#{profit}"
end
stock_picker([17, 3, 6, 9, 15, 8, 6, 1, 10])
