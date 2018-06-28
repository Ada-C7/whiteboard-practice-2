def switch_pairs(list)
  for i in 0..list.length-1
    if i % 2 == 0
      saved_element = list[i]
    else
      list[i-1] = list[i]
      list[i] = saved_element
    end
  end
  return list
end

list1 = ["four", "score", "and", "seven", "years", "ago"]
list2 = ["to", "be", "or", "not", "to", "be", "hamlet"]

p switch_pairs(list1)
p switch_pairs(list2)
