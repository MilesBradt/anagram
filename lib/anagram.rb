class String
  def include_any?(array)
    array.any? { |i|
      self.include? i
    }
  end
end

def anagram(word_one, word_two)
  word_one_check = word_one.split("")
  word_two_check = word_two.split("")

  word_one_check.include_any?(word_two_check)
end
