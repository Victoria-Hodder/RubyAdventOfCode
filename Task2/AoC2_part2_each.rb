puzzle_input = File.read("puzzle_input").split("\n")

valid_passwords_count = 0

puzzle_input.each do |line|
  # Splitting the line in two halves
  split_line = line.split(":")
  password_conditions = split_line[0]
  given_password = split_line[1].strip
  # split the first half into numbers and letters
  split_numbers_from_letter = password_conditions.split(" ")
  # extracting the letter
  letter = split_numbers_from_letter[1]
  # Turning the numbers into positions
  split_numbers = split_numbers_from_letter[0].split("-").map(&:to_i)
  position1 = split_numbers[0] - 1
  position2 = split_numbers[1] - 1

end

p valid_passwords_count