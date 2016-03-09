# ex:
# balanced: (), (()), (()()), etc
# unbalanced: )(, (())), ((()), etc

class String

  # given a string of open/closed parentheses, determine whether it is balanced
  def is_balanced?
    stack = []
    each_char do |char|
      if char=="("
	stack << char
      else
	return false if stack.empty?
	stack.pop
      end  
    end  
    stack.empty?
  end

  # given a string of open/closed parentheses, balance it by adding parentheses
  # case 1: too many ('s
  #  - solution: add an extra ) for each extra ( left over
  # case 2: too many )'s
  #  - solution: add an extra ( every time there is an extra ) -- ie, when the stack is empty
  def balance_1
    stack = []
    new_str = ""
    each_char.with_index do |char, i|
      if char=="("
	stack << char
	new_str += char
      else
	if stack.empty?
	  new_str += "(#{char}"
	else
	  stack.pop
	  new_str += char
	end
      end  
    end  
    stack.length.times{ new_str += ")" }
    new_str
  end

  # given a string of open/closed parentheses, balance it by adding parentheses
  # easier way: use str.is_balanced?
  # relies on assumption that extra parentheses are always added to beginning or end of string
  def balance_2
    return self if is_balanced?
    new_str = self
    n_left_parens, n_right_parens = 0, 0
    each_char do |char|
      if char=="("
	n_left_parens += 1
      else
	n_right_parens += 1
      end
    end

    extra_parens = (n_left_parens - n_right_parens).abs
    puts "extra_parens = #{extra_parens}"
    if n_left_parens > n_right_parens
      new_str = new_str + ")"*extra_parens
    else
      new_str = "("*extra_parens + new_str
    end
    new_str
  end

end

puts "balance_1"
puts "((), #{"(()".balance_1}"
puts "()), #{"())".balance_1}"

puts "balance_2"
puts "((), #{"(()".balance_2}"
puts "()), #{"())".balance_2}"

puts "is_balanced?"
puts "()".is_balanced? #true
puts "(()())".is_balanced? #true
puts "(()".is_balanced? #false
puts "())".is_balanced? #false
