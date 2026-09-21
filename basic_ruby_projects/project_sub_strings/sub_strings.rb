def substrings(string, dictionary_list)
  word_hash = {}
  array_of_string = string.downcase.split

  dictionary_list.each do |dictionary_list_word|
    array_of_string.each do |array_of_string_word|
      if array_of_string_word.include?(dictionary_list_word)
        if word_hash.key?(dictionary_list_word)
          word_hash[dictionary_list_word] += 1
        else
          word_hash[dictionary_list_word] = 1
        end
      end 
    end
  end

  puts word_hash
end

#main
dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
substrings("below", dictionary)
substrings("Howdy partner, sit down! How's it going?", dictionary)