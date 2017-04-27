def mirror(arr)
  i = arr.length
  arr.length.times do
    arr << arr[i-1]
    i -= 1
  end
  print arr
end

mirror([1,2,3])
mirror([1,2,3,4])
mirror([-1, -2, 3, -4])
mirror([0])


def switchPairs(array)
  i = 0
  (array.length)/2.times do
    one = array[i]
    two = array[i+1]
    array[i] = two
    array[i+1] = one
    i += 2
  end
  puts array
end


switchPairs(["four", "score", "and", "seven", "years", "ago"])
puts "===================="
switchPairs(["four", "score", "and", "seven", "years", "ago", "lincoln"])
