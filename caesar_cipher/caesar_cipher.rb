def caesar_cipher(string, shift)
    result = []
    string.chars.each do |letter|
        letter_num = letter.ord
        case letter_num
        when "A".ord.."Z".ord
            letter_num + shift <= "Z".ord ? result.push((letter_num + shift).chr) : result.push((letter_num + shift - 26).chr)
        when "a".ord..'z'.ord
            letter_num + shift <= "z".ord ? result.push((letter_num + shift).chr) : result.push((letter_num + shift - 26).chr)
        else
            result.push(letter_num.chr)
        end
    end
    result.join("")
end
puts caesar_cipher("WHAT A STRING!", 5)