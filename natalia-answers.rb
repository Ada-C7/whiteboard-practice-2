def mirror(array)
  mirror_array = []
  count = array.length-1
  count.downto(0) do |i|
    mirror_array[i]= array[i]
    mirror_array[count*2-1-i] = array[i]
  end
  return mirror_array
end
list1 = [1, 3, 2, 7]
list2 = [8,7,6,5,4,3,2,1]
print mirror(list1)
print mirror(list2)

def switchPairs(array)
  n = array.length/2
  i = 1
  n.times do
    temp = array[i]
    array[i] = array[i-1]
    array[i-1] = temp
    i += 2
  end
  return array
end

list1 = ["four", "score", "and", "seven", "years", "ago"]
list2 = ["to", "be", "or", "not", "to", "be", "hamlet"]
print switchPairs(list1)
print switchPairs(list2)
