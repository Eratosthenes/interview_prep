# write a program to calculate sqrt 2
# using newton's method: x_n+1 = x_n - f(x_n)/f'(x_n)

def sqrt(n, delta)
  ans = Math.sqrt(n)
  n = n.to_f
  s = n
  until (ans - n).abs < delta
    n = 0.5*(n+s/n)
    puts "n = #{n}, ans = #{ans}"
  end
  n
end

p sqrt(2, 0.001)
