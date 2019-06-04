class PigLatinizer

    attr_reader :phrase


    def piglatinize(words)
        words = words.split(" ")
        result = ""
        words.each do |word|
            result += "#{make_pig(word)} "
        end
        result_len = result.length
        return result[0..result_len - 2]
    end

    def make_pig(word)
        len = word.length
        vowels = ['a', 'e', 'i', 'o', 'u']
        if !vowels.include?(word[0].downcase)
            vowel_index = nil
            word.length.times do |i|
                # puts "#{i} : #{word[i]} : #{vowels.include?(word[i])}"
                if vowels.include?(word[i].downcase)
                    vowel_index = i
                    break
                end
            end
            right_shift = word[0..vowel_index - 1]
            left_shift = word[vowel_index..len - 1]
            word = left_shift + right_shift + "ay"
        else 
            word += "way"
        end
        return word
    end
end




