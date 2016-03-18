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

BASE_ORD = 'A'.ord

def solve_cipher(phrase, key)
	#gsub matches only letters of the alphabet
  phrase.gsub(/[a-z]/i) do |letter|
  	#subs the letters, caplocks it, pulls ord num and subtracts it from base num
    orig_phrase = letter.upcase.ord - BASE_ORD
    #numbers and adds key, then helps loop back around with subtracting what's left from 26
    solved_phrase = (orig_phrase + key) % 26
    (solved_phrase + BASE_ORD).chr
  end
end

solve_cipher("p| uhdo qdph lv grqdog gxfn", -3)

