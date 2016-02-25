# dispays a linked list, reverses a linked list
class Entry

  attr_accessor :data, :next

  def initialize(data)
    @next = nil
    @data = data
  end

end

class List

  def initialize
    @head = nil
    @tail = nil
  end

  # put on top of queue
  def ptq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      entry.next = @head
      @head = entry
    end
  end

  # put on bottom of queue
  def pbq(entry)
    if @head.nil?
      @head = entry
      @tail = entry
    else
      @tail.next = entry
      @tail = entry
    end
  end

  # remove from top of queue and return the removed entry
  def rtq
    return nil if @head.nil?
    entry = @head
    @head = @head.next
    return entry
  end

  def each
    return nil if @head.nil?
    entry = @head
    until entry.nil?
      yield entry
      entry = entry.next
    end
  end

  def display
    res = []
    self.each do |entry|
      res << entry.data
    end
    puts res.join(' ')
  end

  def reverse
    new_list = List.new
    self.each{|entry| new_list.ptq(Entry.new(entry.data))}
    new_list
  end

end 

mylist = List.new
mylist.ptq(Entry.new('e'))
mylist.ptq(Entry.new('l'))
mylist.ptq(Entry.new('l'))
mylist.ptq(Entry.new('o'))
mylist.pbq(Entry.new('h'))

mylist.display
mylist = mylist.reverse
mylist.display

