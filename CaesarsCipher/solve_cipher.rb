def solve_cipher(input)
    return input.chars.map { |c| (c.ord-1).chr}
end

solved = solve_cipher("ifmmp")
solved.join