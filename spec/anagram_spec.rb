require('rspec')
require('anagram')

describe('String#anagram') do
  it('return true if anagram') do
    expect("word".anagram("wrdo")).to(eq(true))
  end
end
