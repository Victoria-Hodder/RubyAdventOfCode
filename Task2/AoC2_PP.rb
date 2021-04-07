puzzle_input = File.read("puzzle_input").split("\n")


puts (puzzle_input.count do |line|  
  # Split the line in two halves
  split_line = line.split(":")
  password_conditions = split_line[0]
  given_password = split_line[1].strip
  # Split the first half into numbers and letters
  split_numbers_from_letter = password_conditions.split(" ")
  # Extract the letter
  letter = split_numbers_from_letter[1]
  # Turn the numbers into a range
  split_numbers = split_numbers_from_letter[0].split("-").map(&:to_i)
  min, max = split_numbers[0], split_numbers[1]
  # Check if the number of letters in each password is within the range
  given_password.count(letter).between?(min, max)
end)



# Mögliche Regex: (\d|\d\d)-(\d|\d\d)\s\w:\s\w+
# (\d|\d) => (\d+) => (\d{1,2})