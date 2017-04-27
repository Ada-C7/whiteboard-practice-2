def mirror(list)
  mirror_list = []
  double_length = list.length * 2

  for i in 0..list.length-1 do
    mirror_list[i] = list[i]
    mirror_list[double_length - 1 - i] = list[i]
  end

  return mirror_list
end

list1 = [1, 3, 2, 7]
list2 = []
list3 = [5]

p mirror(list1)
p mirror(list2)
p mirror(list3)
