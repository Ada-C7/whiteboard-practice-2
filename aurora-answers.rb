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
