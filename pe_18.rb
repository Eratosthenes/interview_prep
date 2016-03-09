Node = Struct.new(:value, :left, :right)

triangle = []
File.foreach('pe_18.txt') do |line|
  line = line.split(' ').map{|x| x.to_i}
  triangle << line
end
p triangle

triangle.each_with_index do |row, i|
  [*0...row.length].each do |j|
    triangle[i][j] = Node.new(triangle[i][j])
  end
end

triangle.each_with_index do |row, i|
  [*0...row.length].each do |j|
    (triangle[i][j]).left = triangle[i+1][j] if i+1 < triangle.length 
    (triangle[i][j]).right = triangle[i+1][j+1] if i+1 < triangle.length 
  end
end

root = triangle[0][0]
$sums = [] 
def dfs(node, sum)
  unless node.left && node.right
    $sums << sum
    return node.value
  end
  dfs(node.left, sum + node.left.value)
  dfs(node.right, sum + node.right.value)
end

p dfs(root, root.value)
p $sums.max
p $sums.length


