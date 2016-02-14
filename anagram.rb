class String
  def is_anagram?(str)
    return false if self.length != str.length   
    self_count = [0]*26
    str_count = [0]*26
    [*0...length].each do |i|
      self_count[self[i].ord - "a".ord] += 1
      str_count[str[i].ord - "a".ord] += 1
    end
    self_count == str_count
  end
end
