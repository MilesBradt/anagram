require ('rspec')
require ('pry')
require ('anagram')

describe(#anagram) do
  it("Should check if one word includes the same characters as another word") do
    expect(anagram("tea", "eat").to(eq(true))
  end
  
end
