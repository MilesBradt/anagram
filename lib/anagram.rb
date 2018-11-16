class String

  def anagram_check?(word_one, word_two)
    check_for_multiple_first = word_one.upcase().split("")
    check_for_multiple_second = word_one.upcase().split("")

    first_has_spaces = check_for_multiple_first.any? { |i|
      vowels.include? i
    }

    word_one_check = word_one.upcase().split("")
    word_two_check = word_two.upcase().split("")
    vowels = ["A", "E", "I", "O", "U"]

    is_vowel_first = word_one_check.any? { |i|
      vowels.include? i
    }

    is_vowel_second = word_two_check.any? { |i|
      vowels.include? i
    }

    is_anagram = word_one_check.all? { |i|
      word_two_check.include? i
    }


    if (is_vowel_first) | (is_vowel_second)
      if (is_anagram)
        p "These words are anagrams"
        return "These words are anagrams"
      else
        p "These words are not anagrams"
        return "These words are not anagrams"
      end
    else
      p "These do not have vowels"
      return "These do not have vowels"
    end
  end

end
