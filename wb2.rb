

def mirror(list)
  stack =[]
  list.length.times do |ind|
    stack.push(list[ind])
  end
  stack.length.times do
    list.push(stack.pop)
  end
  return list
end


list = [3,6,5,8,9]
print mirror(list)
puts

def switchPairs(list)
  if list.length%2 !=0
    rest = list.pop
  end
  list.length.times do |ind|
    if ind%2 != 0
      element1 = list[ind-1]
      element2 = list[ind]
      list[ind-1] = element2
      list[ind] = element1
    end
  end
  if !rest.nil?
    list << rest
  end
  return list
end

list1 = ["to", "be", "or", "not", "to", "be", "hamlet"]
list2 = ["four", "score", "and", "seven", "years", "ago"]


print switchPairs(list1)
puts

print switchPairs(list2)
puts
