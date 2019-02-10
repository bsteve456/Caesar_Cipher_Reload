def caesar_cipher(string, number)
	letter_num = 0
	string_split = string.split('')
	new_string = Array.new
	
	string_split.each do |letter|
		if(letter.ord > 64 && letter.ord < 91)
			letter_num = 65 + ((letter.ord - 65 + number) % 26)
		elsif(letter.ord > 96 && letter.ord < 123)
			letter_num = 97 + ((letter.ord - 97 + number) % 26)
		else
			letter_num = letter.ord
		end
		new_string << letter_num.chr
	end
	print new_string.join('')
end

caesar_cipher("What a string!", 5)		

