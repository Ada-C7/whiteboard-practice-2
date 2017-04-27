def mirror(a)
  og_length = a.length
  (0..og_length-1).each do |i|
    a << a[og_length - (i+ 1)]
  end
  return a
end

a = [1, 3, 2, 7]
mirror(a) = [1, 3, 2, 7, 7, 2, 3, 1]
