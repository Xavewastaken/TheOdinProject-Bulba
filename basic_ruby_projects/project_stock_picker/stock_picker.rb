def stock_picker(stocks)
  hash_profit = Hash.new
  lowest_day = 0
  lowest_stock = stocks[0]
  previous_day = 0
  previous_stock = 0
  profit = 0

  stocks.each_with_index do |stock, day|
    if day > 0
      if previous_stock > stock
        if lowest_day < previous_day
          hash_profit[profit] = [lowest_day, previous_day]
        end

        lowest_stock = stock
        lowest_day = day 

        previous_day = day
        previous_stock = stock

        profit = 0
      else 
        previous_day = day
        previous_stock = stock

        profit = stock - lowest_stock
      end
    else
      previous_day = day
      previous_stock = stock
      
      lowest_day = day
      lowest_stock = stock
    end
  end
  if lowest_day < previous_day
    hash_profit[profit] = [lowest_day, previous_day]
  end

  result = hash_profit.max_by { |profit, days| profit }
  result.nil? ? [0, 0] : result[1]
end

#main
p stock_picker([17,3,6,9,15,8,6,1,10])
p stock_picker([10, 5, 7, 3, 20])
p stock_picker([5, 4, 3, 2, 1])
p stock_picker([1, 2, 3, 4, 5])
p stock_picker([10, 1, 10])
