=begin
given a tree: 
1->2,3,4
2->5,6,7
3
4->8,9

print the tree out with one line per level
=end

class Node
  attr_accessor :data, :children

  def initialize(data=nil)
    @data = data
    @children = []
  end

  def get_children
    @children
  end

  def set_children(*nodes)
    nodes.each do |node|
      @children << node
    end
  end

end

# create tree
one, two, three, four, five, six, seven, eight, nine, ten = [*1..10].map{|x| Node.new(x.to_s)}
one.set_children(two, three, four)
two.set_children(five, six, seven)
four.set_children(eight, nine)
five.set_children(ten)
root = one

# do BFS and print (iteratively)
q = [root]
puts root.data
end_of_level = {}; end_of_level[root] = true
until q.empty?
  parent = q.shift
  children = parent.get_children
  end_of_level[children.last] = true if end_of_level[parent] && !children.empty?
  children.each do |child|
    print child.data+' '
    print "\n" if end_of_level[child]
    q.push(child)
  end
end

# print by level recursively (dfs)
def do_dfs(node, depth=0)
  #print node.data + ' '
  $res[depth] << node.data
  children = node.get_children
  children.each do |child|
    do_dfs(child, depth+1)
  end        
end

$res=Hash.new{|h,k| h[k] = []}
puts "\nrecursive"
do_dfs(root)
$res.values.each do |depth|
  puts depth.join(' ')
end
