=begin
given a tree: 
1->2,3
2->4,5

print the tree out with:
* preorder: 1 2 4 5 3
* inorder: 4 2 5 1 3
* postorder: 4 5 2 3 1

=end

Node = Struct.new(:data, :left, :right)

# create tree
one, two, three, four, five = [*1..5].map{|x| Node.new(x.to_s)}
one.left = two ; one.right = three
two.left = four ; two.right = five
root = one

puts "preorder with stack"
stack = [root]
until stack.empty?
  node = stack.pop
  print node.data+' '
  stack.push node.right if node.right
  stack.push node.left if node.left
end
puts

def visit(node)
  print node.data+' '
end

def preorder(node)
  visit node
  preorder node.left if node.left
  preorder node.right if node.right
end

puts "preorder with dfs"
preorder root
puts

def inorder_iterative(node)
  s=[]
  until s.empty? && node.nil?
    unless node.nil?
      s.push node
      node = node.left
    else
      node = s.pop
      visit node
      node = node.right
    end
  end
end

puts "inorder with stack"
inorder_iterative root
puts

def inorder(node)
  inorder node.left if node.left
  visit node
  inorder node.right if node.right
end

puts "inorder with dfs"
inorder root
puts
