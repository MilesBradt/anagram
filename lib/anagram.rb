class Anagram

  def initialize
    @anagram_array = []
    @antigram_array = []
    @neither_array = []
    @not_vowels_array = []
    @vowels = ["A", "E", "I", "O", "U", "Y"]
  end

  def anagram_check(word_one, word_two)
    check_for_multiple_first = word_one.upcase().split("")
    check_for_multiple_second = word_two.upcase().split("")

    # https://stackoverflow.com/questions/8026300/check-for-multiple-items-in-array-using-include-ruby-beginner
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


        is_vowel_first = word_check_first.any? { |i|
          @vowels.include? i
        }

        is_vowel_second = word_check_second.any? { |i|
          @vowels.include? i
        }

        is_each_anagram = word_check_first.all? { |i|
          word_check_second.include? i
        }

        is_antigram = (word_check_first & word_check_second).any?

        if (is_vowel_first) | (is_vowel_second)
          if (is_each_anagram)
            p "#{word1} and #{word2} are anagrams"
            @anagram_array.push(word1, word2)
          elsif (is_antigram)
            p "#{word1} and #{word2} are antigrams"
            @antigram_array.push(word1, word2)
          else
            p "#{word1} and #{word2} are antigrams"
            @neither_array.push(word1, word2)
          end
          else
            p "#{word1} and #{word2} do not have vowels"
            @not_vowels_array.push(word1, word2)
          end
        end
      if (@not_vowels_array === [])
        if (@antigram_array === [] && @neither_array === [])
          return "These words are all anagrams"
        elsif (@anagram_array === [] && @neither_array === [])
          return "These words are all antigrams"
        elsif (@anagram_array === [] && @antigram_array === [])
          return "None of these words are anagrams"
        elsif (@neither_array === [])
          anagrams = @anagram_array.join(" and ")
          anagrams + " are anagrams"
          antigrams = @antigram_array.join(" and ")
          antigrams + " are antigrams"
        else
          neither = @neither_array.join(" and ")
          neither + " aren't anagrams or antigrams"
        end
      else
      no_vowels = @not_vowels_array.join(" and ")
      no_vowels + " do not have vowels"
      end

    else
      word_one_check = word_one.upcase().split("")
      word_two_check = word_two.upcase().split("")


      is_vowel_first = word_one_check.any? { |i|
        @vowels.include? i
      }

      is_vowel_second = word_two_check.any? { |i|
        @vowels.include? i
      }

      is_anagram = word_one_check.all? { |i|
        word_two_check.include? i
      }

      is_antigram = (word_one_check & word_two_check).any?


      if (is_vowel_first) | (is_vowel_second)
        if (is_anagram)
          p "These words are anagrams"
          return "These words are anagrams"
        elsif (is_antigram)
          p "These words are antigrams"
          return "These words are antigrams"
        else
          p "These words aren't anagrams or antigrams"
          return "These words aren't anagrams or antigrams"
        end
      else
        p "These do not have vowels"
        return "These do not have vowels"
      end
    end
  end


end
