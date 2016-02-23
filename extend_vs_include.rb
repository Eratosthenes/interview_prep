#note: functions in modules are made to be called from classes
module ReusableModule
  def module_method
    puts "Module Method: Hi there!"
  end

  class MyClass
    def self.my_method
      puts "MyClass.my_method: It works!"
    end
  end
  
end

class ClassThatIncludes
  include ReusableModule
end
class ClassThatExtends
  extend ReusableModule
end

puts "ReusableModule"
# ReusableModule::module_method #doesn't work
ReusableModule::MyClass.my_method #
puts "Include"
ClassThatIncludes.new.module_method       # "Module Method: Hi there!"
puts "Extend"
ClassThatExtends.module_method            # "Module Method: Hi there!"
