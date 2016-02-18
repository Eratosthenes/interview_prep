# array implementation of maxheap
class MaxHeap
  
  def initialize
    @heap = []
  end

  def insert(child_value)
    @heap.push(child_value)
    return if @heap.length == 1
    child = @heap.length-1
    parent = (child-1)/2
    while @heap[parent] < @heap[child]
      swap(parent, child)
      child = parent
      parent = (child-1)/2
      break if child == 0
    end
  end

  def extract
    @heap[0] = @heap.pop()
    puts "heap before max_heapify: #{@heap}"
    max_heapify(0)
  end

  def max_heapify(i)
    left = 2*i+1
    right = 2*i+2
    largest = i
    if @heap[left] && @heap[left] > @heap[i]
      largest = left
      swap(i, left) 
    end
    if @heap[right] && @heap[right] > @heap[i]
      largest = right
      swap(i, right) 
    end
    max_heapify(largest) if largest != i
  end

  def swap(parent, child)
    temp = @heap[parent]
    @heap[parent] = @heap[child]
    @heap[child] = temp
  end

  def display
    p @heap
  end
end

heap = MaxHeap.new
heap.insert(11)
heap.insert(5)
heap.insert(8)
heap.insert(3)
heap.insert(4)
heap.insert(15)
heap.display
heap.extract
heap.display
