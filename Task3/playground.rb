
def count_trees(right_traversal)
  forest = File.read('forest').split("\n")
  tree_counter = 0
  horizontal_index = 0
  forest.each do |line|
    chars = line.split("")
    tree_counter += 1 if chars[horizontal_index % line.length] == "#"
    horizontal_index += right_traversal
  end
  p tree_counter
end

p count_trees(1) * count_trees(3) * count_trees(5) * count_trees(7)
