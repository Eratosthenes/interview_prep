class Array

  def my_zip(*arrays)
      zipped = []

      self.length.times do |i|
	subzip = [self[i]]

	arrays.each do |array|
	  subzip << array[i]
	end

	zipped << subzip
      end

      zipped
    end

end

p a=[[1,2,3],[4,5,6],[7,8,9]]
p a[0].zip(*a[1..-1])
