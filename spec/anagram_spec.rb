# Having these on my home PC broke rspec testing
# require ('rspec')
# require ('pry')

require ('anagram')

  describe("#anagram_check?") do
    new_test = String.new()
    it("Should check if one word includes the same characters as another word") do
      expect(new_test.anagram_check?("tea", "eat")).to(eq("These words are anagrams"))
    end

    describe("#anagram_check?") do
      new_test = String.new()
      it("Should check if two words are anagrams regardless of capitalization") do
        expect(new_test.anagram_check?("Tea", "Eat")).to(eq("These words are anagrams"))
      end

end
