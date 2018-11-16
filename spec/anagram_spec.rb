# Having this on my home PC broke rspec testing
# require ('rspec')

require ('pry')
require ('anagram')

  describe("#anagram_check?") do
    it("Should check if one word includes the same characters as another word") do
      new_test = String.new()
      expect(new_test.anagram_check?("tea", "eat")).to(eq("These words are anagrams"))
    end

    it("Should check if one word includes the same characters as another word") do
      new_test = String.new()
      expect(new_test.anagram_check?("tea", "not")).to(eq("These words are not anagrams"))
    end

    it("Should check if two words are anagrams regardless of capitalization") do
        new_test = String.new()
        expect(new_test.anagram_check?("Tea", "Eat")).to(eq("These words are anagrams"))
      end

    it("Should check if two inputs have vowels") do
        new_test = String.new()
        expect(new_test.anagram_check?("ntwrd", "drwtn")).to(eq("These do not have vowels"))
      end

      it("Should check if two inputs have spaces for multiple words") do
          new_test = String.new()
          expect(new_test.anagram_check?("This is a test", "Hist si a tset")).to(eq("These inputs have spaces"))
        end

      # it("Should check for multiple words") do
      #     new_test = String.new()
      #     expect(new_test.anagram_check?("This is a test", "Hist si a tset")).to(eq("These words are all anagrams"))
      #   end

end
