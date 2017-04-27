require 'pry'
# Problem 1
def mirror(list)
  # works for any array I could think of

  # start with original array
  new_arr = list

  # add items to array, starting with last
  i = list.length
  while i > 0
    new_arr << list[i - 1]
    i -= 1
  end
  return new_arr
end


def switchPairs(list)
  # edge case:  empty array, array = 1
  # will be repeated for n / 2 (ie the number of digits)
  i = 1  #
  while i < list.length
    # save second element
    second = list[i]
    # save second element to first
    list[i] = list[i-1]
    list[i - 1] = second
    i += 2
  end
  return list
end

puts mirror([1, 3, 2, 7])
