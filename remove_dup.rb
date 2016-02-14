class String
  def remove_dup
    letter_count = [0]*26
    s = "" 
    self.each_char do |letter|
      n = letter.ord - "a".ord
      letter_count[n] += 1
      s += letter if letter_count[n] <= 1
    end
    s
  end
end
