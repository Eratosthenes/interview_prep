# print the n most common words in a string
# using h.invert gives you linear time but won't always return n words if there are ties
def word_freq(str, n)
  str = str.downcase.gsub(/[^\w\s]/,'').split(' ')
  h = Hash.new{|h,k| h[k] = 0}
  str.each do |word|
    h[word] += 1
  end
  p h
  h = h.invert
  res = []
  [*1..str.length].reverse.each do |n|
    res << [h[n], n] if h[n]   
  end
  res[0...n]
end

#puts word_freq('there is a tide in the affairs of men', 4)

def word_freq_2(str, n)
  str = str.downcase.gsub(/[^\w\s]/,'').split(' ')
  h = Hash.new{|h,k| h[k] = 0}
  str.each do |word|
    h[word] += 1
  end
  res = [""]*n
  h.each do |k, v|
    res[v] = k
  end
  res.reject{|x| x==""}[0...n]
end

#puts word_freq_2('there is a tide in the the affairs of men', 3)


def count_words(str)
  Hash[ str.scan(/[a-zA-Z]+/).group_by{|word| word.downcase} ]
 end

#.map{|word, words|[word, words.size]}
puts count_words('i was home--yes, yes you was!')

