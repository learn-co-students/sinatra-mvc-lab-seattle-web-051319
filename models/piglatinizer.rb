class PigLatinizer

  attr_accessor :string

  def initialize(string = nil)
    @string = string
  end

  def split_sentence(string)
    string.split(" ")
  end

  def piglatinize(string)
    alphabet = ('a'..'z').to_a
    vowels = %w[a e i o u]
    consonants = alphabet - vowels

    @string = string
    new_word = []
    split_string = split_sentence(@string)
    split_string.each do |word|
      if vowels.include?(word[0].downcase)
        new_word << (word + 'way')
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1]) && consonants.include?(word[2])
        new_word << (word[3..-1] + word[0..2] + 'ay')
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1])
        new_word << (word[2..-1] + word[0..1] + 'ay')
      elsif consonants.include?(word[0].downcase)
        new_word << (word[1..-1] + word[0] + 'ay')
      end
    end
    new_word.join(" ")
  end

end
