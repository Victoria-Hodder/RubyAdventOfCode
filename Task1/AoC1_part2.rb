numbers = File.read("expenses").split("\n").map(&:to_i)

def product_of_numbers_with_sum_2020(numbers)
  numbers.each do |number1|
    numbers.each do |number2|
      numbers.each do |number3|
        if number1 + number2 + number3 == 2020
          puts "#{number1}, #{number2} and #{number3}"
          puts number1 * number2 * number3
          return
        end
      end
    end
  end
end

product_of_numbers_with_sum_2020(numbers)
