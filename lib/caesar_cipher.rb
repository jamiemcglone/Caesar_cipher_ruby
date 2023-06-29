class CaesarCipher

  def caesar_cipher(text, number)

    if text == " " || number == 0
      return "Error"
    end
    alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
    chars = text.strip.split('')
    shift = number
    storage_arr = []
    if number > 26
      shift = number % 26
    end
    chars.each do |char|
      if char.upcase == char
        upper_case = true
      else
        upper_case = false
      end
      if alphabet.include? char.downcase
        char_index = alphabet.index(char.downcase)
        if char_index >= 25 - shift
         upper_case == true ? storage_arr.append(alphabet[char_index - 26 + shift].upcase) : storage_arr.append(alphabet[char_index - 26 + shift])
        else
          upper_case == true ? storage_arr.append(alphabet[char_index + shift].upcase) : storage_arr.append(alphabet[char_index + shift])
        end
      else
        storage_arr.append(char)
      end
    end
    return storage_arr.join()
  end
end