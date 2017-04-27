def mirror(list)
  l = list.length - 1
  m = list.length

  m.times do
    list << list[l]
    l -= 1
  end
  return list
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
