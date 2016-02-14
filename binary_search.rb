# given an array and a target, return the index of the target in the array
# return nil if the target is not in the array

class Array
  def bsearch(array=self, target)
    return nil if array.empty? 
    mid = array.length/2
    if target > array[mid]
      temp = bsearch(array[mid+1..-1], target) 
      return temp ? 1 + mid + temp : nil
    end
    return bsearch(array[0...mid], target) if target < array[mid]
    mid
  end

  def bsearch_2(array=self, target)
    return nil if array.empty? 
    mid = array.length/2
    case target <=> array[mid]
      when 1
	temp = bsearch(array[mid+1..-1], target) 
	return temp ? 1 + mid + temp : nil
      when -1
	return bsearch(array[0...mid], target) if target < array[mid]
      when 0
	return mid
    end
  end

end

p [1,1,2,3,5,8,13,21].bsearch_2(1) # should return 1
p [1,1,2,3,5,8,13,21].bsearch_2(2) # should return 2
p [1,1,2,3,5,8,13,21].bsearch_2(5) # should return 4
p [1,1,2,3,5,8,13,21].bsearch_2(13) # should return 6
p [1,1,2,3,5,8,13,21].bsearch_2(21) # should return 7
p [1,1,2,3,5,8,13,21].bsearch_2(14) # should return nil
p [1,1,2,3,5,8,13,21].bsearch_2(0) # should return nil
