class PigLatinizer
  attr_accessor :words

  def piglatinize(input)
    split_words = input.split(" ")

    alpha = ('a'..'z').to_a
    vowels = ['a', 'e', 'i', 'o', 'u']
    consonants = alpha - vowels

    final = split_words.map do |word|
      # try to refactor this
      if vowels.include?(word[0].downcase)
        word + 'way'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase) && consonants.include?(word[2].downcase)
        word[3..-1] + word[0..2] + 'ay'
      elsif consonants.include?(word[0].downcase) && consonants.include?(word[1].downcase)
        word[2..-1] + word[0..1] + 'ay'
      elsif consonants.include?(word[0].downcase)
        word[1..-1] + word[0] + 'ay'
      else
        word
      end
    end
    final.join(" ")
  #   final = split_words.map do |word|
  #     if
  #     first_letter = word[0]
  #     word[0] = ""
  #     last_letters= first_letter + "ay"
  #     word += last_letters
  #    end
  #   final.join(" ")
  end

end
