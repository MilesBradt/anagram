class String

  def anagram_check?(word_one, word_two)
    check_for_multiple_first = word_one.upcase().split("")
    check_for_multiple_second = word_two.upcase().split("")

    first_has_spaces = check_for_multiple_first.any? { |i|
      " ".include? i
    }

    second_has_spaces = check_for_multiple_second.any? { |i|
      " ".include? i
    }

    if (first_has_spaces) | (second_has_spaces)
      each_word_first = word_one.upcase().split(" ")
      each_word_second = word_two.upcase().split(" ")

      # https://stackoverflow.com/questions/3580049/whats-the-ruby-way-to-iterate-over-two-arrays-at-once
      each_word_first.zip(each_word_second).each do |word1, word2|
        word_check_first = word1.upcase().split("")
        word_check_second = word2.upcase().split("")
        is_each_anagram = word_check_first.all? { |i|
          word_check_second.include? i
        }

        if (is_each_anagram)
          p "These words are all anagrams"
        else
          p "#{word1} and #{word2} are not anagrams"
        end
      end

      # p "These inputs have spaces"
      # return "These inputs have spaces"
    else
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

end
