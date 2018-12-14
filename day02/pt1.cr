file = File.new("input.txt")

two_time_count = 0
three_time_count = 0

file.each_line do |line|
    counts = Hash(Char, Int32).new
    line.chars.each do |char|
        counts[char] = counts.fetch(char, 0) + 1
    end

    if counts.has_value?(2)
        two_time_count += 1 
    end
    if counts.has_value?(3)
        three_time_count += 1
    end
end

puts two_time_count * three_time_count

file.close

