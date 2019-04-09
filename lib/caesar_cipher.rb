=begin
def caesar_cipher(lettre, position)
if lettre.is_a?(String) && position.is_a?(Integer)
	lettre.ord 
	lettre_codee = lettre.ord + position
	return lettre_codee.chr
end

	return "Entre une lettre ET ensuite un nombre entier STP"
end
=end

def check_parameters(lettre, position) 
	if lettre.is_a?(String) && position.is_a?(Integer)
		return true
	else 
		return "Entre une lettre ET ensuite un nombre entier STP"
	end
end

def convert(truc)
	if truc.is_a?(String)
		return truc.ord 
	else truc.is_a?(Integer)
		return truc.chr
	end
end

def loop(lettre, position)


	alphabet_ascii = (65..90).to_a
	alphabet_ascii += (97..122).to_a 
	lettre_ascii = lettre.ord
 	alphabet_ascii.each_with_index.select do |code, index| 
 		if lettre_ascii == code 
 			lettre_codee = index + position
 			return alphabet_ascii[lettre_codee]
 		end
 	end
end

puts loop("A", 3)


