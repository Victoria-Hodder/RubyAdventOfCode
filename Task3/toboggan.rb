forest = File.read('forest').split("\n")

tree_counter = 0
horizontal_index = 0

forest.each do |line|
  chars = line.split("")
  tree_counter += 1 if chars[horizontal_index % line.length] == "#"
  horizontal_index += 3
end

p tree_counter
