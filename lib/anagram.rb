class String
  define_method(:anagram) do |comparator|
    split_word = self.split('')
    split_word.each do |letter|
      if /#{letter}/.match(comparator) == ""
        return false
      end
    end
    return true
  end
end
