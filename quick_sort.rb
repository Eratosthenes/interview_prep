class Array
  def quicksort
    return self if self.length == 1 || self.empty?
    pivot = delete_at(rand(self.length))
    left, right = partition{|x| x<pivot}
    puts "pivot = #{pivot}: #{left}, #{right}"
    left.quicksort + [pivot] + right.quicksort
  end
end

a = [*1..10].shuffle
p a
p a.quicksort
