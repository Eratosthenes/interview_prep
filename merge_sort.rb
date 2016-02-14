class Array
  def merge_sort
    return self if self.length == 1
    left, right = take(length/2).merge_sort, drop(length/2).merge_sort
    Array.merge(left, right)
  end

  def self.merge(left, right)
    res = []
    until left.empty? || right.empty?
      if left.first < right.first
	res << left.shift
      else
	res << right.shift
      end
    end
    res + left + right
  end
end
