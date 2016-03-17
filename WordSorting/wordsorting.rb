
require 'pry'

def wordsorting(sentence)
	unsorted_sentence = sentence.split.sort
	unsorted_sentence.each do |words|
		words.gsub(/[[:punct:]]/)
	end
end

print wordsorting("Fools fall for foolish follies.")