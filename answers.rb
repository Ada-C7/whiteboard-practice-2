
# 1
arr = [20, 56, 78]

def mirror(arr)
  i = arr.length-1

  while i >= 0
    Arr.push arr[i]
    i -=1
  end
end

# 2
arr = ["four", "score", "and", "seven", "years", "ago"]

def swap(arr, first, second)
  temp = arr[first]
  arr[first] = arr[second]
  arr[second] = temp
end

def swap(arr)
  i = 0
  while i < arr.length
    swap(arr, i, i + 1)
    i = i + 2
  end
  arr
end
