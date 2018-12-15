lines = File.read_lines("input.txt")

grid = Array.new(2000) { Array.new(2000) {0} }

overlap_ct = 0

lines.each do |line|
    input = /#(\d+) @ (\d+),(\d+): (\d+)x(\d+)/.match(line)
    if !input.nil?

        (input[2].to_i...input[2].to_i + input[4].to_i).each do |c|
            (input[3].to_i...input[3].to_i + input[5].to_i).each do |r|
                if grid[r][c] > 0
                    non_overlapping_claim = false
                end

                # only once for every grid spot
                if grid[r][c] == 1
                    overlap_ct += 1
                end
                grid[r][c] += 1
            end
        end

    end
end

lines.each do |line|
    input = /#(\d+) @ (\d+),(\d+): (\d+)x(\d+)/.match(line)
    if !input.nil?
        non_overlapping_claim = true
        (input[2].to_i...input[2].to_i + input[4].to_i).each do |c|
            (input[3].to_i...input[3].to_i + input[5].to_i).each do |r|
                if grid[r][c] > 1
                    non_overlapping_claim = false
                end
            end
        end

        if non_overlapping_claim
            puts input[1]
        end
    end
end

puts overlap_ct

