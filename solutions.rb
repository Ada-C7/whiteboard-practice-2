# ## Problem #1
# Write a method `mirror` that returns a **new array** doubling the size of a list of integers by appending the mirror image of the original sequence to the end of the list. The mirror image is the same sequence of values in reverse order. For example, if a variable called list stores this sequence of values:
#
# [1, 3, 2, 7]
# and we make the following call:
#
# mirror(list)
# then it should return the following values after the call:
#
# [1, 3, 2, 7, 7, 2, 3, 1]
# Notice that it has been doubled in size by having the original sequence appearing in reverse order at the end of the list. You may not make assumptions about how many elements are in the list.

def mirror list
  #needs to be in a new array
  new_array = []
  list.each do |item|
    new_array << item
  end

  count = list.length
  index = count-1
  count.times do
    mirror_var = list[index]
    new_array << mirror_var
    index -= 1
  end
  return new_array
end

list =  [1, 5, 7, 3]
list2 = [5, 6, 7 ,8]
puts mirror(list)
puts mirror(list2)

# ## Problem #2
# Write a method `switchPairs` that switches the order of values in an Array of strings in a pairwise fashion. Your method should switch the order of the first two values, then switch the order of the next two, switch the order of the next two, and so on. **This switch should happen _in place_, meaning no new array should be created.** For example, if the list initially stores these values: ["four", "score", "and", "seven", "years", "ago"] your method should switch the first pair, "four", "score", the second pair, "and", "seven", and the third pair, "years", "ago", to yield this list: ["score", "four", "seven", "and", "ago", "years"]
#
# If there are an odd number of values in the list, the final element is not moved. For example, if the original list had been: ["to", "be", "or", "not", "to", "be", "hamlet"] It would again switch pairs of values, but the final value, "hamlet" would not be moved, yielding this list: ["be", "to", "not", "or", "be", "to", "hamlet"]

def switch_pairs strings
  counter = 0
  while counter <= strings.length - 2
    temp = strings[counter]
    strings[counter] = strings[counter+1]
    strings[counter+1] = temp
    counter += 2
  end

  return strings
end

strings1 = ["four", "score", "and", "seven", "years", "ago"]
strings2 = ["to", "be", "or", "not", "to", "be", "hamlet"]

puts switch_pairs(strings1)
puts switch_pairs(strings2)
