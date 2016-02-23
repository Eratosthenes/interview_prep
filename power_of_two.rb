# check whether a number is a power of two 
def is_power_2?(n)
  Math.log2(n) % 1 == 0
end

puts is_power_2?(31)
puts is_power_2?(32)

# without using log2
def is_power_2a?(n)
  until n==2
    return false if n%2==1
    n = n/2
  end
  true
end

puts is_power_2a?(31)
puts is_power_2a?(32)

# without loops or recursion (bit arithmetic)
def is_power_2b?(n)
  n & (n-1) == 0
end
