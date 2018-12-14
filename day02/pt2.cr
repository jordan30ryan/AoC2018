ids = File.read_lines("input.txt")

ids.combinations(2).each do |id|
    if id[0].size == id[1].size 
        distance = 0

        (0...id[0].size).each do |idx|
            distance += 1 if id[0][idx] != id[1][idx]
        end

        if distance == 1
            puts id[0], id[1] 
        end
    end
end

