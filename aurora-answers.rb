# problem 1

def mirror(list)

  # returns a new array
  # doubles size of orig array
  # appends mirror image of original array on orig

  result = []

  list.length.times do |i|
    result << list[i]
  end

  rev = -1
  list.length.times do
    result << list[rev]
    rev -= 1
  end

  return result
end

# testing = [1,3,2,7]
# puts mirror(testing)


# problem 2


def switchPairs(list)

  result = []

  i = 0
  how_many_times = list.length/2
  how_many_times.times do
    first = list[i]
    second = list[i+1]
    result << second
    result << first
    i += 2
  end

  if list.length % 2 == 1
    result << list[-1]
  end

  return result
end

# testing1 = ["four", "score", "and", "seven", "years", "ago"]
# testing2 = ["to", "be", "or", "not", "to", "be", "hamlet"]

# puts "first"
# puts switchPairs(testing1)
# puts "second"
# puts switchPairs(testing2)
