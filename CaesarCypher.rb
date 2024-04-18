puts "enter a word or phrase you wish to encrypt"
string_input = gets.chomp.to_s
puts "now enter a number to shift the letters (positive goes backwards, negitive goes forwards)"
number_input = gets.chomp.to_i


def caesarCither(string, shift)
    alphabet = ('a'..'z').to_a
    stringArray = string.split("") #converts string to an array to iterate

    stringArray.each_with_index do |value, index|
        if value != " "
            for let in alphabet
                if let == value.downcase
                    let_index = alphabet.find_index(let) #finds index of the character and changes it relative to shift variable
                    let_index -= shift
                    if let_index < 0
                        let_index += 25
                    elsif let_index > 25
                        let_index -= 25
                    end
                    value == value.upcase ? (stringArray[index] = alphabet[let_index].upcase) : (stringArray[index] = alphabet[let_index])
                    #the above returns the letter as uppercase if it originally was one
                end
            end
        end
    end
    p "Cipher string: #{stringArray.join("")}" #converts array to a string
    

end

caesarCither(string_input, number_input)