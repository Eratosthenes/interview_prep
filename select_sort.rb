# selection sort... relatively complex algorithm with a poor runtime

class Array
  # O(n^3) sort... not selection sort
  def easy_sort
    res = []
    length.times do 
      res << delete(min)
    end  
    res
  end

  # good start, but not quite O(n^2)
  def select_sort
    [*0...length].each do |i|
      cur_min_idx = index(self[i..-1].min)
      self[i], self[cur_min_idx] = self[cur_min_idx], self[i]
    end
    self
  end

  # this one runs O(n^2)
  def selection_sort
    [*0...length].each do |i|
      # set the minimum to the first element
      curr_min, curr_min_idx = self[i], i
      # find the minimum from i to n
      [*i...length].each do |j|
	if self[j] < curr_min
	  curr_min = self[j]
	  curr_min_idx = j
	end
      end
      # swap the minimum element with the ith element
      self[i], self[curr_min_idx] = self[curr_min_idx], self[i]
    end  
    self
  end
end

a = [*1..10].shuffle
p a
p a.selection_sort
