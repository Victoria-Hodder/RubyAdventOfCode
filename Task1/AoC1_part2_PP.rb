numbers = File.read("expenses").split("\n").map(&:to_i)

def product_of_numbers_with_sum_2020(numbers, count)
  combinations = []
  count.times do 
    sum = 0
    numbers.each do |number|
      number ** count
      if sum == 2020
        puts number1 * number2 * number3
        return
      end 
    end
  end
end

product_of_numbers_with_sum_2020(numbers, 3)

# .zip
# combinations / permutation ?