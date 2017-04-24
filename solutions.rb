# Number one
def mirror(list)
  #accesses each item in array, starting from last
  index = -1
  backwards = []
  while list[index] #will stop when reaches nil
    #copies it
    #saves it in another array
    backwards << list[index]
    index -= 1
  end
  #puts them together and returns it.
  mirror = list + backwards
  return mirror
end

# Number two
def switchPairs(array)
  i = 0
  #access first two strings in array
  (array.length/2).times do |string|
    #switches them in place w/o creating new array
    first = array[i]
    second = array[i + 1]
    array[i] = second
    array[i + 1] = first
    #continues to next pair
    #until array is done
    i += 2
  end
  return array
end
