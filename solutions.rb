# problem 1

# understanding
# input is an list of integers
# outputs is an list twice the size, the first half is the original list and the second half is the mirror of the first

# example

# input => [1,2,3,4]
# output => [1,2,3,4,4,3,2,1]

# assumptions
# the integers do not have to be in increasing order
# there is no range to the length of the list


# Psuedo code/startegy
# loop through the list,
# use the lenght of the list to track the index,
# working from last index and iterating towards the first,
# add/append the currently tracked element to the list

# code
def mirror(list)
  list_copy = list.dup
  index_tracker = list.length - 1
  until index_tracker == 0
    list_copy << list[index_tracker]
    index_tracker -= 1
  end
  return list_copy
end

p mirror([1, 3, 2, 7])
p mirror([1,2,3,4])

# Problem 2
# Understanding/assumptions
# Input is an array of strings
# Output is the same array of strings but the order has been modified
# The strings are paried up. The first string's pair is it's neighbor.
# The second string is paired with the first. The third is paired with the fourth and so on.
# The output has each paired swapped.
# If given odd number, the last string does not have a pair and remains the last index

# psuedo code/strategy
# loop through the list based on its size,
# use the size to track the index and swap indices if the index tracker is even

# real code
def switchPairs(strings)
  highest_index = strings.length - 1
  i = 0
  until i == highest_index
    strings[i], strings[i + 1] = strings[i + 1], strings[i] if i % 2 == 0
    i += 1
  end
  return strings
end

p switchPairs(["four", "score", "and", "seven", "years", "ago"])
p switchPairs(["to", "be", "or", "not", "to", "be", "hamlet"])
