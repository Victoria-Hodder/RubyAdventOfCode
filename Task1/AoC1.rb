f = File.read("expenses").split("\n").map(&:to_i)
f.inspect

def expense_result(file)
  file.each do |num|
    file.each do |num2|
      if num + num2 == 2020
        puts "#{num} and #{num2}"
        puts num * num2
        return
      end
    end
  end
end  

expense_result(f)