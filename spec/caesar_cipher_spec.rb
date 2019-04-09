require_relative '../lib/caesar_cipher.rb'


describe "check_parameters" do
	it "should check if the first parameter is a string and the second an integer" do
		expect(check_parameters("a", 3)).to eq(true)
		expect(check_parameters("c", 5)).to eq(true)
		expect(check_parameters("c", "a")).to eq("Entre une lettre ET ensuite un nombre entier STP")
		expect(check_parameters(5, "a")).to eq("Entre une lettre ET ensuite un nombre entier STP")
		expect(check_parameters("a", 1.2)).to eq("Entre une lettre ET ensuite un nombre entier STP")
	end
end
describe "convert" do
	it "should convert a letter to ASCII code" do
		expect(convert("a")).to eq(97)
		expect(convert("A")).to eq(65)
		expect(convert("z")).to eq(122)
		expect(convert(" ")).to eq(32)	
	end

	it "should convert ascii code to alphabet" do
		expect(convert(97)).to eq("a")
		expect(convert(65)).to eq("A")
		expect(convert(32)).to eq(" ")
	end
end

describe "loop" do
	it "should loop" do
	expect(loop("z", 3)).to eq(99)
	expect(loop("Y", 3)).to eq(66)
	end
end


=begin
	it "should respect capital letters" do
		expect(caesar_cipher("A", 3)).to eq("D")
		expect(caesar_cipher("Z", 5)).to eq("E")
		expect(caesar_cipher("J", 5)).to eq("O")
	end


	it "should replace words by ciphered words" do
	expect(caesar_cipher("Ab ce", 3)).to eq("De fh")
	expect(caesar_cipher("Caca bebe", 5)).to eq("Hfhf gjgj")
	end
end

=end




