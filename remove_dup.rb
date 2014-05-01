def remove_dup(string)
  arr=string.split(//)
  arr2=[]
  while arr.length > 0
    char = arr.shift
    if arr.each{|x| char!= x}

      arr2.push(char)     
    end
  end
  return arr2.join
end

# using Hash <-- best solution
def remove_dup(string)
  char_freq = Hash.new(0)
  result=[]
  string.each_char do |char|
    if char_freq[char] == nil
      char_freq[char] = 1
    else
      char_freq[char] = +1
    end
  end
  char_freq.each do |k,v|
    result.push(k)
  end
  return result.join
end

   
    


# from eric

def remove_duplicate(word)

  char_freq = Hash.new(0)

  index = 0

  word.each_char do |char|
    char_freq[char] +=  1
    if char_freq[char] > 1
      word.slice!(index, 1)
      index -= 1
    end
    index += 1
  end

  return word

end

# from kevin

def remove_dup(string)
  array = string.split(//)
  tracker = {}
  new_array = []

  array.each do |char|
    if tracker[char] == nil
      tracker[char] = 1
    else 
      tracker[char] += 1
    end
  end

  tracker.each do |k, v|
    new_array.push k
  end

  return new_array.join


end

