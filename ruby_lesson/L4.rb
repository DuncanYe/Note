def max_profit(prices)

    if prices.length == 1
      return 0
    end

    buy = nil
    profit = 0
    
    for i in 0...prices.length do
      if buy == nil
        buy = prices[i] #如果買進是空的，就把i放進去？
      end

      if buy > prices[i]
        buy = prices[i]
      elsif ( prices[i] - buy ) > profit 
        profit = prices[i] - buy
      end
        
    end
    
    return profit
    
end

max_profit([7, 1, 5, 3, 6, 4])

puts "Result is : #{max_profit([7, 1, 5, 3, 6, 4])}"


#例外，如果陣列長度只有1個，回傳0。因為無法比較
#問題，在哪裡買進的？如果跳過7買進1？
#
#
#