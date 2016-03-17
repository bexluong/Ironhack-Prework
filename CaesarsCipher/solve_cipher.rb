require 'pry'
#first iteration
=begin
	
rescue Exception => e
	
end
def solve_cipher(input)
    return input.chars.map { |c| (c.ord-1).chr}
end

solved = solve_cipher("ifmmp")
solved.join
=end

#second iteration
binding.pry
def solve_cipher(input, key)
    return input.chars.map { |c| (c.ord-key).chr}
end

solved = solve_cipher("ifmmp", -1)
solved.join
