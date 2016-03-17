puts "what is the source file?"
source_file = gets.chomp


source_file_contents = IO.read(source_file)

puts "what would you like to name the destination file?"
destination_file = gets.chomp


IO.write(destination_file, source_file_contents)

