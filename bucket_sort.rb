# without reading anything about bucket sort...
class Array

  # will work for arrays with all elements integers >= 0
  def bucket_sort
    h = [nil]*self.max
    self.each do |n|
      h[n] = n
    end
    res = []
    h.each do |el|
      res << el if el
    end 
    res
  end

end

a = ([*1..10]+[*90..100]).shuffle
puts "array = #{a}"
puts "sorted = #{a.bucket_sort}"
