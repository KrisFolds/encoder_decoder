
def encoder(string, shift)
	alphabet = Array('a'..'z')
	encoder = Hash[alphabet.zip(alphabet.rotate(shift))] 
	string.chars.map {|c| encoder.fetch(c, "")}
end

def decoder(string, shift)
	alphabet = Array('a'..'z')
	decoder = Hash[alphabet.zip(alphabet.rotate(-shift))]
	string.chars.map {|c| decoder.fetch(c, "")}
end



