
seen_frequencies = {} of Int32 => Bool
searching = true
frequency = 0

File.read_lines("input.txt").cycle do |line|
    frequency += line.to_i

    if seen_frequencies.has_key?(frequency)
        puts "First frequency seen twice: #{frequency}"
        break
    else 
        seen_frequencies[frequency] = true
    end
end

