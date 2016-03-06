class Array

  # works only for positive integers
  def radix_sort
    n_passes = Math.log10(self.max).floor + 1
    list = self
    [*0...n_passes].each do |i|
      buckets = Array.new(10,[])
      list.each do |el|
	digit = el/(10**i)%10
	buckets[digit] += [el]
      end
      list = buckets.flatten
      p buckets
    end
    list
  end

end

a=[36,9,0,25,1,49,64,16,81,4]
puts "shuffled = #{a}"
puts "sorted = #{a.radix_sort}"
