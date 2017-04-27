# def switchPairs(a)
  # can swap with parallel assignment
  # a[0], a[1] = a[1], a[0]
  # a[2], a[3] = a[3], a[2]
  # a[4], a[5] = a[5], a[4]

#   (0..a.length-1).each do |i|
#     if i % 2 == 0
#       a[i], a[i+1] = a[i+1], a[i]
#     end
#   end
#   return a
# end

def switchPairs(a)
  if a.length % 2 == 0
    (0..a.length-1).each do |i|
      if i % 2 == 0
        a[i], a[i+1] = a[i+1], a[i]
      end
    end
  else
    (0..a.length-2).each do |i|
      if i % 2 == 0
        a[i], a[i+1] = a[i+1], a[i]
      end
    end
  end
  return a
end

a.length == 6
a = ["four", "score", "and", "seven", "years", "ago"]
switchPairs(a) = ["score", "four", "seven", "and", "ago", "years"]

b.length == 7
b = ["to", "be", "or", "not", "to", "be", "hamlet"]
0, 1, 2, 3, 4, 5, 6
switchPairs(b) = ["be", "to", "not", "or", "be", "to", "hamlet"]
