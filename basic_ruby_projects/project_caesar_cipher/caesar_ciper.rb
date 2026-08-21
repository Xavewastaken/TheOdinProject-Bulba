

def caesar_cipher(message, shift_factor)
  if shift_factor < 1
    return
  end

  message_chr_arr = message.chars.map {|character| 
      ascii_version = character.ord
      if ascii_version.between?(65, 90) || ascii_version.between?(97, 122)
        total_shift = ascii_version + shift_factor
        case
        when ascii_version >= 65 && ascii_version <= 90
          if total_shift > 90
            ascii_version = 64 + (total_shift - 90)
          else 
            ascii_version = total_shift
          end
          ascii_version
        when ascii_version >= 97 && ascii_version <= 122
          if total_shift > 122
            ascii_version = 96 + (total_shift - 122)
          else 
            ascii_version = total_shift
          end
          ascii_version
        end
      else
        ascii_version 
      end
    }
    message_chr_arr.map!{|value| value.chr}
    message_chr_arr.join
end


#main
puts "Welcome to my Caesar Cipher Project!"
puts "Enter the word to be ciphered:"
word_to_be_ciphered = gets.chomp
puts "How many shifts? :"
shift_factor_input = gets.to_i
puts "Your encoded message: \"#{caesar_cipher(word_to_be_ciphered, shift_factor_input)}\""

