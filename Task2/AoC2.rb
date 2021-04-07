puzzle_input = File.read("puzzle_input").split("\n")

valid_passwords_count = 0

puzzle_input.each do |line|
  # Split the line in two halves
  split_line = line.split(":")
  password_conditions = split_line[0]
  given_password = split_line[1].strip
  # Split the first half into numbers and letters
  split_numbers_from_letter = password_conditions.split(" ")
  # Turn the numbers into a range
  split_numbers = split_numbers_from_letter[0].split("-").map(&:to_i)
  min = split_numbers[0]
  max = split_numbers[1]
  # Extract the letter
  letter = split_numbers_from_letter[1]

  if given_password.count(letter).between?(min, max)
    valid_passwords_count += 1
  end
end

p valid_passwords_count