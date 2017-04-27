
## Janice Lichtman: Solutions to Whiteboard Practice #2

def mirror(list)
  result = []
  (0...list.length).each do |n|
    result << list[n]
  end

  (0...list.length).each do |n|
    result << list[list.length - 1 - n]
  end
  return result
end

list = [1, 3, 2, 7]
print mirror(list)

# I found that I had to build my result array from empty.
# If I tried to start by assigning result = list, and then ammending 'result' (via shovel or push) with descending indexed values of 'list', 'list' would get modified too.

##############################################################

def switchPairs(array)
  s = ((array.length)/2)
  (0...s).each do |n|
      array[2*n], array[2*n + 1] = array[2*n + 1], array[2*n]
  end
  return array
end

array1 = ["four", "score", "and", "seven", "years", "ago"]
print switchPairs(array1)
puts
array2 = ["to", "be", "or", "not", "to", "be", "hamlet"]
print switchPairs(array2)
puts
