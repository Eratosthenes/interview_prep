def fib(n)
  return n if n<2
  fib(n-1) + fib(n-2)
end

def memoize(method_name)
  memo = {}
  old_fib = method(method_name)
  define_method(method_name) do |arg|
    return memo[arg] if memo[arg] 
    memo[arg] = old_fib.call(arg)
    memo[arg]
  end
end

memoize(:fib)
puts fib(50)
