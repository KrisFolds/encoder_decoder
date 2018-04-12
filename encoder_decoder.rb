puts "Please give me a single word to demonstrate my encoder."

string = gets.chomp.downcase 
def encoder(string, shift = 1)
	alphabet = Array('a'..'z')
	encoder = Hash[alphabet.zip(alphabet.rotate(shift))] 
	string.chars.map {|c| encoder.fetch(c, "")}
end
p encoder(string, shift = 1)

puts "Now give me a word to demonstrate my decoder."

string = gets.chomp.downcase
def decoder(string, shift = -1)
	alphabet = Array('a'..'z')
	decoder = Hash[alphabet.zip(alphabet.rotate(shift))]
	string.chars.map {|c| decoder.fetch(c, "")}
end

p decoder(string, shift = -1)

