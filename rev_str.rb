# reverse a string

class String
  # recursively 
  def rev
    str = self.split(//)
    return str[0] if str.length == 1
    str.drop(1).join().rev +  str.first
  end

  # iteratively
  # gives O(n^2) due to use of unshift
  def rev_2
    res = []
    self.each_char do |letter|
      res.unshift(letter)  
    end
    res.join()
  end

  # iterative, O(n) (actually O(n/2), but same thing)
  def rev_3
    [*0...length/2].each do |i|
      self[i], self[length-i-1] = self[length-i-1], self[i] 
    end
    self
  end

  # recursively again (shorter way)
  def rev_4
    size == 1 ? self : "#{self[1..-1].rev_4}#{self[0]}"
  end

  # recursively check whether a string is a palindrome
  def is_pal?
    return true if self.length == 1 
    self[0]==self[-1] && self[1...-1].is_pal?
  end
  # also works:
  #self.length == 1 || self[0]==self[-1] && self[1...-1].is_pal?

end

puts "hello".rev_4
puts "hell".rev_4
puts "hello there".rev_4
puts "madamimadam".is_pal?
puts "hello there".is_pal?

