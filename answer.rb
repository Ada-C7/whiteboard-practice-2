def mirror(list)
  n = list.length - 1
  m = list.length
  arry = []

  list.each do |l|
    arry << l
  end

  m.times do
    arry << list[n]
    n -= 1
  end
  return arry
end


def switchPairs(arry)
  l = arry.length/2
  n = 0
  l.times do
    a = arry[n]
    arry[n] = arry[n+1]
    arry[n+1] = a
    n += 2
  end
  return arry
end
