class String

  def anagram_check?(word_one, word_two)
    word_one_check = word_one.split("")
    word_two_check = word_two.split("")

    word_one_check.any? { |i|
      word_two_check.include? i
    }
  end

end
