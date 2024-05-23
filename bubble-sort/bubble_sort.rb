def bubble_sort(numbers)
    (numbers.length - 1).times do |index|
      shuffled = false
      (numbers.length - index - 1).times do |number|
        if numbers[number] > numbers[number + 1]
          larger = numbers[number]
          smaller = numbers[number + 1]
          numbers[number] = smaller
          numbers[number + 1] = larger
          shuffled = true
        end
      end
      unless shuffled
        return numbers
      end
    end
    numbers
  end
  
  p bubble_sort  [3, 1, 2, 2, 8, 9, 1, 4, 2, 3, 0, 8, 4]