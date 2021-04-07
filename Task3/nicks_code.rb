tree_counter = 0
horizontal_index = 0
File.open('forest') do |file|
  while forest_line = file.gets&.chomp&.split('')
    if forest_line[horizontal_index] == '#'
      tree_counter += 1
      forest_line[horizontal_index] = 'O'
    else
      forest_line[horizontal_index] = 'o'
    end
    puts "#{forest_line.join}  --> #{tree_counter}"
    horizontal_index = (horizontal_index + 3) % forest_line.length
  end
end