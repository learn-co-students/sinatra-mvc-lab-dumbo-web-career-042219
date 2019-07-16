class PigLatinizer

  def piglatinize(phrase)
    phrase.split(' ').map do |word|
      piglatinize_word(word)
    end.join(' ')
  end

  def piglatinize_word(word)
    vowel_index = word.index(/[aeiouAEIOU]/)
    if vowel_index == 0
      "#{word}way"
    else
      "#{word[(vowel_index..word.length)]}#{word[0..vowel_index-1]}ay"
    end 
  end
end
