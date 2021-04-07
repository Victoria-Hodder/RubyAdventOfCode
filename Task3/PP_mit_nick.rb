def walk_through_the_forest
  forest = File.read('forest').split("\n")
  vertical_index = 0
  forest.each do |line|
    chars = line.split("")
    yield chars, vertical_index
    vertical_index += 1
  end
end

rules = [
    { right: 1, down: 1 },
    { right: 3, down: 1 },
    { right: 5, down: 1 },
    { right: 7, down: 1 },
    { right: 1, down: 2 }
]

# Creating array of counters/indices for each hash
tree_counter = Array.new(rules.length, 0)
horizontal_index = Array.new(rules.length, 0)

# tree_counter = [0, 0, 0, 0, 0] 

walk_through_the_forest do |chars, vertical_index|
    rules.each_with_index do |rule, index|
        right = rule[:right]
        down = rule[:down]

        if vertical_index % down == 0
            tree_counter[index] += 1 if chars[horizontal_index[index] % chars.length] == "#"
            horizontal_index[index] += right
            # p tree_counter[index]
        end
    end
end

p tree_counter

# Multiplying the tree counter
result = tree_counter.reduce do |result, counter|
    result *= counter
end
p result

# OR

p tree_counter.reduce(&:*)
