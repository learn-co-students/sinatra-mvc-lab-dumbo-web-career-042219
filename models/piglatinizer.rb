class PigLatinizer
  
  def piglatinize(string)
    vowels = "aeiou"

    arr = string.split(" ")

    arr.each_with_index do |word, idx|
      word.each_char.with_index do |char, idx2|
        if vowels.include?(word[0].downcase)
          arr[idx] = word + "way"
        elsif vowels.include?(char.downcase)
          arr[idx] = word[idx2..-1] + word[0...idx2] + "ay"
          break
        end
      end
    end
    arr.join(" ")
  end
end