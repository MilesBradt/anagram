class String

  def includes_any?(array)
    array.any? { |i|
      self.include? i
    }
  end

  def anagram_check(word_one, word_two)
    word_one_check = word_one.split("")
    word_two_check = word_two.split("")

    word_one_check.includes_any?(word_two_check)
  end
end
