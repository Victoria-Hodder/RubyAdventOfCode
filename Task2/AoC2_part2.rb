puzzle_input = File.read("puzzle_input").split("\n")


puts (puzzle_input.count do |line|
  split_line = line.split(":")
  password_conditions = split_line[0]
  given_password = split_line[1].strip
  numbers, letter = password_conditions.split(" ")
  split_numbers = numbers.split("-").map(&:to_i)
  position1 = split_numbers[0] - 1
  position2 = split_numbers[1] - 1
  character_at_position_1 = given_password[position1]
  character_at_position_2 = given_password[position2]
  (letter == character_at_position_1) ^ (letter == character_at_position_2)
end)
