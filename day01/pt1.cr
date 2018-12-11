file = File.new("input.txt")

frequency = 0

file.each_line do |line|
    frequency += line.to_i
end

puts frequency

