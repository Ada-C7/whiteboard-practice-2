def mirror(list)

  index = list.length-1

  (index + 1).times do
    list << list[index]
    index -= 1
  end

  return list
end

sample = [6, 7, 9, 10, 24]
print mirror(sample)
print "\n"


def switchPairs(list)
  a = (list.length)/2
  b = 1

  a.times do
    holding = list[b]
    list[b] = list[b-1]
    list[b-1] = holding
    b = b + 2
  end

  return list

end

sample = ["to", "be", "or", "not", "to", "be"]
print switchPairs(sample)
print "\n"

sample = ["to", "be", "or", "not", "to", "be", "Hamlet"]
print switchPairs(sample)
print "\n"
