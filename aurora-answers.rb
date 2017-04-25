# problem 1

def mirror(list)

  # returns a new array
  # doubles size of orig array
  # appends mirror image of original array on orig

  result = Array.new(list.length*2)

  n = -1
  list.length.times do |i|
    result[i] = list[i]
    result[n] = list[i]
    n -= 1
  end

  return result
end

# testing = [1,3,2,7]
# puts mirror(testing)


# problem 2


def switchPairs(list)

  i = 0
  how_many_times = list.length/2
  how_many_times.times do
    list[i], list[i+1] = list[i+1], list[i]
    i += 2
  end

  return list
end

# testing1 = ["four", "score", "and", "seven", "years", "ago"]
# testing2 = ["to", "be", "or", "not", "to", "be", "hamlet"]
#
# puts "first"
# puts switchPairs(testing1)
# puts "second"
# puts switchPairs(testing2)
