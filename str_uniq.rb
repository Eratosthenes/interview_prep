# write an algorithm to determine if a string has all unique characters

class String

  # using a hash
  def unique?
    h = Hash.new{|h, k| h[k] = 0}
    self.split(//).each do |letter|
      h[letter] += 1
    end
    h.values.none?{|x| x>1}
  end

  # without a hash
  # assuming all chars are lowercase
  def unique_2?
    a = [0]*26
    self.split(//).each do |letter|
      n = letter.ord - "a".ord
      a[n] += 1
      return false if a[n] > 1
    end
    true
  end

end

puts "hello".unique_2? #false
puts "abcdefg".unique_2? #true

