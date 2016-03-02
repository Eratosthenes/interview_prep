Connection = Struct.new(:uid, :start_time, :duration)
connection = Connection.new(123,0,20)
puts connection.uid
puts connection.start_time
puts connection.duration
