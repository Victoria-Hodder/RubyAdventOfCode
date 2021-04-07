forest = File.read('forest').split("\n")

tree_counter = 0
horizontal_index = 0

forest.each do |line|
  chars = line.split("")
  tree_counter += 1 if chars[horizontal_index % line.length] == "#"
  horizontal_index += 1
end

p tree_counter

tree_counter = 0
horizontal_index = 0

forest.each do |line|
  chars = line.split("")
  tree_counter += 1 if chars[horizontal_index % line.length] == "#"
  horizontal_index += 3
end

p tree_counter

tree_counter = 0
horizontal_index = 0

forest.each do |line|
  chars = line.split("")
  tree_counter += 1 if chars[horizontal_index % line.length] == "#"
  horizontal_index += 5
end

p tree_counter

tree_counter = 0
horizontal_index = 0

forest.each do |line|
  chars = line.split("")
  tree_counter += 1 if chars[horizontal_index % line.length] == "#"
  horizontal_index += 7
end

p tree_counter