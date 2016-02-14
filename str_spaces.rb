class String
  # using the gsub function
  def replace_spaces
    self.gsub(' ','%20')
  end

  # without the gsub
  def replace_spaces_2
    s = ""
    [*0...length].each do |i|
      s = (self[i]==" ") ? s + "%20" : s + self[i]
    end
    s
  end

end
