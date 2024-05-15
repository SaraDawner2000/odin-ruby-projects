def stock_picker(prices)
    delta = 0
    buy = 0
    sell = 0
    prices.each_with_index do |price, index|
        prices.drop(index).each do |compare_price|
            if compare_price - price > delta
                buy = price
                sell = compare_price
                delta = compare_price - price
            end
        end
    end
    [prices.find_index(buy), prices.find_index(sell)]
end



p stock_picker([30,3,6,9,15,8,6,1,1])