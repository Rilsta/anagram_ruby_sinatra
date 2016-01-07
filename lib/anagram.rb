class String
  define_method(:anagram) do |comparator|
    split_word = self.split('')
    split_word.each do |letter|
      self_count = self.gsub(/[^#{letter}]/, '').length
      comparator_count = comparator.gsub(/[^#{letter}]/, '').length
      if self_count != comparator_count
        return false
      end
    end
    return true
  end
end
