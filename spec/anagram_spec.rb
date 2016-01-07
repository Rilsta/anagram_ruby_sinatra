require('rspec')
require('anagram')

describe('String#anagram') do
  it('return true if anagram') do
    expect("word".anagram("wrdo")).to(eq(true))
  end
  it('returns false if length of original word does not meets length of anagram') do
    expect("etem".anagram("met")).to(eq(false))
  end
end
