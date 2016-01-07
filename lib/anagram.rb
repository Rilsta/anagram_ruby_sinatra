class String
  define_method(:anagram) do |comparator|
    split_word = self.gsub(/\W/, '').split('')
    split_word.each do |letter|
      self_count = self.gsub(/[^#{letter}]/, '').length
      comparator_count = comparator.gsub(/[^#{letter}]/, '').length
      if self_count != comparator_count
        return false
      end
    end
    return true
  end
  # output = true
  # self.split('').each { |l| self.gsub(/[^#{l}]/, '').length != c.gsub(/[^#{l}]/, '').length ? output = false : next }
  # return output
end
