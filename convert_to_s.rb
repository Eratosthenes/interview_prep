def convert_to_s(n, b=10)
  nums = %w[zero one two three four five six seven eight nine]

  [*10...b].each do |n|
    nums << convert_to_s(n)  
  end

  res = []
  until n==0
    res << nums[n%b]
    n = n/b
  end
  res.reverse.map{|x| x.gsub(' ','')}.join(' ')
end

puts convert_to_s(165,16)
puts convert_to_s(8,1)
