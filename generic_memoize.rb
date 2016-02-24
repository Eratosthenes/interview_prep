def fib(n)
  return n if n<2
  fib(n-1) + fib(n-2)
end

=begin
alias _fib fib
def fib(n)
  $memo ||= {}
  $memo[n] ||= _fib(n)
end

puts fib(50)
=end

#doesn't work... why?

def memoize(&f)
  memo = {}
  doit = ->(arg) do
    return memo[arg] if memo[arg] 
    memo[arg] = f.call(arg)
    memo[arg]
  end
  doit
end

new_fib = memoize{|x| fib(x)}
puts new_fib.call(50)
