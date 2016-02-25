# bubble sort, ascending or descending
class Array
  def bubble_sort
    swapped = true
    while swapped
      swapped = false
      [*1...length].each do |i|
	if yield(self[i-1], self[i])
	  swapped = true
	  self[i-1], self[i] = self[i], self[i-1]
	end
      end
    end
    self
  end
end

a = [*1..10].shuffle
p a
p a.bubble_sort{|x,y| x>y}
p a.bubble_sort{|x,y| x<y}
