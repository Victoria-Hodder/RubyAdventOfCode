# while and break

sum = 4
while sum >= 1
  puts "In while block"
  sum -= 1
end
puts "Out of while block"

# for loop

i = "In for loop"
for a in 1..5 do
 puts i 
end
puts "Out of for loop"


# do... while...

loop do
  puts "In do while loop"
  val = 4
  if val == 4
    break
  end
end
puts "Out of do while loop"


# until

var = 7
until var == 11 do
  puts "Inside until loop" 
  var = var + 1
end
puts "Out of unless loop"


# idea

def loops
  i = 0
  numbers = []

  while i < 6
    puts "At the top i is #{i}"
    numbers.push(i)

    i = i + 1
    puts "Numbers now: #{numbers}"
    puts "At the bottom i is #{i}"
  end
end

loops
puts "The numbers: "



# 1. Weg zum Sammeln von den 3 Zahlen
# 2. && Weg, um zu prüfen, ob diese 3 Zahlen addiert gleich 2020 sind
# 3. Wenn dies erreicht ist, ein Weg finden, diese drei Zahlen miteinander zu multiplizieren


def expense_result(file)
  # numbers = []

  # sum = numbers.sum

  # while numbers.sum < 2020 && numbers.length < 3
  #   add item to numbers array
  # end


  # if sum == 2020
  #   multiply the numbers in the array
  #   e.g. sum.reject(&:zero?).inject(:*)
  #   https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-inject
  # return

end

expense_result(f)









  # empty array to collect the three numbers which equal 2020
  numbers = []
  # var to check if sum of numbers if equal to 2020 - do I need this?
  sum = 0

  # loop through numbers
  # add to numbers array

  # Question: how to limit items in array to 3?
  # Array#take_while ??
  # https://ruby-doc.org/core-1.9.2/Enumerable.html#method-i-take

  # Question: how to add numbers in array?
  # sum = array.sum
  # OR
  # array.inject(0) { |sum, x| sum + x }

  # Another idea:
  # while sum < 2020 && numbers.length < 3
  #   add item to numbers array
  # end

  # Question: how to add numbers in array?
  # sum = array.sum
  # OR
  # array.inject(0) { |sum, x| sum + x }


  # if sum == 2020
  #   multiply the numbers in the array
  #   e.g. sum.reject(&:zero?).inject(:*)
  #   https://ruby-doc.org/core-3.0.0/Enumerable.html#method-i-inject
  # return
