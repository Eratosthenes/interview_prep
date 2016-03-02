# find subarray with max contiguous sum
# eg, given −2, 1, −3, 4, −1, 2, 1, −5, 4, max is 4, -1, 2, 1 
# - sums to 6

# gives the max sum, and the index of that sum
def kadane(array)
  k_sum = 0
  res = []
  array.each do |el|
    if k_sum + el > 0
      k_sum += el
    else
      k_sum = 0
    end
    res << k_sum
  end
  max_sum = res.max
  [max_sum, res.index(max_sum)]
end

# return the max subarray
def max_subarray(array)
  e = kadane(array)[1]
  s = array.length - 1 - kadane(array.reverse)[1]
  array[s..e]
end

p kadane([-2, 1, -3, 4, -1, 2, 1, -5, 4])
p max_subarray([-2, 1, -3, 4, -1, 2, 1, -5, 4])
