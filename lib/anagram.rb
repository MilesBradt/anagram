class String

  def anagram_check?(word_one, word_two)
    word_one_check = word_one.split("")
    word_two_check = word_two.split("")

    is_anagram = word_one_check.any? { |i|
      word_two_check.include? i
    }

    if (is_anagram)
      p "These words are anagrams"
      return "These words are anagrams"
    else
      p "These words are not anagrams"
      return "These words are not anagrams"
    end
  end

end
